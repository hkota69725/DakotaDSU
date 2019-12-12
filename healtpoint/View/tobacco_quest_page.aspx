<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tobacco_quest_page.aspx.cs" Inherits="healtpoint.tobacco_quest_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBIRT Questionare</title>
    <link rel="stylesheet" href="~/styles/main1.css" />
    <link rel="stylesheet" href="~/styles/bootstrap.css" />
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <style>
        label {
 margin-left:0.8%;
}
    </style>
    <script src="/Scripts/bootstrapmin.js"></script>
    <script>
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
    <form id="form3" runat="server" class="text-justify" > 
        <div class="form-group row justify-content-center">
        <h3 class="col-md-5 text-center"> Tobacco Questionnaire</h3>
           </div>
        <div class="col-sm-11 text-right">
           <asp:Label ID="firstname" runat="server" Style="color:black; background-color: cadetblue; padding: 1%;"  ></asp:Label>
    </div>
        
        <div id="quest1" class="own-question-wraper col-md-12">
            <asp:Label ID="quest_1" runat="server" Text="Are you a current tobacco user?"></asp:Label>
            <div class="form-group text-center">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="No">No</asp:ListItem>
                <asp:ListItem Value="Yes">Yes</asp:ListItem>
            </asp:RadioButtonList>
                <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="RadioButtonList1" Style="color: red;" errormessage="Please Select the option for Question" />
                <asp:HiddenField ID="hdnfldVariable1" runat="server" />
            </div>
            </div>
            <div class="form-group text-center">
                <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" />
                <asp:Button ID="Button5" runat="server" Text="Submit & Next" OnClick="Button5_Click" />
            </div>
 
    </form>
</body>    
    <script type="text/javascript">

        $(function () {
            var rb1 = document.getElementById("RadioButtonList1");
            console.log(rb1);

        });
                        
               $('#RadioButtonList1 input').click(function() {
            var abc = $("input[name='RadioButtonList1']:checked").val()
            document.getElementById('hdnfldVariable1').value = abc;

               });
        
      </script>

</html>
