<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewQuesScores.aspx.cs" Inherits="healtpoint.ViewAuditQuestions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="~/styles/main1.css"/>
    <link rel="stylesheet" href="~/styles/bootstrap.css"/>
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
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
        <h3> Patient's Brief Intervention </h3></div>

           <div> 
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
         <asp:Label ID="lbLNm" Style="color: brown"  runat="server" Text=""></asp:Label>
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
<div class="form-group justify-content-center">
        <asp:Label runat="server" Style="color: blue;text-decoration: underline"> Assessment Scores </asp:Label>
        <br />
        <% =getAssmtScore() %>
       </div>
    </div>
<div class="form-group justify-content-center">
        <asp:Label runat="server" Style="color: blue;text-decoration: underline"> AUDIT Assessment </asp:Label>
        <br />
        <% =getAuditQuestnScore() %>
        <br />
        <% =getAuditSingleScore() %>
      </div> 
<div class="form-group justify-content-center">
        <asp:Label runat="server" Style="color: blue;text-decoration: underline"> Tobacco Assessment </asp:Label>
        
        <% =getTobaccoQuestnScore() %>
       </div> 

  <!--  <div class="form-group justify-content-center">
        <asp:Label runat="server" Style="color: blue;text-decoration: underline"> Single Drug Assessment </asp:Label>
   
        <% =getSingleDrugQuestnScore() %>

    </div> 
        -->
<div class="form-group justify-content-center">
        <asp:Label runat="server" Style="color: blue;text-decoration: underline"> DAST-10 Assessment </asp:Label>
        <br />
        <% =getDastQuestnScore() %>
        <br />
        <% =getDastSingleScore() %>
    </div>    
<div class="form-group justify-content-center">
        <asp:Label runat="server" Style="color: blue;text-decoration: underline"> PHQ-9 Assessment </asp:Label>
        <br />
        <% =getPHQQuestnScore() %>
        <br />
        <% =getPHQSingleScore() %>
        <br /><br />
    </div>
        <asp:Button ID="Button5" runat="server" Text="Back" OnClick="Button5_Click" />

    </form>
</body>
</html>
