<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePatient.master" AutoEventWireup="true" CodeFile="PatientChangePwd.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content10" ContentPlaceHolderID="ContentPlaceHolder10" Runat="Server">
        <br /><br /><br /><br /><br />
    <div style="margin-left:20%; margin-right:20%;">
                          <span class="help-block"></span>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <asp:TextBox ID="txtoldpwd" runat="server" placeholder="Enter Old Password" class="form-control" MaxLength="200" TextMode="Password"></asp:TextBox>
                           
                        </div>

                         <span class="help-block"></span>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <asp:TextBox ID="txtnewpwd" runat="server" placeholder="Enter Password [6 to 10 characters which includes !/@/#/$/%/^/&/* AND Digits]" class="form-control" MaxLength="200" TextMode="Password"></asp:TextBox>
                        </div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="txtnewpwd" runat="server" ErrorMessage="Special Character and Numeric should included. Or It Should be in between 6 to 10" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*\W)\S{6,10}$" Display="Dynamic"></asp:RegularExpressionValidator>

                        <span class="help-block"></span>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <asp:TextBox ID="txtrepwd" runat="server" placeholder="Re-Type Password" class="form-control" MaxLength="200" TextMode="Password"></asp:TextBox>
                        </div>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Re-Type Password Again !!" ControlToValidate="txtrepwd" ControlToCompare="txtnewpwd" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>

        <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                        <br />
                               <asp:Button ID="btnRegister" runat="server" Text="Change" class="btn btn-lg btn-info btn-block btnfont active" OnClick="btnRegister_Click"/>
                    
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        </div>

</asp:Content>

