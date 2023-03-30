using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;


using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;

namespace find_job_protal.Admin
{
    public partial class New_job : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;

        string query;


        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Admin"] == null)
            {
                Response.Redirect("../user/Login.aspx");
            }

            Session["title"] = "add job";
            if (!IsPostBack)
            {
                fillData();
            }

        }

        private void fillData()
        {


            if (Request.QueryString["id"] != null)
            {
                con = new SqlConnection(str);
                query = "select * from jons where ID='" + Request.QueryString["id"] + "'";
                cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.HasRows)
                {
                    while (sdr.Read())
                    {
                        txtjobtitle.Text = sdr["title"].ToString();

                        txtnuberpost.Text = sdr["Number"].ToString();


                        txtDescription.Text = sdr["des"].ToString();

                        txteducation.Text = sdr["ed"].ToString();

                        txtexperience.Text = sdr["ex"].ToString();

                        txtSpecialization.Text = sdr["sp"].ToString();



                        txtlastdate.Text = sdr["las"].ToString();


                        txtsalary.Text = sdr["sa"].ToString();

                        ddltobtype.Text = sdr["jo"].ToString();

                        txtcompany.Text = sdr["cn"].ToString();

                        txtweb.Text = sdr["we"].ToString();








                        txtemail.Text = sdr["em"].ToString();

                        txtaddress.Text = sdr["ad"].ToString();

                        txtcountry.Text = sdr["co"].ToString();

                        txtsate.Text = sdr["sate"].ToString();


                        btnb.Text = "update";


                        linkBack.Visible = true;

                        Session["title"] = "Edit job";





                    }
                }


                else
                {
                    lblmsg.Text = "job not found...";
                    lblmsg.CssClass = "alert alert-danger";
                }
                sdr.Close();
                con.Close();
            }











        }

        protected void btnb_Click(object sender, EventArgs e)
        {



            try
            {





                //string concatQuery, imagePath = string.Empty;
                //   bool isValidToExecute = false;






                con = new SqlConnection(str);



                if (Request.QueryString["id"] != null)
                {














                    string query = @"Update  jons set title=@title,Number=@Number,des= @des,ed= @ed,ex= @ex,sp=@sp, las=@las,sa= @sa,jo= @jo,cn= @cn,we= @we,em= @em,ad= @ad,co= @co, sate= @sate where ID=@id";




                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@title", txtjobtitle.Text.Trim());
                    cmd.Parameters.AddWithValue("@Number", txtnuberpost.Text.Trim());
                    cmd.Parameters.AddWithValue("@des", txtDescription.Text.Trim());
                    cmd.Parameters.AddWithValue("@ed", txteducation.Text.Trim());
                    cmd.Parameters.AddWithValue("@ex", txtexperience.Text.Trim());
                    cmd.Parameters.AddWithValue("@sp", txtSpecialization.Text.Trim());
                    cmd.Parameters.AddWithValue("@las", txtlastdate.Text.Trim());
                    cmd.Parameters.AddWithValue("@sa", txtsalary.Text.Trim());
                    cmd.Parameters.AddWithValue("@jo", ddltobtype.Text.Trim());
                    cmd.Parameters.AddWithValue("@cn", txtcompany.Text.Trim());


                    cmd.Parameters.AddWithValue("@we", txtweb.Text.Trim());
                    cmd.Parameters.AddWithValue("@em", txtemail.Text.Trim());
                    cmd.Parameters.AddWithValue("@ad", txtaddress.Text.Trim());
                    cmd.Parameters.AddWithValue("@co", txtcountry.SelectedValue);
                    cmd.Parameters.AddWithValue("@sate", txtsate.Text.Trim());
                    cmd.Parameters.AddWithValue("@id", Request.QueryString["id"].ToString());



                    con.Open();

                    int r = cmd.ExecuteNonQuery();
                    if (r > 0)
                    {

                        lblmsg.Visible = true;
                        lblmsg.Text = "Thanks for reaching out will look into your query update!";
                        lblmsg.CssClass = "alert alert-sucess";


                    }

                    else
                    {
                        lblmsg.Visible = true;



                        lblmsg.Text = "Thanks for reaching right now,pls try after someting ";
                        lblmsg.CssClass = "alert alert-danger";
                    }









                }

                else
                {

                    string query = @"Insert into jons values(@title,@Number, @des, @ed, @ex, @sp, @las, @sa, @jo, @cn, @we, @em, @ad, @co,  @sate)";

                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@title", txtjobtitle.Text.Trim());
                    cmd.Parameters.AddWithValue("@Number", txtnuberpost.Text.Trim());
                    cmd.Parameters.AddWithValue("@des", txtDescription.Text.Trim());
                    cmd.Parameters.AddWithValue("@ed", txteducation.Text.Trim());
                    cmd.Parameters.AddWithValue("@ex", txtexperience.Text.Trim());
                    cmd.Parameters.AddWithValue("@sp", txtSpecialization.Text.Trim());
                    cmd.Parameters.AddWithValue("@las", txtlastdate.Text.Trim());
                    cmd.Parameters.AddWithValue("@sa", txtsalary.Text.Trim());
                    cmd.Parameters.AddWithValue("@jo", ddltobtype.Text.Trim());
                    cmd.Parameters.AddWithValue("@cn", txtcompany.Text.Trim());
                    //cmd.Parameters.AddWithValue("@Companyimage", txtjobtitle.Text.Trim());

                    cmd.Parameters.AddWithValue("@we", txtweb.Text.Trim());
                    cmd.Parameters.AddWithValue("@em", txtemail.Text.Trim());
                    cmd.Parameters.AddWithValue("@ad", txtaddress.Text.Trim());
                    cmd.Parameters.AddWithValue("@co", txtcountry.SelectedValue);
                    cmd.Parameters.AddWithValue("@sate", txtsate.Text.Trim());

                    //cmd.Parameters.AddWithValue("@createDate", time.ToString("yyy-MM-dd-HH:mm:ss"));


                    con.Open();

                    int r = cmd.ExecuteNonQuery();
                    if (r > 0)
                    {

                        lblmsg.Visible = true;
                        lblmsg.Text = "Thanks for reaching out will look into your query save!";
                        lblmsg.CssClass = "alert alert-sucess";


                    }

                    else
                    {
                        lblmsg.Visible = true;



                        lblmsg.Text = "Thanks for reaching right now,pls try after someting ";
                        lblmsg.CssClass = "alert alert-danger";
                    }
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