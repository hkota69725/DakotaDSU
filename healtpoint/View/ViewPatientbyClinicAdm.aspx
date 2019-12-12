<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPatientbyClinicAdm.aspx.cs" Inherits="healtpoint.ViewPatientbyClinicAdm" %>

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
        <div class="row img-row">
            <a href ="clinicAdminIndex.aspx"><img src="/images/logo.png" alt="logo" class="own-header-img img-fluid"/></a>
        </div>
    </div>
    <div id="mySidenav" class="sidenav">
  <a href="default1.aspx?status=end" id="about">
      <img id="logoutimg" src="/images/userlogo.png" alt="logo"/>
      <span>LOGOUT</span>
  </a>
</div>
    <form runat="server"  class="form1 text-center">
        <div class="row justify-content-center">
        <h3 style="display: table-header-group">List of Patients in the Clinic</h3></div>

    <div>
        <asp:Label runat="server">Search for Patients by MRN Number</asp:Label><br />
        <asp:TextBox ID="mrn" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button5" runat="server" Text="Search" OnClick="Button5_Click" /> <br />
     </div>
        <div class="container-fluid" style="margin-bottom: 30px;font-weight: normal; width: max-content;">
    <div id="All" runat="server">      
        <% =getPatients() %>
    </div>
            </div>
            <div class="container-fluid" style="margin-bottom: 30px;font-weight: normal; width: max-content;">
    <div id="SelectedPatient" runat="server" visible="false">

            <% =getSelectedPatient() %>
          </div> 
    </div>
    </form>

</body>
</html>
