<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPRA_A1.aspx.cs" Inherits="healtpoint.View.GPRA_A1" %>

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
           .table {
               color: navy;
               margin-left: 25%;
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
            <h3 class="col-md-5 text-center">RECORD MANAGEMENT</h3>
             </div>
            <div class="form-group row" >
    <label for="exampleInputEmail" class="col-sm-4 col-form-label text-right"> Client ID: </label>
    <div class="col-sm-8 text-left">
      <asp:TextBox ID="Aemail" Class="input9" runat="server"></asp:TextBox> 
    </div> </div>
        <div>
            <label for="exampleInputEmail" class="col-sm-4 col-form-label text-right"> Client Type: </label>
           
           <div style="margin-left:30%; text-align:left;">
               <asp:RadioButton ID="ACS61" runat="server"  text="Treatment Client" GroupName ="A5" /><br />
               <asp:RadioButton ID="RadioButton1" text="Client in Recovery" runat="server" GroupName ="A5" />
          </div>
        </div>
        <div class="form-group row" >
    <label for="exampleInputEmail" class="col-sm-4 col-form-label text-right"> Contract/Grant ID: </label>
    <div class="col-sm-8 text-left">
      <asp:TextBox ID="TextBox1" Class="input9" runat="server"></asp:TextBox> 
    </div> </div>
        <div class="col-md-8">
        <table class="table table-borderless">
            <tr style="color:black; font-size:larger;"><td>Interview Type</td></tr>
            <tr> <td> Intake</td>
                <td> <asp:RadioButton ID="RadioButton3" text="Yes" runat="server" GroupName ="A5" /></td>
                <td><asp:RadioButton ID="RadioButton5" text="No" runat="server" GroupName ="A5" /></td>
            </tr>
            <tr> <td> 6-month follow-up:Did you conduct a follow-up interview?</td>
                <td> <asp:RadioButton ID="RadioButton2" text="Yes" runat="server" GroupName ="A5" /></td>
                <td><asp:RadioButton ID="RadioButton4" text="No" runat="server" GroupName ="A5" /></td>
            </tr>
            <tr> <td> 3-month follow-up [ADOLESCENT PORTFOLIO ONLY]:Did you conduct a follow-up interview?</td>
                <td> <asp:RadioButton ID="RadioButton6" text="Yes" runat="server" GroupName ="A5" /></td>
                <td><asp:RadioButton ID="RadioButton7" text="No" runat="server" GroupName ="A5" /></td>
            </tr>
            <tr> <td> Discharge: Did you conduct a discharge interview? </td>
                <td> <asp:RadioButton ID="RadioButton8" text="Yes" runat="server" GroupName ="A5" /></td>
                <td><asp:RadioButton ID="RadioButton9" text="No" runat="server" GroupName ="A5" /></td>
            </tr>
         </table>
            </div>
        <div class="form-group row" >
    <label for="exampleInputEmail" class="col-sm-4 col-form-label text-right"> Interview Date </label>
    <div class="col-sm-2 text-left">
        <input type="date" class="form-control input9" name="bday" max="3000-12-31" 
        min="1000-01-01" />
    </div>
            </div>
       
    </form>
</body>
</html>
