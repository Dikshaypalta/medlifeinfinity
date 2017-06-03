<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePatient.master" AutoEventWireup="true" CodeFile="PatientUploadHistory.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
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
    </style>


        <div class="container form-horizontal" style="padding-top: 10px;">
            
        </div>
      

            <div class="col-md-8 col-sm-6 col-xs-12 personal-info">
                <h3 class="auto-style1">&nbsp;&nbsp;Upload History</h3>
                 <div class="form-group">
                    <label class="col-lg-3 control-label" style="color: #000000">Your Id:</label>
                    <div class="col-lg-8">
                         <asp:TextBox ID="txtuserid" runat="server" class="form-control"  Width="725px" ReadOnly="true"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter the User_Id" ForeColor="#ff3300" ControlToValidate="txtuserid" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div><br /><br />
                </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label" style="color: #000000">Doctor's Name:</label>
                    <div class="col-lg-8">
                         <asp:TextBox ID="txt_name" runat="server" class="form-control" Width="725px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter the Name" ControlToValidate="txt_name" ForeColor="#ff3300" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div><br /><br />
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label" style="color: #000000">Disease:</label>
                    <div class="col-lg-8">
                         <asp:TextBox ID="txtsymtoms" runat="server" class="form-control" Width="725px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter the Syntoms" ControlToValidate="txtsymtoms" ForeColor="#ff3300" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div><br /><br />
                </div>
                 <div class="form-group">
                    <label class="col-lg-3 control-label" style="color: #000000">Slip Type:</label>
                    <div class="col-lg-8">
                <asp:DropDownList ID="ddtype" runat="server" class="btn btn-primary dropdown-toggle"  Width="155px" >
                       <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>X-ray</asp:ListItem>
                    <asp:ListItem>Other Test Report</asp:ListItem>
                    <asp:ListItem>Prescription</asp:ListItem>
                    </asp:DropDownList><br /><br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="txt2" ErrorMessage="Please Select Type" ControlToValidate="ddtype" Display="Dynamic" InitialValue="--Select--" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                     </div><br />
                    <%--<asp:FileUpload ID="FileUpload1" runat="server" />--%><br /><br />
     <div class="form-group">
    <label class="col-lg-3 control-label" style="color: #000000">Select File:</label>
                    <div class="col-lg-8" style="margin-left:-14%;">
                    <asp:FileUpload ID="FileUpload1"  runat="server" class="txt text-center btn btn-primary center-block well well-sm form-group" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Please browse the image" ForeColor="#ff3300"></asp:RequiredFieldValidator>
               </div>
         </div>
    <div class="form-group">
                    <label class="col-md-3 control-label"></label>
                    <div class="col-md-8">
                        <asp:Button ID="btn_insert" class="btn btn-primary" runat="server" Text="Upload" OnClick="btn_insert_Click" />
                        <br /><br />    <br /><br />
    </div>
        </div>
    </div>
     <div class="col-lg-12">
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="4" OnDeleteCommand="DataList1_DeleteCommand">
                <EditItemStyle BackColor="#FF8080" />
                <HeaderTemplate>
                    <center><b>Uploaded Images</b></center>
                </HeaderTemplate>
                <ItemTemplate>
                    <table style="margin-left:30px;">
                        <tr>
                            <td >
                                <a href='images/<%#Eval("Image_URL") %>' >
                                <img alt="" src='images/<%#Eval("Image_URL") %>'height="150" width="150" /><br />
                              <%--  <h2 style="margin-left: 50%;"><%# Eval("Image_Name") %></h2></a>--%>
                            </td>
                            </tr>
                        <tr>
                            <td></td>
                           
                           
                        </tr>
                        <caption>
                            <br />
                        </caption>
                    </table>

                </ItemTemplate>
            </asp:DataList><br /><br />
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

