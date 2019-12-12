<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRA_K.aspx.cs" Inherits="healtpoint.View.GPRA_K" %>

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
        function validityChecker() {
            if ((M11.checked != true) && (M12.checked != true) && (M21.checked != true) && (M22.checked != true) && (M31.checked != true) && (M32.checked != true) &&
                (M41.checked != true) && (M42.checked != true) && (M51.checked != true) && (M52.checked != true) && (M61.checked != true) && (M62.checked != true) &&
                (M71.checked != true) && (M72.checked != true) && (M81.checked != true) && (M82.checked != true) && (M91A.checked != true) && (M91B.checked != true) &&
                (M92A.checked != true) && (M92B.checked != true) && (M93A.checked != true) && (M93B.checked != true) && (M101.checked != true) && (M102.checked != true)
                && (M111.checked != true) && (M112.checked != true) && (M121.checked != true) && (M122.checked != true) && (M131.checked != true) && (M132.checked != true))
            {
                alert("SELECT AT LEAST ONE MODALITY");
                return false;
            }
            if (TS11.checked != true && TS21.checked != true && TS31.checked != true && TS41.checked != true) {
                alert("YOU MUST SELECT “YES” FOR AT LEAST ONE OF THE TREATMENT SERVICES NUMBERED 1–4 ");
                return false;
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
        <div class="form-group row justify-content-center">
         <h3>Planned Services</h3>
        </div>
        <div class="col-md-12"; style="color:red;">Identify the services you plan to provide to the client during the client’s course of treatment/recovery. [SELECT “YES” OR “NO” FOR EACH ONE.] </div>
       <div class="col-lg-12 form-group row">
           
        <table class="table table-hover table-bordered text-left" style="width:90%;margin-left:2%;">
            <tr style="color:darkgreen">
                <th ><asp:Label ID="M" runat="server" Text="Modality">Modality </asp:Label><asp:Label runat="server">[SELECT AT LEAST ONE MODALITY.] </asp:Label> <br /> </th>
                <th >Yes</th>
                <th >No</th>
            </tr>
            <tbody>
                <tr>
                    <td><asp:Label id="M1" runat="server" Text="Case Management">Case Management</asp:Label>  </td>
                    <td><asp:RadioButton id="M11" runat="server" GroupName ="A0" value="Yes" /></td>
                    <td><asp:RadioButton id="M12" runat="server" GroupName ="A0" value="No" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="M2" runat="server" Text="Day Treatment">Day Treatment</asp:Label> </td>
                    <td><asp:RadioButton id="M21" runat="server" GroupName ="A1" value="Yes" /></td>
                    <td><asp:RadioButton id="M22" runat="server" GroupName ="A1" value="No" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="M3" runat="server" Text="Inpatient/Hospital (Other Than Detox)">Inpatient/Hospital (Other Than Detox)</asp:Label> </td>
                    <td><asp:RadioButton id="M31" runat="server" GroupName ="A2" value="Yes" /></td>
                    <td><asp:RadioButton id="M32" runat="server" GroupName ="A2" value="No" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="M4" runat="server" Text="Outpatient">Outpatient</asp:Label> </td>
                    <td><asp:RadioButton id="M41" runat="server" GroupName ="A3" value="Yes" /></td>
                    <td><asp:RadioButton id="M42" runat="server" GroupName ="A3" value="No" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="M5" runat="server" Text="Outreach">Outreach</asp:Label> </td>
                    <td><asp:RadioButton id="M51" runat="server" GroupName ="A4" value="Yes" /></td>
                    <td><asp:RadioButton id="M52" runat="server" GroupName ="A4" value="No" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="M6" runat="server" Text="Intensive Outpatient">Intensive Outpatient</asp:Label> </td>
                    <td><asp:RadioButton id="M61" runat="server" GroupName ="A5" value="Yes" /></td>
                    <td><asp:RadioButton id="M62" runat="server" GroupName ="A5" value="No" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="M7" runat="server" Text="Methadone">Methadone</asp:Label> </td>
                    <td><asp:RadioButton id="M71" runat="server" GroupName ="A6" value="Yes" /></td>
                    <td><asp:RadioButton id="M72" runat="server" GroupName ="A6" value="No" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="M8" runat="server" Text="Residential/Rehabilitation">Residential/Rehabilitation</asp:Label> </td>
                    <td><asp:RadioButton id="M81" runat="server" GroupName ="A7" value="Yes" /></td>
                    <td><asp:RadioButton id="M82" runat="server" GroupName ="A7" value="No" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="M9" runat="server" Text="Detoxification">Detoxification</asp:Label> </td></tr>
                    <tr><td><asp:Label id="M91" runat="server" Text="Hospital Inpatient">Hospital Inpatient</asp:Label></td>
                    <td><asp:RadioButton id="M91A" runat="server" GroupName ="A8" value="Yes" /></td>
                    <td><asp:RadioButton id="M91B" runat="server" GroupName ="A8" value="No" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="M92" runat="server" Text="Free-Standing Residential">Free-Standing Residential</asp:Label> </td>
                    <td><asp:RadioButton id="M92A" runat="server" GroupName ="A91" value="Yes" /></td>
                    <td><asp:RadioButton id="M92B" runat="server" GroupName ="A91" value="No" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="M93" runat="server" Text="Ambulatory Detoxification">Ambulatory Detoxification</asp:Label> </td>
                    <td><asp:RadioButton id="M93A" runat="server" GroupName ="A92" value="Yes" /></td>
                    <td><asp:RadioButton id="M93B" runat="server" GroupName ="A92" value="No" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="Label1" runat="server" Text="After Care">After Care</asp:Label> </td>
                    <td><asp:RadioButton id="M101" runat="server" GroupName ="A10" value="Yes" /></td>
                    <td><asp:RadioButton id="M102" runat="server" GroupName ="A10" value="No" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="Label2" runat="server" Text="Recovery Support">Recovery Support</asp:Label> </td>
                    <td><asp:RadioButton id="M111" runat="server" GroupName ="A11" value="Yes" /></td>
                    <td><asp:RadioButton id="M112" runat="server" GroupName ="A11" value="No" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="Label3" runat="server" Text="SBIRT">SBIRT</asp:Label> </td>
                    <td><asp:RadioButton id="M121" runat="server" GroupName ="A11" value="Yes" /></td>
                    <td><asp:RadioButton id="M122" runat="server" GroupName ="A11" value="No" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="Label4" runat="server" Text="Other (Specify)">Other (Specify)</asp:Label> <asp:TextBox id="M04TB" runat="server"></asp:TextBox></td>
                    <td><asp:RadioButton id="M131" runat="server" GroupName ="A12" value="Yes" /></td>
                    <td><asp:RadioButton id="M132" runat="server" GroupName ="A12" value="No" /></td>
                </tr>
            </tbody>
        </table>
           <table class="table table-hover table-bordered text-left" style="width:90%;margin-left:2%;">
            <tr style="color:darkgreen">
                <th ><asp:label id="TS" runat="server" Text="Treatment Services">Treatment Services</asp:label> </th>
                <th >Yes</th>
                <th >No</th>
            </tr>
            <tbody>
                <tr>
                    <td><asp:Label id="TS1" runat="server" Text="Screening">Screening</asp:Label> </td>
                    <td><asp:RadioButton id="TS11" runat="server" GroupName ="A13" /></td>
                    <td><asp:RadioButton id="TS12" runat="server" GroupName ="A13" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="TS2" runat="server" Text="Brief Intervention">Brief Intervention</asp:Label> </td>
                    <td><asp:RadioButton id="TS21" runat="server" GroupName ="A14" /></td>
                    <td><asp:RadioButton id="TS22" runat="server" GroupName ="A14" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="TS3" runat="server" Text="Brief Treatment">Brief Treatment</asp:Label> </td>
                    <td><asp:RadioButton id="TS31" runat="server" GroupName ="A15" /></td>
                    <td><asp:RadioButton id="TS32" runat="server" GroupName ="A15" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="TS4" runat="server" Text="Referral to Treatment">Referral to Treatment</asp:Label> </td>
                    <td><asp:RadioButton id="TS41" runat="server" GroupName ="A16" /></td>
                    <td><asp:RadioButton id="TS42" runat="server" GroupName ="A16" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="TS5" runat="server" Text="Assessment">Assessment</asp:Label> </td>
                    <td><asp:RadioButton id="TS51" runat="server" GroupName ="A17" /></td>
                    <td><asp:RadioButton id="TS52" runat="server" GroupName ="A17" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="TS6" runat="server" Text="Treatment/Recovery Planning">Treatment/Recovery Planning</asp:Label> </td>
                    <td><asp:RadioButton id="TS61" runat="server" GroupName ="A18" /></td>
                    <td><asp:RadioButton id="TS62" runat="server" GroupName ="A18" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="TS7" runat="server" Text="Individual Counseling">Individual Counseling</asp:Label> </td>
                    <td><asp:RadioButton id="TS71" runat="server" GroupName ="A19" /></td>
                    <td><asp:RadioButton id="TS72" runat="server" GroupName ="A19" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="TS8" runat="server" Text="Group Counseling">Group Counseling</asp:Label> </td>
                    <td><asp:RadioButton id="TS81" runat="server" GroupName ="A20" /></td>
                    <td><asp:RadioButton id="TS82" runat="server" GroupName ="A20" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="TS9" runat="server" Text="Family/Marriage Counseling">Family/Marriage Counseling</asp:Label> </td>
                    <td><asp:RadioButton id="TS91" runat="server" GroupName ="A21" /></td>
                    <td><asp:RadioButton id="TS92" runat="server" GroupName ="A21" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="TS10" runat="server" Text="Co-Occurring Treatment/Recovery Services">Co-Occurring Treatment/Recovery Services</asp:Label> </td>
                    <td><asp:RadioButton id="TS101" runat="server" GroupName ="A22" /></td>
                    <td><asp:RadioButton id="TS102" runat="server" GroupName ="A22" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="Label5" runat="server" Text="Pharmacological Interventions">Pharmacological Interventions</asp:Label> </td>
                    <td><asp:RadioButton id="TS111" runat="server" GroupName ="A23" /></td>
                    <td><asp:RadioButton id="TS112" runat="server" GroupName ="A23" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="Label6" runat="server" Text="HIV/AIDS Counseling">HIV/AIDS Counseling</asp:Label> </td>
                    <td><asp:RadioButton id="TS121" runat="server" GroupName ="A24" /></td>
                    <td><asp:RadioButton id="TS122" runat="server" GroupName ="A24" /></td>
                </tr>
                <tr>
                    <td><asp:Label id="Label7" runat="server" Text="Other Clinical Services(Specify)">Other Clinical Services(Specify)</asp:Label> <asp:TextBox id="TS03TB" runat="server"></asp:TextBox></td>
                    <td><asp:RadioButton id="TS131" runat="server" GroupName ="A25" /></td>
                    <td><asp:RadioButton id="TS132" runat="server" GroupName ="A25" /></td>
                </tr>

                

            </tbody>


        </table>
               
                      
    
               <asp:Button ID="Button1" runat="server" Text="Submit and Continue" OnClientClick="return validityChecker();" OnClick="Button1_Click"/>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />   
        <br />
           
        
               
           </div>
    </form>
</body>
</html>