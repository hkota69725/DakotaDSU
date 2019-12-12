<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patientreg.aspx.cs" Inherits="healtpoint._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBIRT app</title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/>
       <link rel="stylesheet" href="~/styles/main1.css"/>
    <link rel="stylesheet" href="~/styles/bootstrap.css"/>
    <script src="/Scripts/Jquery.js"></script>
    <script src="/Scripts/popper.js"></script>
    <script src="/Scripts/bootstrapmin.js"></script>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
     <script type="text/javascript">
         $(function () {

             $('#ssn').keydown(function (e) {
                 var key = e.charCode || e.keyCode || 0;
                 $text = $(this);
                 if (key !== 8 && key !== 9) {
                     if ($text.val().length === 3) {
                         $text.val($text.val() + '-');
                     }
                     if ($text.val().length === 6) {
                         $text.val($text.val() + '-');
                     }

                 }

                 return (key == 8 || key == 9 || key == 46 || (key >= 48 && key <= 57) || (key >= 96 && key <= 105));
             })
         });
         $(function () {

             $('#phoneNumber').keydown(function (e) {
                 var key = e.charCode || e.keyCode || 0;
                 $text = $(this);
                 if (key !== 8 && key !== 9) {
                     if ($text.val().length === 0) {
                         $text.val($text.val() + '(');
                     }
                     if ($text.val().length === 4) {
                         $text.val($text.val() + ')');
                     }
                     if ($text.val().length === 8) {
                         $text.val($text.val() + '-');
                     }

                 }

                 return (key == 8 || key == 9 || key == 46 || (key >= 48 && key <= 57) || (key >= 96 && key <= 105));
             })
         });
         function setTextBoxVisible(isVisible) {
             var displayStyle = isVisible ? 'block' : 'none';
             document.getElementById('GenderOthers').style.display = displayStyle;
         }
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
  <a href="default1.aspx?status=endStaff" id="about">
      <img id="logoutimg" src="/images/userlogo.png" alt="logo"/>
      <span>LOGOUT</span>
  </a>
