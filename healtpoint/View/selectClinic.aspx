<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="selectClinic.aspx.cs" Inherits="healtpoint.View.selectClinic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/>
       <link rel="stylesheet" href="~/styles/main1.css"/>
    <link rel="stylesheet" href="~/styles/bootstrap.css"/>
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
    <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
     <script type="text/javascript" charset="utf8" src="http://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
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
 <h3>Select  Clinic </h3>
        </div>
  <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Select Clinic:</label>
    <div class="col-sm-6 text-left">
      <asp:DropDownList ID="ClinicDropDownList1" Class="input9" runat="server"></asp:DropDownList>
    </div>
  </div>
            <div class="form-group">
                  <asp:Button ID="Button5" runat="server" Text="Submit" OnClick="Button5_Click" />  
            </div>

            <div visible="false"  runat="server" id="patientDetails">
                <asp:Label id="info" runat="server" visible="false"/>
                
    <div class="container-fluid" style="margin-bottom: 30px;font-weight: normal; width: max-content;">
               <%=getPatientList()%>
            </div>
                </div>
    </form>
</body>
</html>