<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDoctor.master" AutoEventWireup="true" CodeFile="DoctorPostQuery.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">

  

<%@ Register TagPrefix="asp" Namespace="Saplin.Controls" Assembly="DropDownCheckBoxes" %>
<!DOCTYPE html>



    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>

    <%--<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">--%><%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  --%>

    <link href="css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />
    <script src="js/bootstrap-multiselect.js" type="text/javascript"></script>
    <%-- <link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />
    <script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js" type="text/javascript"></script>--%>
    <script type="text/javascript">
        $(document).ready(function () {
            $(this).keyup(function (event) {
                if (event.target.id.indexOf("txtPostReply") > 0) {
                    var id = event.target.id;
                    var id1 = id.replace("txtPostReply", "btnPostReply");
                    if ($(event.target).val() == "")
                        $("#" + id1).addClass("disabled")
                    else
                        $("#" + id1).removeClass("disabled")
                    //    var nodeName = this.nodeName.toLowerCase();
                    //    //if (nodeName == "input" && $(this).attr('type') == "text") {
                    //    //}
                    //    if (nodeName == "input" && $(this).attr('type') == "submit")                 
                }
            });

        });
        function refreshModal() {
            $("#gdFilter").html("");
        }
    </script>
   <div class="container" style="margin-left:10%;">
        <div class="row">
            <div class="col-lg-11 col-md-11 col-sm-10 col-xs-10 bhoechie-tab">
                <div class="bhoechie-tab-content active">
                    <div class="row">
                        <div class="col-lg-8 col-md-8  col-sm-12 col-xs-12">
                            <h2 class="text-danger">Post Query</h2>

                        </div>

                    </div>
                </div>
            </div>

            <div class="col-lg-11 col-md-11 col-sm-10 col-xs-10 bhoechie-tab">
                <div class="bhoechie-tab-content active">
              
                        <hr />
                        <div class="pa0 col-lg-12">
                            <div class="form-group col-lg-2 col-md-4 col-sm-4 col-xs-6 pull-right">
                                <asp:DropDownList ID="postState" runat="server" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="postState_SelectedIndexChanged">
                                    <asp:ListItem>All Post</asp:ListItem>
                                    <asp:ListItem>My Post</asp:ListItem>
                                    <asp:ListItem>Filter</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                       
                        <br />
                        <br />
                        <br />
                        <br />
                        <div class="pa0 col-lg-12">
                            <div class="form-group col-lg-6 col-md-3 col-sm-6 col-xs-8">
                                <label>Title</label>
                                <asp:TextBox ID="queryTitle" runat="server" placeholder="Query Title" class="form-control" />
                                <asp:RequiredFieldValidator ID="titleCheck" runat="server" ErrorMessage="Please Enter Some Title" ForeColor="Red" ValidationGroup="profile" ControlToValidate="queryTitle" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <br />
                        <br />
                        <br />
                        <br />
                        <div class="pa0 col-lg-12">
                            <div class="form-group col-lg-6 col-md-3 col-sm-6 col-xs-8">
                                <label>Query</label>
                                <asp:TextBox ID="txtQuery" runat="server" TextMode="MultiLine" placeholder="Enter your query here" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="queryCheck" runat="server" ErrorMessage="Please Enter a Query" ForeColor="Red" ValidationGroup="profile" ControlToValidate="txtQuery" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />

                        <div class="pa0 col-lg-12">
                            <div class="form-group col-lg-6 col-md-3 col-sm-6 col-xs-8">
                                <asp:RadioButton ID="rbPublic" AutoPostBack="true" runat="server" Checked="true" GroupName="Post" Text="Public" Style="margin-left: 10px" />
                                <asp:RadioButton ID="rbPrivate" AutoPostBack="true" runat="server" GroupName="Post" Text="Private" Style="margin-left: 10px" OnCheckedChanged="rbPrivate_CheckedChanged" />
                                <asp:Button ID="btnRegister" runat="server" Text="Post" ValidationGroup="profile" class="btn btn-success col-lg-2 pull-right active" OnClick="btnRegister_Click" />

                            </div>
                        </div>
                        <br />
                        <br />
                        <br />
                        <br />
                        <div class="pa0 col-lg-12">
                            <div class="form-group col-lg-6 col-md-3 col-sm-6 col-xs-8">
                                <hr />
                                <asp:Repeater ID="rptPosts" runat="server" OnItemDataBound="ItemBound">
                                    <ItemTemplate>
                                        <table>
                                            <tr>
                                                <td rowspan="3">
                                                    <asp:Image ID="imgDoctor" ImageUrl='<%#Eval("Image") %>' runat="server" Class="avatar img-circle" Width="110px" Height="100px" /></td>
                                                <td></td>
                                                <td colspan="1">
                                                    <asp:Label ID="lblPostDate" runat="server" Text='<%#Eval("date") %>'></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:Label ID="lblPostTitle" runat="server" Text='<%#Eval("title") %>' Font-Bold="true" Font-Italic="true"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:Label ID="lblPostQuery" runat="server" Text='<%#Eval("query") %>'></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:Label class="col-sm-2" ID="lblDoctorName" Style="text-align: center; color: green" Font-Bold="true" runat="server" Text='<%#Eval("Name") %>' ForeColor="Maroon"></asp:Label></td>
                                                <td>
                                                    <asp:HiddenField ID="hfPostId" runat="server" Value='<%#Eval("post_id") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <br />
                                                </td>
                                            </tr>
                                        </table>
                                        <div class="col-lg-10 pull-right" id="divReply">
                                            <%--<asp:Panel ID="pneltest" runat="server" Width="100%" Height="300" ScrollBars="Vertical">--%>
                                                <asp:Repeater ID="rptChild" runat="server" OnItemDataBound="rptChild_ItemDataBound">
                                                    <ItemTemplate>
                                                        <table>
                                                            <tr>
                                                                <td rowspan="3">
                                                                    <asp:Image ID="imgDoctor" ImageUrl='<%# Eval("Image") %>' runat="server" Width="30px" Height="30px" />
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblDoctorName" runat="server" Text='<%#Eval("Name") %>' Font-Bold="true"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblReplyComment" runat="server" Text='<%#Eval("reply_comment") %>'></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblReplyDate" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <hr />
                                                        </table>
                                                        <asp:HiddenField ID="chfPostId" runat="server" Value="" />
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                      <%--      </asp:Panel>--%>
                                            <asp:TextBox ID="txtPostReply" runat="server" class="form-control" AutoPostBack="false" placeholder="Enter your reply"></asp:TextBox>
                                            <asp:Button ID="btnPostReply" runat="server" Text="Reply" class="btn btn-primary pull-right disabled" Style="margin-left: 5px" OnClick="btnPostReply_Click" Enabled="True" />
                                            <br />
                                            <br />
                                            <hr />
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <div id="myModal" class="modal fade" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Select Doctors</h4>
                                    </div>
                                    <div class="modal-body">

                                        <asp:RadioButton ID="rbSpecialization" runat="server" Text="By Specialization" GroupName="filter" class="form-control" Checked="false" onclick="__doPostBack('upFilter', '');" />
                                      <br />  <asp:RadioButton ID="rbDoctorName" runat="server" Text="By DoctorName" GroupName="filter" class="form-control" Checked="false" onclick="__doPostBack('upFilter', '');" />


                                        <asp:ScriptManager ID="ScriptManager1" runat="server" />
                                        <div id="Container">
                                            <asp:UpdatePanel runat="server" ID="upFilter" OnLoad="UpdatePanel1_Load" UpdateMode="Conditional" ChildrenAsTriggers="False">
                                                <ContentTemplate>
                                                    <asp:GridView ID="gdFilter" runat="server" Visible="false">
                                                        <Columns>
                                                            <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    <asp:CheckBox ID="cbFilter" runat="server" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>
                                                    </asp:GridView>
                                                </ContentTemplate>
                                                <Triggers>
                                                    <asp:AsyncPostBackTrigger ControlID="rbSpecialization" EventName="CheckedChanged" />
                                                    <asp:AsyncPostBackTrigger ControlID="rbDoctorName" EventName="CheckedChanged" />
                                                </Triggers>
                                            </asp:UpdatePanel>
                                        </div>

                                        <%--<div onclick="__doPostBack('upFilterButton', '');">
                                            <asp:UpdatePanel runat="server" ID="upFilterButton" OnLoad="upFilterButton_Load">
                                                <ContentTemplate>--%>
                                       <br /> <asp:Button ID="btnFetchFilterData" runat="server" Text="View" OnClick="btnFetchFilterData_Click" class="btn btn-success btn-lg btn-block active" />
                                        <%--  </ContentTemplate>
                                                </asp:UpdatePanel>--%>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal" onclick="refreshModal()">Close</button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>             
         
                </div>
            </div>
        </div>
    </div>
    

</asp:Content>

