<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRA_G.aspx.cs" Inherits="healtpoint.View.GPRA_G" %>

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
            <h3 class="col-md-5 text-center">G.    SOCIAL CONNECTEDNESS</h3>
            </div> 
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table class="table-hover">
               <tr style=" width:100%;" ><th colspan="4"><asp:Label id="quest1" runat="server" Text="In the past 30 days, did you attend any voluntary self-help groups for recovery that were not affiliated with a religious or faith-based organization? In other words, did you participate in a nonprofessional, peer-operated organization that is devoted to helping individuals who have addiction-related problems, such as Alcoholics Anonymous, Narcotics Anonymous, Oxford House, Secular Organization for Sobriety, or Women for Sobriety, etc.?"></asp:Label></th></tr>
               <tr><td class="text-left" style="width:20%;"><asp:RadioButton id="qst1_opt1" runat="server" GroupName ="A0" text="YES"/> </td>
                   <td style="width:30%;"> [IF YES]SPECIFY HOW MANY TIMES<asp:TextBox id="qst1_opt1_1" style="width:30%;" runat="server"></asp:TextBox></td>
                   <td style="width:20%;" class="text-center"><asp:RadioButton id="qst_opt1_2" runat="server" GroupName ="A1" text="REFUSED"/> </td>
                   <td style="width:20%;" class="text-center"><asp:RadioButton id="qst_opt1_3" runat="server" GroupName ="A1" text="DON'T KNOW"/> </td>
               </tr>
               <tr><td class="text-left"><asp:RadioButton id="qst1_opt2" runat="server" GroupName ="A0" text="N0"/></td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst1_opt3" runat="server" GroupName ="A0" text="REFUSED"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst1_opt4" runat="server" GroupName ="A0" text="DON'T KNOW"/> </td></tr>
                 </table></div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table class="table-hover">
               <tr style=" width:100%;" ><th colspan="4"><asp:Label id="quest2" runat="server" Text="In the past 30 days, did you attend any religious/faith-affiliated recovery self-help groups?"></asp:Label></th></tr>
               <tr><td class="text-left" style="width:20%;"><asp:RadioButton id="qst2_opt1" runat="server" GroupName ="A2" text="YES"/> </td>
                   <td style="width:30%;"> [IF YES]SPECIFY HOW MANY TIMES<asp:TextBox id="qst2_opt1_1" style="width:30%;" runat="server"></asp:TextBox></td>
                   <td style="width:20%;" class="text-center"><asp:RadioButton id="qst2_opt1_2" runat="server" GroupName ="A3" text="REFUSED"/> </td>
                   <td style="width:20%;" class="text-center"><asp:RadioButton id="qst2_opt1_3" runat="server" GroupName ="A3" text="DON'T KNOW"/> </td>
               </tr>
               <tr><td class="text-left"><asp:RadioButton id="qst2_opt2" runat="server" GroupName ="A2" text="N0"/></td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst2_opt3" runat="server" GroupName ="A2" text="REFUSED"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst2_opt4" runat="server" GroupName ="A2" text="DON'T KNOW"/> </td></tr>
                 </table></div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table class="table-hover">
               <tr style=" width:100%;" ><th colspan="4"><asp:Label id="quest3" runat="server" Text="In the past 30 days, did you attend meetings of organizations that support recovery other than the organizations described above? "></asp:Label></th></tr>
               <tr><td class="text-left" style="width:20%;"><asp:RadioButton id="qst3_opt1" runat="server" GroupName ="A4" text="YES"/> </td>
                   <td style="width:30%;"> [IF YES]SPECIFY HOW MANY TIMES<asp:TextBox id="qst3_opt1_1" style="width:30%;" runat="server"></asp:TextBox></td>
                   <td style="width:20%;" class="text-center"><asp:RadioButton id="qst3_opt1_2" runat="server" GroupName ="A5" text="REFUSED"/> </td>
                   <td style="width:20%;" class="text-center"><asp:RadioButton id="qst3_opt1_3" runat="server" GroupName ="A5" text="DON'T KNOW"/> </td>
               </tr>
               <tr><td class="text-left"><asp:RadioButton id="qst3_opt2" runat="server" GroupName ="A4" text="N0"/></td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst3_opt3" runat="server" GroupName ="A4" text="REFUSED"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst3_opt4" runat="server" GroupName ="A4" text="DON'T KNOW"/> </td></tr>
                 </table></div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table class="table-hover">
               <tr><th><asp:Label id="quest4" runat="server" Text="In the past 30 days, did you have interaction with family and/or friends that are supportive of your recovery?  "></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst4_opt1" runat="server" GroupName ="A6" text="YES"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst4_opt2" runat="server" GroupName ="A6" text="N0"/></td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst4_opt3" runat="server" GroupName ="A6" text="REFUSED"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst4_opt4" runat="server" GroupName ="A6" text="DON'T KNOW"/> </td></tr>
                 </table></div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table class="table-hover">
               <tr><th><asp:Label id="quest5" runat="server" Text="To whom do you turn when you are having trouble? [SELECT ONLY ONE.] "></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst5_opt1" runat="server" GroupName ="A7" text="NO ONE"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst5_opt2" runat="server" GroupName ="A7" text="CLERGY MEMBER "/></td></tr>
                  <tr><td class="text-left"><asp:RadioButton id="qst5_opt3" runat="server" GroupName ="A7" text="FAMILY MEMBER "/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst5_opt4" runat="server" GroupName ="A7" text="FRIENDS  "/></td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst5_opt5" runat="server" GroupName ="A7" text="REFUSED"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst5_opt6" runat="server" GroupName ="A7" text="DON'T KNOW"/> </td></tr>
                 </table></div>
         <div class="col-md-11 justify-content-center" style="margin-left: 6%;" >
             <table class="table-hover">
               <tr><th><asp:Label id="quest6" runat="server" Text="How satisfied are you with your personal relationships?"></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst6_opt1" runat="server" GroupName ="A8" text="Very dissatisfied"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst6_opt2" runat="server" GroupName ="A8" text="Dissatisfied "/></td></tr>
                  <tr><td class="text-left"><asp:RadioButton id="qst6_opt3" runat="server" GroupName ="A8" text="Neither satisfied nor dissatisfied"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst6_opt4" runat="server" GroupName ="A8" text="Satisfied "/></td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst6_opt5" runat="server" GroupName ="A8" text=" Very Satisfied "/></td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst6_opt6" runat="server" GroupName ="A8" text="REFUSED"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst6_opt7" runat="server" GroupName ="A8" text="DON'T KNOW"/> </td></tr>
                 </table></div>


        <div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Submit and Continue" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />   
        <br />
    </form>
</body>
</html>