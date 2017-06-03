<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientAppointment.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Appointment Booking</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-2.1.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <style>
        body {
            background-color: lightblue;
        }

        h1 {
            color: blue;
        }
    </style>

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

</head>
<body style="border-style: none; font-family: 'Times New Roman', Times, serif;">

        <div>

            <h1 align="center">Appointment Booking </h1>
            <div class="col-md-11 col-sm-6 col-xs-12 personal-info">
            </div>
            <div class="form-group">
                <label class="col-lg-3 control-label">Doctor Id:</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtid" runat="server" MaxLength="100"></asp:TextBox>
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

                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <label class="col-lg-3 control-label">Gender:</label>
                <div class="col-lg-8">
                    <asp:RadioButtonList ID="rblgender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
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
                    </asp:DropDownList>

                </div>
            </div>

            <div class="form-group">
                <label class="col-lg-3 control-label">Doctor:</label>
                <div class="col-lg-8">
                    <asp:DropDownList ID="ddldoctor" runat="server" class="form-control" AutoPostBack="true">
                    </asp:DropDownList>
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
                            <table cellspacing="0" rules="all" border="1">
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
                    </asp:Repeater>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label"></label>
                <div class="col-md-8">
                    <asp:Button ID="btnbook" runat="server" Text="Book" class="btn btn-success" OnClick="btnbook_Click" />
                    <asp:Button ID="btnreset" runat="server" Text="Reset" class="btn btn-warning" OnClick="btnreset_Click"/>
                </div>
            </div>
        </div>

</body>
</html>
