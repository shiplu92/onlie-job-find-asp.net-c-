<%@ Page Title="" Language="C#" MasterPageFile="~/user/index.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="loginadd.aspx.cs" Inherits="find_job_protal.user.loginadd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





    <section>
        <div class="container pt-50 pb-40">

            <div class="row">

    




             










                <div class="col-md-3">
                 
                                <form>
                                    <asp:Label ID="lbl" runat="server"  Visible="false"></asp:Label>

<br />
                                    <br />
                                    <br />


  <div class="mb-3">
    <label for="exampleInputEmail1"      class="form-label">First Name</label>
     <input type="name" id="txtfirst" runat="server" placeholder="Enter your name"  class="form-control"  />
   
  </div>
                                     <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Last Name</label>
   <input type="name" id="txtlast" runat="server"   placeholder="Enter your Lastname"                class="form-control"  />
   
  </div>
                                     <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
     <input type="email" id="txtemail" runat="server"    placeholder="Enter your E-Mail"        class="form-control"  />
   
  </div>
                                     <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Address</label>
      <input type="Address" id="txtaddr" runat="server"     placeholder="Enter your Address"             class="form-control"  />
   
  </div>




  

                                 <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Password</label>
      <input type="password" id="txtpass" runat="server"    placeholder="Enter your password"                  class="form-control"  />
   
  </div>













                                                                     <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Mobile</label>
     <input type="number" id="txtmob" runat="server"      placeholder="Enter your contact Number"                   class="form-control"  />
   
  </div>

 </div>
                                        





 </div>
        
               

  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Country</label>&nbsp;



         </div>
  
        <%--     <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
     <input type="Password" id="Password1" runat="server" class="form-control"  />



         </div>--%>
            <div class="grid-md col-md-3">

               

   <select runat="server" id="txtselect" name="D1"                        >
       
       
       
       <option>india</option>

        <option>bangladesh</option>

        <option>Enland</option>

        <option>pakishtan</option>
   </select></div>

<%--                 <div class="grid-col-4">
                         <button type="submit" class="btn btn-primary">Submit</button>
                       <%--<asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Submit" />--%>

                   <%-- </div>--%>

</form>

               

                    
 

                </div>
        <br />
        <br>
                 <div class="col-md-3"></div>
                 <div class="col-md-3">
    <label for="exampleInputPassword1" class="form-label">

               

                <asp:Button ID="btnadd" Cssclass="btn btn-primary" runat="server" Text="Submit" OnClick="btnadd_Click"  />



       


                     </label>
        </div>
                 <div class="col-md-3"></div>

            </div>





        </div>
    </section>












</asp:Content>
