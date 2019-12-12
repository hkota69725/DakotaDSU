<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientList.aspx.cs" Inherits="healtpoint.PatientList" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient List</title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/>
       <link rel="stylesheet" href="~/styles/main1.css"/>
    <link rel="stylesheet" href="~/styles/bootstrap.css"/>
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
    <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
     <script type="text/javascript" charset="utf8" src="http://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
              <script type="text/javascript">
                  $(function () {

                      $('#RadioButtonSearch input').click(function () {

                          var abc = $("input[name='RadioButtonSearch']:checked").val()
                          console.log(abc);
                          if (abc === "MRN") {
                              $('#mrnDIV').show();
                              $('#nameDIV').hide();
                              //$('#mrnDIV1').hide();
                              document.getElementById("error").style.display = "none";
                              $('#answer').hide();
                          }
                          /*if (abc === "MRN1") {
                              $('#mrnDIV').hide();
                              $('#nameDIV').hide();
                              $('#mrnDIV1').show();
                              document.getElementById("error").style.display = "none";
                              $('#answer').hide();
                          }*/
                          if(abc === "Name"){
                              $('#nameDIV').show();
                              $('#mrnDIV').hide();
                              //$('#mrnDIV1').hide();
                              document.getElementById("error").style.display = "none";
                              $('#answer').hide();
                          }
                      })
                  })
                  var a = document.getElementById("mrn1");

              </script>
    <script type="text/javascript">
        window.history.forward();
        function noBack() { window.history.forward(); }
</script>
    </head>

<body>
        <div class="container-fluid nav-header">
        <div class="row own-header justify-content-end">
            <span class=""> Screening, Brief Intervention, and Referral to Treatment</span>
        </div>
        <div class="row img-row">
            <a href ="patientList.aspx?type=1"><img src="/images/logo.png" alt="logo" class="own-header-img img-fluid"/></a>
        </div>
    </div>
     <div id="mySidenav" class="sidenav">
  <a href="default1.aspx?status=endStaff" onClick="noBack()" id="about">
      <img id="logoutimg" src="/images/userlogo.png" alt="logo"/>
      <span>LOGOUT</span>
  </a>
</div>
    
    <form class="form1" runat="server">
        <div class="row justify-content-center">
        <h3> Patient Search </h3></div>
    <div>
        <div class="col-md-6">
        
        <asp:RadioButtonList ID="RadioButtonSearch" runat="server" RepeatDirection="Vertical" RepeatLayout="Flow" Width="60%">
             <asp:ListItem Value="MRN">Search by MRN</asp:ListItem>
             <asp:ListItem Value="Name">Search by Last Name</asp:ListItem>
        </asp:RadioButtonList>
       
        <div  id="mrnDIV" style="display:none">
            <asp:TextBox ID="mrn1" runat="server" autocomplete="off" placeholder="Type MRN here" autofocus=""></asp:TextBox>
            </div>
         <div id="nameDIV" style="display:none">
            <asp:TextBox ID="name1" runat="server" autocomplete="off" placeholder="Type Last Name here" autofocus=""></asp:TextBox>
            </div>
        <div  id="mrnDIV1" style="display:none">
            <asp:TextBox ID="mrn2" runat="server" placeholder="Type MRN here(For Screening and Final report details)" autofocus=""></asp:TextBox>
            </div>
           </div>
        <button type="button" style="margin-left: 70%;" onclick="window.location.href='patientreg.aspx'"> New Patient Registration </button><br />
        <asp:Label ID="error"  style="display:none"  runat="server" ForeColor="Red" Text="Patient record not found, please try again by entering MRN or patient’s last name."></asp:Label><br />
            <br /><asp:Button ID="Button5" runat="server" Text="Search" OnClick="Button5_Click" />
            
            <br />
        <div id="searchDetails" runat="server"  visible="false">
            
    <div class="container-fluid" id="answer" style="margin-bottom: 30px;font-weight: normal; width: max-content;">
 
            <%=getPatientList()%>
           
       
        </div>
    </div>
    </div>
    </form>
</body>
</html>
