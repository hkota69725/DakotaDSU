<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="SuperAdminIndex.aspx.cs" Inherits="healtpoint.View.clinicAdminIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBIRT admin Index</title>
    <link rel="stylesheet" href="~/styles/main1.css"/>
    <link rel="stylesheet" href="~/styles/bootstrap.css"/>
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="https://unpkg.com/popper.js@1.15.0/dist/umd/popper.min.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
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
<div class="container">
         <div id="mySidenav" class="sidenav">
  <a href="default1.aspx?status=end" id="about">
      <img id="logoutimg" src="/images/userlogo.png" alt="logo"/>
      <span>LOGOUT</span>
  </a>
</div>
        <form class="form2 justify-content-center" runat="server">
             <div class="row justify-content-center">
            <h3>Manage and View Clinics, Admins and Patients </h3></div>
      
        
             <div class="btn-group" style="width:100%">
                 <div class="btn1-group" style="width:33.3%">

              <button type="button" data-toggle="dropdown" class="btn1 btn1-block dropdown-toggle">Clinics<span class="caret"></span>
              </button>
             <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="addClinic.aspx">Add Clinics</a>
    <a class="dropdown-item" href="viewClinic.aspx">View Clinics</a>
  </div>
</div>
                 <div class="btn1-group" style="width:33.3%">
              <button type="button" data-toggle="dropdown" class="btn1  btn1-block dropdown-toggle">Clinic Admins & Staff <span class="caret"></span>
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                  <a class="dropdown-item" href="addClinicAdmin.aspx">Add Clinic Admin</a>
                  <a class="dropdown-item" href="viewClinicAdmin.aspx">View Clinic Admin</a>
                  <a class="dropdown-item" href="addStaff.aspx?type=1">Add Clinic Staff</a>
                  <a class="dropdown-item" href="ViewStaffByClinicAdmin.aspx?type=2">View Clinic Staff</a>
  </div>
                     </div>
<div class="btn1-group" style="width:33.3%">
              <button type="button" data-toggle="dropdown" class="btn1  btn1-block dropdown-toggle">Patients  List<span class="caret"></span>
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="selectClinic.aspx">View Patient</a>
           </div> 
           <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="#">Add Provider</a>
           </div>     
              </div>
                 </div>





       </form>
    </div>
</body>
</html>