<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patientInfo.aspx.cs" Inherits="healtpoint.patientInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient Information</title>
     <link rel="stylesheet" href="~/styles/main1.css" />
    <link rel="stylesheet" href="~/styles/bootstrap.css" />
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
     <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
   <script type="text/javascript">
       $(function () {

           $('#Button5 input').click(function () {

               var abc = $("input[name='Button5']:clicked").val()
               console.log(abc);
               $('#div2').show();
               $('#div1').hide();
           });
       });
       // Set timeout variables.
       var timoutWarning = 240000; // Display warning in 14 Mins.
       var timoutNow = 300000; // Timeout in 15 mins.
       var logoutUrl = 'default1.aspx?status=end'; // URL to logout page.

       var warningTimer;
       var timeoutTimer;

       // Start timers.
       function StartTimers() {
           warningTimer = setTimeout("IdleWarning()", timoutWarning);
           timeoutTimer = setTimeout("IdleTimeout()", timoutNow);
       }

       // Reset timers.
       function ResetTimers() {
           clearTimeout(warningTimer);
           clearTimeout(timeoutTimer);
           StartTimers();
           $("#timeout").dialog('close');
       }

       // Show idle timeout warning dialog.
       function IdleWarning() {
           $("#timeout").dialog({
               modal: true
           });
       }

       // Logout the user.
       function IdleTimeout() {
           window.location = logoutUrl;
       }
              </script>
     <script type="text/javascript">
        function edit() {
            $("input[type='text']").prop("disabled", false);
            document.getElementById('hdnfFN').value = document.getElementById('lbFN').value;
            document.getElementById('hdnfLN').value = document.getElementById('lbLNm').value;
            document.getElementById('hdfnClinic').value = document.getElementById('lbClNm').value;
            document.getElementById('hdfnGender').value = document.getElementById('lbGdr').value;
            document.getElementById('hdfnDOB').value = document.getElementById('lbDOB').value;
            document.getElementById('hdfnEmail').value = document.getElementById('lbEml').value;
            document.getElementById('hdfnSSN').value = document.getElementById('lbSsn').value;
            document.getElementById('hdfnPhn').value = document.getElementById('lbPh').value;
            document.getElementById('hdfnAddress1').value = document.getElementById('lbAdd').value;
            document.getElementById('hdfnCity').value = document.getElementById('city').value;
            document.getElementById('hdfnState').value = document.getElementById('state').value;
            document.getElementById('hdfnPostal').value = document.getElementById('postalCode').value;
            document.getElementById('hdfnmrn').value = document.getElementById('lblmrn').value;

        }
        function fn(){
            document.getElementById('hdnfFN').value = document.getElementById('lbFN').value;}
   
        function ln(){
            document.getElementById('hdnfLN').value = document.getElementById('lbLNm').value;}
        function cl(){
            document.getElementById('hdfnClinic').value = document.getElementById('lbClNm').value;}
        function gd(){
            document.getElementById('hdfnGender').value = document.getElementById('lbGdr').value;}
        function dob(){
            document.getElementById('hdfnDOB').value = document.getElementById('lbDOB').value;}
        function eml(){
            document.getElementById('hdfnEmail').value = document.getElementById('lbEml').value;}
        function ssn(){
            document.getElementById('hdfnSSN').value = document.getElementById('lbSsn').value;}
        function ph(){
            document.getElementById('hdfnPhn').value = document.getElementById('lbPh').value;}
        function add(){
            document.getElementById('hdfnAddress1').value = document.getElementById('lbAdd').value;}
        function city(){
            document.getElementById('hdfnCity').value = document.getElementById('city').value;}
        function stt(){
            document.getElementById('hdfnState').value = document.getElementById('state').value;}
        function pc(){
            document.getElementById('hdfnPostal').value = document.getElementById('postalCode').value;
        }
        function mrn() {
            document.getElementById('hdfnmrn').value = document.getElementById('lblmrn').value;
        }
        
    </script>
</head>
   
