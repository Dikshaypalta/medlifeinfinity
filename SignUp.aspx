<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <!-- Define a view port to mobile devices to use - telling the browser to assume that
    the page is as wide as the device (width=device-width)
     and setting the initial page zoom level to be 1 (initial-scale=1.0) -->
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
       <br />
        <div class="container">
            <div class="omb_login">
                <h3 class="omb_authTitle">Please <b>SignUp</b></h3><br />

                <div class="row omb_row-sm-offset-3">
                    <div class="col-xs-12 col-sm-6">


                        <div class="input-group">
                            <span class="input-group-addon">
                                <label>Please Select Type: </label>
                            </span>
                            <span class="input-group-addon">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true" RepeatDirection="Horizontal" CssClass="radioclass" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged1">
                                    <asp:ListItem Value="1" Selected="True">&emsp;Doctor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:ListItem>
                                    <asp:ListItem Value="2">&emsp;Patient</asp:ListItem>
                                </asp:RadioButtonList>

                            </span>


                        </div>

                        <br />

                        <asp:Panel ID="Panel1" runat="server">


                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <asp:TextBox ID="txtname" runat="server" placeholder="Enter Name" class="form-control" MaxLength="100"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvname" ValidationGroup="navi" runat="server" ErrorMessage="Please Enter Name" Display="Dynamic" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rgvName" runat="server" ErrorMessage="Invalid Name" ForeColor="Red"
                        ValidationGroup="1" ControlToValidate="txtname" ValidationExpression="^([a-zA-z\s]{3,50})$"
                        Display="Dynamic"></asp:RegularExpressionValidator>

                        <span class="help-block"></span>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                            <asp:TextBox ID="txtmail" runat="server" placeholder="Enter Email" class="form-control" MaxLength="200"></asp:TextBox>
                        </div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Valid id" ControlToValidate="txtmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>

                             <span class="help-block"></span>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                            <asp:TextBox ID="txtmob" runat="server" placeholder="Enter Mobile Number" class="form-control" MaxLength="200"></asp:TextBox>
                        </div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Enter Valid Mobile Number " ControlToValidate="txtmob" ForeColor="Red" Display="Dynamic" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$"></asp:RegularExpressionValidator>



                        <span class="help-block"></span>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <asp:TextBox ID="txtpwd" runat="server" placeholder="Enter Password which Includes !/@/#/$/%/^/&/* And Digits" class="form-control" MaxLength="200" TextMode="Password"></asp:TextBox>
                        </div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="txtpwd" runat="server" ErrorMessage="Special Character and Numeric should included." ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*\W)\S{6,10}$" Display="Dynamic"></asp:RegularExpressionValidator>

                        <span class="help-block"></span>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <asp:TextBox ID="txtrepwd" runat="server" placeholder="Re-Type Password" class="form-control" MaxLength="200" TextMode="Password"></asp:TextBox>
                        </div>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToValidate="txtrepwd" ControlToCompare="txtpwd" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                              <span class="help-block"></span>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-bitbucket"></i></span>
                            <asp:DropDownList ID="ddspec" runat="server" class="form-control">

                                <asp:ListItem Value="select">Select Specialization</asp:ListItem>
                                   <asp:ListItem Value="Cardiologists">Cardiologists</asp:ListItem>
                                    <asp:ListItem Value="Dentist">Dentist</asp:ListItem>
                                    <asp:ListItem Value="Emergency physician">Emergency physician</asp:ListItem>
                                    <asp:ListItem Value="Endocrinologists">Endocrinologists</asp:ListItem>
                                    <asp:ListItem Value="Neurologist">Neurologist</asp:ListItem>
                                    <asp:ListItem Value="Orthopaedist">Orthopaedist</asp:ListItem>
                                    <asp:ListItem Value="Gynaecologists">Gynaecologists</asp:ListItem>
                                    <asp:ListItem Value="Pathologists">Pathologists</asp:ListItem>
                                    <asp:ListItem Value="General practitioner">General practitioner</asp:ListItem>
                                    <asp:ListItem Value="Psychiatrists">Psychiatrists</asp:ListItem>
                                    <asp:ListItem Value="Anesthesiologists">Anesthesiologists</asp:ListItem>
                                    <asp:ListItem Value="Dermatologists">Dermatologists</asp:ListItem>
                                    <asp:ListItem Value="Gastroenterologist">Gastroenterologist</asp:ListItem>
                                    <asp:ListItem Value="Immunologists">Immunologists</asp:ListItem>
                                    <asp:ListItem Value="Leprologist">Leprologist</asp:ListItem>
                                    <asp:ListItem Value="Parasitologists">Parasitologists</asp:ListItem>
                                    <asp:ListItem Value="Radiologist">Radiologist</asp:ListItem>
                                    <asp:ListItem Value="Surgeons">Surgeons</asp:ListItem>
                                    <asp:ListItem Value="Toxicologist">Toxicologist</asp:ListItem>
                                    
                                   


                            </asp:DropDownList>
                            
                            
    
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="navimani" runat="server" ErrorMessage="Please Select Your Specialization" Display="Dynamic" ControlToValidate="ddspec" ForeColor="Red" InitialValue="select"></asp:RequiredFieldValidator>
                            <asp:Image ID="img1" runat="server"  Visible="false"/>
                      
                        <br />
                               <asp:Button ID="btnreg1" runat="server" Text="SAVE" class="btn btn-lg btn-primary btn-block btnfont active" OnClick="btnreg1_Click" />
                        <asp:Button ID="btnreset1" runat="server" Text="RESET" class="btn btn-lg btn-danger btn-block btnfont active" OnClick="btnreset1_Click"  />
                            </asp:Panel>

                        <asp:Panel ID="Panel2" runat="server" Visible="false">

                              <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Name" class="form-control" MaxLength="100"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="abcs" ErrorMessage="Please Enter Name" Display="Dynamic" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Invalid Name"
                        ValidationGroup="1" ControlToValidate="TextBox1" ValidationExpression="^([a-zA-z\s]{3,50})$"
                        Display="Dynamic"></asp:RegularExpressionValidator>
                        <span class="help-block"></span>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Email" class="form-control" MaxLength="200"></asp:TextBox>
                        </div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid id" ControlToValidate="txtmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>

                             <span class="help-block"></span>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                            <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Mobile Number" class="form-control" MaxLength="200"></asp:TextBox>
                        </div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="TextBox5" ForeColor="Red" Display="Dynamic" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$"></asp:RegularExpressionValidator>

                        <span class="help-block"></span>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Password which Includes !/@/#/$/%/^/&/* And Digits" class="form-control" MaxLength="200" TextMode="Password"></asp:TextBox>
                        </div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="txtpwd" runat="server" ErrorMessage="Special Character and Numeric should included." ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*\W)\S{6,10}$" Display="Dynamic"></asp:RegularExpressionValidator>

                        <span class="help-block"></span>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <asp:TextBox ID="TextBox4" runat="server" placeholder="Re-Type Password" class="form-control" MaxLength="200" TextMode="Password"></asp:TextBox>
                        </div>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="CompareValidator" ControlToValidate="txtrepwd" ControlToCompare="txtpwd" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>

                           
                        <br />
                               <asp:Button ID="btnRegister" runat="server" Text="SAVE" class="btn btn-lg btn-primary btn-block btnfont active" OnClick="btnRegister_Click"/>
                        <asp:Button ID="btnReset" runat="server" Text="RESET" class="btn btn-lg btn-danger btn-block btnfont active"  OnClick="btnReset_Click" />

                        </asp:Panel>
                        <br />
 <asp:Button ID="btnRedirect" runat="server" Text="Go Back" ValidationGroup="navdeep"  OnClick="btnRedirect_Click" class="btn btn-danger active active"/>
                   
               
                    </div>
                </div>
            </div>
        </div>


    </form>

               <script type='text/javascript' id='quick-js'></script>
            <script type='text/javascript' src='js/jquery-1.11.1.min.js'></script>
            <script type='text/javascript' src='js/bootstrap.min.js'></script>
            <script type='text/javascript' src='js/jquery.flexslider-min.js'></script>
            <script type='text/javascript' src='js/jquery.swipebox.min.js'></script>
            <script type='text/javascript' src='js/jquery.isotope.min.js'></script>
            <script type='text/javascript' src='js/jquery.appear.js'></script>
            <script type='text/javascript' src='js/jquery.ui.core.min.js'></script>
            <script type='text/javascript' src='js/jquery.ui.datepicker.min.js'></script>
            <script type='text/javascript' src='js/jquery.validate.min.js'></script>
            <script type='text/javascript' src='js/jquery.form.js'></script>
            <script type='text/javascript' src='js/jquery.autosize.min.js'></script>
            <script type='text/javascript' src='js/jquery.meanmenu.min.js'></script>
            <script type='text/javascript' src='js/jquery.velocity.min.js'></script>
            <script type='text/javascript' src='js/respond.min.js'></script>
            <script type='text/javascript' src='js/jquery-migrate-1.2.1.min.js'></script>
            <script type='text/javascript' src='js/custom.js'></script>
</body>
</html>
