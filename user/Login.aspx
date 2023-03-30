<%@ Page Title="" Language="C#" MasterPageFile="~/user/index.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Login.aspx.cs" Inherits="find_job_protal.user.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




     <form id="form1" >
        <div>




            <div class="container-fluid">
        <div class="row" style="height:120px; " ></div>
        <div class="row">
         <div class="col-md-4"> </div>
        <div class="col-md-4 bg-light rounded-3">
            <h1 class="text-success text-center">Login</h1>
            <form>
                  <asp:Label ID="lbl" runat="server"  Visible="false"></asp:Label>


  <div class="mb-3">


    
    <label for="exampleInputEmail1" class="form-label">Name</label>
   
      <asp:TextBox ID="txtuname" runat="server" CssClass="form-control" Width="274px"  ></asp:TextBox>
   
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
   

      <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" TextMode="Password" reduired Width="274px"  ></asp:TextBox>
  </div>

                   <asp:Label>Select Admin or user </asp:Label>
  <div class="mb-3 ">
   
      <label id="Errms" class="text-danger" runat="server" ></label>
      <asp:DropDownList ID="ddlogin" runat="server">

          <asp:ListItem Value="0"> select Login</asp:ListItem>

          <asp:ListItem>Admin</asp:ListItem>
          <asp:ListItem>User</asp:ListItem>
      </asp:DropDownList>


      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="userType is rediers"
          
       foreColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" InitialValue="0" ControlToValidate="ddlogin"  ></asp:RequiredFieldValidator>

  </div>
              <br />
                <br />

                 <div class="d-grid">

                     <asp:Button ID="logbtn" runat="server" Text="Login"  Class="btn btn-success btn-block" OnClick="logbtn_Click"  />
                </div>
                

  
                <br/>
</form>


        </div>
        <div class="col-md-4"> </div>

        </div>
        
    </div>





        </div>
    </form>








</asp:Content>
