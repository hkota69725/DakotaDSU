<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRABehavioural_A2.aspx.cs" Inherits="healtpoint.View.GPRABehavioural_A2" %>
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
        function show5() {
            document.getElementById('BHD3').style.display = 'block';
        }
        function show6() {
            document.getElementById('BHD3').style.display = 'none';
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

        <asp:Label id="quest_1" runat="server" Text="Was the client screened by your program for co-occurring mental health and substance use disorders?"></asp:Label><br />
        <asp:RadioButton ID="BHD1Y" runat="server" GroupName ="A5" Text="Yes" value="Yes" onclick="show5();"/><br />
        <asp:RadioButton ID="BHD1N" runat="server" GroupName ="A5" Text="No" value="No" onclick="show6();"/><br />
        <div id="BHD3" style="display: none" class="hide">
            <asp:Label id="quest_2" runat="server" Text="Did the client screen positive for co-occurring mental health and substance use disorders?"></asp:Label><br />
            <asp:RadioButton ID="BHD1AY" runat="server" GroupName ="A6" Text="Yes" value="Yes"/><br />
            <asp:RadioButton ID="BHD1AN" runat="server" GroupName ="A6" Text="No" value="No"/><br />
        </div>
        
        <asp:Button ID="Button1" runat="server" Text="Submit and Continue" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />   
        <br />
    </form>
</body>
</html>

