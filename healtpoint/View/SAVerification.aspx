<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SAVerification.aspx.cs" Inherits="healtpoint.StaffVerification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBIRT Verification</title>   
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
        <div class="row img-row">
            <a href ="default1.aspx"><img src="/images/logo.png" alt="logo" class="own-header-img img-fluid"/></a>
        </div>
    </div>
    <form class="form1 text-center" runat="server">
        <div class="form-group row justify-content-center col-md-12" style="display: inline;"> 
    <h3>Welcome to SBIRT</h3> </div>

        <div class="form-group row justify-content-center" style="margin:20px;">
        <asp:Label ID="verificationMessgae" runat="server" Text=""></asp:Label> </div>

        <div class="form-group row justify-content-center">
        <asp:TextBox ID="code" runat="server"></asp:TextBox></div>
<div class="form-group row justify-content-center">
        <asp:Button ID="Button5" runat="server" Text="Submit"  OnClick="Button5_Click"/>
    </div>
    </form>
</body>
</html>
