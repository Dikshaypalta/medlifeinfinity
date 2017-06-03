<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePatient.master" AutoEventWireup="true" CodeFile="PatientFeedback.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@   Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit"  TagPrefix="asp"%>

<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder7" Runat="Server">
     <style type="text/css">
        .a
        {
            height:35px;
        }
       
.blankstar
{
background-image: url(images/blank_star.png);
width: 16px;
height: 16px;
}
.waitingstar
{
background-image: url(images/half_star.png);
width: 16px;
height: 16px;
}
.shiningstar
{
background-image: url(images/shining_star.png);
width: 16px;
height: 16px;
}
    </style>
          <div class="container" style="margin-left:10%;">
        <div class="row">
            <div class="col-lg-11 col-md-11 col-sm-10 col-xs-10 bhoechie-tab">
                <div class="bhoechie-tab-content active">
                    <div class="row">
                        <div class="col-lg-8 col-md-8  col-sm-12 col-xs-12">
                            <h2 class="text-danger">Patient To Doctor FeedBack</h2>
                        </div>
                    </div>
                </div>
            </div>
            
          <div class="col-lg-11 col-md-11 col-sm-10 col-xs-10 bhoechie-tab">
                <div class="bhoechie-tab-content active">
             
                        <hr />
                        <div class="pa0 col-lg-12">
                            <div class="form-group col-lg-8 col-md-6">
                           <label>Doctor Name:<asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label>
                      <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <asp:TextBox ID="txtDoctorName" runat="server" CssClass="a"   placeholder="Enter Doctor Name" Width="550px"></asp:TextBox>
                        <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server"
                             MinimumPrefixLength="1"
                         CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                            ServiceMethod="SearchCustomers"
                           TargetControlID="txtDoctorName"
                              FirstRowSelected = "false"></asp:AutoCompleteExtender>

                <asp:RequiredFieldValidator ID="rfvDName" Display="Dynamic" runat="server" ControlToValidate="txtDoctorName" ErrorMessage="Please Enter The Doctor Name" ForeColor="#009900"></asp:RequiredFieldValidator>
                                </label>
                                 </div>
                        </div>
                               <%-- &nbsp;<asp:TextBox ID="txtDoctorName" runat="server" placeholder="Enter Doctor Name" class="form-control" MaxLength="100"></asp:TextBox>
                            </div>
                        </div>
                        <%-- <div class="pa0 col-lg-12">
                            <div class="form-group col-lg-12 col-md-6">
                                <label>E</label>
                                <asp:TextBox ID="txtEmailId" runat="server" placeholder="Enter Email Id" class="form-control" MaxLength="200"></asp:TextBox>
                            </div>
                        </div>--%>
                        <div class="pa0 col-lg-12">
                            <div class="form-group col-lg-4 col-md-6">
                                <label>Behaviour:<asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                </label>
                                &nbsp;<asp:RequiredFieldValidator ID="rfvBehaviour" runat="server" ControlToValidate="ddlBehaviour"
                ErrorMessage="Please choose any option" InitialValue="Select" ForeColor="#009900"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddlBehaviour" Width="550px" runat="server" class="form-control" >
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>Good</asp:ListItem>
                                    <asp:ListItem>Very Good</asp:ListItem>
                                    <asp:ListItem>Excellent</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                             </div>
                         <div class="pa0 col-lg-12">
                            <div class="form-group col-lg-4 col-md-6">
                                <label>Rating:
                                </label>
                                <asp:Rating ID="Rating1" runat="server" AutoPostBack="true" StarCssClass="blankstar" 
                              WaitingStarCssClass="waitingstar" FilledStarCssClass="shiningstar" 
                              EmptyStarCssClass="blankstar">
                              </asp:Rating>
                                          <br />
                            </div>
                        </div>
                        <div class="pa0 col-lg-12">
                            <div class="form-group col-lg-4 col-md-6">
                                <label>Comment:<asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                </label>
                                 &nbsp;<asp:RequiredFieldValidator ID="rfvComment" runat="server" ControlToValidate="txtComment" ErrorMessage="Please Enter the Comment" ForeColor="#009900"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtComment" runat="server" Width="550px" placeholder="Enter Comment" class="form-control" MaxLength="10" TextMode="MultiLine"></asp:TextBox>
                               
                            </div>
                        </div>
                        
                        <div class="pa0 col-lg-12">
                            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                 <asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-success active" OnClick="btnSave_Click" />
                                <asp:Button ID="btnCancel1" runat="server" Text="Cancel" class="btn btn-default active" OnClick="btnCancel1_Click" />
                                <br /> <br /> <br /> <br />
                            </div>
                        </div>
             
                </div>
            </div>
        </div>
    </div>


</asp:Content>

