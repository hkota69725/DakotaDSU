<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default1.aspx.cs" Inherits="healtpoint.default1" %>

<!DOCTYPE html>
<META Http-Equiv="Cache-Control" Content="no-cache"/>
<META Http-Equiv="Pragma" Content="no-cache"/>
<META Http-Equiv="Expires" Content="0"/>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBIRT app</title>
    <link  href="~/styles/main1.css" rel="stylesheet" runat="server" type="text/css" />
    <link rel="stylesheet" href="/styles/bootstrap.css"/>
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <script>
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };

        function DropDown(el) {
            this.dd = el;
            this.initEvents();
        }
        DropDown.prototype = {
            initEvents: function () {
                var obj = this;
                obj.dd.on('click', function (event) {
                    $(this).toggleClass('active');
                    event.stopPropagation();
                });
            }
        }
        $(function () {
            var dd = new DropDown($('#dd'));
            $(document).click(function () {
                $('.wrapper-dropdown-2').removeClass('active');
            });
        });
    </script>

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
      
    <form runat="server" class="form2">
       <!-- <p class="row justify-content-end">
        <div class="dropdownImg">
            <button type="button" data-toggle="dropdown" class="btn btn-secondary  btn-block" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-bars"></i>
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                  <a class="dropdown-item" href="#">Provider Login</a>
                  <a class="dropdown-item" href="clinicAdminLogin.aspx">Clinic Admin Login </a>
                  <a class="dropdown-item" href="SuperAdminLogin.aspx">Admin Login</a>
  </div>
</div>
            </p> -->
       <div id="dd" class="wrapper-dropdown-2"><i class="fa fa-bars"></i>
  <ul class="dropdown">
    <li><a class="dropdown-item" href="providerlogin.aspx">Provider Login</a></li>
    <li><a class="dropdown-item" href="clinicAdminLogin.aspx">Clinic Admin Login </a></li>
    <li><a class="dropdown-item" href="SuperAdminLogin.aspx">Admin Login</a></li>
  </ul>
</div>
        <div class="row patient-block">
        
    <div class="col-lg-5 col-md-11 text-center block1">
        <ul class="list-inline">
            <li><img src="/images/userlogo.png" width="17%" height="17%" alt="userlogo"/></li>
            <li><h2>Patient Screening</h2></li>
            <li> <asp:Button ID="Button2" runat="server" Text="Begin &nbsp; >" OnClick="Button2_Click" /> </li>
        </ul>
     
    </div>
    <div class="col-lg-5 col-md-11  text-center  block1">
        <ul class="list-inline">
            <li><img src="/images/multiuserlogo.png" width="17%" height="17%" alt="multiuserlogo"/></li>
            <li> <h2>Staff Login</h2></li>
            <li>
        <asp:Button ID="Button3" runat="server" Text="Login  &nbsp; >" OnClick="Button3_Click" /> </li>
        </ul>
      
    </div>
            </div>
        </form>
       
    </div>
</body>
</html>
