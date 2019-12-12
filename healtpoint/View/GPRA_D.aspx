<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRA_D.aspx.cs" Inherits="healtpoint.View.GPRA_D" %>

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
            <h3 class="col-md-5 text-center"> EDUCATION, EMPLOYMENT, AND INCOME </h3>
            </div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table>
               <tr><th><asp:Label id="quest1" runat="server" Text="Are you currently enrolled in school or a job training program? [IF ENROLLED] Is that full time or part time?"></asp:Label></th></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest1_option1" runat="server" GroupName ="A0" text="NOT ENROLLED"/> </td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest1_option2" runat="server" GroupName ="A0" text="ENROLLED, FULL TIME"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest1_option3" runat="server" GroupName ="A0" text="ENROLLED, PART TIME"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest1_option4" runat="server" GroupName ="A0" text="OTHER (SPECIFY) "/> <asp:TextBox runat="server" ID="TB1"></asp:TextBox></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest1_option5" runat="server" GroupName ="A0" text="REFUSED"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest1_option6" runat="server" GroupName ="A0" text="DON’T KNOW"/></td></tr>
                 </table>
        </div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table>
               <tr><th><asp:Label id="quest2" runat="server" Text="What is the highest level of education you have finished, whether or not you received a degree?"></asp:Label></th></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option1" runat="server" GroupName ="A1" text="NEVER ATTENDED"/> </td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option2" runat="server" GroupName ="A1" text="1ST GRADE"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option3" runat="server" GroupName ="A1" text="2ND GRADE"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option4" runat="server" GroupName ="A1" text="3RD GRADE"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option5" runat="server" GroupName ="A1" text="4TH GRADE"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option6" runat="server" GroupName ="A1" text="5TH GRADE"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option7" runat="server" GroupName ="A1" text="6TH GRADE"/> </td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option8" runat="server" GroupName ="A1" text="7TH GRADE"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option9" runat="server" GroupName ="A1" text="8TH GRADE"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option10" runat="server" GroupName ="A1" text="9TH GRADE"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option11" runat="server" GroupName ="A1" text="10TH GRADE"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option12" runat="server" GroupName ="A1" text="11TH GRADE"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option13" runat="server" GroupName ="A1" text="12TH GRADE/HIGH SCHOOL DIPLOMA/EQUIVALENT"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option14" runat="server" GroupName ="A1" text="COLLEGE OR UNIVERSITY/1ST YEAR COMPLETED"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option15" runat="server" GroupName ="A1" text="COLLEGE OR UNIVERSITY/2ND YEAR COMPLETED/ASSOCIATE’S DEGREE (AA, AS)"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option16" runat="server" GroupName ="A1" text="COLLEGE OR UNIVERSITY/3RD YEAR COMPLETED"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option17" runat="server" GroupName ="A1" text="BACHELOR’S DEGREE (BA, BS) OR HIGHER"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option18" runat="server" GroupName ="A1" text="VOCATIONAL/TECHNICAL (VOC/TECH) PROGRAM AFTER HIGH SCHOOL BUT NO VOC/TECH DIPLOMA"/> </td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option19" runat="server" GroupName ="A1" text="VOC/TECH DIPLOMA AFTER HIGH SCHOOL"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option20" runat="server" GroupName ="A1" text="REFUSED"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest2_option21" runat="server" GroupName ="A1" text="DON’T KNOW"/></td></tr>
                 </table>
        </div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table>
               <tr><th><asp:Label id="quest3" runat="server" Text="Are you currently employed? [CLARIFY BY FOCUSING ON STATUS DURING MOST OF THE PREVIOUS WEEK, DETERMINING WHETHER CLIENT WORKED AT ALL OR HAD A REGULAR JOB BUT WAS OFF WORK. IF CLIENT IS “ENROLLED, FULL TIME” IN D1 AND INDICATES
                        “EMPLOYED, FULL TIME” IN D3, ASK FOR CLARIFICATION. IF CLIENT IS INCARCERATED AND HAS NO WORK OUTSIDE OF JAIL, CODE D3 AS “UNEMPLOYED, NOT LOOKING FOR WORK.”]"></asp:Label></th></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest3_option1" runat="server" GroupName ="A2" text="EMPLOYED, FULL TIME (35+ HOURS PER WEEK, OR WOULD HAVE BEEN)"/> </td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest3_option2" runat="server" GroupName ="A2" text="EMPLOYED, PART TIME"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest3_option3" runat="server" GroupName ="A2" text="UNEMPLOYED, LOOKING FOR WORK"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest3_option4" runat="server" GroupName ="A2" text="UNEMPLOYED, DISABLED"/></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest3_option5" runat="server" GroupName ="A2" text="UNEMPLOYED, VOLUNTEER WORK"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest3_option6" runat="server" GroupName ="A2" text="UNEMPLOYED, RETIRED"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest3_option7" runat="server" GroupName ="A2" text="UNEMPLOYED, NOT LOOKING FOR WORK"/> </td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest3_option8" runat="server" GroupName ="A2" text="OTHER (SPECIFY)"/><asp:TextBox runat="server" ID="TB2"></asp:TextBox></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest3_option9" runat="server" GroupName ="A2" text="REFUSED"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest3_option10" runat="server" GroupName ="A2" text="DON’T KNOW"/></td></tr>
                 </table>
        </div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table>
               <tr><th><asp:Label id="quest4" runat="server" Text="Approximately, how much money did YOU receive (pre-tax individual income) in the past 30 days from..."></asp:Label></th></tr>
                 <tr>
                        <td style="text-align: left; margin-left:2%; font-weight: bold;"> <asp:Label runat="server" Text="Type of Expenditure"></asp:Label></td>
                        <td style="text-align: left; margin-left:2%; font-weight: bold;"> <asp:Label runat="server" Text="Money Spent"></asp:Label></td>
                     <td style="text-align: left; margin-left:2%; font-weight: bold;"> <asp:Label runat="server" Text="Refused"></asp:Label></td>
                     <td style="text-align: left; margin-left:2%; font-weight: bold;"> <asp:Label runat="server" Text="Don't Know"></asp:Label></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="quest4_label1" runat="server" Text="Wages"></asp:Label></td>
                        <td> <asp:Label id="sample" runat="server" Text="$"></asp:Label><asp:textbox id="quest4_label1_TB1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  id="quest4_label1_option1" runat="server" GroupName ="A3"  value="Refused" /></td>
                        <td> <asp:RadioButton  id="quest4_label1_option2" runat="server" GroupName ="A3"  value="Don't Know" /></td>
                   </tr>
                 <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="quest4_label2" runat="server" Text="Public assistance"></asp:Label></td>
                        <td> <asp:Label id="sample1" runat="server" Text="$"></asp:Label> <asp:textbox id="quest4_label2_TB1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  id="quest4_label2_option1" runat="server" GroupName ="A4"  value="Refused" /></td>
                        <td> <asp:RadioButton  id="quest4_label2_option2" runat="server" GroupName ="A4"  value="Don't Know" /></td>
                   </tr>
                 <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="quest4_label3" runat="server" Text="Retirement"></asp:Label></td>
                        <td> <asp:Label id="sample2" runat="server" Text="$"></asp:Label><asp:textbox id="quest4_label3_TB1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  id="quest4_label3_option1" runat="server" GroupName ="A5"  value="Refused" /></td>
                        <td> <asp:RadioButton  id="quest4_label3_option2" runat="server" GroupName ="A5"  value="Don't Know" /></td>
                   </tr>
                 <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="quest4_label4" runat="server" Text="Disability"></asp:Label></td>
                        <td> <asp:Label id="sample3" runat="server" Text="$"></asp:Label> <asp:textbox id="quest4_label4_TB1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  id="quest4_label4_option1" runat="server" GroupName ="A6"  value="Refused" /></td>
                        <td> <asp:RadioButton  id="quest4_label4_option2" runat="server" GroupName ="A6"  value="Don't Know" /></td>
                   </tr>
                 <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="quest4_label5" runat="server" Text="Non-legal income"></asp:Label></td>
                        <td> <asp:Label id="sample4" runat="server" Text="$"></asp:Label> <asp:textbox id="quest4_label5_TB1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  id="quest4_label5_option1" runat="server" GroupName ="A7"  value="Refused" /></td>
                        <td> <asp:RadioButton  id="quest4_label5_option2" runat="server" GroupName ="A7"  value="Don't Know" /></td>
                   </tr>
                 <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="quest4_label6" runat="server" Text="Family and/or friends"></asp:Label></td>
                        <td> <asp:Label id="sample5" runat="server" Text="$"></asp:Label> <asp:textbox id="quest4_label6_TB1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  id="quest4_label6_option1" runat="server" GroupName ="A8"  value="Refused" /></td>
                        <td> <asp:RadioButton  id="quest4_label6_option2" runat="server" GroupName ="A8"  value="Don't Know" /></td>
                   </tr>
                 <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="quest4_label7" runat="server" Text="Other (Specify)"></asp:Label> <asp:TextBox runat="server" ID="TB3"></asp:TextBox></td>
                        <td> <asp:Label id="sample6" runat="server" Text="$"></asp:Label> <asp:textbox id="quest4_label7_TB1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  id="quest4_label7_option1" runat="server" GroupName ="A9"  value="Refused" /></td>
                        <td> <asp:RadioButton  id="quest4_label7_option2" runat="server" GroupName ="A9"  value="Don't Know" /></td>
                   </tr>
                 </table>
        </div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table>
               <tr><th><asp:Label id="quest5" runat="server" Text="Have you enough money to meet your needs?"></asp:Label></th></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest5_option1" runat="server" GroupName ="A10" text="Not at all"/> </td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest5_option2" runat="server" GroupName ="A10" text="A little"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest5_option3" runat="server" GroupName ="A10" text="Moderately"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest5_option4" runat="server" GroupName ="A10" text="Mostly"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest5_option5" runat="server" GroupName ="A10" text="Completely"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest5_option6" runat="server" GroupName ="A10" text="REFUSED"/></td></tr>
                    <tr><td class="text-left"><asp:RadioButton id="quest5_option7" runat="server" GroupName ="A10" text="DON’T KNOW"/></td></tr>
                 </table>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Submit and Continue" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />   
        <br />
        </form>
    </body>
    </html>
