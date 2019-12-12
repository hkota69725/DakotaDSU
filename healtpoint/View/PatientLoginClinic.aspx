<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientLoginClinic.aspx.cs" Inherits="healtpoint.PatientLoginClinic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBIRT-PatientLogin</title> 
    <link rel="stylesheet" href="~/styles/main1.css"/>
    <link rel="stylesheet" href="~/styles/bootstrap.css"/>
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
  <script type=javascript>
histiory.Load(0)
</script>
</head>
<body>
    <div class="container-fluid nav-header">
        <div class="row own-header justify-content-end">
            <span class=""> Screening, Brief Intervention, and Referral to Treatment</span>
        </div>
        <div class="row img-row">
            <a href ="PatientLoginClinic.aspx"><img src="/images/logo.png" alt="logo" class="own-header-img img-fluid"/></a>
        </div>
    </div>
    <div id="mySidenav" class="sidenav">
  <a href="default1.aspx?status=end" id="about">
      <img id="logoutimg" src="/images/userlogo.png" alt="logo"/>
      <span>LOGOUT</span>
  </a>
</div>
    <div class="container">
        <form runat="server"  class="form1 text-center">
            <div class="row justify-content-center">
             <h3>Patient Login</h3></div>
        <div class="row">
            <div class="col-lg-10">
                 <div class="form-group row justify-content-center">
                     <label for="exampleInputName" id="lb1"  class="col-sm-6 col-form-label text-right">Select Clinic:</label>
                   <div class="col-sm-6 text-left">
                       <asp:DropDownList ID="DropDownList1" required Class="input9" DataTextField="Clinic" runat="server">
                           </asp:DropDownList>
                   </div>
                  </div>
                 
</div>
            <div class="form-group row justify-content-center col-md-12">
                         <asp:Button ID="Button5" runat="server" Text="Login " OnClick="Button5_Click" />
                     </div>
            </div>
    </form>
        </div>
</body>
</html>
