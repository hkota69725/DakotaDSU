<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRAMilitaryServices1.aspx.cs" Inherits="healtpoint.View.GPRAMilitaryServices1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBIRT app</title>
    <link  href="~/styles/main1.css" rel="stylesheet" runat="server" type="text/css" />
    <link rel="stylesheet" href="/styles/bootstrap.css"/>
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script type = "text/javascript">
        function show5() {
            document.getElementById('hide1').style.display = 'none';
        }
        function show6() {
            document.getElementById('hide1').style.display = 'block';
        }
        
        function CallMe() {
            var ddl = document.getElementById("<%=relationship.ClientID%>");
            var SelVal = ddl.options[ddl.selectedIndex].text;
            if (SelVal == "Select Relationship")
                $('#P1Q1O1,#P1Q1O2,#P1Q1O3,#P1Q1O4,#P1Q2O1,#P1Q2O2,#P1Q2O3,#P1Q2O4,#P1Q3O1,#P1Q3O2,#P1Q3O3,#P1Q3O4,#P1Q4O1,#P1Q4O2,#P1Q4O3,#P1Q4O4').prop('disabled', true);
            else
                $('#P1Q1O1,#P1Q1O2,#P1Q1O3,#P1Q1O4,#P1Q2O1,#P1Q2O2,#P1Q2O3,#P1Q2O4,#P1Q3O1,#P1Q3O2,#P1Q3O3,#P1Q3O4,#P1Q4O1,#P1Q4O2,#P1Q4O3,#P1Q4O4').prop('disabled', false);
            var ddl1 = document.getElementById("<%=relationship1.ClientID%>");
            var SelVal1 = ddl1.options[ddl1.selectedIndex].text;
            if (SelVal1 == "Select Relationship")
                $('#P2Q1O1,#P2Q1O2,#P2Q1O3,#P2Q1O4,#P2Q2O1,#P2Q2O2,#P2Q2O3,#P2Q2O4,#P2Q3O1,#P2Q3O2,#P2Q3O3,#P2Q3O4,#P2Q4O1,#P2Q4O2,#P2Q4O3,#P2Q4O4').prop('disabled', true);
            else
                $('#P2Q1O1,#P2Q1O2,#P2Q1O3,#P2Q1O4,#P2Q2O1,#P2Q2O2,#P2Q2O3,#P2Q2O4,#P2Q3O1,#P2Q3O2,#P2Q3O3,#P2Q3O4,#P2Q4O1,#P2Q4O2,#P2Q4O3,#P2Q4O4').prop('disabled', false);
            var ddl2 = document.getElementById("<%=relationship2.ClientID%>");
            var SelVal2 = ddl2.options[ddl2.selectedIndex].text;
            if (SelVal2 == "Select Relationship")
                $('#P3Q1O1,#P3Q1O2,#P3Q1O3,#P3Q1O4,#P3Q2O1,#P3Q2O2,#P3Q2O3,#P3Q2O4,#P3Q3O1,#P3Q3O2,#P3Q3O3,#P3Q3O4,#P3Q4O1,#P3Q4O2,#P3Q4O3,#P3Q4O4').prop('disabled', true);
            else
                $('#P3Q1O1,#P3Q1O2,#P3Q1O3,#P3Q1O4,#P3Q2O1,#P3Q2O2,#P3Q2O3,#P3Q2O4,#P3Q3O1,#P3Q3O2,#P3Q3O3,#P3Q3O4,#P3Q4O1,#P3Q4O2,#P3Q4O3,#P3Q4O4').prop('disabled', false);
            var ddl3 = document.getElementById("<%=relationship3.ClientID%>");
            var SelVal3 = ddl3.options[ddl3.selectedIndex].text;
            if (SelVal3 == "Select Relationship")
                $('#P4Q1O1,#P4Q1O2,#P4Q1O3,#P4Q1O4,#P4Q2O1,#P4Q2O2,#P4Q2O3,#P4Q2O4,#P4Q3O1,#P4Q3O2,#P4Q3O3,#P4Q3O4,#P4Q4O1,#P4Q4O2,#P4Q4O3,#P4Q4O4').prop('disabled', true);
            else
                $('#P4Q1O1,#P4Q1O2,#P4Q1O3,#P4Q1O4,#P4Q2O1,#P4Q2O2,#P4Q2O3,#P4Q2O4,#P4Q3O1,#P4Q3O2,#P4Q3O3,#P4Q3O4,#P4Q4O1,#P4Q4O2,#P4Q4O3,#P4Q4O4').prop('disabled', false);
            var ddl4 = document.getElementById("<%=relationship4.ClientID%>");
            var SelVal4 = ddl4.options[ddl4.selectedIndex].text;
            if (SelVal4 == "Select Relationship")
                $('#P5Q1O1,#P5Q1O2,#P5Q1O3,#P5Q1O4,#P5Q2O1,#P5Q2O2,#P5Q2O3,#P5Q2O4,#P5Q3O1,#P5Q3O2,#P5Q3O3,#P5Q3O4,#P5Q4O1,#P5Q4O2,#P5Q4O3,#P5Q4O4').prop('disabled', true);
            else
                $('#P5Q1O1,#P5Q1O2,#P5Q1O3,#P5Q1O4,#P5Q2O1,#P5Q2O2,#P5Q2O3,#P5Q2O4,#P5Q3O1,#P5Q3O2,#P5Q3O3,#P5Q3O4,#P5Q4O1,#P5Q4O2,#P5Q4O3,#P5Q4O4').prop('disabled', false);
            var SelVal5 = ddl5.options[ddl5.selectedIndex].text;
            if (SelVal5 == "Select Relationship")
                $('#P6Q1O1,#P6Q1O2,#P6Q1O3,#P6Q1O4,#P6Q2O1,#P6Q2O2,#P6Q2O3,#P6Q2O4,#P6Q3O1,#P6Q3O2,#P6Q3O3,#P6Q3O4,#P6Q4O1,#P6Q4O2,#P6Q4O3,#P6Q4O4').prop('disabled', true);
            else
                $('#P6Q1O1,#P6Q1O2,#P6Q1O3,#P6Q1O4,#P6Q2O1,#P6Q2O2,#P6Q2O3,#P6Q2O4,#P6Q3O1,#P6Q3O2,#P6Q3O3,#P6Q3O4,#P6Q4O1,#P6Q4O2,#P6Q4O3,#P6Q4O4').prop('disabled', false);
        }
        
       </script>
    
