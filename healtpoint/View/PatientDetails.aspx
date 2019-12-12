<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientDetails.aspx.cs" Inherits="healtpoint.View.PatientDetails" %>

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
        <div class="row img-row">
            <a href ="patientList.aspx?type=1"><img src="/images/logo.png" alt="logo" class="own-header-img img-fluid"/></a>
        </div>
    </div>
   <div id="mySidenav" class="sidenav">
  <a href="default1.aspx?status=endStaff" id="about">
      <img id="logoutimg" src="/images/userlogo.png" alt="logo"/>
      <span>LOGOUT</span>
  </a>
</div>
       <form class="form1 text-center" runat="server">
        <div class="row justify-content-center">
        <h3> Patient's Brief Intervention </h3></div>

           <div> 
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
  </div>
                <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right"> Account Number:  </label>
    <div class="col-sm-6 text-left input9">
        <asp:Label ID="MRNN" Style="color: brown"  runat="server" Text=""></asp:Label> 
    </div>
  </div>
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Date of Birth:</label>
    <div class="col-sm-6 text-left input9">
         <asp:Label ID="DOB" Style="color: brown"   runat="server" Text=""></asp:Label>
    </div>
  </div>
           <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Gender:</label>
    <div class="col-sm-6 text-left input9">
         <asp:Label ID="GEND" Style="color: brown"   runat="server" Text=""></asp:Label>
    </div>
  </div>
           <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Ethic:</label>
    <div class="col-sm-6 text-left input9">
         <asp:Label ID="PETH" Style="color: brown"   runat="server" Text=""></asp:Label>
    </div>
  </div>
           <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Race:</label>
    <div class="col-sm-6 text-left input9">
         <asp:Label ID="PRAC" Style="color: brown"   runat="server" Text=""></asp:Label>
    </div>
  </div>

  <div class="form-group row justify-content-center">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">Screenig Date:</label>
    <div class="col-sm-6 text-left input9">
        <asp:Label ID="SDATE" Style="color: brown"  runat="server" Text=""></asp:Label> 
    </div>
  </div>
               
        <asp:Label ID="Lbl" runat="server" Style="color: blue;text-decoration: underline">Patient's Responses </asp:Label>
<div ><% = getPatientInfo() %>    </div>
        
    </form>
</body>
</html>