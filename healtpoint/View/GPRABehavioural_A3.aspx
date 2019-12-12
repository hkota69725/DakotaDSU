<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRABehavioural_A3.aspx.cs" Inherits="healtpoint.View.GPRABehavioural_A3" %>

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
        function show7() {
            document.getElementById('BHD4').style.display = 'block';
        }
        function show8() {
            document.getElementById('BHD4').style.display = 'none';
        }
        function CallMe() {

            var quest2_1 = Document.getElementById("BHD4A1T1").value;
            var quest2_2 = Document.getElementById("BHD4A1T2").value;
            var quest2_3 = Document.getElementById("BHD4A1T3").value;
            var quest2_4 = Document.getElementById("BHD4A1T4").value;
            var quest2_5 = Document.getElementById("BHD4A1T5").value;
            var quest2_6 = Document.getElementById("BHD4A1T6").value;
            var quest2_7 = Document.getElementById("BHD4A1T7").value;
            if (BHD4Y.checked) {
                if (quest2_1.length == 0){
                    alert("Atleast, Please specify the score of requested fields");
                    return false;
                }
                else
                    return true;
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
     

    <form id="form3" runat="server">
        <asp:Label id="quest_1" runat="server" Text="How did the client screen for your SBIRT?"></asp:Label>
        <asp:RadioButton ID="BHD4Y" runat="server" GroupName ="A7" Text="POSITIVE" value="POSITIVE" onclick="show7();"/><br />
        <asp:RadioButton ID="BHD4N" runat="server" GroupName ="A7" Text="NEGATIVE" value="NEGATIVE" onclick="show8();"/><br />
        <div id="BHD4" style="display: none" class="hide">
            <asp:Label id="quest_2" runat="server" Text="What was his/her screening score?"></asp:Label>
            <asp:Label ID="BHD4AL1" runat="server" Text="Alcohol Use Disorders Identification Test (AUDIT)"></asp:Label>  <asp:TextBox ID="BHD4A1T1" runat="server"></asp:TextBox><br />
            <asp:Label ID="BHD4AL2" runat="server" Text="CAGE"></asp:Label>  <asp:TextBox ID="BHD4A1T2" runat="server"></asp:TextBox><br />
            <asp:Label ID="BHD4AL3" runat="server" Text="Drug Abuse Screening Test (DAST)"></asp:Label>  <asp:TextBox ID="BHD4A1T3" runat="server"></asp:TextBox><br />
            <asp:Label ID="BHD4AL4" runat="server" Text="DAST-10"></asp:Label>  <asp:TextBox ID="BHD4A1T4" runat="server"></asp:TextBox><br />
            <asp:Label ID="BHD4AL5" runat="server" Text="National Institute on Alcohol Abuse and Alcoholism(NIAAA) Guide"></asp:Label>  <asp:TextBox ID="BHD4A1T5" runat="server"></asp:TextBox><br />
            <asp:Label ID="BHD4AL6" runat="server" Text="Alcohol, Smoking and Substance Involvement Screening Test (ASSIST)/Alcohol Subscore"></asp:Label>  <asp:TextBox ID="BHD4A1T6" runat="server"></asp:TextBox><br />
            <asp:Label ID="BHD4AL7" runat="server" Text="Others(Specify)" ><asp:TextBox ID="BHD4AL71" runat="server"></asp:TextBox></asp:Label> <asp:TextBox ID="BHD4A1T7" runat="server"></asp:TextBox><br />
        </div>
        <asp:Label id="quest_3" runat="server" Text="Was he/she willing to continue his/her participation in the SBIRT program?"></asp:Label>
        <asp:RadioButton ID="BHD5Y" runat="server" GroupName ="A8" Text="Yes" value="Yes"/><br />
        <asp:RadioButton ID="BHD5N" runat="server" GroupName ="A8" Text="No" value="No"/><br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit and Continue" OnClientCilck="javascript: return CallMe();" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />   
        <br />
    </form>
</body>
</html>

