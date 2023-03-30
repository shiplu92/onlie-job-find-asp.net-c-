using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace find_job_protal.Admin
{
    public partial class Dasboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["Admin"] == null)
            {
                Response.Redirect("../user/Login.aspx");
            }


        }
    }
}