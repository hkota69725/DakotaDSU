<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePW.aspx.cs" Inherits="healtpoint.View.ChangePW" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBIRT-PasswordChange</title>
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
         
        <div class="row justify-content-center"> 
        <h3>Change Password</h3></div>
  <div class="form-group row justify-content-center">
      <asp:Label ID="msg" runat="server" class="col-sm-12 col-form-label text-center" Text=""></asp:Label>
  </div>

  <div class="form-group row">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">Temporary Password: </label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="temp" runat="server" Class="input9" type="password" autofocus required></asp:TextBox> 
    </div>
  </div>
        <div class="form-group row" >
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">New Password: </label>
    <div class="col-sm-6 text-left">
      <asp:TextBox ID="nwPass" runat="server" type="password" placeholder="Min 8 Characters" Class="input9" required></asp:TextBox></br>
        <label style="font-size: 10px;color: red; margin: 0% -27%;">Hint: Should contain 0-9; a-z; A-Z and a Special Character</label> 
    </div>
            </div>
        <div class="form-group row" >
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right"> Confirm New Password: </label>
    <div class="col-sm-6 text-left">
      <asp:TextBox ID="nwPass1" runat="server" type="password" Class="input9" required></asp:TextBox> 
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
     ControlToValidate="nwPass1"
     CssClass="ValidationError"
     ControlToCompare="nwPass" Font-Size="14px" ForeColor="Red"  Display="Dynamic"
     ErrorMessage="Password must be the same"  Type="String" Operator="Equal"
     ToolTip="Password must be the same" /><br />
        <asp:Label ID="error"  style="display:none"  runat="server" ForeColor="Red" Text="Incorrect temporary password.Please check your email and try using same temporary password again."></asp:Label>
    </div>
            </div>
             <div class="form-group">
                 <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Submit" />   
            </div>
          </form>
</body>
</html>