</div>

    <form class="form1 text-center" runat="server"  >
        <div class="row justify-content-center">
        <h3> Patient Registration </h3></div>
        <div style="padding-right: 21%;" >
                <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right"> MRN # *:</label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="mrn" runat="server" autocomplete="off" Class="input9" required></asp:TextBox>
    </div>
  </div>
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">First Name *:</label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="firstName1" pattern="^[A-Za-z -]+$"  runat="server" type="text" autocomplete="off" Class="input9" required></asp:TextBox>
    </div>
  </div>

  <div class="form-group row">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">Last Name *:</label>
    <div class="col-sm-6 text-left">
            <asp:TextBox ID="lastName1"  pattern="^[A-Za-z -]+$" runat="server" type="text" autocomplete="off" Class="input9" required></asp:TextBox> 
    </div>
  </div>

  <div class="form-group row">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">Middle Name:</label>
    <div class="col-sm-6 text-left">
            <asp:TextBox ID="middleName" type="text" pattern="^[A-Za-z -]+$" runat="server" autocomplete="off" Class="input9"></asp:TextBox> 
    </div>
  </div>

    <div class="form-group row justify-content-center">
                     <label for="exampleInputName" id="lb1"  class="col-sm-6 col-form-label text-right">Provider *:</label>
                   <div class="col-sm-6 text-left">
                       <asp:DropDownList ID="DropDownList1" Class="input9" DataTextField="Provider" runat="server" required>
                           </asp:DropDownList>
                   </div>
                  </div>

  <div class="form-group row">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">Gender *: </label>
    <div class="col-sm-6 text-left">
    <asp:DropDownList ID="genderDropDownList" runat="server" Class="input9" required>
                <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                <asp:ListItem Text="Male" Value="M"></asp:ListItem>
                <asp:ListItem Text="Female" Value="F"></asp:ListItem>
                <asp:ListItem Text="Transgender" Value="T"></asp:ListItem>
                <asp:ListItem Text="Others" Value="O"></asp:ListItem>
                <asp:ListItem Text="Refuse" Value="R"></asp:ListItem>
            </asp:DropDownList> 
        <asp:TextBox id="GenderOthers" runat="server"></asp:TextBox>
    </div>
  </div>
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Date of Birth *: </label>
    <div class="col-sm-6 text-left">
            <asp:TextBox ID="dob" type="date" runat="server" max="3000-12-31" 
        min="1000-01-01" name="bday" Class="input9" required></asp:TextBox>
    </div>
  </div>

 <div class="form-group row">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">Social Security Number *:</label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="ssn" type="text" maxlength="11" runat="server" autocomplete="off" Class="input9" placeholder="xxx-xx-xxxx" required ></asp:TextBox>
         </div>
  </div>
      <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">Phone Number *: </label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="phoneNumber" Type="tel" maxlength="13" autocomplete="off" Class="input9" runat="server" patten="\d{10}" required ></asp:TextBox>
    </div>
  </div>

  
  <div class="form-group row">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right"> Email Address *: </label>
    <div class="col-sm-6 text-left">
        <asp:TextBox type="email" ID="emailAddress" autocomplete="off" Class="input9" pattern="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server"></asp:TextBox>
    </div>
  </div>
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right" >Address *: </label>
    <div class="col-sm-6 text-left">
        <asp:TextBox ID="address1" TextMode="MultiLine" autocomplete="off" rows="3" Class="input9" style="height: inherit;" runat="server" required ></asp:TextBox> 
    </div>
  </div>

  <div class="form-group row">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">City *:</label>
    <div class="col-sm-6 text-left">
            <asp:TextBox ID="city" runat="server" autocomplete="off" Class="input9" required></asp:TextBox>
    </div>
  </div>
        <div class="form-group row justify-content-center">
    <label for="exampleInputName" class="col-sm-6 col-form-label text-right">State *: </label>
    <div class="col-sm-6 text-left">
        <asp:DropDownList runat="server" ID="list" Class="input9">
            <asp:ListItem Value="">Select State</asp:ListItem>
            <asp:ListItem Value="AL">Alabama</asp:ListItem>
            <asp:ListItem Value="AK">Alaska</asp:ListItem>
            <asp:ListItem Value="AZ">Arizona</asp:ListItem>
            <asp:ListItem Value="AR">Arkansas</asp:ListItem>
            <asp:ListItem Value="CA">California</asp:ListItem>
            <asp:ListItem Value="CO">Colorado</asp:ListItem>
            <asp:ListItem Value="CT">Connecticut</asp:ListItem>
            <asp:ListItem Value="DE">Delaware</asp:ListItem>
            <asp:ListItem Value="FL">Florida</asp:ListItem>
            <asp:ListItem Value="GA">Georgia</asp:ListItem>
            <asp:ListItem Value="HI">Hawaii</asp:ListItem>
            <asp:ListItem Value="ID">Idaho</asp:ListItem>
            <asp:ListItem Value="IL">Illinois</asp:ListItem>
            <asp:ListItem Value="IN">Indiana</asp:ListItem>
            <asp:ListItem Value="IA">Iowa</asp:ListItem>
            <asp:ListItem Value="KS">Kansas</asp:ListItem>
            <asp:ListItem Value="KY">Kentucky</asp:ListItem>
            <asp:ListItem Value="LA">Louisiana</asp:ListItem>
            <asp:ListItem Value="ME">Maine</asp:ListItem>
            <asp:ListItem Value="MD">Maryland</asp:ListItem>
            <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
            <asp:ListItem Value="MI">Michigan</asp:ListItem>
            <asp:ListItem Value="MN">Minnesota</asp:ListItem>
            <asp:ListItem Value="MS">Mississippi</asp:ListItem>
            <asp:ListItem Value="MO">Missouri</asp:ListItem>
            <asp:ListItem Value="MT">Montana</asp:ListItem>
            <asp:ListItem Value="NE">Nebraska</asp:ListItem>
            <asp:ListItem Value="NV">Nevada</asp:ListItem>
            <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
            <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
            <asp:ListItem Value="NM">New Mexico</asp:ListItem>
            <asp:ListItem Value="NY">New York</asp:ListItem>
            <asp:ListItem Value="NC">North Carolina</asp:ListItem>
            <asp:ListItem Value="ND">North Dakota</asp:ListItem>
            <asp:ListItem Value="OH">Ohio</asp:ListItem>
            <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
            <asp:ListItem Value="OR">Oregon</asp:ListItem>
            <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
            <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
            <asp:ListItem Value="SC">South Carolina</asp:ListItem>
            <asp:ListItem Value="SD">South Dakota</asp:ListItem>
            <asp:ListItem Value="TN">Tennessee</asp:ListItem>
            <asp:ListItem Value="TX">Texas</asp:ListItem>
            <asp:ListItem Value="UT">Utah</asp:ListItem>
            <asp:ListItem Value="VT">Vermont</asp:ListItem>
            <asp:ListItem Value="VA">Virginia</asp:ListItem>
            <asp:ListItem Value="WA">Washington</asp:ListItem>
            <asp:ListItem Value="WV">West Virginia</asp:ListItem>
            <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
            <asp:ListItem Value="WY">Wyoming</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="error"  style="display:none" runat="server" ForeColor="Red" Text="Incorrect username or password"></asp:Label>

    </div>
  </div>

  <div class="form-group row">
    <label for="exampleInputEmail" class="col-sm-6 col-form-label text-right">Zip Code *: </label>
    <div class="col-sm-6 text-left">
            <asp:TextBox ID="postalCode" runat="server" Class="input9" autocomplete="off" required></asp:TextBox>
         </div>
  </div>
            </div>
        <div class="form-group">
                 <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Submit" />   
            </div>
</form>
    </body>
</html>

|
