using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace find_job_protal.user
{
    public partial class userupdate : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;

        string query;


        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;






        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["userregister"] == null)
            {
                //Response.Redirect("Login.aspx");

            }


            if (!IsPostBack)
            {
                showuser();

            }






           



        }

        private void showuser()
        {




            if (Request.QueryString["id"] != null)
            {

                con = new SqlConnection(str);
                query = "select * from userregister where UserId='" + Request.QueryString["id"] + "'";
                cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.HasRows)
                {
                    while (sdr.Read())
                    {

                        txtUName.Text = sdr["UserName"].ToString();


                        txtfulname.Text = sdr["Name"].ToString();

                        txtEmail.Text = sdr["Email"].ToString();


                        txtmobile.Text = sdr["Mobile"].ToString();


                        txttenth.Text = sdr["TenthGrade"].ToString();


                        txtwelft.Text = sdr["TwelfthGrade"].ToString();

                        txtUName.Text = sdr["UserName"].ToString();


                        txtgraduation.Text = sdr["GradutionGrade"].ToString();


                        txtpostg.Text = sdr["PostGradutionGrade"].ToString();


                        txtphd.Text = sdr["Phd"].ToString();

                        txtwork.Text = sdr["WorksOn"].ToString();


                        txtwExperien.Text = sdr["Experience"].ToString();

                        txtaddress.Text = sdr["Address"].ToString();


                        ddlcountry.Text = sdr["Country"].ToString();

                    }


                }



                else
                {



                    xxx.Text = "User not found...";
                    xxx.CssClass = "alert alert-danger";
                }




                sdr.Close();
                con.Close();
























            }

        }






        protected void btnupdate_Click(object sender, EventArgs e)
        {


            try
            {

                if (Request.QueryString["id"] != null)
                {
                    string concatQuery = string.Empty;


                    string filePath = string.Empty;
                    //bool isValidToExecute = false;
                    bool isValid = false;
                    con = new SqlConnection(str);
                    if (fuResume.HasFile)
                    {

                        if (ultis.isvalidExtensionResume(fuResume.FileName))
                        {
                            concatQuery = "Resume=@resume";
                            isValid = true;
                        }
                        else
                        {
                            concatQuery = string.Empty;




                        }




                    }


                    else
                    {
                        concatQuery = string.Empty;

                    }







                    query = @"Update userregister set UserName=@UserName,Name=@Name,Email=@Email,Mobile=@Mobile
                                     ,TenthGrade=@TenthGrade,TwelfthGrade=@TwelfthGrade,GradutionGrade=@GradutionGrade,
                                       PostGradutionGrade=@PostGradutionGrade,Phd=@Phd,WorksOn=@WorksOn,
                                       Experience=@Experience," + concatQuery + "Address=@Address,Country=@Country where  UserId=@UserId";
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@UserName", txtUName.Text.Trim());


                    cmd.Parameters.AddWithValue("@Name", txtfulname.Text.Trim());

                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());

                    cmd.Parameters.AddWithValue("@Mobile", txtmobile.Text.Trim());



                    cmd.Parameters.AddWithValue("@TenthGrade", txttenth.Text.Trim());

                    cmd.Parameters.AddWithValue("@TwelfthGrade", txtwelft.Text.Trim());

                    cmd.Parameters.AddWithValue("@GradutionGrade", txtgraduation.Text.Trim());

                    cmd.Parameters.AddWithValue("@PostGradutionGrade", txtpostg.Text.Trim());



                    cmd.Parameters.AddWithValue("@Phd", txtphd.Text.Trim());

                    cmd.Parameters.AddWithValue("@WorksOn", txtwork.Text.Trim());

                    cmd.Parameters.AddWithValue("@Experience", txtwExperien.Text.Trim());

                  


                    cmd.Parameters.AddWithValue("@Address", txtaddress.Text.Trim());

                    cmd.Parameters.AddWithValue("@Country", ddlcountry.SelectedValue);


                    cmd.Parameters.AddWithValue("UserId", Request.QueryString["id"]);

                    if (fuResume.HasFile)
                    {
                        if (isValid)
                        {
                            Guid obj = Guid.NewGuid();
                            filePath = "shiplu/" + obj.ToString() + fuResume.FileName;
                            fuResume.PostedFile.SaveAs(Server.MapPath("~/shiplu/") + obj.ToString() + fuResume.FileName);
                            cmd.Parameters.AddWithValue("@resume", filePath);
                            //isValidToExecute = true;
                            isValid = true;
                        }



                        else
                        {

                            xxx.Visible = true;

                            concatQuery = string.Empty;

                            xxx.Text = "Please Select.doc,.docx,.pdf file for resume ";
                            xxx.CssClass = "alert alert-danger";

                        }





                    }


                    else
                    {
                        isValid = true;
                    }




                    if (isValid)
                    {
                        con.Open();
                        int r = cmd.ExecuteNonQuery();
                        if (r > 0)
                        {
                            xxx.Visible = true;



                            xxx.Text = "Resume details updated successfull ";
                            xxx.CssClass = "alert alert-success";

                        }
                        else
                        {
                            xxx.Visible = true;



                            xxx.Text = "cannot update record ";
                            xxx.CssClass = "alert alert-danger";


                        }

                    }









                }


                else
                {
                    xxx.Visible = true;



                    xxx.Text = "cannot update the record,please try <br>Relogin</br>! ";
                    xxx.CssClass = "alert alert-danger";


                }

            }




            catch (SqlException ex)
            {
                if (ex.Message.Contains("Violation of UNIQUE KEY constraint"))
                {
                    xxx.Visible = true;



                    xxx.Text = "<b>" + txtUName.Text.Trim() + " </b> UserName Already exist, try new one... ";
                    xxx.CssClass = "alert alert-danger";
                }
                else
                {
                    Response.Write("<script> alert('" + ex.Message + "');<script>");
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