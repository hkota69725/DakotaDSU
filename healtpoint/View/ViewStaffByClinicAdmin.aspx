<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="ViewStaffByClinicAdmin.aspx.cs" Inherits="healtpoint.ViewStaffByClinicAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
     <link rel="stylesheet" href="~/styles/main1.css" />
    <link rel="stylesheet" href="~/styles/bootstrap.css" />
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
     <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
 <link rel="stylesheet" href="https://code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css" />
<script src="https://code.jquery.com/ui/1.11.1/jquery-ui.min.js"></script>

    
    <script type = "text/javascript">

        function showDiv(phnNumber, email, status, staffID) {

            document.getElementById("sts").value = "";
            var e = document.getElementById("sts");
            var strUser = e.options[e.selectedIndex].value;
            document.getElementById("Ename").value = phnNumber;
            document.getElementById("emailAddHF").value = email;
            document.getElementById("Eaddress").value = email;
            document.getElementById("staffIDHF").value = staffID;
            document.getElementById("nameHF").value = phnNumber;
            if (status == '1') {
                console.log("from 1 "+status);
                document.getElementById("stsLbl").innerHTML  = "Active";
                document.getElementById("stsHF").value = '1';
            }
            else if (status == '0') {
                console.log( "from 0  " + status);
                document.getElementById("stsLbl").innerHTML = "Inactive";
                document.getElementById("stsHF").value = '0';
            }
            $("#add_dialog").show();

            $("#add_dialog").dialog('open');
        }
       
        $(function () {
            $('#add_dialog').dialog({
                modal: true,
                overlay: {
                    opacity: 0.7,
                    background: "black"
                },
                autoOpen: false,
                buttons:
                {
                    "Cancel": function () {
                        $(this).dialog("close");
                    },
                    "Update": function () {

                        $.ajax({
                            method: "POST",
                            url: "viewStaffByClinicAdmin.aspx/Update_Click",
                            data: "{ emailAddHF: '" + $('#emailAddHF').val() +
                                "',staffIDHF: '" + $('#staffIDHF').val() +
                                "',nameHF: '" + $('#nameHF').val() +
                                "',stsHF: '" + $('#stsHF').val() +
                                "',Ename: '" + $('#Ename').val() +
                                "',Eaddress: '" + $('#Eaddress').val() +                             
                                "',stsLbl: '" + $('#sts').val() +"'}",
                        
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            async: "true",
                            cache: "false",
                            success: function () {
                                alert("Update successful!!");
                                location.reload();
                                // On success                 
                            },
                            Error: function () {
                                alert("Updated failed");

                                // On Error
                            }
                            });
                        $(this).dialog("close");
                    }


                }

            });
        });
      </script>

</head>
<body>
      <div class="container-fluid nav-header">
        <div class="row own-header justify-content-end">
            <span class=""> Screening, Brief Intervention, and Referral to Treatment</span>
        </div>
          <div id="mySidenav" class="sidenav">
            <a href="default1.aspx?status=end" id="about">
            <img id="logoutimg" src="/images/userlogo.png" alt="logo"/>
            <span>LOGOUT</span>
            </a>
            </div>
          </div>
    <form runat="server"  class="form1 text-center">
        <div class="row img-row" style="margin-top: -4.6%; margin-left: -12%;">
            <asp:ImageButton ID="Button8" ImageUrl="/images/logo.png" AlternateText="Home" runat="server" onClick="Button8_Click" class="own-header-img img-fluid"/>
        </div>
    
    
    
        <div id="selectClinic" runat="server" visible="false">
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Select Clinic:</label>
    <div class="col-sm-6 text-left">
      <asp:DropDownList ID="ClinicDropDownList1" Class="input9" runat="server"></asp:DropDownList>
    </div>
  </div>
            <div class="form-group">
                  <asp:Button ID="Button5" runat="server" Text="Submit" OnClick="Button5_Click" />  
            </div>
            </div>
        <div class="row justify-content-center" runat="server" id='staffDetail' visible="true">
        <h3> List of Staff in the Clinic</h3>
            </div>
    <div class="container-fluid" style="margin-bottom: 30px;font-weight: normal; width: max-content;">
    
        <% =getStaff() %>

    </div>
        <div id="noRecDiv" runat="server" visible="false">
            <asp:Label runat="server" BackColor="Red"> No records found</asp:Label>
        </div>
        
 <div id="add_dialog" title="Update details" style="display: none">
  
      <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
</asp:ScriptManager>
    <p>
      First Name:

        <asp:TextBox ID="Ename" runat="server" required></asp:TextBox>
    </p>
      <p>
      Email address:
          <asp:TextBox ID="Eaddress" runat="server" required></asp:TextBox>
    </p>
      
      <p>
        Current  Status: 
          <label id="stsLbl" runat="server"> </label>

      </p>
      <asp:HiddenField ID="nameHF"  runat="server"/>
      <asp:HiddenField ID="staffIDHF"  runat="server"/>
      <asp:HiddenField ID="emailAddHF" runat="server" />
      <asp:HiddenField ID="stsHF"  runat="server"/>
    <p>Select status:
        <asp:DropDownList ID="sts" runat="server">
            <asp:ListItem Text="Select" Value=""></asp:ListItem>
                <asp:ListItem Text="Active" Value="1"></asp:ListItem>
                <asp:ListItem Text="Inactive" Value="0"></asp:ListItem>
        </asp:DropDownList>

      </p>
  </form>
</body>
</html>