<%@ Page Title="" Language="C#" MasterPageFile="~/user/index.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="userprofile.aspx.cs" Inherits="find_job_protal.user.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     

    <div style="background-image:url('../images/bg.jpg'); height:720px; background-repeat:no-repeat;background-size:cover;background-attachment:fixed; ">
         <div class="container-fluid pt-4 pb-4">
               <div>


                <asp:Label ID="lblmsg" runat="server" ></asp:Label>
            </div>
           
                <h3 class="text-center">Edite</h3>


             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />

             <div class="row mb-3 pt-sm-3">

                 <div class="col-md-12">

                     <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered"
                         EmptyDateText="No record to display" AutoGenerateColumns="False" AllowPaging="true" PageSize="5"
                         OnPageIndexChanging="GridView1_PageIndexChanging"
                         DataKeyNames="UserId"  OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  >
                         <Columns>
                            
                            
                            
                             <asp:BoundField DataField="Sr.No" HeaderText="Sr.No">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>
                            
                            
                             <asp:BoundField DataField="UserName" HeaderText="User Name">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>
                              <asp:BoundField DataField="Name" HeaderText="Full Name">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>
                            
                            
                             <%--<asp:BoundField DataField="des" HeaderText="Descriptions">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>--%>


                              <%-- <asp:BoundField DataField="ed" HeaderText="Educations">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>--%>
                            
                            
                             <asp:BoundField DataField="Email" HeaderText="Email">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>
                             <%-- <asp:BoundField DataField="sp" HeaderText="Specialazations">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>--%>
                            
                            
                             <asp:BoundField DataField="Mobile" HeaderText="Mobile">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>


                            <%--   <asp:BoundField DataField="sa" HeaderText="Salary">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>--%>
                            
                            
                             <asp:BoundField DataField="Address" HeaderText="Address">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>
                              <asp:BoundField DataField="Resume" HeaderText="Resume">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>
                            
                            
                             <%--<asp:BoundField DataField="we" HeaderText="Webside">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>

                              <asp:BoundField DataField="em" HeaderText="E-mail">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>--%>

                             <%-- <asp:BoundField DataField="ad" HeaderText="Address">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>--%>

                            <%--  <asp:BoundField DataField="co" HeaderText="Country">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>
                               <asp:BoundField DataField="sate" HeaderText="Sate">
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>--%>

                             <asp:TemplateField HeaderText="Edit">

                                 <ItemTemplate>
                                     <asp:LinkButton ID="btnedit" runat="server" CommandName="Editjob" CommandArgument='<%# Eval("UserId") %>'>
                                         <asp:Image ID="img" runat="server" ImageUrl="~/assets/img/icon/add.png" Height="25px" />
                                     </asp:LinkButton>
                                 </ItemTemplate>
                                 <ItemStyle HorizontalAlign="Center" Width="50px" />
                             </asp:TemplateField>



<%--                             <asp:CommandField CausesValidation="false" HeaderText="    Delete" ShowDeleteButton="true"
                                 DeleteImageUrl="~/assets/img/icon/images11.png"  ButtonType="Image" >
                             
                                 <ControlStyle Height="25px " Width="25px" />
                                 <ItemStyle HorizontalAlign="Center" />

                               </asp:CommandField >

                          --%>


                         </Columns>

                         <HeaderStyle BackColor="#7200cf" ForeColor="White" />


                     </asp:GridView>



                 </div>

             </div>


         </div>

     
        </div>











      

















</asp:Content>