</head>
<body onload="Callme()">
    <div class="container-fluid nav-header">
        <div class="row own-header justify-content-end">
            <span class=""> Screening, Brief Intervention, and Referral to Treatment</span>
        </div>
        <div class="row img-row">
            <img src="/images/logo.png" alt="logo" class="own-header-img img-fluid"/>
        </div>
    </div>
    <form  runat="server">
        <div class="form-group row justify-content-center">
         <h3> MILITARY FAMILY AND DEPLOYMENT</h3>
        </div>
        <table class="table table-borderless">
           
                <tr><th class="text-left"><asp:Label id="quest11" runat="server" Text="Is anyone in your family or someone close to you on active duty in the Armed Forces, in the Reserves, or in the National Guard or separated or retired from the Armed Forces, Reserves, or National Guard?"></asp:Label></th> </tr>  
            
                
                    <tr><td class="text-left"><asp:RadioButton id="MFD1" runat="server" GroupName ="A0" text="NO" onclick="show5();"/> </td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="MFD2" runat="server" GroupName ="A0" text="YES, ONLY ONE" onclick="show6();"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="MFD3" runat="server" GroupName ="A0" text="YES, MORE THAN ONE" onclick="show6();"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="MFD4" runat="server" GroupName ="A0" text=" REFUSED" onclick="show5();"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="MFD5" runat="server" GroupName ="A0" text="DON’T KNOW" onclick="show5();"/></td></tr>

        </table>
        <div id="hide1" style="display: none" class="hide">
        <table class="table table-bordered">
            <tr>
                <td rowspan="2"> Has the Service Member experienced any of the following? </td>
                <td>Realtionship</td>
                <td>Realtionship</td>
                <td>Realtionship</td>
                <td>Realtionship</td>
                <td>Realtionship</td>
                <td>Realtionship</td>
                </tr>
            <tr>
                <td><asp:DropDownList ID="relationship" runat="server" onchange="CallMe()">
    <asp:ListItem Enabled="true" Text="Select Relationship" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Mother" Value="Mother"></asp:ListItem>
    <asp:ListItem Text="Father" Value="Father"></asp:ListItem>
    <asp:ListItem Text="Brother" Value="Brother"></asp:ListItem>
    <asp:ListItem Text="Sister" Value="Sister"></asp:ListItem>
    <asp:ListItem Text="Spouse" Value="Spouse"></asp:ListItem>
    <asp:ListItem Text="Partner" Value="Partner"></asp:ListItem>
    <asp:ListItem Text="Child" Value="Child"></asp:ListItem>
    <asp:ListItem Text="others" Value="others"></asp:ListItem>

