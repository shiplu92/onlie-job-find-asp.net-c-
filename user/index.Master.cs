using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace find_job_protal.user
{
    public partial class index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if(Session[" userregister "] != null)
            {
                lblregisterOrprofile.Text = "profile";
                lblloginOrlogout.Text = "Logout";
            }
            else
            {
                lblregisterOrprofile.Text = "Register";
                lblloginOrlogout.Text = "Login";
            }
        }

        protected void lblregisterOrprofile_Click(object sender, EventArgs e)
        {
            if(lblregisterOrprofile.Text =="profile")
            {
                Response.Redirect("userprofile.aspx");
            }
            
            
               
            
            else
            {
                Response.Redirect("userregister.aspx");
            }

        }

        protected void lblloginOrlogout_Click(object sender, EventArgs e)
        {
            if (lblloginOrlogout.Text == "Login")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }

        }
    }
}