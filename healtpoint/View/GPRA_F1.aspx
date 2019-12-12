<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRA_F1.aspx.cs" Inherits="healtpoint.View.GPRA_F1" %>

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
            <h3 class="col-md-5 text-center"> MENTAL AND PHYSICAL HEALTH PROBLEMS AND TREATMENT/RECOVERY </h3>
            </div>
         <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table class="table-hover">
               <tr><th><asp:Label id="quest4" runat="server" Text="Have you ever been tested for HIV?"></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst4_opt1" runat="server" GroupName ="A0" text="Yes "/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst4_opt2" runat="server" GroupName ="A0" text="No"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst4_opt3" runat="server" GroupName ="A0" text="REFUSED"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst4_opt4" runat="server" GroupName ="A0" text=" DON'T KNOW"/> </td></tr>
                 </table></div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table class="table-hover">
               <tr><th><asp:Label id="quest4_a" runat="server" Text="Do you know the results of your HIV testing"></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst4_a_opt1" runat="server" GroupName ="A1" text="Yes "/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst4_a_opt2" runat="server" GroupName ="A1" text="No"/></td></tr>
                 </table></div>
         <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table class="table-hover">
               <tr><th><asp:Label id="quest5" runat="server" Text="How would you rate your quality of life? "></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst5_opt1" runat="server" GroupName ="A2" text="Very Poor "/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst5_opt2" runat="server" GroupName ="A2" text="Poor"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst5_opt3" runat="server" GroupName ="A2" text="Neither por nor good"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst5_opt4" runat="server" GroupName ="A2" text="Good"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst5_opt5" runat="server" GroupName ="A2" text=" Very Good"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst5_opt6" runat="server" GroupName ="A2" text="REFUSED"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst5_opt7" runat="server" GroupName ="A2" text="DON'T KNOW"/> </td></tr>
                 </table></div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table class="table-hover">
               <tr><th><asp:Label id="quest6" runat="server" Text="How satisfied are you with your health? "></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst6_opt1" runat="server" GroupName ="A3" text="Very dissatisfied"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst6_opt2" runat="server" GroupName ="A3" text="Dissatisfied"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst6_opt3" runat="server" GroupName ="A3" text="Neither satisfied nor dissatisfied"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst6_opt4" runat="server" GroupName ="A3" text="Satisfied "/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst6_opt5" runat="server" GroupName ="A3" text="Very satisfied"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst6_opt6" runat="server" GroupName ="A3" text="REFUSED"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst6_opt7" runat="server" GroupName ="A3" text="DON'T KNOW"/> </td></tr>
                 </table></div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table class="table-hover">
               <tr><th><asp:Label id="quest7" runat="server" Text="Do you have enough energy for everyday life? "></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst7_opt1" runat="server" GroupName ="A4" text="Not at all"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst7_opt2" runat="server" GroupName ="A4" text="A little"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst7_opt3" runat="server" GroupName ="A4" text="Moderately"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst7_opt4" runat="server" GroupName ="A4" text="Mostly "/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst7_opt5" runat="server" GroupName ="A4" text="Completely"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst7_opt6" runat="server" GroupName ="A4" text="REFUSED"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst7_opt7" runat="server" GroupName ="A4" text="DON'T KNOW"/> </td></tr>
                 </table></div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table class="table-hover">
               <tr><th><asp:Label id="quest8" runat="server" Text="How satisfied are you with your ability to perform your daily activities? "></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst8_opt1" runat="server" GroupName ="A5" text="Very dissatisfied"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst8_opt2" runat="server" GroupName ="A5" text="Dissatisfied "/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst8_opt3" runat="server" GroupName ="A5" text="Neither satisfied nor dissatisfied"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst8_opt4" runat="server" GroupName ="A5" text="Satisfied"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst8_opt5" runat="server" GroupName ="A5" text="Very satisfied"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst8_opt6" runat="server" GroupName ="A5" text="REFUSED"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst8_opt7" runat="server" GroupName ="A5" text="DON'T KNOW"/> </td></tr>
                 </table></div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table class="table-hover">
               <tr><th><asp:Label id="quest9" runat="server" Text="How satisfied are you with yourself? "></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst9_opt1" runat="server" GroupName ="A6" text="Very dissatisfied"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst9_opt2" runat="server" GroupName ="A6" text="Dissatisfied "/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst9_opt3" runat="server" GroupName ="A6" text="Neither satisfied nor dissatisfied"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst9_opt4" runat="server" GroupName ="A6" text="Satisfied"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst9_opt5" runat="server" GroupName ="A6" text="Very satisfied"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst9_opt6" runat="server" GroupName ="A6" text="REFUSED"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst9_opt7" runat="server" GroupName ="A6" text="DON'T KNOW"/> </td></tr>
                 </table></div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
        <table class="col-md-12 table-hover">
                <tr><th><asp:Label id="quest10" runat="server" Text="In the past 30 days, not due to your use of alcohol or drugs, how many days have you:"></asp:Label></th></tr>
                <tr style="color:Navy; " >
                    <th style="width:50%;"><asp:Label id="Label34" runat="server"></asp:Label></th>
                   <th style="width:20%;" class="text-center"><asp:Label id="Label33" runat="server" Text="Days"></asp:Label></th>
                    <th style="width:15%;" class="text-center"><asp:Label id="Label36" runat="server" Text="RF"></asp:Label></th>
                    <th style="width:15%;" class="text-center"><asp:Label id="Label37" runat="server" Text="DN"></asp:Label></th></tr>
                <tr><th style="width:50%;"><asp:Label id="qst10_a" runat="server" Text="a. Experienced serious depression "></asp:Label></th>
                     <td style="width:20%;" class="text-center"><asp:TextBox id="qst10_a_opt1" runat="server"></asp:TextBox></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="qst10_a_opt2" runat="server" GroupName ="A7"/></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="qst10_a_opt3" runat="server" GroupName ="A7"/></td>
                </tr>
                <tr><th style="width:50%;"><asp:Label id="qst10_b" runat="server" Text="b.     Experienced serious anxiety or tension"></asp:Label></th>
                     <td style="width:20%;" class="text-center"><asp:TextBox id="qst10_b_opt1" runat="server"></asp:TextBox></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="qst10_b_opt2" runat="server" GroupName ="A8"/></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="qst10_b_opt3" runat="server" GroupName ="A8"/></td>
                </tr>
                     <tr><th style="width:50%; margin-left:2%;"><asp:Label id="qst10_c" runat="server" Text="c. Experienced hallucinations "></asp:Label></th>
                     <td style="width:20%;" class="text-center"><asp:TextBox id="qst10_c_opt1" runat="server"></asp:TextBox></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="qst10_c_opt2" runat="server" GroupName ="A9"/></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="qst10_c_opt3" runat="server" GroupName ="A9"/></td>
                </tr>
                <tr ><th style="width:50%; margin-left:2%;"><asp:Label id="qst10_d" runat="server" Text="d.     Experienced trouble understanding, concentrating, or remembering"></asp:Label></th>
                     <td style="width:20%;" class="text-center"><asp:TextBox id="qst10_d_opt1" runat="server"></asp:TextBox></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="qst10_d_opt2" runat="server" GroupName ="A10"/></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="qst10_d_opt3" runat="server" GroupName ="A10"/></td>
                </tr>
                <tr><th style="width:50%; margin-left:2%;"><asp:Label id="qst10_e" runat="server" Text="e. Experienced trouble controlling violent behavior"></asp:Label></th>
                     <td style="width:20%;" class="text-center"><asp:TextBox id="qst10_e_opt1" runat="server"></asp:TextBox></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="qst10_e_opt2" runat="server" GroupName ="A11"/></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="qst10_e_opt3" runat="server" GroupName ="A11"/></td>
                </tr>
            <tr><th style="width:50%; margin-left:2%;"><asp:Label id="qst10_f" runat="server" Text="f. Attempted suicide"></asp:Label></th>
                     <td style="width:20%;" class="text-center"><asp:TextBox id="qst10_f_opt1" runat="server"></asp:TextBox></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="qst10_f_opt2" runat="server" GroupName ="A12"/></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="qst10_f_opt3" runat="server" GroupName ="A12"/></td>
                </tr>
            <tr><th style="width:50%; margin-left:2%;"><asp:Label id="qst10_g" runat="server" Text="g.     Been prescribed medication for psychological/emotional problem"></asp:Label></th>
                     <td style="width:20%;" class="text-center"><asp:TextBox id="qst10_g_opt1" runat="server"></asp:TextBox></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="qst10_g_opt2" runat="server" GroupName ="A13"/></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="qst10_g_opt3" runat="server" GroupName ="A13"/></td>
                </tr>

            </table>
        </div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table class="table-hover">
               <tr><th><asp:Label id="quest11" runat="server" Text="How much have you been bothered by these psychological or emotional problems in the past 30 days? "></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst11_opt1" runat="server" GroupName ="A14" text="Not at all "/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst11_opt2" runat="server" GroupName ="A14" text="Slightly "/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst11_opt3" runat="server" GroupName ="A14" text="Moderately"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst11_opt4" runat="server" GroupName ="A14" text=" Considerably"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst11_opt5" runat="server" GroupName ="A14" text="Extremely"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst11_opt6" runat="server" GroupName ="A14" text="REFUSED"/> </td></tr>
                 <tr><td class="text-left"><asp:RadioButton id="qst11_opt7" runat="server" GroupName ="A14" text="DON'T KNOW"/> </td></tr>
                 </table></div>
        <div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Submit and Continue" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />   
        <br />
    </form>
</body>
</html>
