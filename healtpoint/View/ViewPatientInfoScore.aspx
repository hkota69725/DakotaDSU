<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPatientInfoScore.aspx.cs" Inherits="healtpoint.ViewPatientInfoScore" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient Information and Score</title>
    <link rel="stylesheet" href="~/styles/main1.css"/>
    <link rel="stylesheet" href="~/styles/bootstrap.css"/>
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
</head>
<body>
       <div class="container-fluid nav-header">
        <div class="row own-header justify-content-end">
            <span class=""> Screening, Brief Intervention, and Referral to Treatment</span>
        </div>
           <div id="mySidenav" class="sidenav">
  <a href="default1.aspx?status=end" id="about">
      <img id="logoutimg" src="/images/userlogo.png" alt="logo"/>
      <span>LOGOUT</span>
  </a>
</div>
            </div>
    <form class="form1 text-center" runat="server">
        <div class="row img-row" style="margin-top: -4.6%; margin-left: -12%;">
            <asp:ImageButton ID="Button8" ImageUrl="/images/logo.png" AlternateText="Home" runat="server" onClick="Button8_Click" class="own-header-img img-fluid"/>
                  
    </div>
   
       
        <div class="row justify-content-center">
        <h3> Patient's Screening Results </h3></div>

           <div> 
               <asp:Button ID="Button1" runat="server" Text="  Search for new patient" OnClick="Button6_Click"/>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
  </div>
                <div class="form-group row justify-content-center" runat="server" id="myDIV1">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right"> First Name :  </label>
    <div class="col-sm-6 text-left input9">
        <asp:Label ID="lbFN" Style="color: brown"  runat="server" Text=""></asp:Label> 
    </div>
  </div>
        <div class="form-group row justify-content-center" runat="server" id="myDIV2">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Last Name :</label>
    <div class="col-sm-6 text-left input9">
         <asp:Label ID="lbLNm" Style="color: brown"   runat="server" Text=""></asp:Label>
    </div>
  </div>

  <div class="form-group row justify-content-center" runat="server" id="myDIV3">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">Gender :</label>
    <div class="col-sm-6 text-left input9">
        <asp:Label ID="lbGdr" Style="color: brown"  runat="server" Text=""></asp:Label> 
    </div>
  </div>
        <div class="form-group row justify-content-center" runat="server" id="myDIV4">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Date of Birth:</label>
    <div class="col-sm-6 text-left input9">
                 <asp:Label ID="lbDOB" Style="color: brown"  runat="server" Text=""></asp:Label> 
    </div>
  </div>



        <asp:Label ID="Lbl" runat="server" Style="color: blue;text-decoration: underline">Patient's Assessments </asp:Label>
<div >
        <% =getScore() %>
    </div>
        <asp:Label runat="server">Click on the dates to view detailed Assessment</asp:Label>
           <br /><br />
<div >
    <asp:Label runat="server">Current Provider is :</asp:Label>
        <% = getProvider() %>
    <br/>
        <div class="form-group row justify-content-center">
                     <label for="exampleInputName" id="lb1"  class="col-sm-6 col-form-label text-right">Change Provider: </label>
                   <div class="col-sm-6 text-left">
                       <asp:DropDownList ID="DropDownList1" Class="input9" DataTextField="Provider" runat="server">
                           </asp:DropDownList>
                       <div class="form-group row justify-content-center">
                            <asp:Button ID="Button5" runat="server" Text="Go" OnClick="Button5_Click"/>
                           
                     </div>
                   </div>
         </div>
    </div>
    </form>
</body>
</html>