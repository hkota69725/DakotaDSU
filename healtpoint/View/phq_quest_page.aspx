<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="phq_quest_page.aspx.cs" Inherits="healtpoint.phq_quest_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PHQ-9 Questionnaire</title>
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
        <h3>PHQ - 9 Questionnaire</h3>
           </div>
        <div class="col-sm-11 text-right">
           <asp:Label ID="firstname" runat="server" Style="color:black; background-color: cadetblue; padding: 1%;"  ></asp:Label>
    </div>
        <div class="col-sm-12 text-center" style="background-color: darkgreen; color: white;margin-top:2%;">
            <asp:Label  runat="server" Text="Over the <u>Last 2 weeks</u>, how often have you been bothered by any of the following problems"></asp:Label>
        </div>

        <div id="quest1" class="own-question-wraper"  >
            <asp:Label ID="quest_1" runat="server" Text="Little interest or pleasure in doing things."></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="Not at all">Not at all</asp:ListItem>
                <asp:ListItem Value="Several days">Several days</asp:ListItem>
                <asp:ListItem Value="More than half the days">More than half the days</asp:ListItem>
                <asp:ListItem Value="Nearly every day">Nearly every day</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="RadioButtonList1" Style="color: red;" errormessage="Please Select the option for Question" />
            <br />
               <asp:HiddenField ID="hdnfldVariable1" runat="server" />
        <br /></div>
        <div id="quest2" style="display: none;">
            <asp:Label ID="quest_2" runat="server" Text="Feeling down, depressed, or hopeless."></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                <asp:ListItem Value="Not at all">Not at all</asp:ListItem>
                <asp:ListItem Value="Several days">Several days</asp:ListItem>
                <asp:ListItem Value="More than half the days">More than half the days</asp:ListItem>
                <asp:ListItem Value="Nearly every day">Nearly every day</asp:ListItem>
            </asp:RadioButtonList>
            <br />
               <asp:HiddenField ID="hdnfldVariable2" runat="server" />
        <br /></div>
        <div id="quest3" style="display: none;">
            <asp:Label ID="quest_3" runat="server" Text="Trouble falling or staying asleep, or sleeping too much."></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                <asp:ListItem Value="Not at all">Not at all</asp:ListItem>
                <asp:ListItem Value="Several days">Several days</asp:ListItem>
                <asp:ListItem Value="More than half the days">More than half the days</asp:ListItem>
                <asp:ListItem Value="Nearly every day">Nearly every day</asp:ListItem>
            </asp:RadioButtonList>
            <br />
               <asp:HiddenField ID="hdnfldVariable3" runat="server" />
        <br /></div>
        <div id="quest4" style="display: none;">
            <asp:Label ID="quest_4" runat="server" Text="Feeling tired or having little energy."></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                <asp:ListItem Value="Not at all">Not at all</asp:ListItem>
                <asp:ListItem Value="Several days">Several days</asp:ListItem>
                <asp:ListItem Value="More than half the days">More than half the days</asp:ListItem>
                <asp:ListItem Value="Nearly every day">Nearly every day</asp:ListItem>
            </asp:RadioButtonList>
            <br />
               <asp:HiddenField ID="hdnfldVariable4" runat="server" />
        <br /></div>
        <div id="quest5" style="display: none;">
            <asp:Label ID="quest_5" runat="server" Text="Poor appetite or overeating."></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                <asp:ListItem Value="Not at all">Not at all</asp:ListItem>
                <asp:ListItem Value="Several days">Several days</asp:ListItem>
                <asp:ListItem Value="More than half the days">More than half the days</asp:ListItem>
                <asp:ListItem Value="Nearly every day">Nearly every day</asp:ListItem>
            </asp:RadioButtonList>
            <br />
               <asp:HiddenField ID="hdnfldVariable5" runat="server" />
        <br /></div>
        <div id="quest6" style="display: none;">
            <asp:Label ID="quest_6" runat="server" Text="Feeling bad about yourself – or that you are a failure or have let yourself or your family down."></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList6" runat="server">
                <asp:ListItem Value="Not at all">Not at all</asp:ListItem>
                <asp:ListItem Value="Several days">Several days</asp:ListItem>
                <asp:ListItem Value="More than half the days">More than half the days</asp:ListItem>
                <asp:ListItem Value="Nearly every day">Nearly every day</asp:ListItem>
            </asp:RadioButtonList>
            <br />
               <asp:HiddenField ID="hdnfldVariable6" runat="server" />
        <br /></div>
        <div id="quest7" style="display: none;">
            <asp:Label ID="quest_7" runat="server" Text="Trouble concentrating on things, such as reading the newspaper or watching television."></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList7" runat="server">
                <asp:ListItem Value="Not at all">Not at all</asp:ListItem>
                <asp:ListItem Value="Several days">Several days</asp:ListItem>
                <asp:ListItem Value="More than half the days">More than half the days</asp:ListItem>
                <asp:ListItem Value="Nearly every day">Nearly every day</asp:ListItem>
            </asp:RadioButtonList>
            <br />
               <asp:HiddenField ID="hdnfldVariable7" runat="server" />
        <br /></div>
        <div id="quest8" style="display: none;">
            <asp:Label ID="quest_8" runat="server" Text="Moving or speaking so slowly that other people could have noticed? Or, the opposite – being so fidgety or restless that you have been moving around a lot more than usual."></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList8" runat="server">
                <asp:ListItem Value="Not at all">Not at all</asp:ListItem>
                <asp:ListItem Value="Several days">Several days</asp:ListItem>
                <asp:ListItem Value="More than half the days">More than half the days</asp:ListItem>
                <asp:ListItem Value="Nearly every day">Nearly every day</asp:ListItem>
            </asp:RadioButtonList>
            <br />
               <asp:HiddenField ID="hdnfldVariable8" runat="server" />
        <br /></div>
        <div id="quest9" style="display: none;">
            <asp:Label ID="quest_9" runat="server" Text="Thoughts that you would be better off dead or of hurting yourself in some way."></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList9" runat="server">
                <asp:ListItem Value="Not at all">Not at all</asp:ListItem>
                <asp:ListItem Value="Several days">Several days</asp:ListItem>
                <asp:ListItem Value="More than half the days">More than half the days</asp:ListItem>
                <asp:ListItem Value="Nearly every day">Nearly every day</asp:ListItem>
            </asp:RadioButtonList>
            <br />
               <asp:HiddenField ID="hdnfldVariable9" runat="server" />
        <br /></div>
         <div id="checked" class="col-md-10 align-content-center" style=" display: none; margin-left:8%; background-color:lightgrey; color: black;margin-top:2%; border-radius:25px;">
            <asp:Label ID="checked_1" runat="server" Text="If you checked off <u> any </u> problems, how <u>difficult </u> have these problems made it for you to do your work, take care of things at home, or get along with other people?"></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList10" Class="col-md-12" runat="server">
                        <asp:ListItem Value="Not difficult at all"></asp:ListItem>
                        <asp:ListItem Value="Some what difficult"></asp:ListItem>
                        <asp:ListItem Value="Very difficult"></asp:ListItem>
                        <asp:ListItem Value="Extremely difficult"></asp:ListItem>
                    </asp:RadioButtonList>
             <br />
               <asp:HiddenField ID="hdnfldVariable10" runat="server" />
        <br /></div>
                
         <div class="form-group text-center">
             <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click"/>
             <asp:Button ID="Button5" runat="server" Text="Finish" OnClick="Button5_Click"/>
            </div>
     </form>
