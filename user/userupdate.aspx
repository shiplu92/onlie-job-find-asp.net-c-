<%@ Page Title="" Language="C#" MasterPageFile="~/user/index.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="userupdate.aspx.cs" Inherits="find_job_protal.user.userupdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <section>

        <div class="container pt-50 pb-40 ">

                <div class="row">
                    <div class="col-12 pb-20">
                          <asp:Label ID="xxx" runat="server" Visible="false" ></asp:Label>
                        <h2 class="contact-title text-center" >Build Resume</h2>
                    </div>
                    <div class="col-lg-6 mx-auto">
                        <form class="form-contact contact_form"  <%--novalidate="novalidate"--%> >
                            <div class="row">


                                <div class="col-12">
                                    <div class="form-group">
                   
                                    </div>






                                    <div class="col-12">


                                        <h6>personal information</h6>

                                    </div>

                                     <div class="col-md-6 col-lg-12">
                                    <div class="form-group">
                                     <label>Full Name</label>
                                       
                                        <asp:TextBox ID="txtfulname" runat="server" CssClass="form-control" placeholder="Enter Full Name" required Width="917px" ></asp:TextBox>

                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                            ErrorMessage="Name must be in characters"  Display="Dynamic"
                                            SetFocusOnError="true" Font-Size="Small" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$" 
                                            ControlToValidate="txtfulname"></asp:RegularExpressionValidator>
                                    </div>
                                </div>




                                <div class="col-md-6 col-lg-12">
                                    <div class="form-group">
                                        <label>User Name</label>
                                       
                                        <asp:TextBox ID="txtUName" runat="server" CssClass="form-control" placeholder="Enter Unique UserName" required Width="917px" ></asp:TextBox>
                                   

                                       
                                    </div>
                                </div>
                               
                               

                                    <div class="col-md-6 col-lg-12"> 
                                        <h6> Personal  infromation</h6>
                                    </div>
                               


                                     <div class="col-md-6 col-lg-12">
                                    <div class="form-group">
                                     <label>Address </label>
                                       
                                        <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control" placeholder="Enter Address " TextMode="MultiLine" required Width="917px"  ></asp:TextBox>
                                   

                                    </div>
                                </div>








                                           <div class="col-md-6 col-lg-12">
                                    <div class="form-group">
                                     <label>Mobile Number </label>
                                       
                                        <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control" placeholder="Enter mobile number"  required Width="914px"  ></asp:TextBox>
                                   
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                            ErrorMessage="Mobile NO.must have 11 digits"  Display="Dynamic"
                                            SetFocusOnError="true" Font-Size="Small" ForeColor="Red" ValidationExpression="^[0-9]{11}$" 
                                            ControlToValidate="txtmobile"></asp:RegularExpressionValidator>
                                    </div>
                                </div>




                                           <div class="col-md-6 col-lg-12">
                                    <div class="form-group">
                                     <label>E-mail </label>
                                       
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"
                                            placeholder="Enter your E-mail"  required TextMode="Email" Width="914px"></asp:TextBox>

                                   

                                    </div>
                                </div>





                                           <div class="col-md-6 col-lg-12">

                                     <label>Country </label>
                                    <div class="form-group" style="width:620px;">
                                     
                                       
                                        <asp:DropDownList ID="ddlcountry" runat="server"  CssClass="form-contact w-100"
                                            AppendDataBoundItems="True" DataTextField="CountryName" DataValueField="CountryName" DataSourceID="SqlDataSource1" Height="35px" Width="1096px" >
                                            <asp:ListItem Value="0">select country</asp:ListItem>
                                        </asp:DropDownList>

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                            ErrorMessage="country is required" ForeColor="Red" Display="Dynamic" 
                                            SetFocusOnError="true" Font-Size="Small"   InitialValue="0" ControlToValidate="ddlcountry"></asp:RequiredFieldValidator>


                             
                 
            </asp:RequiredFieldValidator>






                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT [CountryName] FROM [Country]">
                                           </asp:SqlDataSource>

                                    </div>
                                </div>


                                     
                                    <div class="col-12 pt-4">

                                        <h6>Education/Resume information</h6>

                                    </div>


                                    
                                           <div class="col-md-6 col-lg-12">
                                    <div class="form-group">
                                     <label>10% percentage/Grade </label>
                                       
                                        <asp:TextBox ID="txttenth" runat="server" CssClass="form-control"
                                            placeholder="Ex:90%"  required Width="928px" ></asp:TextBox>

                                   

                                    </div>
                                </div>

                                

                                    
                                           <div class="col-md-6 col-lg-12">
                                    <div class="form-group">
                                     <label>12th percentage/Grade </label>
                                       
                                        <asp:TextBox ID="txtwelft" runat="server" CssClass="form-control"
                                            placeholder="Ex:90%"  required Width="927px" ></asp:TextBox>

                                   

                                    </div>
                                </div>






                                    
                                           <div class="col-md-6 col-lg-12">
                                    <div class="form-group">
                                     <label>Graduation/Grade </label>
                                       
                                        <asp:TextBox ID="txtgraduation" runat="server" CssClass="form-control"
                                            placeholder="Ex:Bech with 9.2 pointer"  required Width="929px" ></asp:TextBox>

                                   

                                    </div>
                                </div>



                                         
                                           <div class="col-md-6 col-lg-12">
                                    <div class="form-group">
                                     <label>Post Graduation/Grade </label>
                                       
                                        <asp:TextBox ID="txtpostg" runat="server" CssClass="form-control"
                                            placeholder="Post Graduation"  required Width="932px" ></asp:TextBox>

                                   

                                    </div>
                                </div>

                                           <div class="col-md-6 col-lg-12">
                                    <div class="form-group">
                                     <label>PHD with percentage/Grade </label>
                                       
                                        <asp:TextBox ID="txtphd" runat="server" CssClass="form-control"
                                            placeholder="Phd Grade"  required Width="941px" ></asp:TextBox>

                                   

                                    </div>
                                </div>






                                         <div class="col-md-6 col-lg-12">
                                    <div class="form-group">
                                     <label>Job profile/work </label>
                                       
                                        <asp:TextBox ID="txtwork" runat="server" CssClass="form-control"
                                            placeholder="Job Profile"  required Width="940px" ></asp:TextBox>

                                   

                                    </div>
                                </div>





                                    
                                         <div class="col-md-6 col-lg-12">
                                    <div class="form-group">
                                     <label>work Experience </label>
                                       
                                        <asp:TextBox ID="txtwExperien" runat="server" CssClass="form-control"
                                            placeholder=" Work Experience "  required Width="940px" ></asp:TextBox>

                                   

                                    </div>
                                </div>



                                    
                                         <div class="col-md-6 col-lg-12">
                                    <div class="form-group">
                                     <label>Upload/Resume 
                                       
                                        <asp:FileUpload ID="fuResume" runat="server" CssClass="form-form-control pt-2 " 
                                            ToolTip=".doc,docx,.pdf extension only" Width="1151px" />

                                   

                                        </label>
                                       
                                   

                                    </div>
                                </div>








                            </div>
                            <div class="form-group mt-3">

                                  <asp:Button ID="btnupdate" runat="server" Text="Update" class="button button-contactForm boxed-btn mr-4 " OnClick="btnupdate_Click" />
                                       
                              <%--  <button type="submit" class="button button-contactForm boxed-btn">Send</button>--%>
                               
                            </div>
                        </form>
                    </div>
                    </div>

        </div>
    </section>














</asp:Content>
