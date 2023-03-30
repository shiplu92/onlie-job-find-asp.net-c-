using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

namespace find_job_protal.user
{
    public partial class profile : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["userregister"] == null)
            {
                //Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                showuserprofile();

            }

                
            
        }

        private void showuserprofile()
        {
            
            con = new SqlConnection(str);
            string query = "Select  UserId,Name,Email,  Mobile,  Address, Resume from userregister where UserName=@UserName ";
            cmd = new SqlCommand(query, con);
            sda = new SqlDataAdapter(cmd);
            cmd.Parameters.AddWithValue("@UserName", Session["userregister"]);
           
            dt= new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count >0)
            {
                dlprofile.DataSource = dt;
                dlprofile.DataBind();
            }


            else
            {
                Response.Write("<script> alert('please do login again with your latest user Name');<script>");
            }

        






        }

        protected void dlprofile_ItemCommand(object source, DataListCommandEventArgs e)
        {

            if (e.CommandName == "EditeUser")
            {
                Response.Redirect("ResumeBuid.aspx?id=" + e.CommandArgument.ToString());
            }

        }

        protected void dlprofile_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}