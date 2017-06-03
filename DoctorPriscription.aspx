<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDoctor.master" AutoEventWireup="true" CodeFile="DoctorPriscription.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder7" Runat="Server">
<style type="text/css">
    .a
    {
    background-image:url("images/nabi1.jpg");
    background-repeat:no-repeat;
    }
    .txtheight
    {
        height:40px;
    }
</style>

<div class="appoint-page clearfix">
    <div class="entry-content text-center">
                        <h2 >Give Prescription</h2>
                         </div>
    <div class="container a">
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <article class="page type-page status-publish hentry clearfix">
                    
                </article>

                <!--appointment form-->
                <div class="appoint-section clearfix"  style="margin-left:40%;">
                   
                   
                        <div class="row">
                            <div class="col-md-6">
                              <asp:TextBox ID="txtpid" name="name"  class="required txtheight form-control" placeholder="Enter Patient Id" title="* Please Enter Patient ID" runat="server" Width="600"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Digits Only " ControlToValidate="txtpid" ForeColor="Red" Display="Dynamic" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                            </div>
                            </div><br />
                    <div class="row">
                            <div class="col-md-6">
                                 <asp:TextBox ID="txtname" name="name"  class="required  txtheight form-control" placeholder="Enter Patient Name" title="* Please Enter Patient Name" runat="server" Width="600"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="rgvName" runat="server" ErrorMessage="Invalid Name" ForeColor="Red"
                        ValidationGroup="1" ControlToValidate="txtname" ValidationExpression="^([a-zA-z\s]{3,50})$"
                        Display="Dynamic"></asp:RegularExpressionValidator>   
                            </div>
                        </div><br />
                    <div class="row">
                             <div class="col-md-6">
                               <asp:TextBox ID="txtduration" name="name"  class="required  txtheight form-control" placeholder="Enter Dose Duration" title="* Please Enter Dose Duration" runat="server" Width="600"></asp:TextBox>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-6">
                                <asp:TextBox ID="txtmedicinename" name="name"  class="required  txtheight form-control" placeholder="Enter Medicine Name" title="* Please Enter Medicine Name" runat="server" Width="600"></asp:TextBox>
                                </div>
                            </div><br />
                    <div class="row">
                            <div class="col-md-6">
                                 <asp:TextBox ID="txtqty" name="number"  class="required  txtheight form-control" placeholder="Enter Quantity" title="* Please Enter Quantity" runat="server" Width="600"></asp:TextBox>
                                
                            </div><br />
                        </div><br />
                         <div class="row" style="margin-left:-32px;">
                            <asp:Button ID="Button1" runat="server" Text="Save" Width="600" name="Submit" class="btn btn-success active" OnClick="Button1_Click"/>
                           
                      
                         
                        </div>
                        </div>
           
                </div>
            </div>
            <div class="col-sm-1"></div>
        </div>

    </div>
</div>


</asp:Content>