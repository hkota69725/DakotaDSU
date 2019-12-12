<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRABehavioural_A1.aspx.cs" Inherits="healtpoint.View.GPRABehavioural_A1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hospital Staff Login</title>
    <link rel="stylesheet" href="~/styles/main1.css"/>
    <link rel="stylesheet" href="~/styles/bootstrap.css"/>
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
    <script type = "text/javascript">
        function show1() {
            document.getElementById('BHD1').style.display = 'block';
        }
        function show2() {
            document.getElementById('BHD1').style.display = 'none';
        }
        function show3() {
            document.getElementById('BHD2').style.display = 'block';
        }
        function show4() {
            document.getElementById('BHD2').style.display = 'none';
        }
        function CallMe() {
            if (((BHD1Y.checked) && ((BHD1A1.checked) || (BHD1A2.checked) || (BHD1A3.checked) || (BHD1A4.checked) || (BHD1A5.checked) || (BHD1A6.checked))) ||
                ((BHD2Y.checked) && ((BHD2A1.checked) || (BHD2A2.checked) || (BHD2A3.checked) || (BHD2A4.checked) || (BHD2A5.checked) || (BHD2A6.checked)))) {
                if (BHD1A1.checked && document.getElementById("BHD1A1T1").value == '') {
                    var ccNumber = window.document.getElementById("BHD1A1T1");
                    alert("Please specify the number of days received");
                    ccNumber.focus();
                    return false;
                }
                else if (Number(BHD1A1.checked && document.getElementById("BHD1A1T1").value) > 30)
                {
                    var ccNumber = window.document.getElementById("BHD1A1T1");
                    alert("The number of days should not be more than 30 days");
                    ccNumber.focus();
                    return false;
                }

                else if (BHD1A2.checked && document.getElementById("BHD1A1T2").value == '') {
                    var ccNumber = window.document.getElementById("BHD1A1T2");
                    alert("Please specify the number of days received");
                    ccNumber.focus();
                    return false;
                }
                else if (Number(BHD1A2.checked && document.getElementById("BHD1A1T2").value) > 30) {
                    var ccNumber = window.document.getElementById("BHD1A1T2");
                    alert("The number of days should not be more than 30 days");
                    ccNumber.focus();
                    return false;
                }
                else if (BHD1A3.checked && document.getElementById("BHD1A1T3").value == '') {
                    var ccNumber = window.document.getElementById("BHD1A1T3");
                    alert("Please specify the number of days received");
                    ccNumber.focus();
                    return false;
                }
                else if (Number(BHD1A3.checked && document.getElementById("BHD1A1T3").value) > 30) {
                    var ccNumber = window.document.getElementById("BHD1A1T3");
                    alert("The number of days should not be more than 30 days");
                    ccNumber.focus();
                    return false;
                }
                else if (BHD1A4.checked && document.getElementById("BHD1A1T4").value == '') {
                    var ccNumber = window.document.getElementById("BHD1A1T4");
                    alert("Please specify the number of days received");
                    ccNumber.focus();
                    return false;
                }
                else if (Number(BHD1A4.checked && document.getElementById("BHD1A1T4").value) > 30) {
                    var ccNumber = window.document.getElementById("BHD1A1T4");
                    alert("The number of days should not be more than 30 days");
                    ccNumber.focus();
                    return false;
                }
                else if (BHD2A1.checked && document.getElementById("BHD2A1T1").value == '') {
                    var ccNumber = window.document.getElementById("BHD2A1T1");
                    alert("Please specify the number of days received");
                    ccNumber.focus();
                    return false;
                }
                else if (Number(BHD2A1.checked && document.getElementById("BHD2A1T1").value) > 30) {
                    var ccNumber = window.document.getElementById("BHD2A1T1");
                    alert("The number of days should not be more than 30 days");
                    ccNumber.focus();
                    return false;
                }
                else if (BHD2A2.checked && document.getElementById("BHD2A1T2").value == '') {
                    var ccNumber = window.document.getElementById("BHD2A1T2");
                    alert("Please specify the number of days received");
                    ccNumber.focus();
                    return false;
                }
                else if (Number(BHD2A2.checked && document.getElementById("BHD2A1T2").value) > 30) {
                    var ccNumber = window.document.getElementById("BHD2A1T2");
                    alert("The number of days should not be more than 30 days");
                    ccNumber.focus();
                    return false;
                }
                else if (BHD2A3.checked && document.getElementById("BHD2A1T3").value == '') {
                    var ccNumber = window.document.getElementById("BHD2A1T3");
                    alert("Please specify the number of days received");
                    ccNumber.focus();
                    return false;
                }
                else if (Number(BHD2A3.checked && document.getElementById("BHD2A1T3").value) > 30) {
                    var ccNumber = window.document.getElementById("BHD2A1T3");
                    alert("The number of days should not be more than 30 days");
                    ccNumber.focus();
                    return false;
                }
                else if (BHD2A4.checked && document.getElementById("BHD2A1T4").value == '') {
                    var ccNumber = window.document.getElementById("BHD2A1T4");
                    alert("Please specify the number of days received");
                    ccNumber.focus();
                    return false;
                }
                else if (Number(BHD2A4.checked && document.getElementById("BHD2A1T4").value) > 30) {
                    var ccNumber = window.document.getElementById("BHD2A1T4");
                    alert("The number of days should not be more than 30 days");
                    ccNumber.focus();
                    return false;
                }
            }
            else if ((!BHD1N.checked || !BHD1DN.checked) || (!BHD2N.checked || !BHD2DN.checked)){
                alert("Please select the appropriate option from available list");
                var k = 1;
                return false;
            }
            if(k != 1)
                return true;
                
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
     

    <form id="form3" runat="server">
        <asp:Label id="quest_1" runat="server" Text="In the past 30 days, was this client diagnosed with an opioid use disorder?"></asp:Label><br />
        <asp:RadioButton ID="BHD1Y" runat="server" GroupName ="A1" Text="Yes" value="Yes" onclick="show1();"/><br />
        <asp:RadioButton ID="BHD1N" runat="server" GroupName ="A1" Text="No" value="No" onclick="show2();"/><br />
        <asp:RadioButton ID="BHD1DK" runat="server" GroupName ="A1" Text="Dont know" value="Dont Know" onclick="show2();"/><br />
        <div id="BHD1" style="display: none" class="hide">
            <asp:Label ID="quest_2" runat="server" Text="In the past 30 days, which U.S. Food and Drug Administration (FDA)-approved medication did the client receive for the treatment of this opioid use disorder? [CHECK ALL THAT APPLY.]"></asp:Label><br />
            <asp:RadioButton ID="BHD1A1" runat="server" GroupName ="A2" Text="Methadone" value="Methadone"/>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="BHD1AL1" runat="server">Specify how many days received</asp:Label>  
<asp:TextBox ID="BHD1A1T1" runat="server" ToolTip="Enter Number of Days"></asp:TextBox><br />
            <asp:RadioButton ID="BHD1A2" runat="server" GroupName ="A2" Text="Buprenorphine" value="Buprenorphine" />&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="BHD1AL2" runat="server">Specify how many days received</asp:Label>  
<asp:TextBox ID="BHD1A1T2" runat="server" ToolTip="Enter Number of Days"></asp:TextBox><br />
            <asp:RadioButton ID="BHD1A3" runat="server" GroupName ="A2" Text="Naltrexone" value="Naltrexone" />&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="BHD1AL3" runat="server">Specify how many days received</asp:Label>  
<asp:TextBox ID="BHD1A1T3" runat="server" ToolTip="Enter Number of Days"></asp:TextBox><br />
            <asp:RadioButton ID="BHD1A4" runat="server" GroupName ="A2" Text="Extended-release naltrexone" value="Extended-release naltrexone"/>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="BHD1AL4" runat="server">Specify how many days received</asp:Label>  
<asp:TextBox ID="BHD1A1T4" runat="server" ToolTip="Enter Number of Days"></asp:TextBox><br />
            <asp:RadioButton ID="BHD1A5" runat="server" GroupName ="A2" Text="Client did not receive an FDA-approved medication for an opioid use disorder" value="Client did not receive an FDA-approved medication for an alcohol use disorder"/>
            <asp:RadioButton ID="BHD1A6" runat="server" GroupName ="A2" Text="Dont know" value="Dont know"/>
        </div>
        <asp:Label id="quest_3" runat="server" Text="In the past 30 days, was this client diagnosed with an alcohol use disorder?"></asp:Label><br />
        <asp:RadioButton ID="BHD2Y" runat="server" GroupName ="A3" Text="Yes" value="Yes" onclick="show3();"/><br />
        <asp:RadioButton ID="BHD2N" runat="server" GroupName ="A3" Text="No" value="No" onclick="show4();"/><br />
        <asp:RadioButton ID="BHD2DK" runat="server" GroupName ="A3" Text="Dont know" value="Dont Know" onclick="show4();"/><br />
        <div id="BHD2" style="display: none" class="hide">
            <asp:Label id="quest_4" runat="server" Text="In the past 30 days, which FDA-approved medication did the client receive for the treatment of this alcohol use disorder? [CHECK ALL THAT APPLY.]"></asp:Label><br />
            <asp:RadioButton ID="BHD2A1" runat="server" GroupName ="A4" Text="Naltrexone" value="Naltrexone"/>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="BHD2AL1" runat="server">Specify how many days received</asp:Label>  
<asp:TextBox ID="BHD2A1T1" runat="server" ToolTip="Enter Number of Days"></asp:TextBox><br />
            <asp:RadioButton ID="BHD2A2" runat="server" GroupName ="A4" Text="Extended-release naltrexone" value="Extended-release naltrexone" />&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="BHD2AL2" runat="server">Specify how many days received</asp:Label>  
<asp:TextBox ID="BHD2A1T2" runat="server" ToolTip="Enter Number of Days"></asp:TextBox><br />
            <asp:RadioButton ID="BHD2A3" runat="server" GroupName ="A4" Text="Disulfiram" value="Disulfiram" />&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="BHD2AL3" runat="server">Specify how many days received</asp:Label>  
<asp:TextBox ID="BHD2A1T3" runat="server" ToolTip="Enter Number of Days"></asp:TextBox><br />
            <asp:RadioButton ID="BHD2A4" runat="server" GroupName ="A4" Text="Acamprosate" value="Acamprosate"/>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="BHD2AL4" runat="server">Specify how many days received</asp:Label>  
<asp:TextBox ID="BHD2A1T4" runat="server" ToolTip="Enter Number of Days"></asp:TextBox><br />
            <asp:RadioButton ID="BHD2A5" runat="server" GroupName ="A4" Text="Client did not receive an FDA-approved medication for an alcohol use disorder" value="Client did not receive an FDA-approved medication for an alcohol use disorder"/>
            <asp:RadioButton ID="BHD2A6" runat="server" GroupName ="A4" Text="Dont know" value="Dont know"/>

              </div>
          <div class="form-group">
        <asp:Button ID="Button1" runat="server" Text="Submit and Continue"  OnClientClick="return CallMe();" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />   
              </div>
                  
    </form>
</body>
</html>
