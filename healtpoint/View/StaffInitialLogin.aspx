<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffInitialLogin.aspx.cs" Inherits="healtpoint.View.StaffInitialLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBIRT staff login</title>
    <link rel="stylesheet" href="~/styles/main1.css"/>
    <link rel="stylesheet" href="~/styles/bootstrap.css"/>
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
     <script>

          function validatePassword(password) {
              console.log("here");
              if (password.length === 0) {
                  document.getElementById("msg").innerHTML = "";
                  return;
              }
              if (8 <= password.length &&  password.length<= 64) {                
              var matchedCase = new Array();
              matchedCase.push("[$@$!%*#?&+-/~]|{}^()=_;:<>"); // Special Charectar
              matchedCase.push("[A-Z]");      // Uppercase Alpabates
              matchedCase.push("[0-9]");      // Numbers
              matchedCase.push("[a-z]");     // Lowercase Alphabates

              // Check the conditions
              var ctr = 0;
              for (var i = 0; i < matchedCase.length; i++) {
                  if (new RegExp(matchedCase[i]).test(password)) {
                      ctr++;
                  }
              }
              // Display it
              var color = "";
              var strength = "";
              switch (ctr) {
                  case 0:
                  case 1:
                  case 2:

                      strength = "Password requirement didn't match. Please refer hint for creating password.";
                      color = "red";
                      $("#pwHint").show();
                      break;
                  case 3:
                      strength = "Medium";
                      color = "yellow";
                      $("#pwHint").show();
                      break;
                  case 4:
                      strength = "Passowrd requirements matched";
                      color = "green";
                      $("#pwHint").hide();
                      break;
              }
              document.getElementById("msg").innerHTML = strength;
              document.getElementById("msg").style.color = color;
          }

          else
              {
                  document.getElementById("msg").innerHTML = "Password requirement didn't match. Please refer hint for creating password.";
                  document.getElementById("msg").style.color = "red";

           $("#pwHint").show();
          }
            }
        </script>
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
        <form runat="server"  class="form1 text-center" style="width: 80%;">
            <div class="row justify-content-center">
             <h3> Staff Login </h3></div>
        <div class="row">
            <div class="col-lg-7">
                 <div class="form-group row justify-content-center">
                     <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Username:</label>
                   <div class="col-sm-6 text-left">
                       <asp:TextBox ID="SuserName" Class="input9" runat="server"></asp:TextBox>
                   </div>
                  </div>
                 <div class="form-group row justify-content-center">
                     <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Temporary password:</label>
                   <div class="col-sm-6 text-left">
                       <asp:TextBox ID="StempPassword" Class="input9" runat="server" type="password"></asp:TextBox>
                   </div>
                  </div>
                <div class="form-group row justify-content-center">
                     <label for="exampleInputName" class="col-sm-6 col-form-label text-right">New password:</label>
                   <div class="col-sm-6 text-left">
                       <asp:TextBox ID="nwPassword"  Class="input9" placeholder="Min 8 Characters" runat="server" type="password"></asp:TextBox>
                                              <label style="font-size: 10px;color: red; margin: 0% -27%;">Hint: Should contain 0-9; a-z; A-Z and a Special Character</label> 

                   </div>
                  </div>
                <div class="form-group row justify-content-center">
                     <label for="exampleInputName" class="col-sm-6 col-form-label text-right" style="padding-left:0px;">Confirm  New password:</label>
                   <div class="col-sm-6 text-left">
                       <asp:TextBox ID="confirmNwPass"  Class="input9" runat="server" type="password" onchange="validatePassword(this.value);"></asp:TextBox>
                   </div>
                    
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
     ControlToValidate="confirmNwPass"
     CssClass="ValidationError"
     ControlToCompare="nwPassword" Font-Size="14px" ForeColor="Red"  Display="Dynamic"
     ErrorMessage="Password must be the same"  Type="String" Operator="Equal"
     ToolTip="Password must be the same" />
                  </div>
                 <span id="msg"></span>
                 <div class="form-group row justify-content-center">
                     <div id="errorDiv" runat="server" visible="false">
            <a href="clinicAdminInitial.aspx" runat="server" style="color:red" text="Please try again"></a>
                          </div>
                         <asp:Button ID="Button5" runat="server" Text="Login " OnClick="Button5_Click" />
                     </div>
             </div>
             <div class="col-lg-5 text-center">
                <img src="/images/multiuserlogo.png" alt="adminuserlogo" width="210px" height="250px" />
            </div>
           
           

        
            </form>
    </div>
</body>
</html>
