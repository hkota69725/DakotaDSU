<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patientlogin.aspx.cs" Inherits="healtpoint.patientlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBIRT-PatientLogin</title>
    <link rel="stylesheet" href="~/styles/main1.css"/>
    <link rel="stylesheet" href="~/styles/bootstrap.css"/>
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
   <!-- <script type="text/javascript"> 
        $(function () {
            $("#<%=PatientDOB.ClientID %>").datepicker({
                changeMonth: true
                changeYear: true,
                dateFormat: "mm-dd-yy",
                yearRange: '1930:2019'
    
            });

        });
        </script>-->
        <script type = "text/javascript" >
             function disableBackButton() {
                 window.history.forward();
             }
             setTimeout("disableBackButton()", 0);
        </script>
       <!-- <script type="text/javascript">
        function check() {
            if (document.getElementById('PatientSSN').value.length != 5 && document.getElementById('PatientSSN').value.length >=1 ) {
                document.getElementById('errorname').display = '';
                document.getElementById('errorname').innerHTML = "Enter only last 5 digits of SSN";
                return false;
            }
            document.getElementById('error').style.display = "none";
            document.getElementById('error1').style.display = "none";
            return true;
            }
    </script>-->
    <META Http-Equiv="Cache-Control" Content="no-cache">
<META Http-Equiv="Pragma" Content="no-cache">
<META Http-Equiv="Expires" Content="0">
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
        <form runat="server"  class="form1 text-center">
            <div class="row justify-content-center">
             <h3>Patient Login</h3></div>
        <div class="row">
            <div class="col-lg-7">
                 <div class="form-group row justify-content-center">
                     <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Date of Birth:</label>
                   <div class="col-sm-6 text-left">
                       <asp:TextBox ID="PatientDOB" type="date" runat="server" max="3000-12-31" 
        min="1000-01-01" name="bday" Class="input9" onblur="check()" onfocus="check1()"></asp:TextBox>
                   </div>
                  </div>
                 <div class="form-group row justify-content-center">
                     <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Social Security Number:</label>
                   <div class="col-sm-6 text-left">
                       <asp:TextBox ID="PatientSSN" runat="server" Class="input9" type="number" maxlength="5" autocomplete="off" placeholder="last 5 digits only"  oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" onblur="check()" onfocus="check1()"> </asp:TextBox>
        <span id="errorname" display="none" style="color:red;font:4px"> </span>
                   </div>
                  </div>
                 <div class="form-group row justify-content-center">
                     
         <asp:Label ID="error"  style="display:none"  runat="server" ForeColor="Red" Text="Could not find record for given SNN and Date of birth.Please try again by entering last 5 digits of SSN and date of birth."></asp:Label>
                 <asp:Label ID="error1"  style="display:none"  runat="server" ForeColor="Red" Text="Enter valid date format"></asp:Label>    
                 </div>
                 <div class="form-group row justify-content-center">
                         <asp:Button ID="Button5" runat="server" Text="Continue " OnClick="Button5_Click" />
                     </div>
            </div>
             <div class="col-lg-5 text-center">
                <img src="/images/userlogo.png" alt="userlogo" width="150px" height="120px" />
            </div>
           

        </div>
            </form>
    </div>
</body>
</html>
