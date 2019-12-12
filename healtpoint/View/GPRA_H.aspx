<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRA_H.aspx.cs" Inherits="healtpoint.View.GPRA_H" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBIRT app</title>
    <link  href="~/styles/main1.css" rel="stylesheet" runat="server" type="text/css" />
    <link rel="stylesheet" href="/styles/bootstrap.css"/>
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
   
</head>
<body>
    <div class="container-fluid nav-header position-static">
        <div class="row own-header justify-content-end">
            <span class=""> Screening, Brief Intervention, and Referral to Treatment</span>
        </div>
        <div class="row img-row">
            <img src="/images/logo.png" alt="logo" class="own-header-img img-fluid"/>
        </div>
    </div>
    <form id="form8" runat="server">
        <div class="form-group row justify-content-center ">
            <h3 class="col-md-5 text-center">H6.  PROGRAM-SPECIFIC QUESTIONS </h3>
            </div> 
         <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
      <p>QUESTION 1 SHOULD BE REPORTED BY GRANTEE STAFF AT INTAKE/BASELINE, FOLLOW-UP, AND DISCHARGE].</p>
        </div>
          <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table class="table-hover">
               <tr><th><asp:Label id="quest1" runat="server" Text="1.Please indicate which type of funding was/will be used to pay for the SBIRT services provided to this client. [CHECK ALL THAT APPLY.]"></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst1_opt1" runat="server" GroupName ="A0" text="Current SAMHSA grant funding"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst1_opt2" runat="server" GroupName ="A0" text="Other federal grant funding "/></td></tr>
                  <tr><td class="text-left"><asp:RadioButton id="qst1_opt3" runat="server" GroupName ="A0" text="State funding  "/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst1_opt4" runat="server" GroupName ="A0" text="Client’s private insurance"/></td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst1_opt5" runat="server" GroupName ="A0" text="Medicaid/Medicare "/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst1_opt6" runat="server" GroupName ="A0" text="Others(Specify) "/><asp:TextBox id="qst1_opt6_TB" runat="server"></asp:TextBox> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst1_opt7" runat="server" GroupName ="A0" text="DON'T KNOW"/> </td></tr>
                 </table></div>
         <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
      <p>[QUESTION 2 SHOULD BE REPORTED BY GRANTEE STAFF ONLY AT INTAKE/BASELINE.]</p>
        </div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
        <table class="col-md-12 table-hover">
                <tr><th colspan="4"><asp:Label id="quest2" runat="server" Text="2. If the client screened positive for substance misuse or a substance use disorder, was the client assigned to the following types of services? [IF CLIENT SCREENED NEGATIVE, SELECT “NO” FOR EACH SERVICE BELOW.]"></asp:Label></th></tr>
                <tr style="color:Navy;">
                    <th style="width:20%;"><asp:Label id="Label34" runat="server"></asp:Label></th>
                   <th style="width:7%;" class="text-center"><asp:Label id="Label33" runat="server" Text="Yes"></asp:Label></th>
                    <th style="width:7%;" class="text-center"><asp:Label id="Label36" runat="server" Text="No"></asp:Label></th>
                    <th style="width:7%;" class="text-center"><asp:Label id="Label37" runat="server" Text="Don't Know"></asp:Label></th></tr>
                <tr><th style="width:20%;"><asp:Label id="qst2_opt1" runat="server" Text="a. Brief Intervention "></asp:Label></th>
                     <td style="width:7%;" class="text-center"><asp:RadioButton id="qst2_opt1_1" runat="server" GroupName ="A1"/></td>
                     <td style="width:7%;" class="text-center"><asp:RadioButton id="qst2_opt1_2" runat="server" GroupName ="A1"/></td>
                     <td style="width:7%;" class="text-center"><asp:RadioButton id="qst2_opt1_3" runat="server" GroupName ="A1"/></td>
                </tr>
                <tr><th style="width:20%;"><asp:Label id="qst2_opt2" runat="server" Text="b. Brief Treatment"></asp:Label></th>
                     <td style="width:7%;" class="text-center"><asp:RadioButton id="qst2_opt2_1" runat="server" GroupName ="A2"/></td>
                     <td style="width:7%;" class="text-center"><asp:RadioButton id="qst2_opt2_2" runat="server" GroupName ="A2"/></td>
                     <td style="width:7%;" class="text-center"><asp:RadioButton clidass="qst2_opt2_3" runat="server" GroupName ="A2"/></td>
                </tr>
                     <tr ><th style="width:20%; margin-left:2%;"><asp:Label id="qst2_opt3" runat="server" Text="c. Referral to Treatment "></asp:Label></th>
                     <td style="width:7%;" class="text-center"><asp:RadioButton id="qst2_opt3_1" runat="server" GroupName ="A3"/></td>
                     <td style="width:7%;" class="text-center"><asp:RadioButton id="qst2_opt3_2" runat="server" GroupName ="A3"/></td>
                     <td style="width:7%;" class="text-center"><asp:RadioButton id="qst2_opt3_3" runat="server" GroupName ="A3"/></td>
                </tr>
            </table>
            </div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
      <p>[QUESTION 3 SHOULD BE REPORTED BY GRANTEE STAFF AT INTAKE, BASELINE, FOLLOW-UP, AND DISCHARGE.] </p>
        </div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
        <table class="col-md-12 table-hover">
                <tr><th colspan="4"><asp:Label id="quest3" runat="server" Text="3.Did the client receive the following types of services?"></asp:Label></th></tr>
                <tr style="color:Navy;">
                    <th style="width:20%;"><asp:Label id="Label2" runat="server"></asp:Label></th>
                   <th style="width:7%;" class="text-center"><asp:Label id="Label3" runat="server" Text="Yes"></asp:Label></th>
                    <th style="width:7%;" class="text-center"><asp:Label id="Label4" runat="server" Text="No"></asp:Label></th>
                    <th style="width:7%;" class="text-center"><asp:Label id="Label6" runat="server" Text="Don't Know"></asp:Label></th></tr>
                <tr><th style="width:20%;"><asp:Label id="qst3_opt1" runat="server" Text="a. Brief Intervention "></asp:Label></th>
                     <td style="width:7%;" class="text-center"><asp:RadioButton id="qst3_opt1_1" runat="server" GroupName ="A4"/></td>
                     <td style="width:7%;" class="text-center"><asp:RadioButton id="qst3_opt1_2" runat="server" GroupName ="A4"/></td>
                     <td style="width:7%;" class="text-center"><asp:RadioButton id="qst3_opt1_3" runat="server" GroupName ="A4"/></td>
                </tr>
                <tr><th style="width:20%;"><asp:Label id="qst3_opt2" runat="server" Text="b. Brief Treatment"></asp:Label></th>
                     <td style="width:7%;" class="text-center"><asp:RadioButton id="qst3_opt2_1" runat="server" GroupName ="A5"/></td>
                     <td style="width:7%;" class="text-center"><asp:RadioButton id="qst3_opt2_2" runat="server" GroupName ="A5"/></td>
                     <td style="width:7%;" class="text-center"><asp:RadioButton id="qst3_opt2_3" runat="server" GroupName ="A5"/></td>
                </tr>
                     <tr ><th style="width:20%; margin-left:2%;"><asp:Label id="qst3_opt3" runat="server" Text="c. Referral to Treatment "></asp:Label></th>
                     <td style="width:7%;" class="text-center"><asp:RadioButton id="qst3_opt3_1" runat="server" GroupName ="A6"/></td>
                     <td style="width:7%;" class="text-center"><asp:RadioButton id="qst3_opt3_2" runat="server" GroupName ="A6"/></td>
                     <td style="width:7%;" class="text-center"><asp:RadioButton id="qst3_opt3_3" runat="server" GroupName ="A6"/></td>
                </tr>
            </table>
            </div>
        <asp:Button ID="Button1" runat="server" Text="Submit and Continue" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />   
        <br />
    </form>
</body>
</html>
