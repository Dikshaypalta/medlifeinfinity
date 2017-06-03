<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDoctor.master" AutoEventWireup="true" CodeFile="DoctorEditProfile.aspx.cs" Inherits="Default2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


    <!--banner-->

<div class="page-top clearfix">
    <div class="container" style="margin-left:5%; margin-right:50px;">
        <div class="row">
            <!--page main heading-->
            <div class="col-lg-9 col-md-8 col-sm-7 ">
                <h1 class="entry-title">Edit Profile</h1>   
            
            </div>
         <%--   <div class="col-lg-3 col-md-4 col-sm-5 ">--%>

               <%-- <form class="form-horizontal" role="form" runat="server" > --%>
             
    
     <div class="container form-horizontal" style="padding-top: 0px;background-color:#F0F8FF">
           
             <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="text-center">
                   <%-- <img src="images/icon.png" height="200" width="200" class="avatar img-circle " alt="avatar" />--%>
                    <asp:Image ID="Image1" Height="200" Width="200" runat="server" class="avatar img-circle " alt="No Image To Show"/>
                    
              <h6>Upload a different photo</h6>
                    <asp:FileUpload ID="FileUpload1"  runat="server" class="txt text-center btn btn-primary center-block well well-sm" accept="image/x-png, image/gif, image/jpeg, image/jpg" ClientIDMode="Static" onChange="PreviewImage(1);"/>
                   <%-- <input type="file" class="text-center center-block well well-sm" accept="image/x-png, image/gif, image/jpeg" />--%>
                  <%--<asp:Button ID="btnupload" class="btn btn-primary" runat="server" Text="Upload" OnClick="btnupload_Click" />--%>
                </div>
            </div>

            <div class="col-md-8 col-sm-6 col-xs-12 personal-info" >

                <h3 style="color:red;">Personal Details:</h3>   <br />
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
              <%--  <div class="form-group">
                    <label class="col-lg-3 control-label">Email:</label>
                    <div class="col-lg-8">
                         <asp:TextBox ID="txtemail" ReadOnly="true" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvemail" runat="server" CssClass="txt2" ErrorMessage="Please Enter Email" ControlToValidate="txtemail" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="remail" runat="server" CssClass="txt2" ControlToValidate="txtemail" ErrorMessage="Enter Valid Email" Display="Dynamic" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                    </div>
                </div>--%>
               
                <div class="form-group">
                    <label class="col-lg-3 control-label">Gender:</label>
                    <div class="col-lg-4">
                        <%--<asp:RadioButtonList ID="rdgender" runat="server" RepeatDirection="Horizontal" >
                            <asp:ListItem>&nbsp;&nbsp;Male&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:ListItem>
                            <asp:ListItem>&nbsp;&nbsp;Female</asp:ListItem>
                        </asp:RadioButtonList>--%>
                        <asp:RadioButton ID="rdmale" runat="server" GroupName="Gender"/>&nbsp;Male&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="rdfemale" runat="server" GroupName="Gender"/>&nbsp;Female
                         
                        
                    </div>
                </div>
           
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
                         <asp:TextBox ID="txtage" Visible="false"  runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
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
                    <label class="col-md-3 control-label">Highest Qualification:</label>
                    <div class="col-md-8">
                         <asp:DropDownList ID="DropDownCheckBoxes1" class="form-control" runat="server">
                   <Items>
                              <asp:ListItem Text="B.D.S." Value="B.D.S."></asp:ListItem>
                    <asp:ListItem Text="M.B.B.S" Value="M.B.B.S"></asp:ListItem>
             
                    <asp:ListItem Text="B.H.M.S." Value="B.H.M.S."></asp:ListItem>
                    <asp:ListItem Text="B.A.M.S." Value="B.A.M.S."></asp:ListItem>
                    <asp:ListItem Text="M.D." Value="M.D."></asp:ListItem>
                    <asp:ListItem Text="M.S." Value="M.S."></asp:ListItem>
                    <asp:ListItem Text="D.M" Value="D.M"></asp:ListItem>
                    <asp:ListItem Text="B.Pharma" Value="B.Pharma"></asp:ListItem>
                    <asp:ListItem Text="B.Sc. Nursing" Value="B.Sc. Nursing"></asp:ListItem>
                    <asp:ListItem Text="B.P.T" Value="B.P.T"></asp:ListItem>
                    <asp:ListItem Text="B.O.T" Value="B.O.T"></asp:ListItem>
                    <asp:ListItem Text="B.U.M.S Nursing" Value="B.U.M.S Nursing"></asp:ListItem>
                    <asp:ListItem Text="Optometry" Value="Optometry"></asp:ListItem>
                    <asp:ListItem Text="Ophthalmic Assistant Course" Value="Ophthalmic Assistant Course"></asp:ListItem>
                </Items>
            </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label">About You:</label>
                    <div class="col-md-8">
                         <asp:TextBox ID="txtaboutdoc" runat="server" class="form-control" placeholder="About You" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvaboutdoc" runat="server" CssClass="txt2" ErrorMessage="Please Enter about Yourself" ControlToValidate="txtaboutdoc" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
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
        
<%--        
    </form>--%>


 <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
 <script type="text/javascript">
     function Validate() {
         var isValid = false;
         var regex = /^[a-zA-Z ]*$/;
         isValid = regex.test(document.getElementById("<%=txtname.ClientID %>").value);
         document.getElementById("<%=txtname.ClientID %>").focus();
         document.getElementById("spnError").style.display = !isValid ? "block" : "none";

         return isValid;

     }
    </script>
      <script lang="javascript" type="text/javascript">

          function UploadFile() {
              var value = $("#FileUpload1").val();
              if (value != '') {
                  $("#ImageUploadform1").submit();
              }
          };

</script> 

    <script type="text/javascript">
        function PreviewImage(no) {
            var oFReader = new FileReader();
            oFReader.readAsDataURL(document.getElementById("FileUpload" + no).files[0]);

            oFReader.onload = function (oFREvent) {
                document.getElementById("Image" + no).src = oFREvent.target.result;
            };
        }
</script>







               
            </div>
        </div>
    </div>
<%--</div>--%>
  
</asp:Content>