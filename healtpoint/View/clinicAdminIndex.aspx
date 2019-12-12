<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadminIndex.aspx.cs" Inherits="healtpoint.View.CadminIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBIRT Clinic Index</title>
    <link rel="stylesheet" href="~/styles/main1.css"/>
    <link rel="stylesheet" href="~/styles/bootstrap.css"/>
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="https://unpkg.com/popper.js@1.15.0/dist/umd/popper.min.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
    <script type="text/javascript">
        if (document.getElementById('hfStatus').value == "end") {
            Response.RedirectPermanent("default1.aspx");
        }
        
    </script>
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
 
<!--    
<div class="navigation">
  
	<a class="buttonlog" href="default1.aspx">
  	<img id="logoutimg" src="/images/userlogo.png" alt="logo"/>
  
  <div class="logout">LOGOUT</div>

	</a>
  
</div>-->
    
    <div class="container">
         <div id="mySidenav" class="sidenav">
  <a href="default1.aspx?status=end" id="about">
      <img id="logoutimg" src="/images/userlogo.png" alt="logo"/>
      <span>LOGOUT</span>
  </a>
</div>
        <form class="form2 justify-content-center" runat="server">
    <div class="row justify-content-center">
            <h3>Manage and View Staff, Providers and Patients </h3>
      </div>
        <asp:HiddenField ID="hfStatus" runat="server" Value="test" />
             <div class="btn-group" style="width:100%">
                 <div class="btn1-group" style="width:33.3%">

              <button type="button" data-toggle="dropdown" class="btn1 btn1-block dropdown-toggle">Clinical Staff<span class="caret"></span>
              </button>
             <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="addStaff.aspx?type=0">Add Staff</a>
    <a class="dropdown-item" href="ViewStaffByClinicAdmin.aspx?type=1">View Staff</a>
  </div>
</div>
                 <div class="btn1-group" style="width:33.3%">
              <button type="button" data-toggle="dropdown" class="btn1  btn1-block dropdown-toggle">Patients list <span class="caret"></span>
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="ViewPatientbyClinicAdm.aspx">Patient List</a>
  </div>
                     </div>
<div class="btn1-group" style="width:33.3%">
              <button type="button" data-toggle="dropdown" class="btn1  btn1-block dropdown-toggle">Providers <span class="caret"></span>
              </button>
              
           <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="AddProvider.aspx">Add Provider</a>
    <a class="dropdown-item" href="#">View Provider</a>
           </div>     
              </div>





       </form>
    </div>
   
</body>
</html>