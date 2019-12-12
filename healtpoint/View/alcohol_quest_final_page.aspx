<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alcohol_quest_final_page.aspx.cs" Inherits="healtpoint.alcohol_quest_final_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBIRT-Questionare</title>
    <link rel="stylesheet" href="~/styles/main1.css" />
    <link rel="stylesheet" href="~/styles/bootstrap.css" />
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
    <style>
        label {
 margin-left:0.8%;
}
    </style>
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
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
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
</div> <div id="timeout" style="display: none;">
    <h1>Session About To Timeout</h1>
    <p>You will be automatically logged out in 1 minute.<br />
</div>
    <form id="form3" runat="server" class="text-justify">
       <div class="form-group row justify-content-center">
        <h3> Continue to Alcohol Questionnarie </h3>
           </div>
        <div class="col-sm-11 text-right">
           <asp:Label ID="firstname" runat="server" Style="color:black; background-color: cadetblue; padding: 1%;" ></asp:Label>
    </div>
       <div class="col-md-12">
           <img class="col-md-5" style="margin: -6% 0% -4% 29%;" src="/images/AUDIT.png" alt="logo"/>
        </div>
     <div class="col-sm-12 text-center" style="background-color: darkgreen; color: white;margin-top:2%;">
            <asp:Label  runat="server">A drink is defined as:<span style="color:white;"> 12 ounces of beer, 5 ounces of wine, or 1.5 ounces of Liquor (shot).</span></asp:Label>
        </div>
        
           <div id="quest4" class="own-question-wraper" >
            <asp:Label ID="quest_4" runat="server" Text="How often during the last year have you found that you were not able to stop drinking once you had started?"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList4" runat="server">
            <asp:ListItem Value="Never">Never</asp:ListItem>
            <asp:ListItem Value="Less than monthly">Less than monthly</asp:ListItem>
            <asp:ListItem Value="Monthly">Monthly</asp:ListItem>
            <asp:ListItem Value="Weekly">Weekly</asp:ListItem>
            <asp:ListItem Value="Daily or almost daily">Daily or almost daily</asp:ListItem>
            </asp:RadioButtonList>
               <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="RadioButtonList4" Style="color: red;" errormessage="Please Select the option for Question" />
            <br />
               <asp:HiddenField ID="hdnfldVariable4" runat="server" />
        <br /></div>
               <div id="quest5" style="display: none;">
            <asp:Label ID="quest_5" runat="server" Text="How often during the last year have you failed to do what was normally expected of you because of drinking?"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                <asp:ListItem Value="Never">Never</asp:ListItem>
            <asp:ListItem Value="Less than monthly">Less than monthly</asp:ListItem>
            <asp:ListItem Value="Monthly">Monthly</asp:ListItem>
            <asp:ListItem Value="Weekly">Weekly</asp:ListItem>
            <asp:ListItem Value="Daily or almost daily">Daily or almost daily</asp:ListItem>
            </asp:RadioButtonList>
            <br /><asp:HiddenField ID="hdnfldVariable5" runat="server" />
        <br /></div>
                   <div id="quest6" style="display: none;" >
            <asp:Label ID="quest_6" runat="server" Text="How often during the last year have you needed a first drink in the morning to get yourself going after a heavy drinking session?"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList6" runat="server">
               <asp:ListItem Value="Never">Never</asp:ListItem>
            <asp:ListItem Value="Less than monthly">Less than monthly</asp:ListItem>
            <asp:ListItem Value="Monthly">Monthly</asp:ListItem>
            <asp:ListItem Value="Weekly">Weekly</asp:ListItem>
            <asp:ListItem Value="Daily or almost daily">Daily or almost daily</asp:ListItem>
            </asp:RadioButtonList>
            <br /><asp:HiddenField ID="hdnfldVariable6" runat="server" />
        <br /></div>
                       <div id="quest7" style="display: none;">
            <asp:Label ID="quest_7" runat="server" Text="How often during the last year have you had a feeling of guilt or remorse after drinking?"></asp:Label>
           <asp:RadioButtonList ID="RadioButtonList7" runat="server">
                <asp:ListItem Value="Never">Never</asp:ListItem>
            <asp:ListItem Value="Less than monthly">Less than monthly</asp:ListItem>
    <asp:ListItem Value="Monthly">Monthly</asp:ListItem>
            <asp:ListItem Value="Weekly">Weekly</asp:ListItem>
            <asp:ListItem Value="Daily or almost daily">Daily or almost daily</asp:ListItem>
            </asp:RadioButtonList>
             <br /><asp:HiddenField ID="hdnfldVariable7" runat="server" />
        <br /></div>
                           <div id="quest8" style="display: none;">
            <asp:Label ID="quest_8" runat="server" Text="How often during the last year have you been unable to remember what happened the night before because of your drinking?"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList8" runat="server">
                <asp:ListItem Value="Never">Never</asp:ListItem>
            <asp:ListItem Value="Less than monthly">Less than monthly</asp:ListItem>
    <asp:ListItem Value="Monthly">Monthly</asp:ListItem>
            <asp:ListItem Value="Weekly">Weekly</asp:ListItem>
            <asp:ListItem Value="Daily or almost daily">Daily or almost daily</asp:ListItem>
            </asp:RadioButtonList>
                               <asp:HiddenField ID="hdnfldVariable8" runat="server" />
        <br /></div>
        <div id="quest9" style="display: none;">
        <asp:Label ID="quest_9" runat="server" Text="Have you or someone else been injured because of your drinking?"></asp:Label> <br />
        <asp:RadioButtonList ID="RadioButtonList9" runat="server">
                <asp:ListItem Value="No">No</asp:ListItem>
            <asp:ListItem Value="Yes, but not in the last year">Yes, but not in the last year</asp:ListItem>
    <asp:ListItem Value="Yes, in the last year">Yes, in the last year</asp:ListItem>
            </asp:RadioButtonList>
            <asp:HiddenField ID="hdnfldVariable9" runat="server" />
        <br /></div>
            <div id="quest10" style="display: none;">
            <asp:Label ID="quest_10" runat="server" Text="Has a relative, friend, doctor, or other health care worker been concerned about your drinking or suggested you cut down?"></asp:Label>
  <asp:RadioButtonList ID="RadioButtonList10" runat="server">
                <asp:ListItem Value="No">No</asp:ListItem>
            <asp:ListItem Value="Yes, but not in the last year">Yes, but not in the last year</asp:ListItem>
    <asp:ListItem Value="Yes, in the last year">Yes, in the last year</asp:ListItem>
            </asp:RadioButtonList>
             <br />
                <asp:HiddenField ID="hdnfldVariable10" runat="server" />
        <br /></div>
        <div class="form-group text-center">
            <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" />
            <asp:Button ID="Button5" runat="server" Text="Submit & Next" OnClick="Button5_Click" />
            </div>
            
             </form>
