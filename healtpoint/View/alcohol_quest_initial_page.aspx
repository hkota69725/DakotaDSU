<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alcohol_quest_initial_page.aspx.cs" Inherits="healtpoint.alcohol_quest_initial_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBIRT-Questionare</title>
    <link rel="stylesheet" href="~/styles/main1.css"/>
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
        var timoutWarning = 5000; // Display warning in 14 Mins.
        var timoutNow = 8000; // Timeout in 15 mins.
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
     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
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
    <form id="form3" runat="server" class="text-justify">
   <div class="form-group row justify-content-center">
        <h3> Alcohol Use (AUDIT-C)</h3>
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
       
        <div runat="server" id="quest1" class="own-question-wraper" >
            <asp:Label ID="quest_1" runat="server" Text="How often do you have a drink containing alcohol?"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem  Value="Never">Never</asp:ListItem>
                <asp:ListItem  Value="Monthly or less">Monthly or less</asp:ListItem>
                <asp:ListItem  Value="2 - 4 times a month">2 - 4 times a month</asp:ListItem>
                <asp:ListItem  Value="2 – 3 times a week">2 – 3 times a week</asp:ListItem>
                <asp:ListItem  Value="4 or more times a week">4 or more times a week</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="RadioButtonList1" Style="color: red;" errormessage="Please Select the option for Question" />
            <asp:HiddenField ID="hdnfldVariable1" runat="server" />
        <br /></div>
        <div runat="server" id="quest2" style="display: none;">
         <asp:Label ID="quest_2" runat="server" Text="How many drinks containing alcohol do you have on a typical day when you are drinking?"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                <asp:ListItem Value="0 or 2">0 or 2</asp:ListItem>
                <asp:ListItem Value="3 or 4">3 or 4</asp:ListItem>
                <asp:ListItem Value="5 or 6">5 or 6</asp:ListItem>
                <asp:ListItem Value="7 - 9">7 - 9</asp:ListItem>
                <asp:ListItem Value="10 or more">10 or more</asp:ListItem>
            </asp:RadioButtonList>
            <br /> <asp:HiddenField ID="hdnfldVariable2" runat="server"  />
        </div>
        <div runat="server" id="quest3" style="display: none;">
                    <asp:Label ID="quest_3" runat="server" Text="How often do you have five or more drinks on one occasion?"></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                        <asp:ListItem Value="Never">Never</asp:ListItem>
                        <asp:ListItem Value="Less than monthly">Less than monthly</asp:ListItem>
                        <asp:ListItem Value="Monthly">Monthly</asp:ListItem>
                        <asp:ListItem Value="Weekly">Weekly</asp:ListItem>
                        <asp:ListItem Value="Daily or almost daily">Daily or almost daily</asp:ListItem>
                        </asp:RadioButtonList> 
            <asp:HiddenField ID="hdnfldVariable3" runat="server" />
            <br />
            </div>
         <div class="form-group text-center">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Submit & Next" />
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

            $('#RadioButtonList1 input').click(function () {
                var abc = $("input[name='RadioButtonList1']:checked").val()
                document.getElementById('hdnfldVariable1').value = abc;
                if (abc != "Never") {
                    $("#quest2").show();
                }
                pageScroll();
                // $("input[type=radio][name='RadioButtonList1']").prop("disabled", true);


            })
            $('#RadioButtonList2 input').click(function () {

                $("#quest3").show();
                pageScroll();
                var abc = $("input[name='RadioButtonList2']:checked").val()
                document.getElementById('hdnfldVariable2').value = abc;
                //  $("input[type=radio][name='RadioButtonList2']").prop("disabled", true);
            })
            $('#RadioButtonList3 input').click(function () {

                var abc = $("input[name='RadioButtonList3']:checked").val()
                document.getElementById('hdnfldVariable3').value = abc;
                // $("input[type=radio][name='RadioButtonList3']").prop("disabled", true);
            })




        });
</script>
</html>
