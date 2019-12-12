<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetPass.aspx.cs" Inherits="healtpoint.View.forgetPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
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
        <div class="form-row justify-content-center">
    <h3> Set Your Password</h3></div>

        <div class="form-group row">
    <label for="exampleInputEmail" id="lbusername " class="col-sm-6 col-form-label text-right" style="margin-left:-12%;">User Name: </label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="credential" Class="input9" runat="server"></asp:TextBox>
    </div>
  </div>
         <div class="form-group">
                 <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Submit" />   
            </div>
        
        
  
    </form>
</body>
</html>
