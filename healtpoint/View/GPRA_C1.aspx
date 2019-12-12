<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRA_C1.aspx.cs" Inherits="healtpoint.View.GPRA_C1" %>

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
    <form id="form1" runat="server">
        <div class="form-group row justify-content-center ">
            <h3 class="col-md-5 text-center"> FAMILY AND LIVING CONDITIONS </h3>
            </div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table>
               <tr><th><asp:Label id="quest5" runat="server" Text="During the past 30 days, has your use of alcohol or other drugs caused you to have emotional problems?"></asp:Label></th></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst5_opt1" runat="server" GroupName ="A0" text="Not at all  "/> </td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst5_opt2" runat="server" GroupName ="A0" text="Somewhat"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst5_opt3" runat="server" GroupName ="A0" text="Considerably"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst5_opt4" runat="server" GroupName ="A0" text="Extremely "/> </td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst5_opt5" runat="server" GroupName ="A0" text="NOT APPLICABLE "/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst5_opt6" runat="server" GroupName ="A0" text="REFUSED"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst5_opt7" runat="server" GroupName ="A0" text="DON’T KNOW"/></td></tr>
                 </table>
        </div>
         <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table>
               <tr><th><asp:Label id="quest6" runat="server" Text="Are you currently pregnant?"></asp:Label></th></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst6_opt1" runat="server" GroupName ="A1" text="YES "/> </td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst6_opt2" runat="server" GroupName ="A1" text="NO"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst6_opt3" runat="server" GroupName ="A1" text="REFUSED"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst6_opt4" runat="server" GroupName ="A1" text="DON’T KNOW"/></td></tr>
                 </table>
        </div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table>
               <tr><th><asp:Label id="quest7" runat="server" Text="Do you have children?"></asp:Label></th></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst7_opt1" runat="server" GroupName ="A2" text="YES "/> </td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst7_opt2" runat="server" GroupName ="A2" text="NO"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst7_opt3" runat="server" GroupName ="A2" text="REFUSED"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst7_opt4" runat="server" GroupName ="A2" text="DON’T KNOW"/></td></tr>
                </table>

        </div>
          <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table>
               <tr><th><asp:Label id="quest7_a" runat="server" Text="How many children do you have?"></asp:Label></th></tr>
                    <tr><td class="text-left"><asp:TextBox runat="server"></asp:TextBox></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst7_a_opt1" runat="server" GroupName ="A3" text="REFUSED"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst7_a_opt2" runat="server" GroupName ="A3" text="DON’T KNOW"/></td></tr>
                </table>
              <table>
               <tr><th><asp:Label id="quest7_b" runat="server" Text="How many of your children are living with someone else due to a child protection court order? "></asp:Label></th></tr>
                    <tr><td class="text-left"><asp:TextBox runat="server"></asp:TextBox></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst7_b_opt1" runat="server" GroupName ="A4" text="REFUSED"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst7_b_opt2" runat="server" GroupName ="A4" text="DON’T KNOW"/></td></tr>
                </table>
              <table>
               <tr><th><asp:Label id="quest7_c" runat="server" Text="For how many of your children have you lost parental rights? [THE CLIENT’S PARENTAL RIGHTS WERE TERMINATED]"></asp:Label></th></tr>
                    <tr><td class="text-left"><asp:TextBox runat="server"></asp:TextBox></td></tr>  
                    <tr><td class="text-left"><asp:RadioButton id="qst7_c_opt1" runat="server" GroupName ="A5" text="REFUSED"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst7_c_opt2" runat="server" GroupName ="A5" text="DON’T KNOW"/></td></tr>
                </table>
             <table>
               <tr><th><asp:Label id="quest7_d" runat="server" Text="For how many of your children have you lost parental rights?"></asp:Label></th></tr>
                    <tr><td class="text-left"><asp:TextBox id="quest7_d_opt1" runat="server" GroupName ="A6"></asp:TextBox> </td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst7_d_opt2" runat="server" GroupName ="A6" text="REFUSED"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="qst7_d_opt3" runat="server" GroupName ="A6" text="DON’T KNOW"/></td></tr>
                </table>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Submit and Continue" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" /> 
    </form>
</body>
</html>
