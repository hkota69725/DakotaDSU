<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewClinic.aspx.cs" Inherits="healtpoint.View.viewClinic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="~/styles/main1.css"/>
    <link rel="stylesheet" href="~/styles/bootstrap.css"/>
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
    <link rel="stylesheet" href="~/styles/main1.css"/>
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
    <form class="form1 text-center justify-content-center" runat="server">
        <div class="row justify-content-center">
        <h3> List of clinics Added</h3></div>
    <div class="container-fluid" style="margin-bottom: 30px;font-weight: normal; width: max-content;">
    <%=cilnicDetails() %>
    </div>
    </form>
</body>
</html>
