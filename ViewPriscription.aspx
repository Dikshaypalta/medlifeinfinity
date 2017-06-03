<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePatient.master" AutoEventWireup="true" CodeFile="ViewPriscription.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder8" Runat="Server">

     <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

  <meta http-equiv="Content-Type" content="text/html"/>
 
  <meta name="author" content="Jake Rocheleau"/>
  <link rel="shortcut icon" href="http://static.tmimgcdn.com/img/favicon.ico"/>
  <link rel="icon" href="http://static.tmimgcdn.com/img/favicon.ico"/>
  <link rel="stylesheet" type="text/css" media="all" href="css/styles.css"/>
  <link rel="stylesheet" type="text/css" media="all" href="css/magnific-popup.css"/>
  <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
  <script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>



    <style type="text/css">
        .form-horizontal {
            background-color: #FFFFFF;
        }

        .auto-style1 {
            color: #000000;
        }
        .btnmargin
        {
            margin-left:20%;
        }
    </style>

  
        <div class="container form-horizontal" style="padding-top: 0px;">
            
        </div>
      
<div class="pa0 col-lg-12">

            <div class="form-group col-lg-8 col-md-12" style="margin-left:5%;">
                <h3 class="auto-style1">View Priscription</h3><br />
           <div class="form-group">
                    <label class="col-lg-3 control-label">Doctor Name : </label>
                    <div class="col-lg-8">
                     <asp:DropDownList ID="DropDownList1" runat="server" class="btn btn-info active dropdown-toggle" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            
                     </asp:DropDownList>
                        <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>

  <asp:Button ID="btnsave" runat="server" Text="Show" class="btn btn-success btn-xs active btnmargin" OnClick="btnsave_Click"/>
                    </div>
               </div>
                <br /><br /><br /><br />

                <asp:Panel ID="Panel1" runat="server" Visible="false">
                    <div class="form-group">
                    <label class="col-lg-3 control-label">Medicine Name : </label>
                    <div class="col-lg-8">
                         <asp:TextBox ID="txtmname" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                     
                       </div><br /><br />
                </div>
                   <div class="form-group">
                    <label class="col-lg-3 control-label">Quantity : </label>
                    <div class="col-lg-8">
                         <asp:TextBox ID="txtqty" runat="server" class="form-control" ReadOnly="true" ></asp:TextBox>
                     
                       </div><br /><br />
                </div>
                   <div class="form-group">
                    <label class="col-lg-3 control-label">Dose Duration: </label>
                    <div class="col-lg-8">
                         <asp:TextBox ID="txtdd" runat="server" class="form-control" ReadOnly="true" ></asp:TextBox>
                     
                       </div>

                </div>
                </asp:Panel>
                </div><br /><br /><br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br /><br /><br />

    </div>


</asp:Content>

