<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDoctor.master" AutoEventWireup="true" CodeFile="ViewHistory.aspx.cs" Inherits="_Default" %>


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
  
        <div class="container form-horizontal" style="padding-top: 10px;">
            </div>

            <div class="col-md-8 col-sm-6 col-xs-12 personal-info">
                <h3 class="auto-style1">View History</h3>
                  <div class="form-group">
                    <label class="col-lg-3 control-label" style="color: #000000">User Id:</label>
                    <div class="col-lg-8">
                         <asp:TextBox ID="txtuserid" runat="server" class="form-control"  Width="725px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtuserid" ForeColor="#ff0000" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                    <label class="col-lg-3 control-label" style="color: #000000">Type:</label>
                    <div class="col-lg-8">
                <asp:DropDownList ID="ddtype" runat="server" class="btn btn-primary dropdown-toggle"  Width="155px" AutoPostBack="True" OnSelectedIndexChanged="ddtype_SelectedIndexChanged" >
                        <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>X-ray</asp:ListItem>
                    <asp:ListItem>Other Test Report</asp:ListItem>
                    <asp:ListItem>Prescription</asp:ListItem>
                    </asp:DropDownList>
                        </div>
                     </div>
                </div>
    
      <div class="col-lg-12">
          
               <%-- <div id="wrapper">--%>
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="5" >
                <EditItemStyle BackColor="#FF8080" />
              
                <ItemTemplate>
                    <table>
                        <tr>
                            <td >
                                <a href='/images/<%#Eval("Image_URL") %>' >
                                <!--<img alt="" src='images/<!--%#Eval("Image_URL") %-->'
                                <img alt="" src='/images/<%#Eval("Image_URL") %>' height="150" width="150" style="margin-left: 50px;" /><br />
                                   <%-- <h2 style="margin-left: 50%;"><%# Eval("Image_Name") %></h2></a>--%>
                            </td>
                            </tr>
                        <tr>
                            <td></td>
                           <%-- <td>
                                <asp:LinkButton ID="lnkdelete" runat="server" CommandName="Delete" Text="Delete"  OnClientClick="return confirm('Are you sure you want to delete selected records') "></asp:LinkButton>
                       </td>--%>
                           
                        </tr>
                        <caption>
                            <br />
                        </caption>
                    </table>

                </ItemTemplate>
            </asp:DataList>
      <%--  </div>--%><br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /><br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
          </div>
   
   <script type="text/javascript">
       $(function () {
           $('#portfolio').magnificPopup({
               delegate: 'a',
               type: 'image',
               image: {
                   cursor: null,
                   titleSrc: 'title'
               },
               gallery: {
                   enabled: true,
                   preload: [0, 1], // Will preload 0 - before current, and 1 after the current image
                   navigateByImgClick: true
               }
           });
       });
</script>

  

</asp:Content>

