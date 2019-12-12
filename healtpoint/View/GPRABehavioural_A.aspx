<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRABehavioural_A.aspx.cs" Inherits="healtpoint.View.GPRABehavioural_A" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBIRT app</title>
    <link  href="~/styles/main1.css" rel="stylesheet" runat="server" type="text/css" />
    <link rel="stylesheet" href="/styles/bootstrap.css"/>
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
   
    <style>
        .color{
            background-color: lightcyan;
            position: sticky;
            top:0;
        }
        .color1{
background-color: lightgray;
        }
        .phase1{
            width:40%;
            color: saddlebrown;
        }
        .phase2{
            width:15%;
            color: saddlebrown;
        }
        .phase3{
            width: 15%;
            color: saddlebrown;
        }
        .phase4{
            width:15%;
            color: saddlebrown;
         }
        .phase5{
            width: 15%;
            color: saddlebrown;
        }
        </style>
    <script>
        function CallMe() {
            $('#A1,#A2,#A3,#A4,#A5,#A6,#A7,#A8,#A9,#A10,#A11,#A12,#A13,#A14,#A15,#A16,#A17,#A18,#A19,#A20,#A21,#A22,#A23,#A24,#A25,#A26,#A27,#A28,#A29,#A30,#A31,#A32,#A33,#A34,#A35,#A36,#A37,#A38,#A39,#A40').prop('disabled', true);
            $('#A41,#A42,#A43,#A44,#A45,#A46,#A47,#A48,#A49,#A50,#A51,#A52,#A53,#A54,#A55,#A56,#A57,#A58,#A59,#A60,#A61,#A62,#A63,#A64,#A65,#A66,#A67,#A68,#A69,#A70,#A71,#A72,#A73,#A74,#A75,#A76').prop('disabled', true);
            $('#B1,#B2,#B3,#B4,#B5,#B6,#B7,#B8,#B9,#B10,#B11,#B12,#B13,#B14,#B15,#B16,#B17,#B18,#B19,#B20,#B21,#B22,#B23,#B24,#B25,#B26,#B27,#B28,#B29,#B30,#B31,#B32,#B33,#B34,#B35,#B36,#B37,#B38,#B39,#B40').prop('disabled', true);
            $('#B41,#B42,#B43,#B44,#B45,#B46,#B47,#B48,#B49,#B50,#B51,#B52,#B53,#B54,#B55,#B56,#B57,#B58,#B59,#B60,#B61,#B62,#B63,#B64,#B65,#B66,#B67,#B68,#B69,#B70,#B71,#B72,#B73,#B74,#B75,#B76').prop('disabled', true);
            $('#C1,#C2,#C3,#C4,#C5,#C6,#C7,#C8,#C9,#C10,#C11,#C12,#C13,#C14,#C15,#C16,#C17,#C18,#C19,#C20,#C21,#C22,#C23,#C24,#BC25,#C26,#C27,#C28,#C29,#C30,#C31,#C32,#C33,#C34,#C35,#C36,#C37,#C38,#C39,#C40').prop('disabled', true);
            $('#C41,#C42,#C43,#C44,#C45,#C46,#C47,#C48,#C49,#C50,#C51,#C52,#C53,#C54,#C55,#C56,#C57,#C58,#C59,#C60,#C61,#C62,#C63,#C64,#C65,#C66,#C67,#C68,#C69,#C70,#C71,#C72,#C73,#C74,#C75,#C76').prop('disabled', true);
        }
 
       /* $(document).ready(function () {
            if (($("#F210").prop("checked")) || ($("#F211").prop("checked"))) {
                $('input[name=A0]').prop("disabled", true);
                $('input[name=A1]').prop("disabled", true);
                $('input[name=A2]').prop("disabled", true);
                //$('input[name=A0]').attr('disabled', 'disabled').attr('checked', false);
                //$('input[name=A1]').attr('disabled', 'disabled').attr('checked', false);
                //$('input[name=A2]').attr('disabled', 'disabled').attr('checked', false);
            }
        });*/
         
    </script>

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
    <div class="container">
    <form runat="server">
        <div class="row justify-content-center">
             <h3>Behavioral Health Diagnoses</h3></div>
        <div class="row">
     <table class="table table-bordered table-hover">
         <col>
  <colgroup span="2"></colgroup>
  <colgroup span="3"></colgroup>
  <colgroup span="5"></colgroup>
         <thead>

             <tr class=" justify-content-center color">
    <th  style="width:40%;">Behavioral health Diagnoses</th>
    <th  style="width:15%;">Diagnosed?</th>
    <th  style="width:45%;" colspan="3">For each diagnosis selected, please
