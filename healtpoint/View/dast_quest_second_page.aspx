<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dast_quest_second_page.aspx.cs" Inherits="healtpoint.dast_quest_first_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
</div>
     <div id="timeout" style="display: none;">
    <h1>Session About To Timeout</h1>
    <p>You will be automatically logged out in 1 minute.<br />
</div>
    <form id="form3" runat="server" class="text-justify">
        <div class="form-group row justify-content-center">
            <h3 class="col-md-5 text-center">DAST-10 Questionnarie </h3>
            </div>
        <div class="col-sm-11 text-right">
           <asp:Label ID="firstname" runat="server" Style="color:black; background-color: cadetblue; padding: 1%;"  ></asp:Label>
    </div>
        
           <div id="quest1" class="own-question-wraper"  >
            <asp:Label ID="quest_1" runat="server" Text="Have you used drugs other than those required for medical reasons?"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="No">No</asp:ListItem>
                <asp:ListItem Value="Yes">Yes</asp:ListItem>
            </asp:RadioButtonList>
               <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="RadioButtonList1" Style="color: red;" errormessage="Please Select the option for Question" />
            <br />
               <asp:HiddenField ID="hdnfldVariable1" runat="server" />
        <br /></div>
        <div id="quest2" style="display: none;">
            <asp:Label ID="quest_2" runat="server" Text="Do you abuse more than one drug at a time?"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                <asp:ListItem Value="No">No</asp:ListItem>
                <asp:ListItem Value="Yes">Yes</asp:ListItem>
            </asp:RadioButtonList>
            <br />
               <asp:HiddenField ID="hdnfldVariable2" runat="server" />
        <br /></div>
        <div id="quest3" style="display: none;">
            <asp:Label ID="quest_3" runat="server" Text="Are you unable to stop using drugs when you want to?"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                <asp:ListItem Value="No">No</asp:ListItem>
                <asp:ListItem Value="Yes">Yes</asp:ListItem>
            </asp:RadioButtonList>
            <br />
               <asp:HiddenField ID="hdnfldVariable3" runat="server" />
        <br /></div>
        <div id="quest4" style="display: none;">
            <asp:Label ID="quest_4" runat="server" Text="Have you ever had blackouts or flashbacks as a result of drug use?"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                <asp:ListItem Value="No">No</asp:ListItem>
                <asp:ListItem Value="Yes">Yes</asp:ListItem>
            </asp:RadioButtonList>
            <br />
               <asp:HiddenField ID="hdnfldVariable4" runat="server" />
        <br /></div>
        <div id="quest5" style="display: none;">
            <asp:Label ID="quest_5" runat="server" Text="Do you ever feel bad or guilty about your drug use?"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                <asp:ListItem Value="No">No</asp:ListItem>
                <asp:ListItem Value="Yes">Yes</asp:ListItem>
            </asp:RadioButtonList>
            <br />
               <asp:HiddenField ID="hdnfldVariable5" runat="server" />
        <br /></div>
        <div id="quest6" style="display: none;">
            <asp:Label ID="quest_6" runat="server" Text="Does your spouse (or parents) ever complain about your involvement with drugs?"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList6" runat="server">
                <asp:ListItem Value="No">No</asp:ListItem>
                <asp:ListItem Value="Yes">Yes</asp:ListItem>
            </asp:RadioButtonList>
            <br />
               <asp:HiddenField ID="hdnfldVariable6" runat="server" />
        <br /></div>
        <div id="quest7" style="display: none;">
            <asp:Label ID="quest_7" runat="server" Text="Have you neglected your family because of your use of drugs?"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList7" runat="server">
                <asp:ListItem Value="No">No</asp:ListItem>
                <asp:ListItem Value="Yes">Yes</asp:ListItem>
            </asp:RadioButtonList>
            <br />
               <asp:HiddenField ID="hdnfldVariable7" runat="server" />
        <br /></div>
        <div id="quest8" style="display: none;">
            <asp:Label ID="quest_8" runat="server" Text="Have you engaged in illegal activities in order to obtain drugs?"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList8" runat="server">
                <asp:ListItem Value="No">No</asp:ListItem>
                <asp:ListItem Value="Yes">Yes</asp:ListItem>
            </asp:RadioButtonList>
            <br />
               <asp:HiddenField ID="hdnfldVariable8" runat="server" />
        <br /></div>
        <div id="quest9" style="display: none;">
            <asp:Label ID="quest_9" runat="server" Text="Have you ever experienced withdrawal symptoms (felt sick) when you stopped taking drugs?"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList9" runat="server">
                <asp:ListItem Value="No">No</asp:ListItem>
                <asp:ListItem Value="Yes">Yes</asp:ListItem>
            </asp:RadioButtonList>
            <br />
               <asp:HiddenField ID="hdnfldVariable9" runat="server" />
        <br /></div>
        <div id="quest10" style="display: none;">
            <asp:Label ID="quest_10" runat="server" Text="Have you had medical problems as a result of your drug use (e.g. memory loss, hepatitis, convulsions, bleeding)?"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList10" runat="server">
                <asp:ListItem Value="No">No</asp:ListItem>
                <asp:ListItem Value="Yes">Yes</asp:ListItem>
            </asp:RadioButtonList>
            <br />
               <asp:HiddenField ID="hdnfldVariable10" runat="server" />
        <br /></div>
                  <div class="form-group text-center">
                <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click"/>
                <asp:Button ID="Button5" runat="server" Text="Submit & Next" OnClick="Button5_Click"/>
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
                    document.getElementById('hdnfldVariable1').value = abc;
                    var x = $("input[name='RadioButtonList1']:checked").val();
                    if (x != 'No') {
                        $("#quest2").show()
                        pageScroll()
                    } else {
                        $("#quest2").hide()
                        $("#quest3").hide()
                        $("#quest4").hide()
                        $("#quest5").hide()
                        $("#quest6").hide()
                        $("#quest7").hide()
                        $("#quest8").hide()
                        $("#quest9").hide()
                        $("#quest10").hide()
                    }
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
                    $("#quest10").show();
                    pageScroll();
                   // $("input[type=radio][name='RadioButtonList3']").prop("disabled", true);
                })
                $('#RadioButtonList10 input').click(function () {

                    var abc = $("input[name='RadioButtonList10']:checked").val()
                    document.getElementById('hdnfldVariable10').value = abc;
                    pageScroll();
                    // $("input[type=radio][name='RadioButtonList3']").prop("disabled", true);
                })
            
    });
</script>


</html>
