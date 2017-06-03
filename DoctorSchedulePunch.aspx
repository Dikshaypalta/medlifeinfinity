<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DoctorSchedulePunch.aspx.cs" Inherits="_Default" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor Schedule Punch</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <style type="text/css">
        .heading {
            font-size: x-large;
            color: whitesmoke;
            background-color: cadetblue;
        }

        .wrp {
            width: 100%;
            text-align: center;
        }

        .frm {
            text-align: left;
            width: 900px;
            margin: auto;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#ddlStart").change(function (event) {
                if ($('#ddlStart option:selected').index() == 0) {
                    $('#ddlEnd').attr("disabled", true);
                }
                else {
                    //var a = $("#ddlStart").val();
                    //var j = a;
                    //for (var i = a; i < 20; i++) {
                    //    j = ++a;
                    //    if (j >= 12)
                    //        $('#ddlEnd').append("<Option>" + j + ":00 P.M" + "</Option>");
                    //    else
                    //        $('#ddlEnd').append("<Option>" + j + ":00 A.M" + "</Option>");
                    //}
                    $('#ddlEnd').attr("disabled", false);
                }
            });
            $('#btnDisplay').click(function (event) {

            });
        });
    </script>
</head>
<body>
    <div class="col-lg-11 col-md-11 col-sm-10 col-xs-10 bhoechie-tab">
        <div class="bhoechie-tab-content active">
            <div class="row">
                <div class="col-lg-12 col-md-8  col-sm-12 col-xs-12 ">
                    <h4 class="text-center heading">Schedule Punch</h4>
                </div>
            </div>
        </div>
    </div>


        <div class="wrp">
            <div class="frm">
                <asp:Label ID="Label1" runat="server" Text="Your Id: "></asp:Label>
                <asp:Label ID="txtId" runat="server"></asp:Label>
               
                <asp:Label ID="lblStart" runat="server" Text="Start Time" Style="padding-left: 10px; padding-right: 10px"></asp:Label>
                <asp:DropDownList ID="ddlStart" runat="server">
                    <asp:ListItem Value="0">00:00</asp:ListItem>
                    <asp:ListItem Value="08">08:00 A.M</asp:ListItem>
                    <asp:ListItem Value="9">09:00 A.M</asp:ListItem>
                    <asp:ListItem Value="10">10:00 A.M</asp:ListItem>
                    <asp:ListItem Value="11">11:00 A.M</asp:ListItem>
                    <asp:ListItem Value="12">12:00 P.M</asp:ListItem>
                    <asp:ListItem Value="13">13:00 P.M</asp:ListItem>
                    <asp:ListItem Value="14">14:00 P.M</asp:ListItem>
                    <asp:ListItem Value="15">15:00 P.M</asp:ListItem>
                    <asp:ListItem Value="16">16:00 P.M</asp:ListItem>
                    <asp:ListItem Value="17">17:00 P.M</asp:ListItem>
                    <asp:ListItem Value="18">18:00 P.M</asp:ListItem>
                    <asp:ListItem Value="19">19:00 P.M</asp:ListItem>
                    <asp:ListItem Value="20">20:00 P.M</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="lblEnd" runat="server" Text="End Time" Style="padding-left: 10px; padding-right: 10px"></asp:Label>
                <asp:DropDownList ID="ddlEnd" runat="server" Width="90px">
                    <asp:ListItem Value="00">00:00</asp:ListItem>
                    <asp:ListItem Value="9">09:00 A.M</asp:ListItem>
                    <asp:ListItem Value="10">10:00 A.M</asp:ListItem>
                    <asp:ListItem Value="11">11:00 A.M</asp:ListItem>
                    <asp:ListItem Value="12">12:00 P.M</asp:ListItem>
                    <asp:ListItem Value="13">13:00 P.M</asp:ListItem>
                    <asp:ListItem Value="14">14:00 P.M</asp:ListItem>
                    <asp:ListItem Value="15">15:00 P.M</asp:ListItem>
                    <asp:ListItem Value="16">16:00 P.M</asp:ListItem>
                    <asp:ListItem Value="17">17:00 P.M</asp:ListItem>
                    <asp:ListItem Value="18">18:00 P.M</asp:ListItem>
                    <asp:ListItem Value="19">19:00 P.M</asp:ListItem>
                    <asp:ListItem Value="20">20:00 P.M</asp:ListItem>
                    <asp:ListItem Value="20">21:00 P.M</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="lblSlot" runat="server" Text="Select Slot" Style="padding-left: 10px; padding-right: 10px"></asp:Label>
                <asp:DropDownList ID="ddlSlot" runat="server" Width="90px">
                    <asp:ListItem Value="10">10 min</asp:ListItem>
                    <asp:ListItem Value="15">15 min</asp:ListItem>
                    <asp:ListItem Value="20">20 min</asp:ListItem>
                    <asp:ListItem Value="30">30 min</asp:ListItem>
                    <asp:ListItem Value="45">45 min</asp:ListItem>                    
                </asp:DropDownList>
                <asp:Button ID="btnDisplay" runat="server" Text="Show" Style="margin-left: 10px" BackColor="LightBlue" OnClick="btnDisplay_Click" />
                <asp:Button ID="btnPunch" runat="server" Text="Puch Schedule" Style="margin-left: 10px" BackColor="LightBlue" OnClick="btnPunch_Click"/>
            </div>
        </div>       <br />
        <div class="wrp">
            <div class="frm">
                <asp:GridView runat="server" ID="gdvSchedule" AutoGenerateColumns="false" RowStyle-HorizontalAlign="Center">  
                       <Columns>
                <asp:TemplateField HeaderText="Slot No">
                    <ItemTemplate>
                        <asp:Label ID="lblSlotNo" runat="server" Text='<%# Eval("SlotNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Time Slot">
                    <ItemTemplate>
                        <asp:Label ID="lblTimeSlot" runat="server" Text='<%# Eval("Time Slot") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Monday">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkMon" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                           <asp:TemplateField HeaderText="Tuesday">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkTue" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                           <asp:TemplateField HeaderText="Wedensday">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkWed" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                           <asp:TemplateField HeaderText="Thursday">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkThu" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                           <asp:TemplateField HeaderText="Friday">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkFri" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                           <asp:TemplateField HeaderText="Saturday">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkSat" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
                </asp:GridView>
            </div>
        </div>
 
</body>

</html>