</body>

    <script type="text/javascript">

        $(function () {
            var rb1 = document.getElementById("RadioButtonList1");
            console.log(rb1);

            function pageScroll() {
                window.scrollTo(0, 5000);
                //scrolldelay = setTimeout(pageScroll, 5);
            }

            $('#RadioButtonList1 input').click(function () {
                var abc = $("input[name='RadioButtonList1']:checked").val()
                var x = $("input[name='RadioButtonList1']:checked").val()
                document.getElementById('hdnfldVariable1').value = abc;
                $("#quest2").show();
                pageScroll();
                // $("input[type=radio][name='RadioButtonList1']").prop("disabled", true);                             
            })

            $('#RadioButtonList2 input').click(function () {
                var abc = $("input[name='RadioButtonList2']:checked").val()
                document.getElementById('hdnfldVariable2').value = abc;
                $("#quest3").show();
                pageScroll();
                //  $("input[type=radio][name='RadioButtonList2']").prop("disabled", true);
            })

            $('#RadioButtonList3 input').click(function () {
                var abc = $("input[name='RadioButtonList3']:checked").val()
                document.getElementById('hdnfldVariable3').value = abc;
                $("#quest4").show();
                pageScroll();
                //  $("input[type=radio][name='RadioButtonList2']").prop("disabled", true);
            })

            $('#RadioButtonList4 input').click(function () {
                var abc = $("input[name='RadioButtonList4']:checked").val()
                document.getElementById('hdnfldVariable4').value = abc;
                $("#quest5").show();
                pageScroll();
                //  $("input[type=radio][name='RadioButtonList2']").prop("disabled", true);
            })

            $('#RadioButtonList5 input').click(function () {
                var abc = $("input[name='RadioButtonList5']:checked").val()
                document.getElementById('hdnfldVariable5').value = abc;
                $("#quest6").show();
                pageScroll();
                //  $("input[type=radio][name='RadioButtonList2']").prop("disabled", true);
            })

            $('#RadioButtonList6 input').click(function () {
                var abc = $("input[name='RadioButtonList6']:checked").val()
                document.getElementById('hdnfldVariable6').value = abc;
                $("#quest7").show();
                pageScroll();
                //  $("input[type=radio][name='RadioButtonList2']").prop("disabled", true);
            })

            $('#RadioButtonList7 input').click(function () {
                var abc = $("input[name='RadioButtonList7']:checked").val()
                document.getElementById('hdnfldVariable7').value = abc;
                $("#quest8").show();
                pageScroll();
                //  $("input[type=radio][name='RadioButtonList2']").prop("disabled", true);
            })

            $('#RadioButtonList8 input').click(function () {
                var abc = $("input[name='RadioButtonList8']:checked").val()
                document.getElementById('hdnfldVariable8').value = abc;
                $("#quest9").show();
                pageScroll();
                //  $("input[type=radio][name='RadioButtonList2']").prop("disabled", true);
            })
            $('#RadioButtonList9 input').click(function () {
                var abc = $("input[name='RadioButtonList9']:checked").val()
                document.getElementById('hdnfldVariable9').value = abc;
                $("#checked").show();
                pageScroll();
                //  $("input[type=radio][name='RadioButtonList2']").prop("disabled", true);
            })
            $('#RadioButtonList10 input').click(function () {
                var abc = $("input[name='RadioButtonList10']:checked").val()
                document.getElementById('hdnfldVariable10').value = abc;
                pageScroll();
                //  $("input[type=radio][name='RadioButtonList2']").prop("disabled", true);
            })
        });
</script>


</html>
