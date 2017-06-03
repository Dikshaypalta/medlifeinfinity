<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePatient.master" AutoEventWireup="true" CodeFile="ViewDietplan.aspx.cs" Inherits="_Default" %>



<asp:Content ID="Content11" ContentPlaceHolderID="ContentPlaceHolder11" Runat="Server">


    <%-- <link href="css/bootstrap.min.css" rel="stylesheet" />--%>
    <link rel="stylesheet" href="css1/reset.css" />
    <link rel="stylesheet" href="css1/pricing-tables.css" />
    <link rel="stylesheet" href="css1/ie.css" />
    <style type="text/css">
        .form-horizontal {
            background-color: #FFFFFF;
        }
    <style>
	.pricing-table{margin: 0 auto;top: 20px;position: relative;}</style>
<meta name="robots" content="noindex,follow" />
    <%--<link rel="stylesheet" href="css2/normalize.css" />
    <link rel="stylesheet" href="css2/style.css" />--%>
     <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"/>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#<%=txtCountryName.ClientID%>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "ViewDietplan.aspx/GetEmployee",
                        data: "{'pre' :'" + request.term + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {
                            response($.map(data.d, function (item) {

                                return {
                                    Name: item.Name,
                                    Image: item.Image,
                                    Id: item.Id,
                                    json: item
                                }
                            }))
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            alert(textStatus);
                        }
                    });
                },
                focus: function (event, ui) {
                    $('#<%=txtCountryName.ClientID%>').val(ui.item.Name);
                    return false;
                },
                select: function (event, ui) {
                    console.log(ui);
                    $('#<%=txtCountryName.ClientID%>').val(ui.item.Name);
                    $.ajax({
                        data: '{"Id":"' + ui.item.Id + '"}',
                        type: "POST",
                        url: "ViewDietplan.aspx/GetDietPaln",
                        contentType: "application/json",
                        dataType: "json",
                        success: function (Result) {
                            $('#panel1').show();
                            $('#head').show();
                            var table = $("#panel1 table").eq(0).clone(true);
                            var diet = Result.d;
                            $("#panel1 table").eq(0).remove();
                            $(diet).each(function () {
                                $(".Morning", table).html(this.Morning);
                                $(".Afternoon", table).html(this.Afternoon);
                                $(".Evening", table).html(this.Evening);
                                $(".Night", table).html(this.Night);
                                $(".Precautions", table).html(this.Precautions);
                                $("#panel1").append(table).append("<br />");
                                table = $("#panel1 table").eq(0).clone(true);
                            });
                        },
                        error: function (response) {
                            alert(response);
                        },
                        async: false
                    });
                    return false;
                }
            }).data("ui-autocomplete")._renderItem = function (ul, item) {
                return $("<li>")
                .append("<div><a><img style = 'height:50px;width:50px' src ='" + item.Image + "'/>" +
                 item.Name + "</a></div>").appendTo(ul);
            };

            $(document).ready(function () {
                $('#panel1').hide();
                $('#head').hide();
            });
        });
    </script>
 

        <style>
            .ui-autocomplete {
                text-align: left;
            }

            li {
                min-height: 45px;
               
            }
            .fontsize
            {
                font-size:30px;
            }
            .spac
            {
               
                padding-right:40px;
                font-weight:bolder;
            }
            .fontsize1
            {
                font-size:20px;
            }
            .spac1
            {
               
                padding-right:60px;
            }
        </style>
        <div style="margin-left:5%;">
        <table>
            <tr>
                <td class="fontsize">Doctor : &emsp;</td>
                <td>
                    <div class="ui-widget" style="text-align: left">
                        <asp:TextBox ID="txtCountryName" runat="server" Width="350px" Height="30px" Font-Size="20px" />
                    </div>
                </td>
            </tr>
        </table><br /><br /><br />
    <%--     <table id="head">
                    <tr>
                        <td>
                            <h2 class="fontsize spac">Morning</h2>
                        </td>
                        <td>
                            <h2 class="fontsize spac">Afternoon</h2>
                        </td>
                        <td>
                            <h2 class="fontsize spac">Evening</h2>
                        </td>
                        <td>
                            <h2 class="fontsize spac">Night</h2>
                        </td>
                        <td>
                            <h2 class="fontsize spac">Precautions</h2>
                        </td>
                    </tr>
             </table><br />--%>
        
                  <table class="pricing-table">
                <thead>
                    <tr class="plan">
                        <td class="green">
                            <h2>Morning</h2>
                        </td>
                        <td class="orange">
                            <h2>Afternoon</h2>
                        </td>
                        <td class="green">
                            <h2>Evening</h2>
                        </td>
                        <td class="orange">
                            <h2>Night</h2>
                        </td>
                        <td class="orange">
                            <h2>Precautions</h2>
                        </td>
                    </tr>
                    </thead>
                      </table>
                    <br />
                
            <div id="panel1">
                
                    <asp:Repeater ID="rptDietPlan" runat="server">
                    <ItemTemplate>
                           
                       <table class="pricing-table">   
                <thead>
               
                    <tr class="price">
                        <td class="green">
                        <span class="Morning"><%# Eval("Morning") %></span>
                        </td>
                        <td class="orange">
                            <span class="Afternoon"><%# Eval("Afternoon") %></span>
                        </td>
                        <td class="green">
                          <span class="Evening"><%# Eval("Evening") %></span>
                        </td>
                        <td class="orange">
                             <span class="Night"><%# Eval("Night") %></span>
                        </td>
                        <td class="orange">
                           <span class="Precautions"><%# Eval("Precautions") %></span>
                        </td>
                    </tr>
                </thead>
            </table>

                        </ItemTemplate>
                    </asp:Repeater>
         
        </div>
   </div><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>

