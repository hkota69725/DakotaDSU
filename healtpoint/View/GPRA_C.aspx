<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRA_C.aspx.cs" Inherits="healtpoint.View.GPRA_C" %>

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
            <h3 class="col-md-5 text-center"> FAMILY AND LIVING CONDITIONS </h3>
            </div>
       <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
           <table>
               <tr><th><asp:Label id="quest1" runat="server" Text="In the past 30 days, where have you been living most of the time?"></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst1_opt1" runat="server" GroupName ="A0" text=" SHELTER (SAFE HAVENS, TRANSITIONAL LIVING CENTER [TLC], LOW-DEMAND FACILITIES, RECEPTION CENTERS, OTHER TEMPORARY DAY OR EVENING FACILITY)"/> </td></tr>
            <tr><td class="text-left"><asp:RadioButton id="qst1_opt2" runat="server" GroupName ="A0" text="STREET/OUTDOORS (SIDEWALK, DOORWAY, PARK, PUBLIC OR ABANDONED BUILDING)"/></td></tr>
            <tr><td class="text-left"><asp:RadioButton id="qst1_opt3" runat="server" GroupName ="A0" text=" INSTITUTION (HOSPITAL, NURSING HOME, JAIL/PRISON)"/></td></tr>
            <tr><td class="text-left"><asp:RadioButton id="qst1_opt4" runat="server" GroupName ="A0" text="HOUSED: "/> <table class="col-md-8" style="margin-left:5%;">
                <tr><td class="text-left"><asp:RadioButton id="qst1_opt4_1" runat="server" GroupName ="A0" text="OWN/RENT APARTMENT, ROOM, OR HOUSE"/></td></tr>
                <tr><td class="text-left"><asp:RadioButton id="qst1_opt4_2" runat="server" GroupName ="A0" text=" SOMEONE ELSE’S APARTMENT, ROOM, OR HOUSE"/></td></tr>
                <tr><td class="text-left"><asp:RadioButton id="qst1_opt4_3" runat="server" GroupName ="A0" text="DORMITORY/COLLEGE RESIDENCE"/></td></tr>
                <tr><td class="text-left"><asp:RadioButton id="qst1_opt4_4" runat="server" GroupName ="A0" text="HALFWAY HOUSE "/></td></tr>
                <tr><td class="text-left"><asp:RadioButton id="qst1_opt4_5" runat="server" GroupName ="A0" text="RESIDENTIAL TREATMENT"/></td></tr>
                <tr><td class="text-left"><asp:RadioButton id="qst1_opt4_6" runat="server" GroupName ="A0" text="OTHER HOUSED (SPECIFY)"/><asp:TextBox ID="qst1_opt4_6_TB" runat="server"></asp:TextBox></td></tr></table></td></tr>
            <tr><td class="text-left"><asp:RadioButton id="qst1_opt5" runat="server" GroupName ="A0" text="REFUESD"/></td></tr>
            <tr><td class="text-left"><asp:RadioButton id="qst1_opt6" runat="server" GroupName ="A0" text="DON'T KNOW"/></td></tr>
           </table>
        </div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table>
               <tr><th><asp:Label id="quest2" runat="server" Text="How satisfied are you with the conditions of your living space?"></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst2_opt1" runat="server" GroupName ="A1" text="Very dissatisfied "/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst2_opt2" runat="server" GroupName ="A1" text="Dissatisfied"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst2_opt3" runat="server" GroupName ="A1" text="Neither satisfied nor dissatisfied"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst2_opt4" runat="server" GroupName ="A1" text=" Satisfied"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst2_opt5" runat="server" GroupName ="A1" text="Very satisfied"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst2_opt6" runat="server" GroupName ="A1" text=" REFUSED"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst2_opt7" runat="server" GroupName ="A1" text="DON’T KNOW"/></td></tr>
                 </table>
        </div>
         <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table>
               <tr><th><asp:Label id="quest3" runat="server" Text="During the past 30 days, how stressful have things been for you because of your use of alcohol or other drugs? "></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst3_opt1" runat="server" GroupName ="A2" text="  Not at all  "/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst3_opt2" runat="server" GroupName ="A2" text="Somewhat"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst3_opt3" runat="server" GroupName ="A2" text="Considerably"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst3_opt4" runat="server" GroupName ="A2" text="Extremely "/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst3_opt5" runat="server" GroupName ="A2" text="NOT APPLICABLE "/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst3_opt6" runat="server" GroupName ="A2" text="REFUSED"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst3_opt7" runat="server" GroupName ="A2" text="DON’T KNOW"/></td></tr>
                 </table>
        </div>
         <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table>
               <tr><th><asp:Label id="quest4" runat="server" Text="During the past 30 days, has your use of alcohol or other drugs caused you to reduce or give up important activities? "></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst4_opt1" runat="server" GroupName ="A3" text="Not at all  "/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst4_opt2" runat="server" GroupName ="A3" text="Somewhat"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst4_opt3" runat="server" GroupName ="A3" text="Considerably"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst4_opt4" runat="server" GroupName ="A3" text="Extremely "/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst4_opt5" runat="server" GroupName ="A3" text="NOT APPLICABLE "/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst4_opt6" runat="server" GroupName ="A3" text="REFUSED"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst4_opt7" runat="server" GroupName ="A3" text="DON’T KNOW"/></td></tr>
                 </table>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Submit and Continue" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" /> 
    </form>
</body>
</html>
