<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRA_F2.aspx.cs" Inherits="healtpoint.View.GPRA_F2" %>

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
            <h3 class="col-md-5 text-center">F. VIOLENCE AND TRAUMA </h3>
            </div>       
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table class="table-hover">
               <tr><th><asp:Label id="quest12" runat="server" Text="Have you ever experienced violence or trauma in any setting (including community or school violence; domestic violence; physical, psychological, or sexual maltreatment/assault within or outside of the family; natural disaster; terrorism; neglect; or traumatic grief)? "></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst12_opt1" runat="server" GroupName ="A0" text="YES"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst12_opt2" runat="server" GroupName ="A0" text="N0"/></td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst12_opt3" runat="server" GroupName ="A0" text="REFUSED"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst12_opt4" runat="server" GroupName ="A0" text="DON'T KNOW"/> </td></tr>
                 </table></div>
        <div  class="col-md-8 justify-content-center" style="margin-left: 12%;">
            <asp:Label id="Label1" runat="server" Text="Did any of these experiences feel so frightening, horrible, or upsetting that, in the past and/or the present, you:"></asp:Label>
            <table class="table-hover">
                <tr><th><asp:Label id="quest12_a" runat="server" Text="Have had nightmares about it or thought about it when you did not want to? "></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="quest12_a_opt1" runat="server" GroupName ="A1" text="YES"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="quest12_a_opt2" runat="server" GroupName ="A1" text="N0"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="quest12_a_opt3" runat="server" GroupName ="A1" text="REFUSED"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="quest12_a_opt4" runat="server" GroupName ="A1" text="DON'T KNOW"/> </td></tr>
                          </table>
            <table class="table-hover">
                <tr><th><asp:Label id="quest12_b" runat="server" Text="Tried hard not to think about it or went out of your way to avoid situations that remind you of it?"></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="quest12_b_opt1" runat="server" GroupName ="A2" text="YES"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="quest12_b_opt2" runat="server" GroupName ="A2" text="N0"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="quest12_b_opt3" runat="server" GroupName ="A2" text="REFUSED"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="quest12_b_opt4" runat="server" GroupName ="A2" text="DON'T KNOW"/> </td></tr>
                          </table>
             <table class="table-hover">
                <tr><th><asp:Label id="quest12_c" runat="server" Text="Were constantly on guard, watchful, or easily startled?"></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="quest12_c_opt1" runat="server" GroupName ="A3" text="YES"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="quest12_c_opt2" runat="server" GroupName ="A3" text="N0"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="quest12_c_opt3" runat="server" GroupName ="A3" text="REFUSED"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="quest12_c_opt4" runat="server" GroupName ="A3" text="DON'T KNOW"/> </td></tr>
                          </table>
             <table class="table-hover">
                <tr><th><asp:Label id="quest12_d" runat="server" Text="Felt numb and detached from others, activities, or your surroundings?"></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="quest12_d_opt1" runat="server" GroupName ="A4" text="YES"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="quest12_d_opt2" runat="server" GroupName ="A4" text="N0"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="quest12_d_opt3" runat="server" GroupName ="A4" text="REFUSED"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="quest12_d_opt4" runat="server" GroupName ="A4" text="DON'T KNOW"/> </td></tr>
                          </table>
        </div>
         <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table class="table-hover">
               <tr><th><asp:Label id="quest13" runat="server" Text="In the past 30 days, how often have you been hit, kicked, slapped, or otherwise physically hurt?"></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst13_opt1" runat="server" GroupName ="A5" text="Never"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst13_opt2" runat="server" GroupName ="A5" text="A few times"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst13_opt3" runat="server" GroupName ="A5" text="More than a few times"/></td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst13_opt4" runat="server" GroupName ="A5" text="REFUSED"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst13_opt5" runat="server" GroupName ="A5" text="DON'T KNOW"/> </td></tr>
                 </table>

         </div>
        <asp:Button ID="Button1" runat="server" Text="Submit and Continue" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />   
        <br />
    </form>
</body>
</html>