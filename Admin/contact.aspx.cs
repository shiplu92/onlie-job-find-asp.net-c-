using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

namespace find_job_protal.Admin
{
    public partial class contact : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        DataTable dt;



        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Admin"] == null)
            {
                Response.Redirect("../user/Login.aspx");
            }

            showcontact();


        }

        private void showcontact()
        {


            string query = string.Empty;
            con = new SqlConnection(str);
            query = @"select Row_Number() over(Order by(select 1)) as[Sr.No],ID,Name,Email,  Sub,  Mas from contactnumber";

            cmd = new SqlCommand(query, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();







        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                GridViewRow row = GridView1.Rows[e.RowIndex];
                int ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                con = new SqlConnection(str);
                cmd = new SqlCommand("Delete from contactnumber where ID=@ID", con);

                cmd.Parameters.AddWithValue("@ID", ID);
                con.Open();
                int r = cmd.ExecuteNonQuery();
                if (r > 0)
                {
                    lblmsg.Text = "job deleted successfull";
                    lblmsg.CssClass = "alert alert-sucess";
                }
                else
                {
                    lblmsg.Text = "cannot deleted successfull";
                    lblmsg.CssClass = "alert alert-danger";
                }
                GridView1.EditIndex = -1;
                con.Close();
                showcontact();


            }


            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "');<script>");

            }

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;



        }
    }
}