</body>
      <script type="text/javascript">

          function pageScroll() {
              window.scrollTo(0, 5000);
              //scrolldelay = setTimeout(pageScroll, 5);
          }

          $(function () {
              var rb1 = document.getElementById("RadioButtonList1");
              console.log(rb1);


              $('#RadioButtonList4 input').click(function () {
                  var abc = $("input[name='RadioButtonList4']:checked").val()
                  document.getElementById('hdnfldVariable4').value = abc;
                  $("#quest5").show();
                  pageScroll();
                  // $("input[type=radio][name='RadioButtonList1']").prop("disabled", true);


              })
              $('#RadioButtonList5 input').click(function () {

                  $("#quest6").show();
                  pageScroll();
                  var abc = $("input[name='RadioButtonList5']:checked").val()
                  document.getElementById('hdnfldVariable5').value = abc;
                  //  $("input[type=radio][name='RadioButtonList2']").prop("disabled", true);
              })
              $('#RadioButtonList6 input').click(function () {

                  var abc = $("input[name='RadioButtonList6']:checked").val()
                  document.getElementById('hdnfldVariable6').value = abc;
                  $("#quest7").show();
                  pageScroll();
                  // $("input[type=radio][name='RadioButtonList3']").prop("disabled", true);
              })
              $('#RadioButtonList7 input').click(function () {

                  var abc = $("input[name='RadioButtonList7']:checked").val()
                  document.getElementById('hdnfldVariable7').value = abc;
                  $("#quest8").show();
                  pageScroll();
                  // $("input[type=radio][name='RadioButtonList3']").prop("disabled", true);
              })
              $('#RadioButtonList8 input').click(function () {

                  var abc = $("input[name='RadioButtonList8']:checked").val()
                  document.getElementById('hdnfldVariable8').value = abc;
                  $("#quest9").show();
                  pageScroll();
                  // $("input[type=radio][name='RadioButtonList3']").prop("disabled", true);
              })
              $('#RadioButtonList9 input').click(function () {

                  var abc = $("input[name='RadioButtonList9']:checked").val()
                  document.getElementById('hdnfldVariable9').value = abc;
                  $("#quest10").show();
                  pageScroll();
                  // $("input[type=radio][name='RadioButtonList3']").prop("disabled", true);
              })
              $('#RadioButtonList10 input').click(function () {

                  var abc = $("input[name='RadioButtonList10']:checked").val()
                  document.getElementById('hdnfldVariable10').value = abc;

                  // $("input[type=radio][name='RadioButtonList3']").prop("disabled", true);
              })




          });
</script>
</html>