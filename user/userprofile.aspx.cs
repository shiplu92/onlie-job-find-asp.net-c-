using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

namespace find_job_protal.user
{
    public partial class userprofile : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        DataTable dt;



        protected void Page_Load(object sender, EventArgs e)
        {

            if(Session["userregister"]==null)
            {
                //Response.Redirect("Login.aspx");
            }




                usershiplu();
            
           

        }

        private void usershiplu()
        {
            string query = string.Empty;
            con = new SqlConnection(str);
            query = @"select Row_Number() over(Order by(select 1)) as[Sr.No],UserId,UserName,Name,Email,  Mobile,  Address, Resume from userregister";

            cmd = new SqlCommand(query, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {


            if (e.CommandName == "Editjob")
            {
                Response.Redirect("userupdate.aspx?id=" + e.CommandArgument.ToString());
            }


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            GridView1.PageIndex = e.NewPageIndex;


        }
    }
}