<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addClinic.aspx.cs" Inherits="healtpoint.Hospital" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> SBIRT Add Clinic</title>
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
        <h3>Add Clinic to SBIRT</h3></div>
  <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Name of the clinic:</label>
    <div class="col-sm-6 text-left">
      <asp:TextBox ID="clinic" autofocus="" runat="server" Class="input9" required=""></asp:TextBox>
    </div>
  </div>

  <div class="form-group row">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">Clinic NPI Number: </label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="clinicNum" TextMode="Number" Class="input9" placeholder="Numbers only" runat="server" required=""></asp:TextBox>
    </div>
  </div>
        <div class="form-group row" >
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right"> Confirm Clinic NPI Number: </label>
    <div class="col-sm-6 text-left">
      <asp:TextBox ID="confirmClinicNum" placeholder="Numbers only" TextMode="Number" runat="server" Class="input9" required=""></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator2" runat="server" 
     ControlToValidate="confirmClinicNum"
     CssClass="ValidationError"
     ControlToCompare="clinicNum" Font-Size="14px" ForeColor="Red"  Display="Dynamic"
     ErrorMessage="Clinic  number  must be the same"  Type="String" Operator="Equal"
     ToolTip="Clinic number must be the same" />
        <br />
          <asp:Label ID="error"  style="display:none"  runat="server" ForeColor="Red" Text="Clinic already exists."></asp:Label>
    </div>
            </div>
            <div class="form-group">
                 <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Submit" />   
            </div>
         
        
        
           
        </form>

    

</body>
</html>