<body onload="StartTimers();" onmousemove="ResetTimers();">

    <div class="container-fluid nav-header">
        <div class="row own-header justify-content-end">
            <span class=""> Screening, Brief Intervention, and Referral to Treatment</span>
        </div>
        <div class="row img-row">
            <a href ="PatientLoginClinic.aspx"><img src="/images/logo.png" alt="logo" class="own-header-img img-fluid"/></a>
        </div>
    </div>
    <div id="mySidenav" class="sidenav">
  <a href="default1.aspx?status=end" id="about">
      <img id="logoutimg" src="/images/userlogo.png" alt="logo"/>
      <span>LOGOUT</span>
  </a>
</div>
     <div id="timeout" style="display: none;">
    <h1>Session About To Timeout</h1>
    <p>You will be automatically logged out in 1 minute.<br />
</div>
    
    <form class="form1 text-center" runat="server">
        <div class="row justify-content-center">
        <h3> Patient Information </h3>
        </div>
        <asp:HiddenField ID="hdnfFN" runat="server"  />
        <asp:HiddenField ID="hdnfMN" runat="server" />
        <asp:HiddenField ID="hdnfLN" runat="server" />
        <asp:HiddenField ID="hdfnSuffix" runat="server" />
        <asp:HiddenField ID="hdfnGender" runat="server" />
        <asp:HiddenField ID="hdfnClinic" runat="server" />
        <asp:HiddenField ID="hdfnDOB" runat="server" />
        <asp:HiddenField ID="hdfnEmail" runat="server" />
        <asp:HiddenField ID="hdfnSSN" runat="server" />
        <asp:HiddenField ID="hdfnPhn" runat="server" />
        <asp:HiddenField ID="hdfnAddress1" runat="server" />
        <asp:HiddenField ID="hdfnCity" runat="server" />
        <asp:HiddenField ID="hdfnState" runat="server" />
        <asp:HiddenField ID="hdfnPostal" runat="server" />
        <asp:HiddenField ID="hdfnmrn" runat="server" />
        <div id="div1" style="padding-right: 21%;" >
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">First Name:</label>
    <div class="col-sm-6 text-left input9">
        <asp:Label ID="lbFN" Style="color: brown" runat="server"  Text=""> </asp:Label>
    </div>
  </div>

  
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Last Name : </label>
    <div class="col-sm-6 text-left input9">
        <asp:Label ID="lbLNm" Style="color: brown" runat="server"  Text=""> </asp:Label>
    </div>
  </div>

 
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">MRN :</label>
    <div class="col-sm-6 text-left input9">
        <asp:Label ID="lblmrn" Style="color: brown" runat="server"  Text=""> </asp:Label>
    </div>
  </div>

  <div class="form-group row justify-content-center">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">Clinic Name : </label>
    <div class="col-sm-6 text-left input9">
        <asp:Label ID="lbClNm" Style="color: brown" runat="server"  Text=""> </asp:Label>
    </div>
  </div>
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Gender : </label>
    <div class="col-sm-6 text-left input9">
        <asp:Label ID="lbGdr" Style="color: brown" runat="server"  Text=""> </asp:Label>        
    </div>
  </div>

  <div class="form-group row justify-content-center">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right ">Date of Birth :</label>
    <div class="col-sm-6 text-left input9">
        <asp:Label ID="lbDOB" Style="color: brown" runat="server"  Text=""> </asp:Label>
    </div>
  </div>
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Email Address : </label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="lbEml" runat="server"  autocomplete="off" onchange="eml()" Text="" Class="input9" enabled="false"></asp:TextBox>
    </div>
  </div>

  <div class="form-group row justify-content-center">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">SSN :</label>
    <div class="col-sm-6 text-left input9">
        <asp:Label ID="lbSsn" runat="server" Style="color: brown"  Text=""> </asp:Label>
    </div>
  </div>
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Phone Number : </label>
    <div class="col-sm-6 text-left">
      <asp:TextBox ID="lbPh" runat="server" autocomplete="off" onchange="ph()" Text="" Class="input9" enabled="false"></asp:TextBox> 
    </div>
  </div>

  <div class="form-group row justify-content-center">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">Address :  </label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="lbAdd" runat="server" autocomplete="off" onchange="add()" Text="" rows="3" style="height: inherit;" Class="input9" enabled="false"></asp:TextBox>
    </div>
  </div>
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">City :</label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="city" runat="server" autocomplete="off" onchange="city()" Text="" Class="input9" enabled="false"></asp:TextBox>
    </div>
  </div>

  <div class="form-group row justify-content-center">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">State : </label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="state" autocomplete="off" onchange="stt()" runat="server" Text="" Class="input9" enabled="false"></asp:TextBox>
         </div>
  </div>
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Postal Code :</label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="postalCode" autocomplete="off" onchange="pc()" runat="server" Text="" Class="input9" enabled="false"></asp:TextBox>
    </div>
  </div>
