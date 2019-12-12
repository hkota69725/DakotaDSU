<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dast_quest_first_page.aspx.cs" Inherits="healtpoint.dast_quest_first_page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBIRT Questionare</title>
    <link rel="stylesheet" href="~/styles/main1.css" />
    <link rel="stylesheet" href="~/styles/bootstrap.css" />
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
</head>
<body>
     <div class="container-fluid nav-header">
        <div class="row own-header justify-content-end">
            <span class=""> Screening, Brief Intervention, and Referral to Treatment</span>
        </div>
        <div class="row img-row">
            <a href ="PatientLoginClinic.aspx"><img src="/images/logo.png" alt="logo" class="own-header-img img-fluid"/></a>
        </div>
    </div>
    <div id="mySidenav" class="sidenav">
  <a href="default1.aspx?status=end" id="about">
      <img id="logoutimg" src="/images/userlogo.png" alt="logo"/>
      <span>LOGOUT</span>
  </a>
</div>
    <form id="form3" runat="server" class="text-justify" > 
        <div class="form-group row justify-content-center">
        <h3> Single Drug Questionnaire</h3>
           </div>
        <div class="col-sm-10 text-right">
           <asp:Label ID="firstname" runat="server" Style="color:black; background-color: cadetblue; padding: 1%;"  ></asp:Label>
    </div>
        
        <div id="quest1" class="own-question-wraper" style="margin:12px;">
            <asp:Label ID="quest_1" runat="server" Text="How many times in the past year have you used an illegal drug or used a prescription medication for non-medical reasons? (If asked what non-medical reasons, you can say because of the experience or feeling the drug caused.)"></asp:Label>
            <div class="form-group text-center">
            <asp:TextBox ID="TxtBox1" runat="server" type="number" placeholder="Enter only Numbers" />
            </div>
            
            <div class="form-group text-center">
                <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" />
                <asp:Button ID="Button5" runat="server" Text="Submit & Next" OnClick="Button5_Click" />
            </div>
        </div>
    </form>
</body>    
</html>
