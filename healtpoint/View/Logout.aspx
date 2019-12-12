<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="healtpoint.Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="~/styles/main1.css" />
    <link rel="stylesheet" href="~/styles/bootstrap.css" />
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
    <script type = "text/javascript" >
             function disableBackButton() {
                 window.history.forward();
             }
        setTimeout("disableBackButton()", 0);
        setTimeout("CallButton()", 10000)
        function CallButton() {
            document.getElementById("self").click();
        }
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
   <!-- <div id="mySidenav" class="sidenav">
  <a href="default1.aspx?status=end" id="about">
      <img id="logoutimg" src="/images/userlogo.png" alt="logo"/>
      <span>LOGOUT</span>
  </a>
</div>-->
    <form class="form1  text-center"  runat="server">
    <div>
        <div class="row justify-content-center">
        <h3 class="col-md-5 text-center">SD SBIRT FORM</h3> </div>
        <div class="col-sm-10 text-right">
           <asp:Label ID="firstname" runat="server" Style="color:black; background-color: cadetblue; padding: 1%;"  ></asp:Label>
    </div>
        <div class="form-group row">
            <label for="exampleInputEmail"  class="col-sm-12 col-form-label">Thank You!</label>
            <label for="exampleInputEmail"  class="col-sm-12 col-form-label"> Your screenings have been submitted</label>
</div>
        <div class="form-group ">
        <a href="default1.aspx?status=end" id="self" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-user"></span> Logout
        </a>
        </div>
             </div>
    </form>
</body>
</html>
