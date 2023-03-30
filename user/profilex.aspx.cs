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
    public partial class profilex : System.Web.UI.Page
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
                profileshow();
            }
        }

        private void profileshow()
        {



            con = new SqlConnection(str);
            string query = "Select   UserId,UserName,Name,Email,Address,Mobile,Country,Resume from userregister    where UserName = @UserName ";
            cmd = new SqlCommand(query ,con);
            cmd.Parameters.AddWithValue("@UserName", Session["userregister"]);











            sda = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);
            
           txtpro.DataSource = dt;
            txtpro.DataBind();




        }

        protected void btnedit_Click(object sender, EventArgs e)
        {

        }

        protected void shipluprofile_ItemCommand(object source, DataListCommandEventArgs e)
        {










        }
    }
}