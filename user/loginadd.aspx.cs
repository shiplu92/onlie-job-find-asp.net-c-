using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;

namespace find_job_protal.user
{
    public partial class loginadd : System.Web.UI.Page
    {


        SqlConnection con;
        SqlCommand cmd;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {

            try
            {
                con = new SqlConnection(str);
                string query = @"insert into register values(@FName,@LName,@Email,@Address,@Password,@Country,@Mob)";
                cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@UserName", txtfirst.Value.Trim());
                cmd.Parameters.AddWithValue("@LastName", txtlast.Value.Trim());
                cmd.Parameters.AddWithValue("@Email", txtemail.Value.Trim());
                cmd.Parameters.AddWithValue("@Address", txtaddr.Value.Trim());

                cmd.Parameters.AddWithValue("@Password", txtpass.Value.Trim());
                cmd.Parameters.AddWithValue("@Country", txtselect.Value.Trim());

                cmd.Parameters.AddWithValue("@Mob", txtmob.Value.Trim());
                con.Open();


                int r = cmd.ExecuteNonQuery();
                if (r > 0)
                {

                    lbl.Visible = true;
                    lbl.Text = "Thanks for reaching out will look into your query";
                    lbl.CssClass = "alert alert-sucess";
                   

                }

                else
                {
                    lbl.Visible = true;



                    lbl.Text = "Thanks for reaching right now,pls try after someting ";
                    lbl.CssClass = "alert alert-danger";
                }




            }

            catch (Exception ex)
            {


                Response.Write("<script> alert('" + ex.Message + "');<script>");


            }

            finally
            {
                con.Close();
            }

        }









    }
    }
