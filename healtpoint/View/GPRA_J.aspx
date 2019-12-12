<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRA_J.aspx.cs" Inherits="healtpoint.View.GPRA_J" %>

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
            <h3 class="col-md-5 text-center">J. DISCHARGE STATUS </h3>
            </div>         
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
      <p>[REPORTED BY PROGRAM STAFF ABOUT CLIENT ONLY AT DISCHARGE.]</p>
        </div>
         <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table>
               <tr><th><asp:Label id="quest1" runat="server" Text="1.On what date was the client discharged?"></asp:Label></th></tr>
               <tr><td class="text-left"><input id="qst1_opt1" type="date" class="form-control input9" name="bday" max="3000-12-31" 
        min="1000-01-01" /></td></tr>
                 </table>
             </div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table class="table-hover">
               <tr><th><asp:Label id="quest2" runat="server" Text="2.What is the client’s discharge status?"></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst2_opt1" runat="server" GroupName ="A0" text="01 = Completion/Graduate"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst2_opt2" runat="server" GroupName ="A0" text="02 = Termination"/></td></tr>
                 </table>
                         <table class="table-hover">
               <tr><th><asp:Label id="quest2_q1" runat="server" Text="If the client was terminated, what was the reason for termination? "></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="quest2_q1_opt1" runat="server" GroupName ="A1" text=" 01 = Left on own against staff advice with satisfactory progress "/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="quest2_q1_opt2" runat="server" GroupName ="A1" text="02 = Left on own against staff advice without satisfactory progress "/></td></tr>
                  <tr><td class="text-left"><asp:RadioButton id="quest2_q1_opt3" runat="server" GroupName ="A1" text="03 = Involuntarily discharged due to nonparticipation"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="quest2_q1_opt4" runat="server" GroupName ="A1" text=" 04 = Involuntarily discharged due to violation of rules"/></td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="quest2_q1_opt5" runat="server" GroupName ="A1" text="05 = Referred to another program or other services with satisfactory progress"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="quest2_q1_opt6" runat="server" GroupName ="A1" text="06 = Referred to another program or other services with unsatisfactory progress"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="quest2_q1_opt7" runat="server" GroupName ="A1" text="07 = Incarcerated due to offense committed while in treatment/recovery with satisfactory progress "/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="quest2_q1_opt8" runat="server" GroupName ="A1" text="08 = Incarcerated due to offense committed while in treatment/recovery with unsatisfactory progress"/></td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="quest2_q1_opt9" runat="server" GroupName ="A1" text="09 = Incarcerated due to old warrant or charged from before entering treatment/recovery with satisfactory progress"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="quest2_q1_opt10" runat="server" GroupName ="A1" text="10 = Incarcerated due to old warrant or charged from before entering treatment/recovery with unsatisfactory progress"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="quest2_q1_opt11" runat="server" GroupName ="A1" text="11 = Transferred to another facility for health reasons "/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="quest2_q1_opt12" runat="server" GroupName ="A1" text=" 12 = Death"/></td></tr> 
                 <tr><td class="text-left"><asp:RadioButton id="quest2_q1_opt13" runat="server" GroupName ="A1" text="13 = Others (Specify)"/><asp:TextBox Style="width:70%;" runat="server"></asp:TextBox> </td></tr>
                     
                 </table></div>
<div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table>
               <tr><th><asp:Label id="quest3" runat="server" Text="3.Did the program test this client for HIV?"></asp:Label></th></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst3_opt1" runat="server" GroupName ="A2" text="Yes "/> </td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst3_opt2" runat="server" GroupName ="A2" text="No"/></td></tr>
                </table>

        </div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table>
               <tr><th><asp:Label id="quest4" runat="server" Text="4.Did the program refer this client for testing?"></asp:Label></th></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst4_opt1" runat="server" GroupName ="A3" text="Yes "/> </td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst4_opt2" runat="server" GroupName ="A3" text="No"/></td></tr>
                </table>

        </div>
        <asp:Button ID="Button1" runat="server" Text="Submit and Continue" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />   
        <br />
    </form>
</body>
</html>