indicate whether the diagnosis is
primary, secondary, or tertiary, if
known</th>
  </tr>
         </thead>
         <tbody>
             <tr class=" justify-content-center color1">
                 <th  colspan="5">SUBSTANCE USE DISORDER DIAGNOSES</th>
                 </tr>
             <tr>
                  <th class="phase1">Alcohol-related disorders </th>
                 <th class="phase2">Select up to 3</th>
                 <th class="phase3">Primary</th>
                 <th class="phase4">Secondary</th>
                 <th class="phase5">Tertiary</th>
             </tr>
             <tr>
                 <td> F10.10 –Alcohol use disorder, uncomplicated, mild</td>
                 <td></td>
                 <td><asp:RadioButton id="A1" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B1" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C1" name="A2" runat="server" GroupName ="A2" /></td>

             </tr>
             <tr>
                 <td> F10.11 –Alcohol use disorder, mild, in remission</td>
                 <td></td>
                 <td><asp:RadioButton id="A2" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B2" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C2" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td> F10.20 – Alcohol use disorder, uncomplicated, moderate/severe</td>
                 <td></td>
                 <td><asp:RadioButton id="A3" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B3" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C3" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td> F10.21 – Alcohol use disorder, moderate/severe, in remission</td>
                 <td></td>
                 <td><asp:RadioButton id="A4" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B4" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C4" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td> F10.9 –Alcoholuse, unspecified</td>
                 <td></td>
                 <td><asp:RadioButton id="A5" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B5" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C5" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                  <th class="phase1">Opioid-related disorders </th>
                 <th class="phase2">Select up to 3</th>
                 <th class="phase3">Primary</th>
                 <th class="phase4">Secondary</th>
                 <th class="phase5">Tertiary</th>
             </tr>
             <tr>
                 <td> F11.10 –Opioid use disorder, uncomplicated, mild</td>
                 <td></td>
                 <td><asp:RadioButton id="A6" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B6" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C6" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td> F11.11 –Opioid use disorder, mild, in remission</td>
                 <td></td>
                 <td><asp:RadioButton id="A7" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B7" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C7" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td> F11.20 – Opioid use disorder, uncomplicated, moderate/severe</td>
                 <td></td>
                 <td><asp:RadioButton id="A8" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B8" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C8" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td> F11.21 – Opioid use disorder, moderate/severe, in remission</td>
                 <td></td>
                 <td><asp:RadioButton id="A9" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B9" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C9" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td> F11.9 –Opioid use, unspecified</td>
                 <td></td>
                 <td><asp:RadioButton id="A10" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B10" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C10" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                  <th class="phase1">Cannabis-related disorders </th>
                 <th class="phase2">Select up to 3</th>
                 <th class="phase3">Primary</th>
                 <th class="phase4">Secondary</th>
                 <th class="phase5">Tertiary</th>
             </tr>
             <tr>
                 <td> F12.10 –Cannabis use disorder, uncomplicated, mild</td>
                 <td></td>
                 <td><asp:RadioButton id="A11" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B11" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C11" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td> F12.11 –Cannabis use disorder, mild, in remission</td>
                 <td></td>
                 <td><asp:RadioButton id="A12" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B12" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C12" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td> F12.20 – Cannabis use disorder, uncomplicated, moderate/severe</td>
                 <td></td>
                 <td><asp:RadioButton id="A13" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B13" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C13" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td> F12.21 – Cannabis use disorder, moderate/severe, in remission</td>
                 <td></td>
                 <td><asp:RadioButton id="A14" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B14" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C14" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td> F12.9 – Cannabis use, unspecified</td>
                 <td></td>
                 <td><asp:RadioButton id="A15" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B15" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C15" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                  <th class="phase1">Sedative-, hypnotic-, or anxiolytic-related disorders </th>
                 <th class="phase2">Select up to 3</th>
                 <th class="phase3">Primary</th>
                 <th class="phase4">Secondary</th>
                 <th class="phase5">Tertiary</th>
             </tr>
             
             <tr>
                 <td> F13.10 – Sedative, hypnotic, or anxiolytic use disorder, uncomplicated, mild</td>
                 <td></td>
                 <td><asp:RadioButton id="A16" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B16" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C16" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td> F13.11 – Sedative, hypnotic, or anxiolytic use disorder, mild, in remission</td>
                 <td></td>
                 <td><asp:RadioButton id="A17" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B17" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C17" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td> F13.20 – Sedative, hypnotic, or anxiolytic use disorder, uncomplicated, moderate/severe</td>
                 <td></td>
                 <td><asp:RadioButton id="A18" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B18" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C18" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td> F13.21 – Sedative, hypnotic, or anxiolytic use disorder, moderate/severe, in remission</td>
                 <td></td>
                 <td><asp:RadioButton id="A19" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B19" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C19" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td> F13.9 – Sedative, hypnotic, or anxiolytic use, unspecified</td>
                 <td></td>
                 <td><asp:RadioButton id="A20" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B20" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C20" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                  <th class="phase1">Cocaine-related disorders  </th>
                 <th class="phase2">Select up to 3</th>
                 <th class="phase3">Primary</th>
                 <th class="phase4">Secondary</th>
                 <th class="phase5">Tertiary</th>
             </tr>
             <tr>
                 <td> F14.10 –Cocaine use disorder, uncomplicated, mild</td>
                 <td></td>
                 <td><asp:RadioButton id="A21" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B21" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C21" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td> F14.11 –Cocaine use disorder, mild, in remission</td>
                 <td></td>
                 <td><asp:RadioButton id="A22" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B22" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C22" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F14.20 – Cocaine use disorder, uncomplicated, moderate/severe</td>
                 <td></td>
                 <td><asp:RadioButton id="A23" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B23" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C23" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td> F14.21 – Cocaine use disorder, moderate/severe, in remission</td>
                 <td></td>
                 <td><asp:RadioButton id="A24" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B24" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C24" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td> F14.9 –Cocaine use, unspecified</td>
                 <td></td>
                 <td><asp:RadioButton id="A25" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B25" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C25" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                  <th class="phase1">Other stimulant-related disorders </th>
                 <th class="phase2">Select up to 3</th>
                 <th class="phase3">Primary</th>
                 <th class="phase4">Secondary</th>
                 <th class="phase5">Tertiary</th>
             </tr>
             <tr>
                 <td> F15.10 – Other stimulant use disorder, uncomplicated, mild</td>
                 <td></td>
                 <td><asp:RadioButton id="A26" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B26" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C26" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td> F15.11 – Other stimulant use disorder, mild, in remission</td>
                 <td></td>
                 <td><asp:RadioButton id="A27" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B27" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C27" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F15.20 – Other stimulant use disorder, uncomplicated, moderate/severe</td>
                 <td></td>
                 <td><asp:RadioButton id="A28" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B28" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C28" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F15.21 – Other stimulant use disorder, moderate/severe, in remission</td>
                 <td></td>
                 <td><asp:RadioButton id="A29" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B29" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C29" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F15.9 –Other stimulant use, unspecified</td>
                 <td></td>
                 <td><asp:RadioButton id="A30" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B30" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C30" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                  <th class="phase1">Hallucinogen-related disorder </th>
                 <th class="phase2">Select up to 3</th>
                 <th class="phase3">Primary</th>
                 <th class="phase4">Secondary</th>
                 <th class="phase5">Tertiary</th>
             </tr>
             <tr>
                 <td>F16.10 – Hallucinogen use disorder, uncomplicated, mild</td>
                 <td></td>
                 <td><asp:RadioButton id="A31" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B31" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C31" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F16.11 –Hallucinogen use disorder, mild, in remission</td>
                 <td></td>
                 <td><asp:RadioButton id="A32" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B32" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C32" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F16.20 – Hallucinogen use disorder, uncomplicated, moderate/severe</td>
                 <td></td>
                 <td><asp:RadioButton id="A33" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B33" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C33" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F16.21 – Hallucinogen use disorder moderate/severe, in remission</td>
                 <td></td>
                 <td><asp:RadioButton id="A34" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B34" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C34" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F16.9 –Hallucinogen use, unspecified</td>
                 <td></td>
                 <td><asp:RadioButton id="A35" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B35" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C35" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                  <th class="phase1">Inhalant-related disorders</th>
                 <th class="phase2">Select up to 3</th>
                 <th class="phase3">Primary</th>
                 <th class="phase4">Secondary</th>
                 <th class="phase5">Tertiary</th>
             </tr>
             <tr>
                 <td>F18.10 –Inhalant use disorder, uncomplicated, mild</td>
                 <td></td>
                 <td><asp:RadioButton id="A36" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B36" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C36" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F18.11 –Inhalant use disorder, mild, in remission</td>
                 <td></td>
                 <td><asp:RadioButton id="A37" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B37" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C37" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F18.20 – Inhalant use disorder, uncomplicated, moderate/severe</td>
                 <td></td>
                 <td><asp:RadioButton id="A38" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B38" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C38" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F18.21 – Inhalant use disorder, moderate/severe, inremission</td>
                 <td></td>
                 <td><asp:RadioButton id="A39" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B39" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C39" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F18.9 –Inhalant use, unspecified</td>
                 <td></td>
                 <td><asp:RadioButton id="A40" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B40" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C40" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                  <th class="phase1">Other psychoactive substance–related disorders</th>
                 <th class="phase2">Select up to 3</th>
                 <th class="phase3">Primary</th>
                 <th class="phase4">Secondary</th>
                 <th class="phase5">Tertiary</th>
             </tr>
             <tr>
                 <td>F19.10 – Other psychoactive substance use disorder,uncomplicated, mild</td>
                 <td></td>
                 <td><asp:RadioButton id="A41" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B41" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C41" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F19.11 – Other psychoactive substance use disorder, in remission</td>
                 <td></td>
                 <td><asp:RadioButton id="A42" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B42" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C42" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F19.20 – Other psychoactive substance use disorder,uncomplicated, moderate/severe</td>
                 <td></td>
                 <td><asp:RadioButton id="A43" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B43" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C43" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F19.21 – Other psychoactive substance use disorder,moderate/severe, in remission</td>
                 <td></td>
                 <td><asp:RadioButton id="A44" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B44" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C44" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F19.9 –Other psychoactive substance use, unspecified</td>
                 <td></td>
                 <td><asp:RadioButton id="A45" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B45" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C45" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                  <th class="phase1">Nicotine dependence </th>
                 <th class="phase2">Select up to 3</th>
                 <th class="phase3">Primary</th>
                 <th class="phase4">Secondary</th>
                 <th class="phase5">Tertiary</th>
             </tr>
             <tr>
                 <td>F17.20 –Tobacco use disorder, mild/moderate/severe</td>
                 <td></td>
                 <td><asp:RadioButton id="A46" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B46" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C46" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F17.21 – Tobacco use disorder, mild/moderate/severe, in remission</td>
                 <td></td>
                 <td><asp:RadioButton id="A47" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B47" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C47" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr class=" justify-content-center color1">
                 <th  colspan="5">MENTAL HEALTH DIAGNOSES</th>
                 </tr>
             <!--<tr>
                  <th class="phase1">MENTAL HEALTH DIAGNOSES</th>
                 <th class="phase2">Select up to 3</th>
                 <th class="phase3">Primary</th>
                 <th class="phase4">Secondary</th>
                 <th class="phase5">Tertiary</th>
             </tr> -->
             <tr>
                 <td>F20 –Schizophrenia</td>
                 <td></td>
                 <td><asp:RadioButton id="A48" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B48" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C48" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F21 –Schizotypal disorder</td>
                 <td></td>
                 <td><asp:RadioButton id="A49" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B49" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C49" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F22 –Delusional disorder</td>
                 <td></td>
                 <td><asp:RadioButton id="A50" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B50" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C50" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F23 –Brief psychotic disorder</td>
                 <td></td>
                 <td><asp:RadioButton id="A51" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B51" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C51" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F24 –Shared psychotic disorder</td>
                 <td></td>
                 <td><asp:RadioButton id="A52" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B52" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C52" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F25 –Schizoaffective disorders</td>
                 <td></td>
                 <td><asp:RadioButton id="A53" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B53" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C53" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F28 – Other psychotic disorder not due to a substance or known physiological condition</td>
                 <td></td>
                 <td><asp:RadioButton id="A54" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B54" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C54" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F29 – Unspecified psychosis not due to a substance or known physiological condition</td>
                 <td></td>
                 <td><asp:RadioButton id="A55" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B55" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C55" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F30 –Manic episode</td>
                 <td></td>
                 <td><asp:RadioButton id="A56" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B56" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C56" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F31 –Bipolar disorder</td>
                 <td></td>
                 <td><asp:RadioButton id="A57" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B57" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C57" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             <tr>
                 <td>F32 – Major depressive disorder, single episode</td>
                 <td></td>
                 <td><asp:RadioButton id="A58" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B58" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C58" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
            
              <tr>
                 <td>F33 –Major depressive disorder, recurrent</td>
                 <td></td>
                 <td><asp:RadioButton id="A59" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B59" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C59" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
              <tr>
                 <td>F34 –Persistent mood [affective] disorders</td>
                 <td></td>
                 <td><asp:RadioButton id="A60" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B60" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C60" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
              <tr>
                 <td>F39 –Unspecified mood [affective] disorder</td>
                 <td></td>
                 <td><asp:RadioButton id="A61" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B61" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C61" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
              <tr>
                 <td>F40–F48 – Anxiety, dissociative, stress-related, somatoform, and other nonpsychotic mental disorders</td>
                 <td></td>
                 <td><asp:RadioButton id="A62" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B62" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C62" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
              <tr>
                 <td>F50 –Eating disorders</td>
                 <td></td>
                 <td><asp:RadioButton id="A63" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B63" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C63" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
              <tr>
                 <td>F51 – Sleep disorders not due to a substance or known physiological condition</td>
                 <td></td>
                 <td><asp:RadioButton id="A64" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B64" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C64" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
              <tr>
                 <td>F60.2 –Antisocial personality disorder   </td>
                 <td></td>
                 <td><asp:RadioButton id="A65" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B65" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C65" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
              <tr>
                 <td> F60.3 –Borderline personality disorder</td>
                 <td></td>
                 <td><asp:RadioButton id="A66" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B66" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C66" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
              <tr>
                 <td>F60.0, F60.1, F60.4–F69 –Other personality disorders</td>
                 <td></td>
                 <td><asp:RadioButton id="A67" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B67" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C67" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
              <tr>
                 <td>F70–F79 –Intellectual disabilities</td>
                 <td></td>
                 <td><asp:RadioButton id="A68" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B68" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C68" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
              <tr>
                 <td>F80–F89 – Pervasive and specific developmental disorders</td>
                 <td></td>
                 <td><asp:RadioButton id="A69" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B69" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C69" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
              <tr>
                 <td>F90 –Attention-deficit hyperactivity disorders</td>
                 <td></td>
                 <td><asp:RadioButton id="A70" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B70" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C70" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
              <tr>
                 <td>F91 –Conduct disorders</td>
                 <td></td>
                 <td><asp:RadioButton id="A71" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B71" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C71" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
              <tr>
                 <td>F93 – Emotional disorders with onset specific to childhood</td>
                 <td></td>
                 <td><asp:RadioButton id="A72" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B72" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C72" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
              <tr>
                 <td>F94 – Disorders of social functioning with onset specific to childhood or adolescence</td>
                 <td></td>
                 <td><asp:RadioButton id="A73" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B73" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C73" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
              <tr>
                 <td>F95 –Tic disorder</td>
                 <td></td>
                 <td><asp:RadioButton id="A74" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B74" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C74" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
              <tr>
                 <td>F98 – Other behavioral and emotional disorders withonset usually occurring in childhood and adolescence</td>
                 <td></td>
                 <td><asp:RadioButton id="A75" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B75" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C75" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
              <tr>
                 <td>F99 –Unspecified mental disorder</td>
                 <td></td>
                 <td><asp:RadioButton id="A76" name="A0" runat="server" GroupName ="A0" /></td>
                 <td><asp:RadioButton id="B76" name="A1" runat="server" GroupName ="A1" /></td>
                 <td><asp:RadioButton id="C76" name="A2" runat="server" GroupName ="A2" /></td>
             </tr>
             </tbody>
         </table>
            </div>
             
            <div class="col-md-12">
                <asp:RadioButton id="F210" runat="server" name="F210" GroupName ="A4" onclick="CallMe()" Text="Don't Know" class="col-sm-4"/>
                </div>
            <div class="col-md-12">
        <asp:RadioButton id="F211" runat="server" name="F211" GroupName ="A4"  onclick="CallMe()" Text="None of the above" class="col-sm-4"/>
                </div>
           
  <div class="form-group">
                 <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Continue" /> 
      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Reset" />   
            </div>
            
        </form>
        </div>
    
</body>
</html>
