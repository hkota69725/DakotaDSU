<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRAMilitaryServices.aspx.cs" Inherits="healtpoint.View.GPRAMilitaryServices" %>

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
    <style>
        th{
            color:maroon;
            font-size:150%;
        }
        input{
            margin-left: 3%;
        }
        label{
            margin-left:1%;
        }
        
    </style>
    <script type = "text/javascript">
        function show5() {
            document.getElementById('hide1').style.display = 'none';
        }
        function show6() {
            document.getElementById('hide1').style.display = 'block';
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
                <div class="form-group row justify-content-center">
         <h3> MILITARY FAMILY AND DEPLOYMENT</h3>
        </div>
           <asp:Label ID="quest11" runat="server" Text="Have you ever served in the Armed Forces, in the Reserves, or in the National Guard? [IF SERVED] In which area, the Armed Forces, Reserves, or National Guard did you serve?"></asp:Label>   <br />
                    <asp:RadioButton ID="MS011" runat="server" GroupName="A0" Text="NO" onclick="show5();"/><br />
                    <asp:RadioButton id="MS012" runat="server" GroupName ="A0" text="YES, IN THE ARMED FORCES" onclick="show6();"/><br />
                    <asp:RadioButton id="MS013" runat="server" GroupName ="A0" text="YES, IN THE RESERVES" onclick="show6();"/><br />
                    <asp:RadioButton id="MS014" runat="server" GroupName ="A0" text="YES, IN THE NATIONAL GUARD" onclick="show6();"/><br />
                    <asp:RadioButton id="MS015" runat="server" GroupName ="A0" text="REFUSED" onclick="show5();"/><br />
                    <asp:RadioButton id="MS016" runat="server" GroupName ="A0" text="DON’T KNOW" onclick="show5();"/><br />

        <div id="hide1" style="display: none" class="hide">
           
                <asp:Label ID="quest21" runat="server" Text="Are you currently on active duty in the Armed Forces, in the Reserves, or in the National Guard? [IF ACTIVE] In which area, the Armed Forces, Reserves, or National Guard did you serve?"></asp:Label>    <br /> 
                    <asp:RadioButton id="MS021" runat="server" GroupName ="A1" text="NO, SEPARATED OR RETIRED FROM THE ARMED FORCES, RESERVES, OR NATIONAL GUARD"/><br />
                    <asp:RadioButton id="MS022" runat="server" GroupName ="A1" text="YES, IN THE ARMED FORCES"/><br />
                    <asp:RadioButton id="MS023" runat="server" GroupName ="A1" text="YES, IN THE RESERVES"/><br />
                    <asp:RadioButton id="MS024" runat="server" GroupName ="A1" text="YES, IN THE NATIONAL GUARD"/><br />
                    <asp:RadioButton id="MS025" runat="server" GroupName ="A1" text="REFUSED"/><br />
                    <asp:RadioButton id="MS026" runat="server" GroupName ="A1" text="DON’T KNOW"/><br />

                <asp:Label id="quest31" runat="server" Text="Have you ever been deployed to a combat zone? [CHECK ALL THAT APPLY.]"></asp:Label><br />

                    <asp:RadioButton id="MS031" runat="server" GroupName ="A2" text="NEVER DEPLOYED"/><br />
                    <asp:RadioButton id="MS032" runat="server" GroupName ="A2" text="IRAQ OR AFGHANISTAN (E.G., Operation Enduring Freedom [OEF]/ Operation Iraqi Freedom [OIF]/ Operation New Dawn [OND])"/><br />
                    <asp:RadioButton id="MS033" runat="server" GroupName ="A2" text="PERSIAN GULF (OPERATION DESERT SHIELD/DESERT STORM)"/><br />
                    <asp:RadioButton id="MS034" runat="server" GroupName ="A2" text="VIETNAM/SOUTHEAST ASIA"/><br />
                    <asp:RadioButton id="MS035" runat="server" GroupName ="A2" text="KOREA"/><br />
                    <asp:RadioButton id="MS036" runat="server" GroupName ="A2" text="WWII"/><br />
                    <asp:RadioButton id="MS037" runat="server" GroupName ="A2" text="DEPLOYED TO A COMBAT ZONE NOT LISTED ABOVE (E.G., BOSNIA/SOMALIA)"/><br />
                    <asp:RadioButton id="MS038" runat="server" GroupName ="A2" text="REFUSED"/><br />
                    <asp:RadioButton id="MS039" runat="server" GroupName ="A2" text="DON’T KNOW"/><br />
                
           </div>
            
        <asp:Button ID="Button1" runat="server" Text="Submit and Continue" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />   
    </form>
</body>
   
</html>