<a id='edit' href='javascript:edit()'>Edit </a></div>
            </div>
        <div class="form-group">
                 <asp:Button ID="Button5" runat="server" Text="Update"  onclick="Button3_Click" />
            </div>
         
    
     <div id="div2" style="padding-right: 21%; display:none">
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">First Name:</label>
    <div class="col-sm-6 text-left">
        <asp:Label ID="Label1" runat="server" Class="input9" Text=""> </asp:Label>
    </div>
  </div>

 
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Last Name : </label>
    <div class="col-sm-6 text-left">
        <asp:Label ID="Label3" runat="server" Class="input9" Text=""> </asp:Label>
    </div>
  </div>

  
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">MRN :</label>
    <div class="col-sm-6 text-left">
        <asp:Label ID="Label5" runat="server" Class="input9" Text=""> </asp:Label>
    </div>
  </div>

  <div class="form-group row">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">Clinic Name : </label>
    <div class="col-sm-6 text-left justify-content-center">
        <asp:Label ID="Label6" runat="server" Class="input9" Text=""> </asp:Label>
    </div>
  </div>
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Gender : </label>
    <div class="col-sm-6 text-left">
        <asp:Label ID="Label7" runat="server" Class="input9" Text=""> </asp:Label>        
    </div>
  </div>

  <div class="form-group row justify-content-center">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">Date of Birth :</label>
    <div class="col-sm-6 text-left">
        <asp:Label ID="Label8" runat="server" Class="input9" Text=""> </asp:Label>
    </div>
  </div>
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Email Address : </label>
    <div class="col-sm-6 text-left">
        <asp:Label ID="Label9" runat="server" autocomplete="off" Class="input9" Text=""> </asp:Label>
    </div>
  </div>

  <div class="form-group row justify-content-center">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">SSN :</label>
    <div class="col-sm-6 text-left">
        <asp:Label ID="Label10" runat="server" autocomplete="off" Class="input9" Text=""> </asp:Label>
    </div>
  </div>
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Phone Number : </label>
    <div class="col-sm-6 text-left">
      <asp:Label ID="Label11" runat="server" autocomplete="off" Class="input9" Text=""> </asp:Label>
    </div>
  </div>

  <div class="form-group row justify-content-center">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">Address :  </label>
    <div class="col-sm-6 text-left">
        <asp:Label ID="Label12" runat="server" autocomplete="off" rows="3" style="height: inherit;" Class="input9" Text=""> </asp:Label>
    </div>
  </div>
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">City :</label>
    <div class="col-sm-6 text-left">
        <asp:Label ID="Label13" runat="server" autocomplete="off" Class="input9" Text=""> </asp:Label>
    </div>
  </div>

  <div class="form-group row justify-content-center">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">State : </label>
    <div class="col-sm-6 text-left">
        <asp:Label ID="Label14" runat="server" autocomplete="off" Class="input9" Text=""> </asp:Label>
         </div>
  </div>
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Postal Code :</label>
    <div class="col-sm-6 text-left">
        <asp:Label ID="Label15" runat="server" autocomplete="off" Class="input9" Text=""> </asp:Label>
    </div>
  </div>
         </div>

        <div class="form-group">
                 <asp:Button ID="Button1" runat="server" Text="Next"  onclick="Button4_Click" /> 
            </div>

    </form>

</body>
</html>