<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="New job.aspx.cs" Inherits="find_job_protal.Admin.New_job" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    
    <div style="background-image:url('../images/bg.jpg'); height:720px; background-repeat:no-repeat;background-size:cover;background-attachment:fixed; ">


        <div class="container pt-4 pb-4">

            <%--<div>


                <asp:Label ID="lblmsg" runat="server" Visible="false" ></asp:Label>
            </div>--%>


            <div class="btn-toolbar justify-content-between mb-3">
                <div class="btn-group">
                      <asp:Label ID="lblmsg" runat="server" Visible="false" ></asp:Label>
                </div>


                <div class="input-input-group h-h-25">
                    <asp:HyperLink ID="linkBack" runat="server" NavigateUrl="~/Admin/job list.aspx" CssClass="btn btn-secondary" Visible="false">< Back</asp:HyperLink>
                </div>


            </div>
           
                <h3 class="text-center"><%Response.Write(Session["title"]); %></h3>

          <%--   <br />
            <br />
            <br />
            <br />
         

             <br />
            <br />
            <br />
            <br />


             <br />
            <br />
            <br />
            <br />
             <br />--%>



                
           <div class="row mr-lg-5 ml-lg-5 mb-3" >

               <div class="col-md-6 pt-3">
                   <label for="txtjobtitle" style="font-weight:600"> jod Title</label>
                   <asp:TextBox ID="txtjobtitle" runat="server" CssClass="form-form-control " placeholder="Ex.web Developer,App developer" required></asp:TextBox>
               </div>

               
               <div class="col-md-6 pt-3">
                   <label for="txtnuberpost" style="font-weight:600">Number of post</label>
                   <asp:TextBox ID="txtnuberpost" runat="server" CssClass="form-form-control " placeholder="Enter number job position"  required TextMode="Number" >

                   </asp:TextBox>
               </div>




           </div>



                       <div class="row mr-lg-5 ml-lg-5 mb-3" >

               <div class="col-md-12 pt-3">
                   <label for="txtDescription" style="font-weight:600"> Description</label>
                   <asp:TextBox ID="txtDescription" runat="server" CssClass="form-form-control " placeholder="Enter job Description" TextMode="MultiLine" required Width="869px" ></asp:TextBox>
               </div>

            



           </div>



              <div class="row mr-lg-5 ml-lg-5 mb-3 ">

               <div class="col-md-6 pt-3">
                   <label for="txteducation" style="font-weight:600">Qualification/Education required</label>
                   <label for="txteducation" style="font-weight:600">
                   <asp:TextBox ID="txteducation" runat="server" CssClass="form-form-control " placeholder="Ex.MCA,BTech,BBA,MBA,PHD,DIPLOMA,BSC" required Width="338px" ></asp:TextBox>
                   </label>
               </div>

               
               <div class="col-md-6 pt-3">
                   <label for="txtexperience" style="font-weight:600">Experience required</label>
                   <asp:TextBox ID="txtexperience" runat="server" CssClass="form-form-control " placeholder="Ex.1 year,2 year,3 year" required Width="302px"  ></asp:TextBox>
               </div>




           </div>



            
              <div class="row mr-lg-5 ml-lg-5 mb-3 ">

               <div class="col-md-6 pt-3">
                   <label for="txtSpecialization" style="font-weight:600">Specialization</label>
                   <label for="txtSpecialization" style="font-weight:600">
                   <asp:TextBox ID="txtSpecialization" runat="server" CssClass="form-form-control " placeholder="Enter Specialization" required  TextMode="MultiLine" Width="381px"></asp:TextBox>
                   </label>
               </div>

               
               <div class="col-md-6 pt-3">
                   <label for="txtlastdate" style="font-weight:600">Last date</label>
                   <label for="txtSpecialization" style="font-weight:600"></label>
                   <asp:TextBox ID="txtlastdate" runat="server" CssClass="form-form-control " placeholder="Enter Last date to Apply" TextMode="Date" required Width="389px"  ></asp:TextBox>
               </div>




           </div>


            
              <div class="row mr-lg-5 ml-lg-5 mb-3" >

               <div class="col-md-6 pt-3">
                   <label for="txtsalary" style="font-weight:600">salary</label>
                   <asp:TextBox ID="txtsalary" runat="server" CssClass="form-form-control " placeholder="Ex:25k/month.30k/month,40k/month" required Width="424px"  ></asp:TextBox>
               </div>

               
               <div class="col-md-6 pt-3">
                   <label for="ddltobtype" style="font-weight:600">job Type</label>





                   <asp:DropDownList ID="ddltobtype" runat="server" CssClass="from-form-control" Width="406px">

                       <asp:ListItem Value="0">select job type</asp:ListItem>
                       <asp:ListItem>Full Time</asp:ListItem>

                       <asp:ListItem>Part Time</asp:ListItem>
                       <asp:ListItem>Remote</asp:ListItem>
                       <asp:ListItem>Freelance</asp:ListItem>
                   </asp:DropDownList>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="JobType is required" 
                       ForeColor="Red" ControlToValidate="ddltobtype" InitialValue="0" Display="Dynamic" SetFocusOnError="true">

                   </asp:RequiredFieldValidator>


               </div>




           </div>






              <div class="row mr-lg-5 ml-lg-5 mb-3 ">

               <div class="col-md-6 pt-3">
                   <label for="txtcompany" style="font-weight:600">Company/organaization</label>
                   <asp:TextBox ID="txtcompany" runat="server" CssClass="form-form-control "  placeholder="Enter Company"            required Width="334px"  ></asp:TextBox>

                   

               </div>

               

                   










              <%-- <div class="col-md-6 pt-3">
                  <label for="companylogo" style="font-weight:600">Company Logo</label>

                   <asp:FileUpload ID="fucompanylogo" runat="server" CssClass="form-form-control" ToolTip=".jpg,.jpeg,.png extension only" Width="345px"  />



                   
                 

               </div>--%>




           </div>







              
              <div class="row mr-lg-5 ml-lg-5 mb-3" >

               <div class="col-md-6 pt-3">
                   <label for="txtweb" style="font-weight:600">Website</label>
                   <asp:TextBox ID="txtweb" runat="server" CssClass="form-form-control " TextMode="Url" placeholder="website" Width="403px"  ></asp:TextBox>
               </div>

               
               <div class="col-md-6 pt-3">
                   <label for="txtemail" style="font-weight:600">Email</label>
                   <asp:TextBox ID="txtemail" runat="server" CssClass="form-form-control " TextMode="Email" placeholder="EMail" required Width="422px"  ></asp:TextBox>
               </div>




           </div>






            
              <div class="row mr-lg-5 ml-lg-5 mb-3 ">

               <div class="col-md-6 pt-3">
                   <label for="txtweb" style="font-weight:600">Address</label>
                   <asp:TextBox ID="txtaddress" runat="server" CssClass="form-form-control " TextMode="MultiLine"  placeholder="Enter you address" Width="405px"  ></asp:TextBox>
               </div>

               
               




           </div>



            
              <div class="row mr-lg-5 ml-lg-5 mb-3" >

               <div class="col-md-6 pt-3">
                   <label for="txtcountry" style="font-weight:600">Country</label>
                      <asp:DropDownList ID="txtcountry" runat="server" CssClass="from-form-control" Width="408px">

                       <asp:ListItem Value="0">select job type</asp:ListItem>
                       <asp:ListItem>india</asp:ListItem>

                       <asp:ListItem>bangladesh</asp:ListItem>
                       <asp:ListItem>augtileya</asp:ListItem>
                       <asp:ListItem>France</asp:ListItem>
                   </asp:DropDownList>
                   <asp:RequiredFieldValidator ID="txtna" runat="server" ErrorMessage="Country is required" 
                       ForeColor="Red" ControlToValidate="txtcountry" InitialValue="0" Display="Dynamic" SetFocusOnError="true">

                   </asp:RequiredFieldValidator>
                   
               </div>

               
               <div class="col-md-6 pt-3">
                   <label for="txtemail" style="font-weight:600">state</label>
                   <asp:TextBox ID="txtsate" runat="server" CssClass="form-form-control "  placeholder="sate" required Width="431px"  ></asp:TextBox>
               </div>




           </div>
















        </div>
        <div class="row mr-lg-5 ml-lg-5 mb-3 pt-4">

            <div class="col-md-3 col-md-offset-2 mb-3">
                <asp:Button ID="btnb" runat="server" Text="Add Job" CssClass="btn btn-primary btn-block" BackColor="#7200cf" OnClick="btnb_Click"  />
            </div>
        </div>

    </div>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
