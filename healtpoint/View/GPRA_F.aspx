<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRA_F.aspx.cs" Inherits="healtpoint.View.GPRA_F" %>

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
             <table>
               <tr><th><asp:Label id="quest1" runat="server" Text="How would you rate your overall health right now?"></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst1_opt1" runat="server" GroupName ="A0" text="Excellent"/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst1_opt2" runat="server" GroupName ="A0" text="Very Good"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst1_opt3" runat="server" GroupName ="A0" text="Good"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst1_opt4" runat="server" GroupName ="A0" text="Fair "/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst1_opt5" runat="server" GroupName ="A0" text="Poor "/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst1_opt6" runat="server" GroupName ="A0" text="REFUSED"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst1_opt7" runat="server" GroupName ="A0" text="DON’T KNOW"/></td></tr>
                 </table>
        </div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table>
               <tr><th><asp:Label id="quest2" runat="server" Text="During the past 30 days, did you receive:"></asp:Label></th></tr>
                 
                 <tr style="color:Navy;"><th style="width:30%;"><asp:Label id="quest2_a" runat="server" Text=" Inpatient treatment for:"></asp:Label></th>
                     <th style="width:12.5%;" class="text-center"><asp:Label id="Label4" runat="server" Text="Yes"></asp:Label></th>
                     <th style="width:20%;" class="text-center"><asp:Label id="Label5" runat="server" Text="[IF YES] Altogether  for how many nights"></asp:Label></th>
                     <th style="width:12.5%;" class="text-center"><asp:Label id="Label6" runat="server" Text="NO"></asp:Label></th>
                     <th style="width:12.5%;" class="text-center"><asp:Label id="Label7" runat="server" Text="RF"></asp:Label></th>
                     <th style="width:12.5%;" class="text-center"><asp:Label id="Label8" runat="server" Text="DN"></asp:Label></th></tr>
                 <tr><th style="width:30%;"><asp:Label id="quest2_a_a" runat="server" Text="i. Physical complaint "></asp:Label></th>
                     <td class="text-center"><asp:RadioButton id="quest2_a_a_opt1" runat="server" GroupName ="A1"/></td>
                     <td class="text-left"><asp:TextBox id="quest2_a_a_opt2" style="width:76%;" runat="server"></asp:TextBox>Nights</td>
                     <td class="text-center"><asp:RadioButton id="quest2_a_a_opt3" runat="server" GroupName ="A1"/></td>
                     <td class="text-center"><asp:RadioButton id="quest2_a_a_opt4" runat="server" GroupName ="A1"/></td>
                     <td class="text-center"><asp:RadioButton id="quest2_a_a_opt5" runat="server" GroupName ="A1"/></td>
                 </tr>
                 <tr><th style="width:30%;"><asp:Label id="quest2_a_b" runat="server" Text="ii. Mental or emotional difficulties "></asp:Label></th>
                     <td class="text-center"><asp:RadioButton id="quest2_a_b_opt1" runat="server" GroupName ="A2"/></td>
                     <td class="text-left"><asp:TextBox id="quest2_a_b_opt2" style="width:76%;" runat="server"></asp:TextBox>Nights</td>
                     <td class="text-center"><asp:RadioButton id="quest2_a_b_opt3" runat="server" GroupName ="A2"/></td>
                     <td class="text-center"><asp:RadioButton id="quest2_a_b_opt4" runat="server" GroupName ="A2"/></td>
                     <td class="text-center"><asp:RadioButton id="quest2_a_b_opt5" runat="server" GroupName ="A2"/></td>
                 </tr>
                 <tr><th style="width:30%;"><asp:Label id="quest2_a_c" runat="server" Text="iii.    Alcohol or substance abuse"></asp:Label></th>
                     <td class="text-center"><asp:RadioButton id="quest2_a_c_opt1" runat="server" GroupName ="A3"/></td>
                     <td class="text-left"><asp:TextBox id="quest2_a_c_opt2" style="width:76%;" runat="server"></asp:TextBox>Nights</td>
                     <td class="text-center"><asp:RadioButton id="quest2_a_c_opt3" runat="server" GroupName ="A3"/></td>
                     <td class="text-center"><asp:RadioButton id="quest2_a_c_opt4" runat="server" GroupName ="A3"/></td>
                     <td class="text-center"><asp:RadioButton id="quest2_a_c_opt5" runat="server" GroupName ="A3"/></td>
                 </tr>
                 <tr style="color:Navy;"><th style="width:30%;"><asp:Label id="quest2_b" runat="server" Text=" Outpatient treatment for:"></asp:Label></th>
                     <th style="width:12.5%;" class="text-center"><asp:Label id="Label13" runat="server" Text="Yes"></asp:Label></th>
                     <th style="width:20%;" class="text-center"><asp:Label id="Label14" runat="server" Text="[IF YES] Altogether  for how many nights"></asp:Label></th>
                     <th style="width:12.5%;" class="text-center"><asp:Label id="Label15" runat="server" Text="NO"></asp:Label></th>
                     <th style="width:12.5%;" class="text-center"><asp:Label id="Label16" runat="server" Text="RF"></asp:Label></th>
                     <th style="width:12.5%;" class="text-center"><asp:Label id="Label17" runat="server" Text="DN"></asp:Label></th></tr>
                 <tr><th style="width:30%;"><asp:Label id="quest2_b_a" runat="server" Text="i. Physical complaint "></asp:Label></th>
                     <td class="text-center"><asp:RadioButton id="quest2_b_a_opt1" runat="server" GroupName ="A4"/></td>
                     <td class="text-left"><asp:TextBox id="quest2_b_a_opt2" style="width:76%;" runat="server"></asp:TextBox>Nights</td>
                     <td class="text-center"><asp:RadioButton id="quest2_b_a_opt3" runat="server" GroupName ="A4"/></td>
                     <td class="text-center"><asp:RadioButton id="quest2_b_a_opt4" runat="server" GroupName ="A4"/></td>
                     <td class="text-center"><asp:RadioButton id="quest2_b_a_opt5" runat="server" GroupName ="A4"/></td>
                 </tr>
                 <tr><th style="width:30%;"><asp:Label id="quest2_b_b" runat="server" Text="ii. Mental or emotional difficulties "></asp:Label></th>
                     <td class="text-center"><asp:RadioButton id="quest2_b_b_opt1" runat="server" GroupName ="A5"/></td>
                     <td class="text-left"><asp:TextBox id="quest2_b_b_opt2" style="width:76%;" runat="server"></asp:TextBox>Nights</td>
                     <td class="text-center"><asp:RadioButton id="quest2_b_b_opt3" runat="server" GroupName ="A5"/></td>
                     <td class="text-center"><asp:RadioButton id="quest2_b_b_opt4" runat="server" GroupName ="A5"/></td>
                     <td class="text-center"><asp:RadioButton id="quest2_b_b_opt5" runat="server" GroupName ="A5"/></td>
                 </tr>
                 <tr><th style="width:30%;"><asp:Label id="quest2_b_c" runat="server" Text="iii.    Alcohol or substance abuse"></asp:Label></th>
                     <td class="text-center"><asp:RadioButton id="quest2_b_c_opt1" runat="server" GroupName ="A6"/></td>
                     <td class="text-left"><asp:TextBox id="quest2_b_c_opt2" style="width:76%;" runat="server"></asp:TextBox>Nights</td>
                     <td class="text-center"><asp:RadioButton id="quest2_b_c_opt3" runat="server" GroupName ="A6"/></td>
                     <td class="text-center"><asp:RadioButton id="quest2_b_c_opt4" runat="server" GroupName ="A6"/></td>
                     <td class="text-center"><asp:RadioButton id="quest2_b_c_opt5" runat="server" GroupName ="A6"/></td>
                 </tr>
                 <tr style="color:Navy;"><th style="width:30%;"><asp:Label id="quest2_c" runat="server" Text="Emergency room treatment for:"></asp:Label></th>
                     <th style="width:12.5%;" class="text-center"><asp:Label id="Label22" runat="server" Text="Yes"></asp:Label></th>
                     <th style="width:20%;" class="text-center"><asp:Label id="Label23" runat="server" Text="[IF YES] Altogether  for how many nights"></asp:Label></th>
                     <th style="width:12.5%;" class="text-center"><asp:Label id="Label24" runat="server" Text="NO"></asp:Label></th>
                     <th style="width:12.5%;" class="text-center"><asp:Label id="Label25" runat="server" Text="RF"></asp:Label></th>
                     <th style="width:12.5%;" class="text-center"><asp:Label id="Label26" runat="server" Text="DN"></asp:Label></th></tr>
                 <tr><th style="width:30%;"><asp:Label id="quest2_c_a" runat="server" Text="i. Physical complaint "></asp:Label></th>
                     <td class="text-center"><asp:RadioButton id="quest2_c_a_opt1" runat="server" GroupName ="A7"/></td>
                     <td class="text-left"><asp:TextBox id="quest2_c_a_opt2" style="width:76%;" runat="server"></asp:TextBox>Nights</td>
                     <td class="text-center"><asp:RadioButton id="quest2_c_a_opt3" runat="server" GroupName ="A7"/></td>
                     <td class="text-center"><asp:RadioButton id="quest2_c_a_opt4" runat="server" GroupName ="A7"/></td>
                     <td class="text-center"><asp:RadioButton id="quest2_c_a_opt5" runat="server" GroupName ="A7"/></td>
                 </tr>
                 <tr><th style="width:30%;"><asp:Label id="quest2_c_b" runat="server" Text="ii. Mental or emotional difficulties "></asp:Label></th>
                     <td class="text-center"><asp:RadioButton id="quest2_c_b_opt1" runat="server" GroupName ="A8"/></td>
                     <td class="text-left"><asp:TextBox id="quest2_c_b_opt2" style="width:76%;" runat="server"></asp:TextBox>Nights</td>
                     <td class="text-center"><asp:RadioButton id="quest2_c_b_opt3" runat="server" GroupName ="A8"/></td>
                     <td class="text-center"><asp:RadioButton id="quest2_c_b_opt4" runat="server" GroupName ="A8"/></td>
                     <td class="text-center"><asp:RadioButton id="quest2_c_b_opt5" runat="server" GroupName ="A8"/></td>
                 </tr>
                 <tr><th style="width:30%;"><asp:Label id="quest2_c_c" runat="server" Text="iii.    Alcohol or substance abuse"></asp:Label></th>
                     <td class="text-center"><asp:RadioButton id="quest2_c_c_opt1" runat="server" GroupName ="A9"/></td>
                     <td class="text-left"><asp:TextBox id="quest2_c_c_opt2" style="width:76%;" runat="server"></asp:TextBox>Nights</td>
                     <td class="text-center"><asp:RadioButton id="quest2_c_c_opt3" runat="server" GroupName ="A9"/></td>
                     <td class="text-center"><asp:RadioButton id="quest2_c_c_opt4" runat="server" GroupName ="A9"/></td>
                     <td class="text-center"><asp:RadioButton id="quest2_c_c_opt5" runat="server" GroupName ="A9"/></td>
                 </tr>
              
              </table>
            </div>
        <div class="col-md-11 justify-content-center" style="margin-left: 6%;">
             <table>
               <tr><th><asp:Label id="quest3" runat="server" Text="During the past 30 days, did you engage in sexual activity?"></asp:Label></th></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst3_opt1" runat="server" GroupName ="A10" text="Yes "/> </td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst3_opt2" runat="server" GroupName ="A10" text="No"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst3_opt3" runat="server" GroupName ="A10" text="NOT PERMITTED TO ASK"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst3_opt4" runat="server" GroupName ="A10" text=" REFUSED"/></td></tr>
               <tr><td class="text-left"><asp:RadioButton id="qst3_opt5" runat="server" GroupName ="A10" text="DON’T KNOW"/></td></tr>
                 </table>
            <table class="col-md-12">
                <tr><th><asp:Label id="ll" runat="server" Text="Altogether, how many:"></asp:Label></th></tr>
                <tr style="color:Navy; " >
                    <th style="width:50%;"><asp:Label id="Label34" runat="server"></asp:Label></th>
                   <th style="width:20%;" class="text-center"><asp:Label id="Label33" runat="server" Text="Contacts"></asp:Label></th>
                    <th style="width:15%;" class="text-center"><asp:Label id="Label36" runat="server" Text="RF"></asp:Label></th>
                    <th style="width:15%;" class="text-center"><asp:Label id="Label37" runat="server" Text="DN"></asp:Label></th></tr>
                <tr><th style="width:50%;"><asp:Label id="quest3_a" runat="server" Text="a.Sexual contacts (vaginal, oral, or anal) did you have?"></asp:Label></th>
                     <td style="width:20%;" class="text-center"><asp:TextBox id="quest3_a_opt1" runat="server"></asp:TextBox></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="quest3_a_opt2" runat="server" GroupName ="A11"/></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="quest3_a_opt3" runat="server" GroupName ="A11"/></td>
                </tr>
                <tr><th style="width:50%;"><asp:Label id="quest3_b" runat="server" Text="b.Unprotected sexual contacts did you have?"></asp:Label></th>
                     <td style="width:20%;" class="text-center"><asp:TextBox id="quest3_b_opt1" runat="server"></asp:TextBox></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="quest3_b_opt2" runat="server" GroupName ="A12"/></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="quest3_b_opt3" runat="server" GroupName ="A12"/></td>
                </tr>
                <tr> <th><asp:Label id="quest3_c" runat="server" Text="c. Unprotected sexual contacts were with an individual who is or was"></asp:Label></th></tr>
                     <tr><th style="width:50%; margin-left:2%;"><asp:Label id="quest3_c_1" runat="server" Text="1.    HIV positive or has AIDS"></asp:Label></th>
                     <td style="width:20%;" class="text-center"><asp:TextBox id="quest3_c_1_opt1" runat="server"></asp:TextBox></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="quest3_c_1_opt2" runat="server" GroupName ="A13"/></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="quest3_c_1_opt3" runat="server" GroupName ="A13"/></td>
                </tr>
                <tr ><th style="width:50%; margin-left:2%;"><asp:Label id="quest3_c_2" runat="server" Text="2.    An injection drug user"></asp:Label></th>
                     <td style="width:20%;" class="text-center"><asp:TextBox id="quest3_c_2_opt1" runat="server"></asp:TextBox></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="quest3_c_2_opt2" runat="server" GroupName ="A14"/></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="quest3_c_2_opt3" runat="server" GroupName ="A14"/></td>
                </tr>
                <tr><th style="width:50%; margin-left:2%;"><asp:Label id="quest3_c_3" runat="server" Text="3.    High on some substance"></asp:Label></th>
                     <td style="width:20%;" class="text-center"><asp:TextBox id="quest3_c_3_opt1" runat="server"></asp:TextBox></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="quest3_c_3_opt2" runat="server" GroupName ="A15"/></td>
                     <td style="width:15%;" class="text-center"><asp:RadioButton id="quest3_c_3_opt3" runat="server" GroupName ="A15"/></td>
                </tr>

            </table>
        </div>
        <div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Submit and Continue" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />   
        <br />
    </form>
</body>
</html>