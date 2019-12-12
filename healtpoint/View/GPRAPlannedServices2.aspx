<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRAPlannedServices2.aspx.cs" Inherits="healtpoint.View.GPRAPlannedServices2" %>

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
         <h3>Planned Services</h3>
        </div>
         <div class="col-md-12"; style="color:red;">Identify the services you plan to provide to the client during the client’s course of treatment/recovery. [SELECT “YES” OR “NO” FOR EACH ONE.] </div>
        <div class="col-lg-12 form-group row">
            [SELECT AT LEAST ONE SERVICE.]

              <table class="table table-hover table-bordered text-left" style="width:90%;margin-left:2%;">
            <tr style="color:darkgreen">
                <th><asp:Label ID="ACS" runat="server" Text="After Care Services">After Care Services</asp:Label> </th>
                <th >Yes</th>
                <th >No</th>

            </tr>
            <tbody>
                <tr>
                    <td><asp:Label ID="ACS1" runat="server" Text="Continuing Care">Continuing Care</asp:Label></td>
                    <td><asp:RadioButton ID="ACS11" runat="server" GroupName ="A0" /></td>
                    <td><asp:RadioButton ID="ACS12" runat="server" GroupName ="A0" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="ACS2" runat="server" Text="Relapse Prevention">Relapse Prevention</asp:Label></td>
                    <td><asp:RadioButton ID="ACS21" runat="server" GroupName ="A1" /></td>
                    <td><asp:RadioButton ID="ACS22" runat="server" GroupName ="A1" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="ACS3" runat="server" Text="Recovery Coaching">Recovery Coaching</asp:Label></td>
                    <td><asp:RadioButton ID="ACS31" runat="server" GroupName ="A2" /></td>
                    <td><asp:RadioButton ID="ACS32" runat="server" GroupName ="A2" /></td>
                    
                </tr>
                <tr>
                    <td><asp:Label ID="ACS4" runat="server" Text="Self-Help and Support Groups">Self-Help and Support Groups</asp:Label></td>
                    <td><asp:RadioButton ID="ACS41" runat="server" GroupName ="A3" /></td>
                    <td><asp:RadioButton ID="ACS42" runat="server" GroupName ="A3" /></td>
                    
                </tr>
                <tr>
                    <td><asp:Label ID="ACS5" runat="server" Text="Spiritual Support">Spiritual Support</asp:Label></td>
                    <td><asp:RadioButton ID="ACS51" runat="server" GroupName ="A4" /></td>
                    <td><asp:RadioButton ID="ACS52" runat="server" GroupName ="A4" /></td>
                    
                </tr>
                <tr>
                    <td><asp:Label ID="ACS6" runat="server" Text="Other After Care Services(Specify)">Other After Care Services(Specify)</asp:Label><asp:TextBox ID="ACS6TB" runat="server"></asp:TextBox></td>
                    <td><asp:RadioButton ID="ACS61" runat="server" GroupName ="A5" /></td>
                    <td><asp:RadioButton ID="ACS62" runat="server" GroupName ="A5" /></td>
                </tr>
                
                </tbody>
                   </table>
              <table class="table table-hover table-bordered text-left" style="width:90%;margin-left:2%;">
            <tr style="color:darkgreen">
                <th><asp:Label ID="ES" runat="server" Text="Education Services">Education Services</asp:Label> </th>
                <th >Yes</th>
                <th >No</th>

            </tr>
            <tbody>
                <tr>
                    <td><asp:Label ID="ES1" runat="server" Text="Substance Abuse Education">Substance Abuse Education</asp:Label></td>
                    <td><asp:RadioButton id="ES11" runat="server" GroupName ="A6" /></td>
                    <td><asp:RadioButton id="ES12" runat="server" GroupName ="A6" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="ES2" runat="server" Text="HIV/AIDS Education">HIV/AIDS Education</asp:Label></td>
                    <td><asp:RadioButton id="ES21" runat="server" GroupName ="A7" /></td>
                    <td><asp:RadioButton id="ES22" runat="server" GroupName ="A7" /></td>
                </tr>
                
                <tr>
                    <td><asp:Label ID="ES3" runat="server" Text="Other Education Services(Specify)">Other Education Services(Specify)</asp:Label><asp:TextBox ID="ES3TB" runat="server"></asp:TextBox></td>
                    <td><asp:RadioButton id="ES31" runat="server" GroupName ="A8" /></td>
                    <td><asp:RadioButton id="ES32" runat="server" GroupName ="A8" /></td>
                </tr>
                
                </tbody>
                   </table>
               
               <table class="table table-hover table-bordered text-left" style="width:90%;margin-left:2%;">
            <tr style="color:darkgreen">
                <th><asp:Label ID="PPR" runat="server" Text="Peer-to-peer Recovery Support Services">Peer-to-peer Recovery Support Services</asp:Label> </th>
                <th >Yes</th>
                <th >No</th>

            </tr>
            <tbody>
                <tr>
                    <td><asp:Label ID="PPR1" runat="server" Text="Peer Coaching or Mentoring">Peer Coaching or Mentoring</asp:Label></td>
                    <td><asp:RadioButton id="PPR11" runat="server" GroupName ="A9" /></td>
                    <td><asp:RadioButton id="PPR12" runat="server" GroupName ="A9" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="PPR2" runat="server" Text="Housing Support">Housing Support</asp:Label></td>
                    <td><asp:RadioButton id="PPR21" runat="server" GroupName ="A10" /></td>
                    <td><asp:RadioButton id="PPR22" runat="server" GroupName ="A10" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="PPR3" runat="server" Text="Alcohol- and Drug-Free Social Activities">Alcohol- and Drug-Free Social Activities</asp:Label></td>
                    <td><asp:RadioButton id="PPR31" runat="server" GroupName ="A11" /></td>
                    <td><asp:RadioButton id="PPR32" runat="server" GroupName ="A11" /></td>
                    
                </tr>
                <tr>
                    <td><asp:Label ID="PPR4" runat="server" Text="Information and Referral">Information and Referral</asp:Label></td>
                    <td><asp:RadioButton id="PPR41" runat="server" GroupName ="A12" /></td>
                    <td><asp:RadioButton id="PPR42" runat="server" GroupName ="A12" /></td>
                    
                </tr>
                
                <tr>
                    <td><asp:Label ID="PPR5" runat="server" Text="Other Peer-to-Peer Recovery Support Services (Specify)">Other Peer-to-Peer Recovery Support Services (Specify)</asp:Label><asp:TextBox ID="PPR5TB" runat="server"></asp:TextBox></td>
                    <td><asp:RadioButton id="PPR51" runat="server" GroupName ="A13" /></td>
                    <td><asp:RadioButton id="PPR52" runat="server" GroupName ="A13" /></td>
                </tr>
                
                </tbody>
                   </table>
               <asp:Button ID="Button1" runat="server" Text="Submit and Continue" OnClick="Button1_Click"/>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />  
        <br />
        </div>
    </form>
</body>
</html>