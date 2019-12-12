<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRA_B.aspx.cs" Inherits="healtpoint.View.GPRA_B" %>

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
       <style>
           input {
               width: 30%;
           }
           thead{
               color:black;
                font-size: large;
                font-weight: bold;
           }
           tbody{
               color:navy;
           }
           .table input{
               width:55%;
           }
          
       </style>
   </head>
<body>
    <div class="container-fluid nav-header">
        <div class="row own-header justify-content-end">
            <span class=""> Screening, Brief Intervention, and Referral to Treatment</span>
        </div>
        <div class="row img-row">
            <img src="/images/logo.png" alt="logo" class="own-header-img img-fluid"/>
        </div>
    </div>
    <form id="form8" runat="server">
        <div class="form-group row justify-content-center ">
            <h3 class="col-md-5 text-center">DRUG AND ALCOHOL USE </h3>
            </div>
        <div class="col-md-10 justify-content-center" style="margin-left: 8%;">
            <table>
                <thead>
                    <tr>
                        <td style="width: 54%; text-align: left; margin-left:2%;" ><asp:label ID="quest1" runat="server" Text="During the past 30 days, how many days have you used the following:"></asp:label></td>
                        <td style="width: 22%;"> Number of Days </td>
                        <td style="width: 12%;">REFUSED</td>
                        <td style="width: 12%;">DON’T KNOW</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="qst1_opt1" runat="server" Text="Any alcohol"></asp:Label></td>
                        <td> <asp:textbox runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton id="qst1_opt1_1" runat="server" GroupName ="A1"  value="Refused" /></td>
                        <td> <asp:RadioButton id="qst1_opt1_2" runat="server" GroupName ="A1"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="qst1_opt2" runat="server" Text="Alcohol to intoxication (5+ drinks in one sitting)"></asp:Label></td>
                        <td> <asp:textbox runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton id="qst1_opt2_1" runat="server" GroupName ="A2"  value="Refused" /></td>
                        <td> <asp:RadioButton id="qst1_opt2_2" runat="server" GroupName ="A2"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="qst1_opt3" runat="server" Text="Alcohol to intoxication (4 or fewer drinks in one sitting and felt high)"></asp:Label></td>
                        <td> <asp:textbox runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton id="qst1_opt3_1" runat="server" GroupName ="A3"  value="Refused" /></td>
                        <td> <asp:RadioButton id="qst1_opt3_2" runat="server" GroupName ="A3"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="qst1_opt4" runat="server" Text="Illegal drugs"></asp:Label></td>
                        <td> <asp:textbox runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton id="qst1_opt4_1" runat="server" GroupName ="A4"  value="Refused" /></td>
                        <td> <asp:RadioButton id="qst1_opt4_2" runat="server" GroupName ="A4"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="qst1_opt5" runat="server" Text="Both alcohol and drugs (on the same day)"></asp:Label></td>
                        <td> <asp:textbox runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton id="qst1_opt5_1" runat="server" GroupName ="A5"  value="Refused" /></td>
                        <td> <asp:RadioButton id="qst1_opt5_2" runat="server" GroupName ="A5"  value="Don't Know" /></td>
                   </tr>
                </tbody>
            </table>
        </div>
        <div class="col-md-10 justify-content-center" style="margin-left: 8%;">
            
            <table class="table table-hover">
                <colgroup span="7"></colgroup>
                <thead class="justify-content-center">
                    <tr>
                        <td style="width: 34%; text-align: left; margin-left:2%;" ><asp:label ID="quest2" runat="server" Text="During the past 30 days, how many days have you used any of the following: [IF THE VALUE IN ANY ITEM B2a-B2i > 0, THEN THE VALUE IN B1c MUST BE > 0.]"></asp:label> </td>
                        <td style="width: 18%;">Number of Days </td>
                        <td style="width: 9%;">REFUSED</td>
                        <td style="width: 9%;">DON’T KNOW</td>
                        <td style="width: 12%;">Route </td>
                        <td style="width: 9%;">REFUSED</td>
                        <td style="width: 9%;">DON’T KNOW</td>
                    </tr>
                </thead>
                <tbody style="color: navy;">
                    <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="qst2_opt1" runat="server" Text="Cocaine/Crack"></asp:Label></td>
                        <td> <asp:textbox id="qst2_opt1_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  id="qst2_opt1_2" runat="server" GroupName ="A6"  value="Refused" /></td>
                        <td> <asp:RadioButton  id="qst2_opt1_3" runat="server" GroupName ="A6"  value="Don't Know" /></td>
                        <td> <asp:DropDownList id="qst2_opt1_4" runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton id="qst2_opt1_5" runat="server" GroupName ="A7"  value="Refused" /></td>
                        <td> <asp:RadioButton id="qst2_opt1_6" runat="server" GroupName ="A7"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="qst2_opt2" runat="server" Text="Marijuana/Hashish (Pot, Joints, Blunts, Chronic, Weed, Mary Jane)"></asp:Label></td>
                        <td> <asp:textbox id="qst2_opt2_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  id="qst2_opt2_2" runat="server" GroupName ="A8"  value="Refused" /></td>
                        <td> <asp:RadioButton  id="qst2_opt2_3" runat="server" GroupName ="A8"  value="Don't Know" /></td>
                        <td> <asp:DropDownList id="qst2_opt2_4"  runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton id="qst2_opt2_5"  runat="server" GroupName ="A9"  value="Refused" /></td>
                        <td> <asp:RadioButton  id="qst2_opt2_6" runat="server" GroupName ="A9"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <th style="text-align: left; margin-left:2%;" colspan="7"> <asp:Label id="qst2_opt3" runat="server" Text="Opiates:"></asp:Label></th>
                       
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%; color:orangered;"> <asp:Label id="qst2_opt3_1" runat="server" Text="Heroin (Smack, H, Junk, Skag) "></asp:Label></td>
                        <td> <asp:textbox ID="qst2_opt3_1_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton ID="qst2_opt3_1_2" runat="server" GroupName ="A10"  value="Refused" /></td>
                        <td> <asp:RadioButton ID="qst2_opt3_1_3" runat="server" GroupName ="A10"  value="Don't Know" /></td>
                        <td> <asp:DropDownList ID="qst2_opt3_1_4" runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_1_5" runat="server" GroupName ="A11"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_1_6" runat="server" GroupName ="A11"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%; color:orangered;"> <asp:Label id="qst2_opt3_2" runat="server" Text=" Morphine "></asp:Label></td>
                        <td> <asp:textbox ID="qst2_opt3_2_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_2_2" runat="server" GroupName ="A12"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_2_3" runat="server" GroupName ="A12"  value="Don't Know" /></td>
                        <td> <asp:DropDownList ID="qst2_opt3_2_4" runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_2_5" runat="server" GroupName ="A13"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_2_6" runat="server" GroupName ="A13"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%; color:orangered;"> <asp:Label id="qst2_opt3_3" runat="server" Text=" Dilaudid "></asp:Label></td>
                        <td> <asp:textbox ID="qst2_opt3_3_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_3_2" runat="server" GroupName ="A14"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_3_3" runat="server" GroupName ="A14"  value="Don't Know" /></td>
                        <td> <asp:DropDownList ID="qst2_opt3_3_4"  runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_3_5" runat="server" GroupName ="A15"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_3_6" runat="server" GroupName ="A15"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%; color:orangered;"> <asp:Label id="qst2_opt3_4" runat="server" Text="Demerol "></asp:Label></td>
                        <td> <asp:textbox ID="qst2_opt3_4_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_4_2" runat="server" GroupName ="A16"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_4_3" runat="server" GroupName ="A16"  value="Don't Know" /></td>
                        <td> <asp:DropDownList ID="qst2_opt3_4_4" runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_4_5" runat="server" GroupName ="A17"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_4_6" runat="server" GroupName ="A17"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%; color:orangered;"> <asp:Label id="qst2_opt3_5" runat="server" Text=" Percocet"></asp:Label></td>
                        <td> <asp:textbox ID="qst2_opt3_5_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_5_2" runat="server" GroupName ="A18"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_5_3" runat="server" GroupName ="A18"  value="Don't Know" /></td>
                        <td> <asp:DropDownList ID="qst2_opt3_5_4"  runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_5_5" runat="server" GroupName ="A19"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_5_6" runat="server" GroupName ="A19"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%; color:orangered;"> <asp:Label id="qst2_opt3_6" runat="server" Text="Darvon"></asp:Label></td>
                        <td> <asp:textbox ID="qst2_opt3_6_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_6_2" runat="server" GroupName ="A20"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_6_3" runat="server" GroupName ="A20"  value="Don't Know" /></td>
                        <td> <asp:DropDownList ID="qst2_opt3_6_4" runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_6_5" runat="server" GroupName ="A21"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_6_6" runat="server" GroupName ="A21"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%; color:orangered;"> <asp:Label id="qst2_opt3_7" runat="server" Text="Codeine"></asp:Label></td>
                        <td> <asp:textbox ID="qst2_opt3_7_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_7_2" runat="server" GroupName ="A22"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_7_3" runat="server" GroupName ="A22"  value="Don't Know" /></td>
                        <td> <asp:DropDownList ID="qst2_opt3_7_4" runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_7_5" runat="server" GroupName ="A23"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_7_6" runat="server" GroupName ="A23"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%; color:orangered;"> <asp:Label id="qst2_opt3_8" runat="server" Text=" Tylenol 2, 3, 4 "></asp:Label></td>
                        <td> <asp:textbox ID="qst2_opt3_8_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_8_2" runat="server" GroupName ="A24"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_8_3" runat="server" GroupName ="A24"  value="Don't Know" /></td>
                        <td> <asp:DropDownList ID="qst2_opt3_8_4" runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_8_5" runat="server" GroupName ="A25"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_8_6" runat="server" GroupName ="A25"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%; color:orangered;"> <asp:Label id="qst2_opt3_9" runat="server" Text="OxyContin/Oxycodone "></asp:Label></td>
                        <td> <asp:textbox ID="qst2_opt3_9_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_9_2" runat="server" GroupName ="A26"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_9_3" runat="server" GroupName ="A26"  value="Don't Know" /></td>
                        <td> <asp:DropDownList ID="qst2_opt3_9_4" runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_9_5" runat="server" GroupName ="A27"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt3_9_6" runat="server" GroupName ="A27"  value="Don't Know" /></td>
                   </tr>
                    
                    <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="qst2_opt4" runat="server" Text="  Non-prescription methadone"></asp:Label></td>
                        <td> <asp:textbox ID="qst2_opt4_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  ID="qst2_opt4_2" runat="server" GroupName ="A28"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt4_3" runat="server" GroupName ="A28"  value="Don't Know" /></td>
                        <td> <asp:DropDownList ID="qst2_opt4_4" runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton  ID="qst2_opt4_5" runat="server" GroupName ="A29"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt4_6" runat="server" GroupName ="A29"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="qst2_opt5" runat="server" Text="  Hallucinogens/psychedelics, PCP (Angel Dust, Ozone, Wack, Rocket Fuel), MDMA (Ecstasy, XTC, X, Adam), LSD (Acid, Boomers, Yellow Sunshine), Mushrooms, or Mescaline "></asp:Label></td>
                        <td> <asp:textbox ID="qst2_opt5_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  ID="qst2_opt5_2" runat="server" GroupName ="A30"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt5_3" runat="server" GroupName ="A30"  value="Don't Know" /></td>
                        <td> <asp:DropDownList ID="qst2_opt5_4" runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton  ID="qst2_opt5_5" runat="server" GroupName ="A31"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt5_6" runat="server" GroupName ="A31"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="qst2_opt6" runat="server" Text="Methamphetamine or other amphetamines (Meth, Uppers, Speed, Ice, Chalk, Crystal, Glass, Fire, Crank)"></asp:Label></td>
                        <td> <asp:textbox ID="qst2_opt6_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  ID="qst2_opt6_2" runat="server" GroupName ="A32"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt6_3" runat="server" GroupName ="A32"  value="Don't Know" /></td>
                        <td> <asp:DropDownList ID="qst2_opt6_4" runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton  ID="qst2_opt6_5" runat="server" GroupName ="A33"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt6_6" runat="server" GroupName ="A33"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="qst2_opt7_1" runat="server" Text=" Benzodiazepines: Diazepam (Valium); Alprazolam (Xanax); Triazolam (Halcion); and Estasolam (Prosom and Rohypnol, also known as roofies, roche, and cope)"></asp:Label></td>
                        <td> <asp:textbox ID="qst2_opt7_1_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  ID="qst2_opt7_1_2" runat="server" GroupName ="A34"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt7_1_3" runat="server" GroupName ="A34"  value="Don't Know" /></td>
                        <td> <asp:DropDownList ID="qst2_opt7_1_4" runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton  ID="qst2_opt7_1_5" runat="server" GroupName ="A35"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt7_1_6" runat="server" GroupName ="A35"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="qst2_opt7_2" runat="server" Text=" Barbiturates: Mephobarbital (Mebacut) and pentobarbital sodium (Nembutal)"></asp:Label></td>
                        <td> <asp:textbox ID="qst2_opt7_2_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  ID="qst2_opt7_2_2" runat="server" GroupName ="A36"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt7_2_3" runat="server" GroupName ="A36"  value="Don't Know" /></td>
                        <td> <asp:DropDownList ID="qst2_opt7_2_4"  runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton  ID="qst2_opt7_2_5" runat="server" GroupName ="A37"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt7_2_6" runat="server" GroupName ="A37"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="qst2_opt7_3" runat="server" Text=" Non-prescription GHB (known as Grievous Bodily Harm, Liquid Ecstasy, and Georgia Home Boy) "></asp:Label></td>
                        <td> <asp:textbox ID="qst2_opt7_3_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  ID="qst2_opt7_3_2" runat="server" GroupName ="A38"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt7_3_3" runat="server" GroupName ="A38"  value="Don't Know" /></td>
                        <td> <asp:DropDownList ID="qst2_opt7_3_4" runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton  ID="qst2_opt7_3_5" runat="server" GroupName ="A39"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt7_3_6" runat="server" GroupName ="A39"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="qst2_opt7_4" runat="server" Text="Ketamine (known as Special K or Vitamin K"></asp:Label></td>
                        <td> <asp:textbox ID="qst2_opt7_4_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  ID="qst2_opt7_4_2" runat="server" GroupName ="A40"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt7_4_3" runat="server" GroupName ="A40"  value="Don't Know" /></td>
                        <td> <asp:DropDownList ID="qst2_opt7_4_4" runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton  ID="qst2_opt7_4_5" runat="server" GroupName ="A41"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt7_4_6" runat="server" GroupName ="A41"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="qst2_opt7_5" runat="server" Text="Other tranquilizers, downers, sedatives, or hypnotics"></asp:Label></td>
                        <td> <asp:textbox ID="qst2_opt7_5_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  ID="qst2_opt7_5_2" runat="server" GroupName ="A42"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt7_5_3" runat="server" GroupName ="A42"  value="Don't Know" /></td>
                        <td> <asp:DropDownList ID="qst2_opt7_5_4" runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton  ID="qst2_opt7_5_5" runat="server" GroupName ="A43"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt7_5_6" runat="server" GroupName ="A43"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="qst2_opt8" runat="server" Text=" Inhalants (poppers, snappers, rush, whippets)"></asp:Label></td>
                        <td> <asp:textbox ID="qst2_opt8_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  ID="qst2_opt8_2" runat="server" GroupName ="A44"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt8_3" runat="server" GroupName ="A44"  value="Don't Know" /></td>
                        <td> <asp:DropDownList ID="qst2_opt8_4" runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton  ID="qst2_opt8_5" runat="server" GroupName ="A45"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt8_6" runat="server" GroupName ="A45"  value="Don't Know" /></td>
                   </tr>
                    <tr>
                        <td style="text-align: left; margin-left:2%;"> <asp:Label id="qst2_opt9" runat="server" Text=" Other illegal drugs (Specify)"></asp:Label><asp:TextBox ID="qst2_opt9_TB1" runat="server"></asp:TextBox></td>
                        <td> <asp:textbox ID="qst2_opt9_1" runat="server"></asp:textbox></td>
                        <td> <asp:RadioButton  ID="qst2_opt9_2" runat="server" GroupName ="A44"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt9_3" runat="server" GroupName ="A44"  value="Don't Know" /></td>
                        <td> <asp:DropDownList ID="qst2_opt9_4" runat="server">
                                <asp:ListItem  Text="Oral" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Nasal" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Smoking" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "Non-IV injection" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "IV" Value="2"></asp:ListItem>
                            </asp:DropDownList></td>
                        <td> <asp:RadioButton  ID="qst2_opt9_5" runat="server" GroupName ="A45"  value="Refused" /></td>
                        <td> <asp:RadioButton  ID="qst2_opt9_6" runat="server" GroupName ="A45"  value="Don't Know" /></td>
                   </tr>
                </tbody>
            </table>
        </div>
        <table class=" table table-borderless col-md-10" style="margin-left: 8%;">
            <tr><th><asp:Label id="quest3" runat="server" Text="In the past 30 days, have you injected drugs?"></asp:Label> </th></tr>
            <tr><td class="text-left"><asp:RadioButton ID="qst3_opt1" runat="server" GroupName ="A46" text="YES"/> </td></tr>
            <tr><td class="text-left"><asp:RadioButton ID="qst3_opt2" runat="server" GroupName ="A46" text="NO"/></td></tr>
            <tr><td class="text-left"><asp:RadioButton ID="qst3_opt3" runat="server" GroupName ="A46" text="REFUSED"/></td></tr>
            <tr><td class="text-left"><asp:RadioButton ID="qst3_opt4" runat="server" GroupName ="A46" text="DON’T KNOW"/></td></tr>
        </table>
        <table class=" table table-borderless col-md-10" style="margin-left: 8%;">
            <tr><th><asp:Label id="quest4" runat="server" Text="In the past 30 days, how often did you use a syringe/needle, cooker, cotton, or water that someone else used?"></asp:Label> </th></tr>
            <tr><td class="text-left"><asp:RadioButton ID="qst4_opt1" runat="server" GroupName ="A47" text="Always"/> </td></tr>
            <tr><td class="text-left"><asp:RadioButton ID="qst4_opt2" runat="server" GroupName ="A47" text="More than half the time"/></td></tr>
            <tr><td class="text-left"><asp:RadioButton ID="qst4_opt3" runat="server" GroupName ="A47" text="Half the time"/></td></tr>
            <tr><td class="text-left"><asp:RadioButton ID="qst4_opt4" runat="server" GroupName ="A47" text="Less than half the time"/></td></tr>
            <tr><td class="text-left"><asp:RadioButton ID="qst4_opt5" runat="server" GroupName ="A47" text="Never"/></td></tr>
            <tr><td class="text-left"><asp:RadioButton ID="qst4_opt6" runat="server" GroupName ="A47" text="REFUSED"/></td></tr>
            <tr><td class="text-left"><asp:RadioButton ID="qst4_opt7" runat="server" GroupName ="A47" text="DON’T KNOW"/></td></tr>
        </table>
        <asp:Button ID="Button1" runat="server" Text="Submit and Continue" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" /> 
    </form>
</body>
</html>