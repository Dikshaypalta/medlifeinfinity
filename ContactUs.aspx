<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDoctor.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content10" ContentPlaceHolderID="ContentPlaceHolder10" Runat="Server">

  <style type="text/css">
      .buttonsave
      {
          width:200px;
          font-size:40px;
      }
      .txt2
      {
          color:red;
      }

  </style>   
<div class="doctors-posts clearfix" style="margin-left:3%; margin-right:3%;">
     <h3 id="reply-title1" class="comment-reply-title" style="margin-left:-2%;">Contact Us</h3><br />
    <article class="doctors-single clearfix">
        <div class="container">
            <div class="row">

                <div class="col-md-4 col-sm-5 ">
                    <div class="clearfix">

                      <section class="widget widget_categories">
                            
            <h3 class="title">Email Address</h3>
            <ul>
                <li><a href="#" title="View all posts filed under Motivation">dipharman93@gmail.com</a></li>
                <li><a href="#" title="View all posts filed under Environment">dp.1994.dk@gmail.com</a></li>
                <li><a href="#" title="View all posts filed under Health Basics">nvi.2705@gmail.com</a></li>
             
            </ul><br /><br />
                          <h3 class="title">Contact Number</h3>
            <ul>
              
                <li><a href="#" title="View all posts filed under Environment">+91- 9815501156</a></li>
                <li><a href="#" title="View all posts filed under Health Basics">+91- 9803459274</a></li>
               
                          </ul>
        </section>
                    </div>
                </div>
                <div class="col-md-8 col-sm-7 ">
                    <div class="side-content clearfix">
                     

                        <div id="comments-section">
                        <h4 id="reply-title" class="comment-reply-title">Leave Your Comment Here -</h4>

                   
                            <asp:Label ID="lblname" runat="server" Text="Label" Visible="false"></asp:Label>
                  
                           
                            <p class="comment-form-comment">
                                <label for="comment">Comment </label>
                                <label for="comment" class="txt2"> *</label>
                                <asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine" rows="6" aria-required="true"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtmsg" runat="server" ErrorMessage="Please Give Comment" Display="Dynamic" CssClass="txt2"></asp:RequiredFieldValidator>
                               <%-- <textarea id="comment" name="comment" cols="45" rows="8" aria-required="true"></textarea>--%>
                            </p>
                            <br />
                            <p class="form-submit">
                                <asp:Button ID="submit" runat="server" Text="Save" class="buttonsave btn btn-info active" OnClick="submit_Click"/>
                               
                            </p>
     
                   
             
                </div>
            </div>
                    </div>
        </div>
            </div>
    </article>



</div>
   



</asp:Content>

