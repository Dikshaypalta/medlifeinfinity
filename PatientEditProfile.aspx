<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePatient.master" AutoEventWireup="true" CodeFile="PatientEditProfile.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">




    
<div class="page-top clearfix" style="margin-right:30%;">
    <div class="container form-horizontal" style="margin-left:30px; margin-right:50px;background-color:#F0F8FF;">
        <div class="row">
            <!--page main heading-->
            <div class="col-lg-9 col-md-8 col-sm-7 ">
                <h1 class="entry-title" style="margin-left:30px;">Edit Profile</h1>   
            
            </div>


        <%--<div class="container" style="padding-top: 0px;">
            <h1 class="page-header">Edit Profile</h1>--%>
            
            <div class="col-md-4 col-sm-6 col-xs-12 form-horizontal" style="background-color:#F0F8FF">
                <div class="text-center">
                    
                    
                    <asp:Image ID="Image1" runat="server" class="avatar img-circle " alt="avatar" Height="200" Width="200" ImageUrl="~/images/icon.png" />
                    <h6>Your Photo</h6>
                    <asp:FileUpload ID="FileUpload1" runat="server" class="txt text-center btn btn-primary center-block well well-sm" accept="image/x-png, image/gif, image/jpeg,image/jpg" />        

                </div>
            </div>


           <div class="col-md-8 col-sm-6 col-xs-12 personal-info">
                
      <div class="form-group">
                    <label class="col-lg-3 control-label">Name:</label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtname"  runat="server" class="form-control" placeholder="Enter Name"></asp:TextBox>
                         <span id="spnError" style="color: Red; font-weight:bold; display:none">*Valid characters: Alphabets and space only.</span>
                  <asp:RequiredFieldValidator ID="rfvname" runat="server" CssClass="txt2" ErrorMessage="Please Enter Name" ControlToValidate="txtname" BorderColor="#990000" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                       
                        </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">Contact Number:</label>
                    <div class="col-lg-8">
                         <asp:TextBox ID="txtcontactno" runat="server" class="form-control" placeholder="Contact Number" ></asp:TextBox>
                        <span id="spnError1" style="color: Red; font-weight:bold; display:none">Enter Valid Number .</span>
                        <asp:RequiredFieldValidator ID="rfvnumber" runat="server" CssClass="txt2" ErrorMessage="Please Enter Contact Number" ControlToValidate="txtcontactno" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="recontactno" runat="server" CssClass="txt2" ControlToValidate="txtcontactno" ErrorMessage="Enter Valid Number" Display="Dynamic" SetFocusOnError="True" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$"></asp:RegularExpressionValidator>
                    </div>
                </div>
             
               
                <div class="form-group">
                    <label class="col-lg-3 control-label">Gender:</label>
                    <div class="col-lg-4">
                    
                        <asp:RadioButton ID="rdmale" runat="server" Checked="true" GroupName="Gender"/>&nbsp;Male&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="rdfemale" runat="server" GroupName="Gender"/>&nbsp;Female
                         
                        
                    </div>
                </div>
           
                
               <asp:TextBox ID="txtage" runat="server" Visible="false"></asp:TextBox>
                <div class="form-group">
                    <asp:Label ID="lbldob" class="col-md-3 control-label txt1" runat="server" Text="Date Of Birth:"></asp:Label>
                  
                    <div class="col-md-2">
                        <asp:DropDownList ID="dddate" runat="server" class="form-control" >
                            <asp:ListItem>Date</asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                    <asp:ListItem Value="5">5</asp:ListItem>
                                    <asp:ListItem Value="6">6</asp:ListItem>
                                    <asp:ListItem Value="7">7</asp:ListItem>
                                    <asp:ListItem Value="8">8</asp:ListItem>
                                    <asp:ListItem Value="9">9</asp:ListItem>
                                    <asp:ListItem Value="10">10</asp:ListItem>
                                    <asp:ListItem Value="11">11</asp:ListItem>
                                    <asp:ListItem Value="12">12</asp:ListItem>
                                    <asp:ListItem Value="13">13</asp:ListItem>
                                    <asp:ListItem Value="14">14</asp:ListItem>
                                    <asp:ListItem Value="15">15</asp:ListItem>
                                    <asp:ListItem Value="16">16</asp:ListItem>
                                    <asp:ListItem Value="17">17</asp:ListItem>
                                    <asp:ListItem Value="18">18</asp:ListItem>
                                    <asp:ListItem Value="19">19</asp:ListItem>
                                    <asp:ListItem Value="20">20</asp:ListItem>
                                    <asp:ListItem Value="21">21</asp:ListItem>
                                    <asp:ListItem Value="22">22</asp:ListItem>
                                    <asp:ListItem Value="23">23</asp:ListItem>
                                    <asp:ListItem Value="24">24</asp:ListItem>
                                    <asp:ListItem Value="25">25</asp:ListItem>
                                    <asp:ListItem Value="26">26</asp:ListItem>
                                    <asp:ListItem Value="27">27</asp:ListItem>
                                    <asp:ListItem Value="28">28</asp:ListItem>
                                    <asp:ListItem Value="29">29</asp:ListItem>
                                    <asp:ListItem Value="30">30</asp:ListItem>
                                    <asp:ListItem Value="31">31</asp:ListItem>
                             </asp:DropDownList>
                    </div>
                     <div class="col-md-3">
                        <asp:DropDownList ID="ddmonth" runat="server" class="form-control" >
                            <asp:ListItem>Month</asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                    <asp:ListItem Value="5">5</asp:ListItem>
                                    <asp:ListItem Value="6">6</asp:ListItem>
                                    <asp:ListItem Value="7">7</asp:ListItem>
                                    <asp:ListItem Value="8">8</asp:ListItem>
                                    <asp:ListItem Value="9">9</asp:ListItem>
                                    <asp:ListItem Value="10">10</asp:ListItem>
                                    <asp:ListItem Value="11">11</asp:ListItem>
                                    <asp:ListItem Value="12">12</asp:ListItem>
                                    
                             </asp:DropDownList>
                    </div>
                     <div class="col-md-2">
                        <asp:DropDownList ID="ddyear" runat="server" class="form-control" >
                            <asp:ListItem>Year</asp:ListItem>
                                    <asp:ListItem Value="1990">1990</asp:ListItem>
                                    <asp:ListItem>1989</asp:ListItem>
                                    <asp:ListItem>1988</asp:ListItem>
                                    <asp:ListItem>1987</asp:ListItem>
                                    <asp:ListItem>1986</asp:ListItem>
                                    <asp:ListItem>1985</asp:ListItem>
                            <asp:ListItem>1984</asp:ListItem>
                            <asp:ListItem>1983</asp:ListItem>
                            <asp:ListItem>1982</asp:ListItem>
                            <asp:ListItem>1981</asp:ListItem>
                            <asp:ListItem>1980</asp:ListItem>
                            <asp:ListItem>1979</asp:ListItem>
                            <asp:ListItem>1978</asp:ListItem>
                            <asp:ListItem>1977</asp:ListItem>
                            <asp:ListItem>1976</asp:ListItem>
                            <asp:ListItem>1975</asp:ListItem>
                            <asp:ListItem>1974</asp:ListItem>
                            <asp:ListItem>1973</asp:ListItem>
                            <asp:ListItem>1972</asp:ListItem>
                            <asp:ListItem>1971</asp:ListItem>
                            <asp:ListItem>1970</asp:ListItem>
                            <asp:ListItem>1969</asp:ListItem>
                            <asp:ListItem>1968</asp:ListItem>
                            <asp:ListItem>1967</asp:ListItem>
                            <asp:ListItem>1966</asp:ListItem>
                            <asp:ListItem>1965</asp:ListItem>
                            <asp:ListItem>1964</asp:ListItem>
                            <asp:ListItem>1963</asp:ListItem>
                            <asp:ListItem>1962</asp:ListItem>
                            <asp:ListItem>1961</asp:ListItem>
                            <asp:ListItem>1960</asp:ListItem>
                            <asp:ListItem>1959</asp:ListItem>
                            <asp:ListItem>1958</asp:ListItem>
                            <asp:ListItem>1957</asp:ListItem>
                            <asp:ListItem>1956</asp:ListItem>
                            <asp:ListItem>1955</asp:ListItem>
                            <asp:ListItem>1954</asp:ListItem>
                            <asp:ListItem>1953</asp:ListItem>
                            <asp:ListItem>1952</asp:ListItem>
                            <asp:ListItem>1951</asp:ListItem>
                            <asp:ListItem>1950</asp:ListItem>
                             </asp:DropDownList>
                    </div>
                </div>
                   <div class="form-group">
                    
                    <div class="col-lg-3">
                         <asp:TextBox ID="txtage1" Visible="false"  runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                    </div>
                 
                </div>
                 <div class="form-group">
                    <label class="col-md-3 control-label">Blood Group:</label>
                    <div class="col-md-8">
                        <asp:DropDownList ID="ddbgroup" runat="server" class="form-control">
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
                         <asp:RequiredFieldValidator ID="rfvbgroup" runat="server" CssClass="txt2" ErrorMessage="Please Select Your Blood Group" ControlToValidate="ddbgroup" Display="Dynamic" InitialValue="--Select--" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label">Address:</label>
                    <div class="col-md-8">
                         <asp:TextBox ID="txtaddress" runat="server" class="form-control" placeholder="Enter Address" TextMode="MultiLine"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvaddress" runat="server" CssClass="txt2" ErrorMessage="Please Enter Address" ControlToValidate="txtaddress" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label">Country:</label>
                    <div class="col-md-8">
                          <asp:DropDownList ID="ddcntry" runat="server" class="form-control">
                                <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem Value="India">India</asp:ListItem>
                                </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="rfvcountry" runat="server" CssClass="txt2" ErrorMessage="Please Select Country" ControlToValidate="ddcntry" Display="Dynamic" InitialValue="--Select--" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label">State:</label>
                    <div class="col-md-8">
                        <asp:DropDownList ID="ddstate" runat="server" class="form-control">
                            <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem Value="Andhra Pradesh">Andhra Pradesh</asp:ListItem>
                                    <asp:ListItem Value="Arunachal Pradesh">Arunachal Pradesh</asp:ListItem>
                                    <asp:ListItem Value="Assam">Assam</asp:ListItem>
                                    <asp:ListItem Value="Bihar">Bihar</asp:ListItem>
                                    <asp:ListItem Value="Chhattisgarh">Chhattisgarh</asp:ListItem>
                                    <asp:ListItem Value="Goa">Goa</asp:ListItem>
                                    <asp:ListItem Value="Gujarat">Gujarat</asp:ListItem>
                                    <asp:ListItem Value="Haryana">Haryana</asp:ListItem>
                                    <asp:ListItem Value="Himachal Pradesh">Himachal Pradesh</asp:ListItem>
                                    <asp:ListItem Value="Jammu & Kashmir">Jammu & Kashmir</asp:ListItem>
                                    <asp:ListItem Value="Jharkhand">Jharkhand</asp:ListItem>
                                    <asp:ListItem Value="Karnataka">Karnataka</asp:ListItem>
                                    <asp:ListItem Value="Kerala">Kerala</asp:ListItem>
                                    <asp:ListItem Value="Madhya Pradesh">Madhya Pradesh</asp:ListItem>
                                    <asp:ListItem Value="Maharashtra">Maharashtra</asp:ListItem>
                                    <asp:ListItem Value="Manipur">Manipur</asp:ListItem>
                                    <asp:ListItem Value="Meghalaya">Meghalaya</asp:ListItem>
                                    <asp:ListItem Value="Mizoram">Mizoram</asp:ListItem>
                                    <asp:ListItem Value="Nagaland">Nagaland</asp:ListItem>
                                    <asp:ListItem Value="Odisha">Odisha (Orissa)</asp:ListItem>
                                    <asp:ListItem Value="Punjab">Punjab</asp:ListItem>
                                    <asp:ListItem Value="Rajasthan">Rajasthan</asp:ListItem>
                                    <asp:ListItem Value="Sikkim">Sikkim</asp:ListItem>
                                    <asp:ListItem Value="Tamil Nadu">Tamil Nadu</asp:ListItem>
                                    <asp:ListItem Value="Telangana">Telangana</asp:ListItem>
                                    <asp:ListItem Value="Tripura">Tripura</asp:ListItem>
                                    <asp:ListItem Value="Uttar Pradesh">Uttar Pradesh</asp:ListItem>
                                    <asp:ListItem Value="Uttarakhand">Uttarakhand</asp:ListItem>
                                    <asp:ListItem Value="West Bengal">West Bengal</asp:ListItem>
                                   

                        </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="rfvstate" runat="server" CssClass="txt2" ErrorMessage="Please Select State" ControlToValidate="ddstate" Display="Dynamic" InitialValue="--Select--" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>
             
       
                   <div class="form-group">
                    <label class="col-md-3 control-label">City:</label>
                    <div class="col-md-8">
                         <asp:TextBox ID="txtcity" runat="server" class="form-control" placeholder="Enter City"></asp:TextBox>
                         
                        <asp:RequiredFieldValidator ID="rfvcity" runat="server" CssClass="txt2" ErrorMessage="Please Enter City" ControlToValidate="txtcity" Display="Dynamic" SetFocusOnError="True" ></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="recity" runat="server" CssClass="txt2" ControlToValidate="txtcity" ErrorMessage="Enter Alphanumeric only" Display="Dynamic" SetFocusOnError="True" ValidationExpression="^([a-zA-Z\u0080-\u024F]+(?:. |-| |'))*[a-zA-Z\u0080-\u024F]*$" ></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label"></label>
                    <div class="col-md-8">
                        <asp:Button ID="btnsave" runat="server" Text="Save Changes" class="btn btn-primary active" OnClientClick="return Validate(); return false;" OnClick="btnsave_Click" />
                        
                        <span></span>
                        <input class="btn btn-success btn-lg active" value="Reset" type="reset" />
                    
                        
                    </div>
                </div>
             </div>
     


 </div>
        </div>
    </div>
</asp:Content>

