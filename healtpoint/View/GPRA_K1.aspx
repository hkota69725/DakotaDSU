<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRA_K1.aspx.cs" Inherits="healtpoint.View.GPRA_K1" %>

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
    <script type="text/javascript">
     
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
         <h3>Planned Services</h3>
        </div>
         <div class="col-md-12"; style="color:red;">Identify the services you plan to provide to the client during the client’s course of treatment/recovery. [SELECT “YES” OR “NO” FOR EACH ONE.] </div>
        <div class="col-lg-12 form-group row">
              <table class="table table-hover table-bordered text-left" style="width:90%;margin-left:2%;">
            <tr style="color:darkgreen">
                <th><asp:Label ID="CMS" runat="server" Text="Case Management Services">Case Management Services</asp:Label> </th>
                <th >Yes</th>
                <th >No</th>

            </tr>
            <tbody>
                <tr>
                    <td><asp:Label id="CMS1" runat="server" Text="Family Services (Including Marriage Education, Parenting, Child Development Services)">Family Services (Including Marriage Education, Parenting, Child Development Services)</asp:Label></td>
                    <td><asp:RadioButton id="CMS11" runat="server" GroupName ="A0" /></td>
                    <td><asp:RadioButton id="CMS12" runat="server" GroupName ="A0" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="CMS2" runat="server" Text="Child Care">Child Care</asp:Label></td>
                    <td><asp:RadioButton id="CMS21" runat="server" GroupName ="A1" /></td>
                    <td><asp:RadioButton id="CMS22" runat="server" GroupName ="A1" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="CMS3" runat="server" Text="Employment Service">Employment Service</asp:Label> </td>

                </tr>
                <tr>
                    <td><asp:Label id="CMS3A" runat="server" Text="Pre-Employment">Pre-Employment</asp:Label></td>
                    <td><asp:RadioButton id="CMS3A1" runat="server" GroupName ="A2" /></td>
                    <td><asp:RadioButton id="CMS3A2" runat="server" GroupName ="A2" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="CMS3B" runat="server" Text="Employment Coaching">Employment Coaching</asp:Label></td>
                    <td><asp:RadioButton id="CMS3B1" runat="server" GroupName ="A3" /></td>
                    <td><asp:RadioButton id="CMS3B2" runat="server" GroupName ="A3" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="CMS4" runat="server" Text="Individual Services Coordination">Individual Services Coordination</asp:Label></td>
                    <td><asp:RadioButton id="CMS41" runat="server" GroupName ="A4" /></td>
                    <td><asp:RadioButton id="CMS42" runat="server" GroupName ="A4" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="CMS5" runat="server" Text="Transportation">Transportation</asp:Label></td>
                    <td><asp:RadioButton id="CMS51" runat="server" GroupName ="A5" /></td>
                    <td><asp:RadioButton id="CMS52" runat="server" GroupName ="A5" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="CMS6" runat="server" Text="HIV/AIDS Service">HIV/AIDS Service</asp:Label></td>
                    <td><asp:RadioButton id="CMS61" runat="server" GroupName ="A6" /></td>
                    <td><asp:RadioButton id="CMS62" runat="server" GroupName ="A6" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="CMS7" runat="server" Text="Supportive Transitional Drug-Free Housing Services">Supportive Transitional Drug-Free Housing Services</asp:Label></td>
                    <td><asp:RadioButton id="CMS71" runat="server" GroupName ="A7" /></td>
                    <td><asp:RadioButton id="CMS72" runat="server" GroupName ="A7" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="CMS8" runat="server" Text="Other Case Management Services(Specify)">Other Case Management Services(Specify)</asp:Label><asp:TextBox ID="CMS8TB" runat="server"></asp:TextBox></td>
                    <td><asp:RadioButton id="CMS81" runat="server" GroupName ="A8" /></td>
                    <td><asp:RadioButton id="CMS82" runat="server" GroupName ="A8" /></td>
                </tr>
                

            </tbody>


        </table>
               <table class="table table-hover table-bordered text-left" style="width:90%;margin-left:2%;">
            <tr style="color:darkgreen">
                 <th><asp:Label ID="MS" runat="server" Text="Medical Services">Medical Services</asp:Label> </th>
                <th >Yes</th>
                <th >No</th>

            </tr>
            <tbody>
                <tr>
                    <td><asp:Label ID="MS1" runat="server" Text="Medical Care">Medical Care</asp:Label></td>
                    <td><asp:RadioButton id="MS11" runat="server" GroupName ="A9" /></td>
                    <td><asp:RadioButton id="MS12" runat="server" GroupName ="A9" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="MS2" runat="server" Text="Alcohol/Drug Testing">Alcohol/Drug Testing</asp:Label></td>
                    <td><asp:RadioButton id="MS21" runat="server" GroupName ="A10" /></td>
                    <td><asp:RadioButton id="MS22" runat="server" GroupName ="A10" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="MS3" runat="server" Text="HIV/AIDS Medical Support and Testing">HIV/AIDS Medical Support and Testing</asp:Label></td>
                    <td><asp:RadioButton id="MS31" runat="server" GroupName ="A11" /></td>
                    <td><asp:RadioButton id="MS32" runat="server" GroupName ="A11" /></td>
                    
                </tr>
                <tr>
                    <td><asp:Label ID="MS4" runat="server" Text="Other Medical Services(Specify)">Other Medical Services(Specify)</asp:Label><asp:TextBox ID="MS4TB" runat="server"></asp:TextBox></td>
                    <td><asp:RadioButton id="MS41" runat="server" GroupName ="A12" /></td>
                    <td><asp:RadioButton id="MS42" runat="server" GroupName ="A12" /></td>
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
