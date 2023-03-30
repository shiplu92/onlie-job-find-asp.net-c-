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
    public partial class Login : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;

      
         string UserName, Password = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {



            if (!IsPostBack)
            {


            }

        }

        protected void logbtn_Click(object sender, EventArgs e)
        {




            try
            {

                if (ddlogin.SelectedValue == "Admin")
                {

                    UserName = ConfigurationManager.AppSettings["UserName"];

                    Password = ConfigurationManager.AppSettings["Password"];


                    if (UserName == txtuname.Text.Trim() &&  Password == txtpass.Text.Trim())

                    {

                        Session["Admin"] = UserName;
                        Response.Redirect("../Admin/Dasboard.aspx", false);


                    }
                    else
                    {

                        showErrorMsg("Admin");
                    }
                }



                else
                {


                    con = new SqlConnection(str);
                    string query = @"select * from  userregister  where UserName =@UserName and Password= @Password";
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@UserName", txtuname.Text.Trim());

                    cmd.Parameters.AddWithValue("@Password", txtpass.Text.Trim());



                    con.Open();
                    dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        Session[" userregister "] = dr["UserName"].ToString();
                        Session["UserId"] = dr["UserId"].ToString();


                        Response.Redirect("defualt.aspx", false);
                    }



                    else
                    {
                        showErrorMsg("userregister");
                    }
                    con.Close();






                }



            }


            catch (Exception ex)
            {

                Response.Write("<script> alert('" + ex.Message + "');<script>");

                con.Close();


            }






        }

        private void showErrorMsg(string userType)
        {
            lbl.Visible = true;
            lbl.Text = "<br>" + userType + "</b> credentials are incrorect";
            lbl.CssClass = "alert alert-danger";
        }























    }
    }
