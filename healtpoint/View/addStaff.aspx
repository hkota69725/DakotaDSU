<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addStaff.aspx.cs" Inherits="healtpoint.View.addStaff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet"  href="~/styles/main1.css"/>
    <link rel="stylesheet" href="~/styles/bootstrap.css"/>
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
    <script>
        function performValidation() {
            if (checkValidationGroup("V1"))
                return true;
            else
                return false;
        }
    </script>
    <title>SBIRT Add Staff</title>
</head>
<body>
<div class="container-fluid nav-header">
        <div class="row own-header justify-content-end">
            <span class=""> Screening, Brief Intervention, and Referral to Treatment</span>
        </div>
    <div id="mySidenav" class="sidenav">
  <a href="default1.aspx?status=end" id="about">
      <img id="logoutimg" src="/images/userlogo.png" alt="logo"/>
      <span>LOGOUT</span>
  </a>
</div>
    </div>
    <form class="form1 text-center" runat="server">    
    <div class="row img-row" style="margin-top: -4.6%; margin-left: -12%;">
            <asp:ImageButton ID="Button8" ImageUrl="/images/logo.png" AlternateText="Home" runat="server" onClick="Button8_Click" causesvalidation="False" class="own-header-img img-fluid"/>
        </div>
    
    
    
        <div class="form-group row justify-content-center">
         <h3>Staff Registration</h3>
        </div>
        <div id="clinicDiv" runat="server" visible="false">
        <div class="form-group row justify-content-center" style="margin-left: -161px;">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Select Clinic</label>
            <div class="col-sm-6 text-left">
        <asp:DropDownList ID="ClinicDropDownList1" Class="input9" runat="server"></asp:DropDownList>
        <br /></div></div>
            </div>
  <div class="form-group row justify-content-center" style="margin-left: -161px;">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Lastname:</label>
    <div class="col-sm-6 text-left">
      <asp:TextBox ID="lastName" Class="input9" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validator1" ForeColor="Blue" ValidationGroup="V1" runat="server" Controltovalidate="lastName" errormessage="Please provide last name here"/>
       
    </div>
  </div>

  <div class="form-group row" style="margin-left: -161px;">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">Firstname:  </label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="firstName" Class="input9" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validator2" ForeColor="Blue" ValidationGroup="V1" runat="server" Controltovalidate="firstName" errormessage="Please provide first name here"/>
       
    </div>
  </div>
        <div class="form-group row" style="margin-left: -161px;">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right"> Email address:  </label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="emailAdd" runat="server" Class="input9" Type="email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validator3" ValidationGroup="V1" ForeColor="Blue" runat="server" ControlToValidate="emailAdd" ErrorMessage="Please enter Email id here" />
        <asp:RegularExpressionValidator ID="emailValidator" ForeColor="Blue" ValidationGroup="V1" runat="server" ErrorMessage=" Please provide valid email address" ControlToValidate="emailAdd" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
    </div>
            </div>
        <div class="form-group row" style="margin-left: -161px;" >
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right"> Create Username: </label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="Susername" Class="input9" runat="server"></asp:TextBox> 
        <asp:RequiredFieldValidator ID="validator4" ValidationGroup="V1" ForeColor="Blue" runat="server" Controltovalidate="Susername" errormessage="Please provide the username here"/>
       
        
    </div>

            </div>
        <div class="form-group row"  style="margin-left: -161px;">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right"> Phone number: </label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="sphone" Type="tel" Class="input9" runat="server"></asp:TextBox> 
        <asp:RequiredFieldValidator ID="validator5" ValidationGroup="V1" ForeColor="Blue" runat="server" ControlToValidate="sphone" ErrorMessage="Please enter Phone number here" />
        <asp:RegularExpressionValidator ID="phoneValidator" ValidationGroup="V1" ForeColor="Blue" runat="server" ErrorMessage=" Please provide phone number in Valid format" ControlToValidate="sphone" ValidationExpression="\d{10}" />
    
    </div>

            </div>
        <asp:Label ID="error"   runat="server" ForeColor="Red" ></asp:Label>
            <div class="form-group">
                 <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" OnClientClick="performValidation();" Text="Submit" ValidationGroup="V1" />   
            </div>
    </form>
</body>
</html>
