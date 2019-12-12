<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addClinicAdmin.aspx.cs" Inherits="healtpoint.View.addClinicAdmin" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBIRT Add Admin</title>
    <link rel="stylesheet" href="~/styles/main1.css"/>
    <link rel="stylesheet" href="~/styles/bootstrap.css"/>
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
    <script type="text/javascript"></script>
</head>
<body>
     <div class="container-fluid nav-header">
        <div class="row own-header justify-content-end">
            <span class=""> Screening, Brief Intervention, and Referral to Treatment</span>
        </div>
        <div class="row img-row">
            <a href ="SuperAdminIndex.aspx"><img src="/images/logo.png" alt="logo" class="own-header-img img-fluid"/></a>
        </div>
    </div>
    <div id="mySidenav" class="sidenav">
  <a href="default1.aspx?status=end" id="about">
      <img id="logoutimg" src="/images/userlogo.png" alt="logo"/>
      <span>LOGOUT</span>
  </a>
</div>
    <form class="form1 text-center" runat="server">
        <div class="form-group row justify-content-center">
 <h3>Add Clinic Administators</h3>
        </div>
  <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Select Clinic:</label>
    <div class="col-sm-6 text-left">
      <asp:DropDownList ID="ClinicDropDownList1" Class="input9" runat="server"></asp:DropDownList>
    </div>
  </div>

  <div class="form-group row">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">Create Username: </label>
    <div class="col-sm-6 text-left">
         <asp:TextBox ID="Ausername" Class="input9" runat="server"></asp:TextBox>
         <asp:Label ID="error"  style="display:none"  runat="server" ForeColor="Red" Text="Try again by selecting new username."></asp:Label>
    </div>
  </div>
        <div class="form-group row" >
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right"> Enter Admin Email: </label>
    <div class="col-sm-6 text-left">
      <asp:TextBox ID="Aemail" Class="input9" runat="server"></asp:TextBox> 
    </div>
            </div>
            <div class="form-group">
                  <asp:Button ID="Button5" runat="server" Text="Submit" OnClick="Button5_Click" />  
            </div>
        </form>
</body>
</html>
