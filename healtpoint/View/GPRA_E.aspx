<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRA_E.aspx.cs" Inherits="healtpoint.View.GPRA_E" %>

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
            <h3 class="col-md-5 text-center"> CRIME AND CRIMINAL JUSTICE STATUS </h3>
            </div>
       <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
           <table>
               <tr><th><asp:Label id="quest1" runat="server" Text="In the past 30 days, how many times have you been arrested?"></asp:Label></th></tr>
                    <tr><td class="text-left"><asp:TextBox id="qst1_opt1" runat="server"></asp:TextBox>Times</td></tr>  
                    <tr><td class="text-left"><asp:RadioButton id="qst1_opt2" runat="server" GroupName ="A0" text="REFUSED"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst1_opt3" runat="server" GroupName ="A0" text="DON’T KNOW"/></td></tr>
                </table>
        </div>
          <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
           <table>
               <tr><th><asp:Label id="quest2" runat="server" Text="In the past 30 days, how many times have you been arrested for drug-related offenses? "></asp:Label></th></tr>
                    <tr><td class="text-left"><asp:TextBox id="qst2_opt1" runat="server"></asp:TextBox>Times</td></tr>  
                    <tr><td class="text-left"><asp:RadioButton id="qst2_opt2" runat="server" GroupName ="A1" text="REFUSED"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst2_opt3" runat="server" GroupName ="A1" text="DON’T KNOW"/></td></tr>
                </table>
        </div>
         <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
           <table>
               <tr><th><asp:Label id="quest3" runat="server" Text="In the past 30 days, how many nights have you spent in jail/prison? "></asp:Label></th></tr>
                    <tr><td class="text-left"><asp:TextBox id="qst3_opt1" runat="server"></asp:TextBox>Nights</td></tr>  
                    <tr><td class="text-left"><asp:RadioButton id="qst3_opt2" runat="server" GroupName ="A2" text="REFUSED"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst3_opt3" runat="server" GroupName ="A2" text="DON’T KNOW"/></td></tr>
                </table>
        </div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
           <table>
               <tr><th><asp:Label id="quest4" runat="server" Text="In the past 30 days, how many times have you committed a crime?"></asp:Label></th></tr>
                    <tr><td class="text-left"><asp:TextBox id="qst4_opt1" runat="server"></asp:TextBox>Nights</td></tr>  
                    <tr><td class="text-left"><asp:RadioButton id="qst4_opt2" runat="server" GroupName ="A3" text="REFUSED"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst4_opt3" runat="server" GroupName ="A3" text="DON’T KNOW"/></td></tr>
                </table>
        </div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table>
               <tr><th><asp:Label id="quest5" runat="server" Text="Are you currently awaiting charges, trial, or sentencing?"></asp:Label></th></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst5_opt1" runat="server" GroupName ="A4" text="YES "/> </td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst5_opt2" runat="server" GroupName ="A4" text="NO"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst5_opt3" runat="server" GroupName ="A4" text="REFUSED"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst5_opt4" runat="server" GroupName ="A4" text="DON’T KNOW"/></td></tr>
                 </table>
        </div>
         <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table>
               <tr><th><asp:Label id="quest6" runat="server" Text="Are you currently on parole or probation?"></asp:Label></th></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst6_opt1" runat="server" GroupName ="A5" text="YES "/> </td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst6_opt2" runat="server" GroupName ="A5" text="NO"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst6_opt3" runat="server" GroupName ="A5" text="REFUSED"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst6_opt4" runat="server" GroupName ="A5" text="DON’T KNOW"/></td></tr>
                 </table>
        </div>
  <asp:Button ID="Button1" runat="server" Text="Submit and Continue" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />   
        <br />
    </form>
</body>
</html>