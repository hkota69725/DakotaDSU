<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="clinicAdminLogin.aspx.cs" Inherits="healtpoint.View.clinicAdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBIRT Admin Login</title>
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
    <div class="container">
        <form runat="server"  class="form1 text-center">
            <div class="row justify-content-center">
             <h3>Clinic Administrator Login</h3></div>
        <div class="row">
            <div class="col-lg-7">
                 <div class="form-group row justify-content-center">
                     <label for="exampleInputName" class="col-sm-6 col-form-label text-right">User Name:</label>
                   <div class="col-sm-6 text-left">
                       <asp:TextBox ID="AuserName" autofocus="" Class="input9" runat="server"></asp:TextBox>
                   </div>
                  </div>
                 <div class="form-group row justify-content-center">
                     <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Password:</label>
                   <div class="col-sm-6 text-left">
                       <asp:TextBox ID="Apassword" runat="server" Class="input9" type="password"></asp:TextBox>
                   </div>
                  </div>
                <asp:Label ID="error"  style="display:none" runat="server" ForeColor="Red" Text="Incorrect username or password"></asp:Label>
                 <div class="form-group row justify-content-center">
                <asp:HyperLink id="hyperlink3"  NavigateUrl="forgetPass.aspx?id=1" Text="Forgot Password?"  runat  ="server" /><br />
                     </div>
                 <div class="form-group row justify-content-center">
                         <asp:Button ID="Button5" runat="server" Text="Login " OnClick="Button5_Click" />
                     </div>
            </div>
             <div class="col-lg-5 text-center">
                <img src="/images/adminlogo.png" alt="adminuserlogo" class="login-img" width="150px" height="120px"  />
            </div>
           

        </div>
            </form>
    </div>
</body>
</html>