</asp:DropDownList></td><td><asp:DropDownList ID="relationship1" runat="server" onchange="CallMe()">
    <asp:ListItem Enabled="true" Text="Select Relationship" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Mother" Value="Mother"></asp:ListItem>
    <asp:ListItem Text="Father" Value="Father"></asp:ListItem>
    <asp:ListItem Text="Brother" Value="Brother"></asp:ListItem>
    <asp:ListItem Text="Sister" Value="Sister"></asp:ListItem>
    <asp:ListItem Text="Spouse" Value="Spouse"></asp:ListItem>
    <asp:ListItem Text="Partner" Value="Partner"></asp:ListItem>
    <asp:ListItem Text="Child" Value="Child"></asp:ListItem>
    <asp:ListItem Text="others" Value="others"></asp:ListItem>

</asp:DropDownList></td><td><asp:DropDownList ID="relationship2" runat="server" onchange="CallMe()">
    <asp:ListItem Enabled="true" Text="Select Relationship" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Mother" Value="Mother"></asp:ListItem>
    <asp:ListItem Text="Father" Value="Father"></asp:ListItem>
    <asp:ListItem Text="Brother" Value="Brother"></asp:ListItem>
    <asp:ListItem Text="Sister" Value="Sister"></asp:ListItem>
    <asp:ListItem Text="Spouse" Value="Spouse"></asp:ListItem>
    <asp:ListItem Text="Partner" Value="Partner"></asp:ListItem>
    <asp:ListItem Text="Child" Value="Child"></asp:ListItem>
    <asp:ListItem Text="others" Value="others"></asp:ListItem>

</asp:DropDownList></td><td><asp:DropDownList ID="relationship3" runat="server" onchange="CallMe()">
    <asp:ListItem Enabled="true" Text="Select Relationship" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Mother" Value="Mother"></asp:ListItem>
    <asp:ListItem Text="Father" Value="Father"></asp:ListItem>
    <asp:ListItem Text="Brother" Value="Brother"></asp:ListItem>
    <asp:ListItem Text="Sister" Value="Sister"></asp:ListItem>
    <asp:ListItem Text="Spouse" Value="Spouse"></asp:ListItem>
    <asp:ListItem Text="Partner" Value="Partner"></asp:ListItem>
    <asp:ListItem Text="Child" Value="Child"></asp:ListItem>
    <asp:ListItem Text="others" Value="others"></asp:ListItem>

</asp:DropDownList></td><td><asp:DropDownList ID="relationship4" runat="server" onchange="CallMe()">
    <asp:ListItem Enabled="true" Text="Select Relationship" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Mother" Value="Mother"></asp:ListItem>
    <asp:ListItem Text="Father" Value="Father"></asp:ListItem>
    <asp:ListItem Text="Brother" Value="Brother"></asp:ListItem>
    <asp:ListItem Text="Sister" Value="Sister"></asp:ListItem>
    <asp:ListItem Text="Spouse" Value="Spouse"></asp:ListItem>
    <asp:ListItem Text="Partner" Value="Partner"></asp:ListItem>
    <asp:ListItem Text="Child" Value="Child"></asp:ListItem>
    <asp:ListItem Text="others" Value="others"></asp:ListItem>

</asp:DropDownList></td><td><asp:DropDownList ID="relationship5" runat="server" onchange="CallMe()">
    <asp:ListItem Enabled="true" Text="Select Relationship" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Mother" Value="Mother"></asp:ListItem>
    <asp:ListItem Text="Father" Value="Father"></asp:ListItem>
    <asp:ListItem Text="Brother" Value="Brother"></asp:ListItem>
    <asp:ListItem Text="Sister" Value="Sister"></asp:ListItem>
    <asp:ListItem Text="Spouse" Value="Spouse"></asp:ListItem>
    <asp:ListItem Text="Partner" Value="Partner"></asp:ListItem>
    <asp:ListItem Text="Child" Value="Child"></asp:ListItem>
    <asp:ListItem Text="others" Value="others"></asp:ListItem>

