<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePatient.master" AutoEventWireup="true" CodeFile="PatientBookAppointment.aspx.cs" Inherits="Default2" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


    <script type="text/javascript">
        function Validate(sender, args) {
            var gridView = document.getElementById("DoctorSchedule");
            var checkBoxes = gridView.getElementsByTagName("Id");
            for (var i = 0; i < checkBoxes.length; i++) {
                if (checkBoxes[i].type == "checkbox" && checkBoxes[i].checked) {
                    args.IsValid = true;
                    return;
                }
            }
            args.IsValid = false;
        }
    </script>

<div class="page-top clearfix" style="margin-right:30%;">
    <div class="container" style="margin-left:30px; margin-right:50px;background-color:#F0F8FF;">
        <div class="row">
            <!--page main heading-->
            <div class="col-lg-9 col-md-8 col-sm-7 ">
                <h1 class="entry-title" style="margin-left:30px;">Book Appointment</h1>   
            
            </div>
      

     
        <br /><br /><br />
            <div class="col-md-11 col-sm-6 col-xs-12 personal-info" style="margin-left:10%;background-color:#F0F8FF;">
        
            <div class="form-group">
                <label class="col-lg-3 control-label">Doctor Id:</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtid" runat="server" class="form-control" MaxLength="100" ReadOnly="true"></asp:TextBox>
                </div>
            </div>


            <div class="form-group">
                <label class="col-lg-3 control-label">Full Name:</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtfname" runat="server" placeholder="FullName" class="form-control" MaxLength="100"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label class="col-lg-3 control-label">Blood Group:</label>
                <div class="col-lg-8">

                    <asp:DropDownList ID="ddlbg" runat="server" class="form-control">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem Value="O+">O+</asp:ListItem>
                        <asp:ListItem Value="O-">O-</asp:ListItem>
                        <asp:ListItem Value="AB+">AB+</asp:ListItem>
                        <asp:ListItem Value="AB-">AB-</asp:ListItem>
                        <asp:ListItem Value="A+">A+</asp:ListItem>
                        <asp:ListItem Value="A-">A-</asp:ListItem>
                        <asp:ListItem Value="B+">B+</asp:ListItem>
                        <asp:ListItem Value="B-">B-</asp:ListItem>

                    </asp:DropDownList><br />
                </div>
            </div>


            <div class="form-group">
                <label class="col-lg-3 control-label">Gender:</label>
                <div class="col-lg-8">
                    <asp:RadioButtonList ID="rblgender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male&emsp;</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList><br />
                </div>
            </div>



            <div class="form-group">
                <label class="col-lg-3 control-label">Address:</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtaddress" runat="server" placeholder="Address" class="form-control" MaxLength="100" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-3 control-label">Mobile</label>
                <div class="col-md-2">
                    <asp:TextBox ID="txt91" PlaceHolder="+91" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtmobile" runat="server" placeholder="Mobile" class="form-control"></asp:TextBox>
                </div>
            </div>


            <div class="form-group">
                <label class="col-lg-3 control-label">Specialization:</label>
                <div class="col-lg-8">

                    <asp:DropDownList ID="ddlSpecialization" runat="server" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlSpecialization_SelectedIndexChanged">
                    </asp:DropDownList><br />

                </div>
            </div>

            <div class="form-group">
                <label class="col-lg-3 control-label">Doctor:</label>
                <div class="col-lg-8">
                    <asp:DropDownList ID="ddldoctor" runat="server" class="form-control" AutoPostBack="true">
                    </asp:DropDownList><br />
                </div>
            </div>
            <label class="col-lg-3 control-label">Select Date:</label>&nbsp;
                    <div class="col-lg-8">
                        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Please Click a day" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    </div>
            <div class="form-group">
                <label class="col-lg-3 control-label">Check Slot Time:</label>
                <div class="col-lg-8">
                    <asp:Repeater ID="rptSlotTime" runat="server">
                        <HeaderTemplate>
                            <table border="1">
                                <tr>
                                    <th scope="col" style="width: 80px">Book
                                    </th>
                                    <th scope="col" style="width: 80px">Schedule Id
                                    </th>
                                    <th scope="col" style="width: 120px">Slot Time
                                    </th>
                                    <th scope="col" style="width: 100px">Days
                                    </th>
                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="chkSelect" runat="server" AutoPostBack="true" OnCheckedChanged="chkSelect_CheckedChanged" GroupName="aa" />
                                </td>
                                <td>
                                    <asp:Label ID="lblId" runat="server" Text='<%# Eval("schedule_id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="lblSlot" runat="server" Text='<%# Eval("slot_time") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="lblDay" runat="server" Text='<%# Eval("days") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater><br />
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label"></label>
                <div class="col-md-8">
                    <asp:Button ID="btnbook" runat="server" Text="Book" class="btn btn-success active" OnClick="btnbook_Click" />
                    <asp:Button ID="btnreset" runat="server" Text="Reset" class="btn btn-danger active" OnClick="btnreset_Click"/><br /><br /><br />
                </div>
            </div>
        </div>

</div>
        </div>
    </div>
   

</asp:Content>

