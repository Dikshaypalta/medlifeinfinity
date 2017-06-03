<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDoctor.master" AutoEventWireup="true" CodeFile="DoctorDietPlanPunch.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

   
     <!--banner-->

<div class="page-top clearfix">
    <div class="container" style="background-color:#F0F8FF ; margin-left:2%;">
        <div class="row" style="margin-left:0.5px;">
            <!--page main heading-->
            <div class="col-lg-9 col-md-8 col-sm-7 ">
                <h2 class="entry-title text-danger">Punch Diet Plan</h2>  

            </div>  <br /><br /><br /><br />
            
           
             </div>
    
  
    
        <div class="form-group">
                    <label class="col-lg-3 control-label" style="color: #000000">Your Id:</label>
                    <div class="col-lg-8">
                         <%--<asp:TextBox ID="txtdoctorid" runat="server" class="form-control" placeh?1older="Doctor Id"></asp:TextBox>--%>
                        <asp:Label ID="txtentry" runat="server" Text="Label"></asp:Label>
               
                    </div><br /><br />
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label" style="color: #000000">Enter Patient Id:</label>
                    <div class="col-lg-8">
                         <asp:TextBox ID="txtuserid" runat="server" class="form-control" placeholder="Enter Patient ID" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter Patient id" ControlToValidate="txtuserid" ForeColor="#ff0000" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label" style="color: #000000">For How Many Days:</label>
                    <div class="col-lg-8">
                         <asp:TextBox ID="txtdays" runat="server" class="form-control" placeholder="Enter Days"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Only Numeric Value" Display="Dynamic" ControlToValidate="txtdays" ForeColor="Red" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter the no of days" ForeColor="#ff0000" ControlToValidate="txtdays"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-3 control-label" style="color: #000000">Morning:</label>
                    <div class="col-md-8">
                         <asp:TextBox ID="txtmorning" runat="server" class="form-control" placeholder="Enter Morning Diet Plan" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required to Fill the Morning Diet Plan" ControlToValidate="txtmorning" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label" style="color: #000000">Afternoon:</label>
                    <div class="col-md-8">
                         <asp:TextBox ID="txtafternoon" runat="server" class="form-control" placeholder="Enter Afternoon Diet Plan" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required to Fill the Afternoon Diet Plan" ControlToValidate="txtafternoon" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label" style="color: #000000">Evning:</label>
                    <div class="col-md-8">
                         <asp:TextBox ID="txtevning" runat="server" class="form-control" placeholder="Enter Evning Diet Plan" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required to Fill the Evening Diet Plan" ControlToValidate="txtevning" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label" style="color: #000000">Night:</label>
                    <div class="col-md-8">
                         <asp:TextBox ID="txtnight" runat="server" class="form-control" placeholder="Enter Night Diet Plan" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required to Fill the Night Diet Plan" ControlToValidate="txtnight" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label" style="color: #000000">Precautions:</label>
                    <div class="col-md-8">
                         <asp:TextBox ID="txtprecarious" runat="server" class="form-control" placeholder="What Not To Eat" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required to Fill the Precautions Diet Plan" ControlToValidate="txtnight" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>
               
                <div class="form-group">
                    <label class="col-md-3 control-label"></label>
                    <div class="col-md-8">
                        <asp:Button ID="btnsubmit" class="btn btn-primary active" runat="server" Text="Save"  OnClick="btnsubmit_Click"/>
                        <span></span>
                        <asp:Button ID="btnclear" class="btn btn-danger active" runat="server" Text="Clear" OnClick="btnclear_Click" /><br /><br />
                    </div>
                </div><br/>
               
    <div>
       </div>
               
              </div>
    </div>
   
   
 


    
     
  
</asp:Content>


