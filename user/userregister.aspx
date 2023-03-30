<%@ Page Title="" Language="C#" MasterPageFile="~/user/index.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="userregister.aspx.cs" Inherits="find_job_protal.user.userregister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



   <section>

        <div class="container pt-50 pb-40 ">

                <div class="row">
                    <div class="col-12 pb-20">
                          <asp:Label ID="xxx" runat="server" Visible="false" ></asp:Label>
                        <h2 class="contact-title text-center" >sing up</h2>
                    </div>
                    <div class="col-lg-6 mx-auto">
                        <form class="form-contact contact_form"  <%--novalidate="novalidate"--%> >
                            <div class="row">


                                <div class="col-12">
                                    <div class="form-group">
                   
                                    </div>






                                    <div class="col-12">


                                        <h6>Login information</h6>

                                    </div>






                                <div class="col-12">
                                    <div class="form-group">
                                        <label>User Name</label>
                                       
                                        <asp:TextBox ID="txtUName" runat="server" CssClass="form-control" placeholder="Enter Unique UserName" required></asp:TextBox>
                                   

                                       
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        
                                          <label>Password</label>
                                       
                                        <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control" ForeColor="Red" placeholder="Enter Unique password" required></asp:TextBox>
                                   
                                        
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">

                                   
                                          <label>Confirm Password</label>
                                       
                                        <asp:TextBox ID="txtconfirmfpass" runat="server" CssClass="form-control" ForeColor="Red" placeholder="Enter confirm password" required></asp:TextBox>

                                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                            ErrorMessage="password & confirm password should be same."
                                            ControlToCompare="txtpassword" ControlToValidate="txtconfirmfpass" ForeColor="Red"
                                            Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:CompareValidator>


                                       
                                    </div>
                                </div>

                                    <div class="col-12"> 
                                        <h6> Personal  infromation</h6>
                                    </div>
                                <div class="col-12">
                                    <div class="form-group">
                                     <label>Full Name</label>
                                       
                                        <asp:TextBox ID="txtfulname" runat="server" CssClass="form-control" placeholder="Enter Full Name" required></asp:TextBox>

                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                            ErrorMessage="Name must be in characters"  Display="Dynamic"
                                            SetFocusOnError="true" Font-Size="Small" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$" 
                                            ControlToValidate="txtfulname"></asp:RegularExpressionValidator>
                                    </div>
                                </div>


                                     <div class="col-12">
                                    <div class="form-group">
                                     <label>Address </label>
                                       
                                        <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control" placeholder="Enter Address " TextMode="MultiLine" required ></asp:TextBox>
                                   

                                    </div>
                                </div>








                                           <div class="col-12">
                                    <div class="form-group">
                                     <label>Mobile Number </label>
                                       
                                        <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control" placeholder="Enter mobile number"  required ></asp:TextBox>
                                   
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                            ErrorMessage="Mobile NO.must have 11 digits"  Display="Dynamic"
                                            SetFocusOnError="true" Font-Size="Small" ForeColor="Red" ValidationExpression="^[0-9]{11}$" 
                                            ControlToValidate="txtmobile"></asp:RegularExpressionValidator>
                                    </div>
                                </div>




                                           <div class="col-12">
                                    <div class="form-group">
                                     <label>E-mail </label>
                                       
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"
                                            placeholder="Enter your E-mail"  required TextMode="Email"></asp:TextBox>

                                   

                                    </div>
                                </div>





                                           <div class="col-12">
                                    <div class="form-group">
                                     <label>Country </label>
                                       
                                        <asp:DropDownList ID="ddlcountry" runat="server" DataSourceID="SqlDataSource1" CssClass="form-contact w-100"
                                            AppendDataBoundItems="true" DataTextField="CountryName" DataValueField="CountryName" >
                                            <asp:ListItem Value="0">select country</asp:ListItem>
                                        </asp:DropDownList>

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                            ErrorMessage="country is required" ForeColor="Red" Display="Dynamic" 
                                            SetFocusOnError="true" Font-Size="Small"   InitialValue="0" ControlToValidate="ddlcountry">

                                        </asp:RequiredFieldValidator>


                             
                






                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                            ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT [CountryName] FROM [Country]"></asp:SqlDataSource>

                                    </div>
                                </div>


                                     








                            </div>
                            <div class="form-group mt-3">

                                  <asp:Button ID="btnregister" runat="server" Text="Register" class="button button-contactForm boxed-btn mr-4 "
                                      OnClick="btnregister_Click"   />
                              <%--  <button type="submit" class="button button-contactForm boxed-btn">Send</button>--%>
                                <span class="clickLink"><a href="../user/login.aspx"> Already Register? Click here.</a></span>
                            </div>
                        </form>
                    </div>
                    </div>

        </div>
    </section>





</asp:Content>
