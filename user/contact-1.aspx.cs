using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace find_job_protal.user
{
    public partial class contact_1 : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            try
            {
                con = new SqlConnection(str);
                string query = @"insert into contactnumber values(@Name,@Email,@Sub,@Mas)";
                cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Name", txtname.Value.Trim());
                cmd.Parameters.AddWithValue("@Email", txtemail.Value.Trim());
                cmd.Parameters.AddWithValue("@Sub", txtsubject.Value.Trim());
                cmd.Parameters.AddWithValue("@Mas", txtmessage.Value.Trim());
                con.Open();

                int r = cmd.ExecuteNonQuery();
                if (r > 0)
                {

                    xxx.Visible = true;
                    xxx.Text = "Thanks for reaching out will look into your query save";
                    xxx.CssClass = "alert alert-sucess";
                    //Clear();

                }

                else
                {
                    xxx.Visible = true;



                    xxx.Text = "Thanks for reaching right now,pls try after someting ";
                    xxx.CssClass = "alert alert-danger";
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

        private void Clear()
        {
            txtname.Value = string.Empty;
            txtemail.Value = string.Empty;
            txtsubject.Value = string.Empty;
            txtmessage.Value = string.Empty;

        }





    }
}
