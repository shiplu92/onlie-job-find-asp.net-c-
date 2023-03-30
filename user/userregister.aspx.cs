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
    public partial class userregister : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

            }

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(str);
                string query = @"insert into userregister (UserName,Password,Name,Email,Mobile,Address,Country) values
           (@UserName,@Password,@Name,@Email,@Mobile,@Address,@Country)";
                cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@UserName", txtUName.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", txtconfirmfpass.Text.Trim());
                cmd.Parameters.AddWithValue("@Name", txtfulname.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());

                cmd.Parameters.AddWithValue("@Mobile", txtmobile.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", txtaddress.Text.Trim());
                cmd.Parameters.AddWithValue("@Country", ddlcountry.SelectedValue);

                Clear();
                con.Open();

                int r = cmd.ExecuteNonQuery();
                if (r > 0)
                {

                    xxx.Visible = true;
                    xxx.Text = "Register successfully ";
                    xxx.CssClass = "alert alert-success";
                   

                }

                else
                {
                    xxx.Visible = true;



                    xxx.Text = "Thanks for reaching right now,pls try after someting ";
                    xxx.CssClass = "alert alert-danger";
                }


            }
            catch (SqlException ex)
            {
                if(ex.Message.Contains("Violation of UNIQUE KEY constraint"))
                {
                    xxx.Visible = true;



                    xxx.Text = "<b>" +txtUName.Text.Trim() + " </b> UserName Already exist, try new one... ";
                    xxx.CssClass = "alert alert-danger";
                }
                else
                {
                    Response.Write("<script> alert('" + ex.Message + "');<script>");
                }
            }
            catch(Exception ex)
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
            txtUName.Text = string.Empty;
            txtpassword.Text = string.Empty;
            txtconfirmfpass.Text = string.Empty;
            txtaddress.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtmobile.Text = string.Empty;
            ddlcountry.ClearSelection();
            txtfulname.Text = string.Empty;
        }
    }
}