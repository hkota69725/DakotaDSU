<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewClinicAdmin.aspx.cs" Inherits="healtpoint.View.viewClinicAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="~/styles/bootstrap.css"/>
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
    <link rel="stylesheet" href="~/styles/main1.css"/>
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
 
<script src="https://code.jquery.com/ui/1.11.1/jquery-ui.min.js"></script>

<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css" />

    <script type = "text/javascript">

        function showDiv(username, email, clinic, adminID, status) {

            document.getElementById("sts").value = "";
            var e = document.getElementById("sts");
            var strUser = e.options[e.selectedIndex].value;
            document.getElementById("un").value = username;
            document.getElementById("emailAddHF").value = email;
            document.getElementById("Eaddress").value = email;
            document.getElementById("adminIDHF").value = adminID;
            document.getElementById("clinicLbl").innerHTML  = clinic;
            document.getElementById("nmHF").value = username;
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
                            url: "viewClinicAdmin.aspx/Update_Click",
                            data: "{ adminIdHF: '" + $('#adminIDHF').val() +
                                "',emailAddHField: '" + $('#emailAddHF').val() +
                                "',stsHidden: '" + $('#stsHF').val() +
                                "',nwEmail: '" + $('#Eaddress').val() +
                                "',nm: '" + $('#un').val() +
                                "',status: '" + $('#sts').val() +
                                "',uNm: '" + $('#nmHF').val() + "'}",

                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            async: "true",
                            cache: "false",
                            success: function (data) {
                                // alert(JSON.stringify(data));
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
        function showDiv1(username) {

            document.getElementById("un1").value = username;
            $("#add_dialog1").show();
            $("#add_dialog1").dialog('open');
        }
        $(function () {
            $('#add_dialog1').dialog({
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
                    "Delete": function () {

                        $.ajax({
                            method: "POST",
                            url: "viewClinicAdmin.aspx/Delete_Click",
                            data: "{ UserName: '" + $('#un1').val() + "'}",
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            //async: "true",
                            success: function (data) {
                                // alert(JSON.stringify(data));
                                alert("Deletion successful!!");
                                location.reload();
                                // On success                 
                            },
                            Error: function () {
                                alert("Deletion failed");

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
        <div class="row img-row">
            <a href ="SuperAdminIndex.aspx"><img src="/images/logo.png" alt="logo" class="own-header-img img-fluid"/></a>
        </div>
    </div>
    <div id="mySidenav" class="sidenav">
  <a href="default1.aspx?status=end" id="about">
      <img id="logoutimg" src="/images/userlogo.png" alt="logo"/>
      <span>LOGOUT</span>
  </a>
</div>
    <form class="form1 text-center justify-content-center" runat="server">
        <div class="row justify-content-center">
        <h3>List of Clinic Admins Added</h3></div>
    <div class="container-fluid" style="margin-bottom: 30px;font-weight: normal; width: max-content;">
    <%=allAdminDetail() %>
    </div>
          <div id="add_dialog" title="Update details" style="display: none">
      <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
</asp:ScriptManager>
      <p>
          Clinic: 
          <label id="clinicLbl" runat="server"> </label>

      </p>
    <p>
      Name:

        <asp:TextBox ID="un" runat="server" required=""></asp:TextBox>
    </p>
      <p>
      Email:
          <asp:TextBox ID="Eaddress" runat="server" required=""></asp:TextBox>
    </p>
      
      <p>
        Current  Status: 
          <label id="stsLbl" runat="server"> </label>

      </p>
      <asp:HiddenField ID="nmHF"  runat="server"/>
      <asp:HiddenField ID="adminIDHF"  runat="server"/>
      <asp:HiddenField ID="emailAddHF" runat="server" />
      <asp:HiddenField ID="stsHF"  runat="server"/>
    <p>Select status:
        <asp:DropDownList ID="sts" runat="server">
            <asp:ListItem Text="Select" Value=""></asp:ListItem>
                <asp:ListItem Text="Active" Value="1"></asp:ListItem>
                <asp:ListItem Text="Inactive" Value="0"></asp:ListItem>
        </asp:DropDownList>
        </p>

</div>
        <div id="add_dialog1" title="Delete details" style="display: none">

            
            <p>
      Name:

        <asp:TextBox ID="un1" runat="server" required=""></asp:TextBox>
    </p>
            </div>
        
    </form>
</body>
</html>
