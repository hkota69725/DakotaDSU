<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRA_I.aspx.cs" Inherits="healtpoint.View.GPRA_I" %>

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
            <h3 class="col-md-5 text-center">I. FOLLOW-UP STATUS </h3>
            </div> 
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
      <p>[REPORTED BY PROGRAM STAFF ABOUT CLIENT ONLY AT FOLLOW-UP.]</p>
        </div>
          <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table class="table-hover">
               <tr><th><asp:Label id="quest1" runat="server" Text="1.What is the follow-up status of the client?"></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst1_opt1" runat="server" GroupName ="A0" text=" 01 = Deceased at time of due date "/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst1_opt2" runat="server" GroupName ="A0" text="11 = Completed interview within specified window "/></td></tr>
                  <tr><td class="text-left"><asp:RadioButton id="qst1_opt3" runat="server" GroupName ="A0" text="12 = Completed interview outside specified window"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst1_opt4" runat="server" GroupName ="A0" text="21 = Located, but refused, unspecified "/></td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst1_opt5" runat="server" GroupName ="A0" text="22 = Located, but unable to gain institutional access"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst1_opt6" runat="server" GroupName ="A0" text="23 = Located, but otherwise unable to gain access"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst1_opt7" runat="server" GroupName ="A0" text="24 = Located, but withdrawn from project"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst1_opt8" runat="server" GroupName ="A0" text="31 = Unable to locate, moved"/></td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst1_opt9" runat="server" GroupName ="A0" text="32 = Unable to locate, other (Specify)"/><asp:TextBox id="qst1_opt9_1" runat="server"></asp:TextBox> </td></tr>
                     
                 </table></div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table class="table-hover">
               <tr><th><asp:Label id="quest2" runat="server" Text="2. Is the client still receiving services from your program?"></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst2_opt1" runat="server" GroupName ="A1" text="Yes"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst2_opt2" runat="server" GroupName ="A1" text="No"/></td></tr>
                 </table></div>
        <div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Submit and Continue" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />   
        <br />
    </form>
</body>
</html>