</asp:DropDownList></td>
            </tr>
            <tr>
                <td rowspan="4"><asp:label id="quest21" runat="server" Text="Deployed in support of combat operations (e.g., Iraq or Afghanistan)?"></asp:label></td>
                <td><asp:RadioButton id="P1Q1O1" runat="server" GroupName ="A6" text="YES"/></td>
                <td><asp:RadioButton id="P2Q1O1" runat="server" GroupName ="A1" text="YES"/></td>
                <td><asp:RadioButton id="P3Q1O1" runat="server" GroupName ="A2" text="YES"/></td>
                <td><asp:RadioButton id="P4Q1O1" runat="server" GroupName ="A3" text="YES"/></td>
                <td><asp:RadioButton id="P5Q1O1" runat="server" GroupName ="A4" text="YES"/></td>
                <td><asp:RadioButton id="P6Q1O1" runat="server" GroupName ="A5" text="YES"/></td>
            </tr>
            <tr>
                
                <td><asp:RadioButton id="P1Q1O2" runat="server" GroupName ="A6" text="NO"/></td>
                <td><asp:RadioButton id="P2Q1O2" runat="server" GroupName ="A1" text="NO"/></td>
                <td><asp:RadioButton id="P3Q1O2" runat="server" GroupName ="A2" text="NO"/></td>
                <td><asp:RadioButton id="P4Q1O2" runat="server" GroupName ="A3" text="NO"/></td>
                <td><asp:RadioButton id="P5Q1O2" runat="server" GroupName ="A4" text="NO"/></td>
                <td><asp:RadioButton id="P6Q1O2" runat="server" GroupName ="A5" text="NO"/></td>
            </tr>
            <tr>
                <td><asp:RadioButton id="P1Q1O3" runat="server" GroupName ="A6" text="REFUSED"/></td>
                <td><asp:RadioButton id="P2Q1O3" runat="server" GroupName ="A1" text="REFUSED"/></td>
                <td><asp:RadioButton id="P3Q1O3" runat="server" GroupName ="A2" text="REFUSED"/></td>
                <td><asp:RadioButton id="P4Q1O3" runat="server" GroupName ="A3" text="REFUSED"/></td>
                <td><asp:RadioButton id="P5Q1O3" runat="server" GroupName ="A4" text="REFUSED"/></td>
                <td><asp:RadioButton id="P6Q1O3" runat="server" GroupName ="A5" text="REFUSED"/></td>
            </tr>
            <tr>
                
                <td><asp:RadioButton id="P1Q1O4" runat="server" GroupName ="A6" text="DON'T KNOW"/></td>
                <td><asp:RadioButton id="P2Q1O4" runat="server" GroupName ="A1" text="DON'T KNOW"/></td>
                <td><asp:RadioButton id="P3Q1O4" runat="server" GroupName ="A2" text="DON'T KNOW"/></td>
                <td><asp:RadioButton id="P4Q1O4" runat="server" GroupName ="A3" text="DON'T KNOW"/></td>
                <td><asp:RadioButton id="P5Q1O4" runat="server" GroupName ="A4" text="DON'T KNOW"/></td>
                <td><asp:RadioButton id="P6Q1O4" runat="server" GroupName ="A5" text="DON'T KNOW"/></td>
            </tr>
            <tr>
                <td rowspan="4"><asp:label id="quest31" runat="server" Text="Was physically injured during combat operations?"></asp:label></td>
                <td><asp:RadioButton id="P1Q2O1" runat="server" GroupName ="A13" text="YES"/></td>
                <td><asp:RadioButton id="P2Q2O1" runat="server" GroupName ="A14" text="YES"/></td>
                <td><asp:RadioButton id="P3Q2O1" runat="server" GroupName ="A15" text="YES"/></td>
                <td><asp:RadioButton id="P4Q2O1" runat="server" GroupName ="A16" text="YES"/></td>
                <td><asp:RadioButton id="P5Q2O1" runat="server" GroupName ="A17" text="YES"/></td>
                <td><asp:RadioButton id="P6Q2O1" runat="server" GroupName ="A18" text="YES"/></td>
            </tr>
            <tr>
                
                <td><asp:RadioButton id="P1Q2O2" runat="server" GroupName ="A13" text="NO"/></td>
                <td><asp:RadioButton id="P2Q2O2" runat="server" GroupName ="A14" text="NO"/></td>
                <td><asp:RadioButton id="P3Q2O2" runat="server" GroupName ="A15" text="NO"/></td>
                <td><asp:RadioButton id="P4Q2O2" runat="server" GroupName ="A16" text="NO"/></td>
                <td><asp:RadioButton id="P5Q2O2" runat="server" GroupName ="A17" text="NO"/></td>
                <td><asp:RadioButton id="P6Q2O2" runat="server" GroupName ="A18" text="NO"/></td>
            </tr>
            <tr>
                <td><asp:RadioButton id="P1Q2O3" runat="server" GroupName ="A13" text="REFUSED"/></td>
                <td><asp:RadioButton id="P2Q2O3" runat="server" GroupName ="A14" text="REFUSED"/></td>
                <td><asp:RadioButton id="P3Q2O3" runat="server" GroupName ="A15" text="REFUSED"/></td>
                <td><asp:RadioButton id="P4Q2O3" runat="server" GroupName ="A16" text="REFUSED"/></td>
                <td><asp:RadioButton id="P5Q2O3" runat="server" GroupName ="A17" text="REFUSED"/></td>
                <td><asp:RadioButton id="P6Q2O3" runat="server" GroupName ="A18" text="REFUSED"/></td>
            </tr>
            <tr>
                
                <td><asp:RadioButton id="P1Q2O4" runat="server" GroupName ="A13" text="DON'T KNOW"/></td>
                <td><asp:RadioButton id="P2Q2O4" runat="server" GroupName ="A14" text="DON'T KNOW"/></td>
                <td><asp:RadioButton id="P3Q2O4" runat="server" GroupName ="A15" text="DON'T KNOW"/></td>
                <td><asp:RadioButton id="P4Q2O4" runat="server" GroupName ="A16" text="DON'T KNOW"/></td>
                <td><asp:RadioButton id="P5Q2O4" runat="server" GroupName ="A17" text="DON'T KNOW"/></td>
                <td><asp:RadioButton id="P6Q2O4" runat="server" GroupName ="A18" text="DON'T KNOW"/></td>
            </tr>
            <tr>
                <td rowspan="4"><asp:label id="quest41" runat="server" Text="Developed combat stress symptoms/ difficulties adjusting following deployment, including post-traumatic stress disorder (PTSD), depression, or suicidal thoughts?"></asp:label></td>
                <td><asp:RadioButton id="P1Q3O1" runat="server" GroupName ="A7" text="YES"/></td>
                <td><asp:RadioButton id="P2Q3O1" runat="server" GroupName ="A8" text="YES"/></td>
                <td><asp:RadioButton id="P3Q3O1" runat="server" GroupName ="A9" text="YES"/></td>
                <td><asp:RadioButton id="P4Q3O1" runat="server" GroupName ="A10" text="YES"/></td>
                <td><asp:RadioButton id="P5Q3O1" runat="server" GroupName ="A11" text="YES"/></td>
                <td><asp:RadioButton id="P6Q3O1" runat="server" GroupName ="A12" text="YES"/></td>
            </tr>
            <tr>
                
                <td><asp:RadioButton id="P1Q3O2" runat="server" GroupName ="A7" text="NO"/></td>
                <td><asp:RadioButton id="P2Q3O2" runat="server" GroupName ="A8" text="NO"/></td>
                <td><asp:RadioButton id="P3Q3O2" runat="server" GroupName ="A9" text="NO"/></td>
                <td><asp:RadioButton id="P4Q3O2" runat="server" GroupName ="A10" text="NO"/></td>
                <td><asp:RadioButton id="P5Q3O2" runat="server" GroupName ="A11" text="NO"/></td>
                <td><asp:RadioButton id="P6Q3O2" runat="server" GroupName ="A12" text="NO"/></td>
            </tr>
            <tr>
                <td><asp:RadioButton id="P1Q3O3" runat="server" GroupName ="A7" text="REFUSED"/></td>
                <td><asp:RadioButton id="P2Q3O3" runat="server" GroupName ="A8" text="REFUSED"/></td>
                <td><asp:RadioButton id="P3Q3O3" runat="server" GroupName ="A9" text="REFUSED"/></td>
                <td><asp:RadioButton id="P4Q3O3" runat="server" GroupName ="A10" text="REFUSED"/></td>
                <td><asp:RadioButton id="P5Q3O3" runat="server" GroupName ="A11" text="REFUSED"/></td>
                <td><asp:RadioButton id="P6Q3O3" runat="server" GroupName ="A12" text="REFUSED"/></td>
            </tr>
            <tr>
                
                <td><asp:RadioButton id="P1Q3O4" runat="server" GroupName ="A7" text="DON'T KNOW"/></td>
                <td><asp:RadioButton id="P2Q3O4" runat="server" GroupName ="A8" text="DON'T KNOW"/></td>
                <td><asp:RadioButton id="P3Q3O4" runat="server" GroupName ="A9" text="DON'T KNOW"/></td>
                <td><asp:RadioButton id="P4Q3O4" runat="server" GroupName ="A10" text="DON'T KNOW"/></td>
                <td><asp:RadioButton id="P5Q3O4" runat="server" GroupName ="A11" text="DON'T KNOW"/></td>
                <td><asp:RadioButton id="P6Q3O4" runat="server" GroupName ="A12" text="DON'T KNOW"/></td>
            </tr>
            <tr>
                <td rowspan="4"><asp:Label ID="quest51" runat="server" Text="Died or was killed?"></asp:Label></td>
                <td><asp:RadioButton id="P1Q4O1" runat="server" GroupName ="A19" text="YES"/></td>
                <td><asp:RadioButton id="P2Q4O1" runat="server" GroupName ="A20" text="YES"/></td>
                <td><asp:RadioButton id="P3Q4O1" runat="server" GroupName ="A21" text="YES"/></td>
                <td><asp:RadioButton id="P4Q4O1" runat="server" GroupName ="A22" text="YES"/></td>
                <td><asp:RadioButton id="P5Q4O1" runat="server" GroupName ="A23" text="YES"/></td>
                <td><asp:RadioButton id="P6Q4O1" runat="server" GroupName ="A24" text="YES"/></td>
            </tr>
            <tr>
                
                <td><asp:RadioButton id="P1Q4O2" runat="server" GroupName ="A19" text="NO"/></td>
                <td><asp:RadioButton id="P2Q4O2" runat="server" GroupName ="A20" text="NO"/></td>
                <td><asp:RadioButton id="P3Q4O2" runat="server" GroupName ="A21" text="NO"/></td>
                <td><asp:RadioButton id="P4Q4O2" runat="server" GroupName ="A22" text="NO"/></td>
                <td><asp:RadioButton id="P5Q4O2" runat="server" GroupName ="A23" text="NO"/></td>
                <td><asp:RadioButton id="P6Q4O2" runat="server" GroupName ="A24" text="NO"/></td>
            </tr>
            <tr>
                <td><asp:RadioButton id="P1Q4O3" runat="server" GroupName ="A19" text="REFUSED"/></td>
                <td><asp:RadioButton id="P2Q4O3" runat="server" GroupName ="A20" text="REFUSED"/></td>
                <td><asp:RadioButton id="P3Q4O3" runat="server" GroupName ="A21" text="REFUSED"/></td>
                <td><asp:RadioButton id="P4Q4O3" runat="server" GroupName ="A22" text="REFUSED"/></td>
                <td><asp:RadioButton id="P5Q4O3" runat="server" GroupName ="A23" text="REFUSED"/></td>
                <td><asp:RadioButton id="P6Q4O3" runat="server" GroupName ="A24" text="REFUSED"/></td>
            </tr>
            <tr>
                
                <td><asp:RadioButton id="P1Q4O4" runat="server" GroupName ="A19" text="DON'T KNOW"/></td>
                <td><asp:RadioButton id="P2Q4O4" runat="server" GroupName ="A20" text="DON'T KNOW"/></td>
                <td><asp:RadioButton id="P3Q4O4" runat="server" GroupName ="A21" text="DON'T KNOW"/></td>
                <td><asp:RadioButton id="P4Q4O4" runat="server" GroupName ="A22" text="DON'T KNOW"/></td>
                <td><asp:RadioButton id="P5Q4O4" runat="server" GroupName ="A23" text="DON'T KNOW"/></td>
                <td><asp:RadioButton id="P6Q4O4" runat="server" GroupName ="A24" text="DON'T KNOW"/></td>
            </tr>

        </table>
            </div>
        <asp:Button ID="Button1" runat="server" Text="Submit and Continue" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" /> 
    </form>
</body>
</html>
