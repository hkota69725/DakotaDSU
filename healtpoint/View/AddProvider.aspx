<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProvider.aspx.cs" Inherits="healtpoint.View.AddProvider" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet"  href="~/styles/main1.css"/>
    <link rel="stylesheet" href="~/styles/bootstrap.css"/>
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
    <title>SBIRT Add Provider</title>
    <script type="text/javascript">
        function show() {
            
            var npi = document.getElementById('npitxt').value;
            if (npi.length != 10) {
                
                document.getElementById('errorname').display = '';
                document.getElementById('errorname').innerHTML = "Length of NPI should be 10 digits";
                
                //alert("Length of NPI should be 10 digits");
                return false;
            }
            else
                document.getElementById('errorname').style.display = 'none';
                
            
        }
        function test2() {
            document.getElementById('errorname').display = 'none';
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
    <div id="mySidenav" class="sidenav">
  <a href="default1.aspx?status=end" id="about">
      <img id="logoutimg" src="/images/userlogo.png" alt="logo"/>
      <span>LOGOUT</span>
  </a>
</div>
    <form class="form1 text-center" runat="server">
        <div class="form-group row justify-content-center">
         <h3>Provider Registration</h3>
        </div>
  <div class="form-group row justify-content-center" style="margin-left: -161px;">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Provider: </label>
    <div class="col-sm-6 text-left">
      <asp:TextBox ID="providerNametxt" Class="input9" required runat="server"></asp:TextBox>
       
    </div>
  </div>

  <div class="form-group row" style="margin-left: -161px;">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">NPI:  </label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="npitxt" Class="input9" required runat="server"></asp:TextBox>
        <span id="errorname" display="none" style="color:red;font:4px"> </span>
    </div>
  </div>
        <div class="form-group row" style="margin-left: -161px;">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right"> Email address:  </label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="emailAdd" runat="server" Class="input9" Type="email" required pattern="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:TextBox>
    </div>
            </div>
        <div class="form-group row" style="margin-left: -161px;" >
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right"> Create Username: </label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="Pusername" required Class="input9" runat="server"></asp:TextBox> 
        <asp:Label ID="error"   runat="server" ForeColor="Red" ></asp:Label>
    </div>

            </div>
        <div class="form-group row"  style="margin-left: -161px;">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right"> Phone number: </label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="Pphone" Type="tel" Class="input9" runat="server" patten="\d{10}" required ></asp:TextBox> 
    </div>

            </div>
            <div class="form-group">
                 <asp:Button ID="Button5" runat="server" OnClientClick="return show();" OnClick="Button5_Click" Text="Submit" />   
            </div>
    </form>
</body>
</html>
