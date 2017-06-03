<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE" />

    <!-- favicon -->
    <link rel="shortcut icon" href="images/favicon-new.png" />

    <!-- Google Web Font -->
    <link href="http://fonts.googleapis.com/css?family=Raleway:400,100,500,600,700,800,900,300,200" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css" />

    <!-- bootstrap Style Sheet (caution ! - Do not edit this stylesheet) -->
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="all" />
    <!-- Flexslider stylesheet -->
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" />
    <!-- Animations stylesheet -->
    <link rel="stylesheet" href="css/animations.css" type="text/css" media="all" />
    <!-- Awesome Font stylesheet -->
    <link rel="stylesheet" href="css/font-awesome.css" type="text/css" media="all" />
    <!-- Datepciker stylesheet -->
    <link rel="stylesheet" href="css/datepicker.css" type="text/css" media="all" />
    <!-- Swipebox stylesheet -->
    <link rel="stylesheet" href="css/swipebox.css" type="text/css" media="all" />
    <!-- meanmenu stylesheet -->
    <link rel="stylesheet" href="css/meanmenu.css" type="text/css" media="all" />
    <!-- Include the site main stylesheet -->
    <link rel="stylesheet" href="css/main.css" type="text/css" media="all" />
    <!-- Include the site responsive  stylesheet -->
    <link rel="stylesheet" href="css/custom-responsive.css" type="text/css" media="all" />
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"/>


    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->


    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    
    
    <style type="text/css">
      .radioclass
      {
          margin-left:10px;
          font-size:larger;
      }

      .btnfont
      {
          font-family:sans-serif;
      }
      .backbtn
      {
          font-size:20px;
      }
</style>

</head>
<body style="background-color:#F0F8FF">
  <form id="form1" runat="server" style="margin-left:30%;">
        <br /><br />
        <div class="container">
            <div class="omb_login">
                <h3 class="omb_authTitle">Please Enter <b>E-mail</b></h3><br /><br />
      <div class="row omb_row-sm-offset-3">
                    <div class="col-xs-12 col-sm-6">


                         <span class="help-block"></span>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                            <asp:TextBox ID="txtemail" runat="server" placeholder="Enter Email" class="form-control" MaxLength="200"></asp:TextBox>
                        </div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Valid id" ControlToValidate="txtemail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>

                        <br /><br /><br />
                         <asp:Button ID="btnreg1" runat="server" Text="Send" class="btn btn-lg btn-primary btn-block btnfont active" OnClick="btnsend_Click"/>
                        <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>


                        </div>
          </div>
                </div>
            </div>
      </form>

  
</body>
</html>
