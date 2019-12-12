<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminloginpage1.aspx.cs" Inherits="healtpoint.adminloginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBIRT Admin Login</title>
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
            <img src="/images/logo.png" alt="logo" class="own-header-img img-fluid"/>
        </div>
    </div>
    <div class="container">
        <form runat="server"  class="form1 text-center">
            <div class="form-group row justify-content-center"> 
            <h3>Admin Login</h3>
                </div>
        <div class="row">
            <div class="col-lg-7">
                 <div class="form-group row justify-content-center">
                     <p>Note: Please enter the "One Time Password" sent to your registered Mobile Number</p>
                  </div>
                 <div class="form-group row justify-content-center">
                     <label for="exampleInputName" class="col-sm-6 col-form-label text-right">One Time Password :</label>
                   <div class="col-sm-6 text-left">
                       <asp:TextBox ID="AdminLoginID" class="input9" placeholder="Enter the OTP" runat="server"></asp:TextBox>      
                   </div>
                  </div>
                 <div class="form-group row justify-content-center">
                         <asp:Button ID="Button5" runat="server" Text="Submit " />
                     </div>
            </div>
             <div class="col-lg-5 text-center">
                <img src="/images/adminlogo.png" alt="adminlogo" width="150px" height="120px" />
            </div>
             </div>
            </form>
    </div>
</body>
</html>
