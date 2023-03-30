<%@ Page Title="" Language="C#" MasterPageFile="~/user/index.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="profile.aspx.cs" Inherits="find_job_protal.user.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   

    <div class="container pt-5 pb-5">
        <div class="main-body">
            <asp:DataList ID="dlprofile"  runat="server" Width="100%" OnItemCommand="dlprofile_ItemCommand" OnSelectedIndexChanged="dlprofile_SelectedIndexChanged"> 
                <ItemTemplate>

                    <div class="row gutters-sm">
                        <div class="col-md-4 mb-3">
                            <div class="card">

                                <div class="card-body">
                                    <div class="d-flex flex-column align-item-center text-center" >


                                        <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="userpic" class="rounded-circle" width="150" />
                                        <div class="mt-3">
                                            <h4 class="text-capitalize"> <%# Eval("Name") %></h4>


                                            <p class="text-secondary mb-1">@ <%# Eval("UserName") %></p>

                                            <p class="text-muted font-size-sm text-capitalize">

                                                <i class="fas fa-map-marker-alt"></i> <%# Eval("Country") %>
                                            </p>
                                           
                                        </div>

                                    </div>

                                </div>
                      </div>

                        </div>



                        <div class="col-md-8">
                            <div class="card mb-3">

                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm-3">

                                            <h6 class="mb-0"> Full name</h6>

                                        </div>
                                        <div class="col-sm-9 text-secondary text-capitalize">
                                          <%# Eval("Name") %>

                                        </div>
                                    </div>
                                    <hr />
                                     <div class="row">
                                        <div class="col-sm-3">

                                            <h6 class="mb-0"> Email</h6>

                                        </div>
                                        <div class="col-sm-9 text-secondary text-capitalize">
                                           <%# Eval("Email") %>

                                        </div>
                                    </div>
                                </div>
                                <hr />
                                 <div class="row">
                                        <div class="col-sm-3">

                                            <h6 class="mb-0"> Mobile</h6>

                                        </div>
                                        <div class="col-sm-9 text-secondary text-capitalize">
                                       <%# Eval("Mobile") %>

                                        </div>
                                    </div>

                                <hr />



                                <div class="row">
                                        <div class="col-sm-3">

                                            <h6 class="mb-0"> address</h6>

                                        </div>
                                        <div class="col-sm-9 text-secondary text-capitalize">
                                          <%# Eval("Address") %>

                                        </div>
                                    </div>

                                <hr />

                                <div class="row">
                                        <div class="col-sm-3">

                                            <h6 class="mb-0"> resume upload</h6>

                                        </div>
                                        <div class="col-sm-9 text-secondary text-capitalize">
                                             <%# Eval("Resume")==DBNull.Value ? "Not Upload":"Uploaded" %>

                                        </div>
                                    </div>

                                <hr />
                                  
                                <div class="row">
                                    <div class="col-sm-12">
                                        <asp:Button ID="btnedit" runat="server" Text="Edit" CssClass="button button-contactFrom boxed-btn " CommandName="EditeUser"  CommandArgument=' <%# Eval(" userregister") %>'/>
                                    </div>
                                </div>
                                <hr />

                            </div>

                        </div>

                    </div>
                </ItemTemplate>
               
            </asp:DataList>




        </div>

    </div>
</asp:Content>
