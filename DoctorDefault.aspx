﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDoctor.master" AutoEventWireup="true" CodeFile="DoctorDefault.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    
    
    <style type="text/css">
        .img1
        {
         
            width:30px;
            height:25px;
        }
        .img2
        {
         margin-left:28%;
            width:400px;
        }
        .font1
        {
            font-size:35px;
            font-weight:bold;
            color:gray;
        }
         .font2
        {
             font-family:'Times New Roman';
            font-size:25px;
            font-weight:bold;
            color:darkgray;
        }
          .font3
        {
           
            font-size:20px;
           
            color:black;
        }
    </style>


<div class="doctors-posts clearfix" >

        <article class="doctors-single clearfix">
        <div class="container">
            <div class="row">

                <div class="col-md-4 col-sm-5 ">
                    <div class="clearfix">

         <section class="widget widget_categories" style="margin-left:30%;">
                          
    <asp:Image ID="Image1" runat="server" class="avatar img-responsive img-thumbnail img-circle" alt="Not Visible" height="250" Width="230"/>
     </section>
                    </div>
                </div>
                <div class="col-md-8 col-sm-7 ">
                    <div class="side-content clearfix">
                     

                        <div id="comments-section" style="margin-left:20%;">
                 <br /><br />
                    <span><asp:Label ID="lblname" CssClass="font1" runat="server" Text="ncbrfwk"></asp:Label> </span><br />
                     <span><%--<img src="images/loc.png" class="img1" />--%><asp:Label ID="lblmno" runat="server" CssClass="font2" Text="h"></asp:Label></span>
                           <br /> <asp:Label ID="lblspec" runat="server" Text="Label" CssClass="font2"></asp:Label>
                </div>
            </div>
                    </div>
        </div>
            </div>
    </article>

     <div class="faq-page clearfix">
    <div class="container">                           
    <div class="toggle-main faq"  style="margin-left:3%;margin-right:5%;">
            <div class="toggle health-record">
                <div class="toggle-title">
                    <!--FAQ title-->
                    <h3><i class="fa fa-user-md"></i>About Me</h3>
                </div>
                <div class="toggle-content font3">
                    <!--FAQ detail-->
                    <div class="entry-content">
                       <asp:Label ID="lblemail" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblage" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblbg" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lbladd" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblquali" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblabout" runat="server" Text=""></asp:Label><br />
                        
                    </div>
                </div>
            </div>

            <div class="toggle health-record">
                  <div class="toggle-title">                     <!--FAQ title-->
                    <h3><i class="fa fa-retweet"></i>Related Doctors</h3>
                      </div>
                       <div class="toggle-content">                     <!--FAQ detail-->
                  
                       <%--related doctor--%>
                        <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6 ">
               
            
                       
        <article class="doctors-single clearfix">
        <div class="container">
            <div class="row">

                <div class="col-md-4 col-sm-5 ">
                    <div class="clearfix">

         <section class="widget widget_categories" style="margin-left:5%;margin-right:5%;">
                          
    <asp:Image ID="Image2" runat="server" class="avatar img-responsive img-thumbnail" alt="Not Visible" height="200" Width="200"/>
     </section>
                    </div>
                </div>
                <div class="col-md-8 col-sm-7 ">
                    <div class="side-content clearfix">
                     

                        <div id="comments-section1">
                  <h5 class="entry-title">
                            <asp:Label ID="lblname1" runat="server" Text=""></asp:Label></h5>
                        <div class="doctor-departments">
                            <asp:Label ID="lblspec1" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="for-border"></div>
                        <p>
                            <asp:Label ID="lblaboutm" runat="server" Text=""></asp:Label>
                            </p>

                </div>
            </div>
                    </div>
        </div>
            </div>
    </article>
                  
            
            </div>


                </div>
                 </div>
        </div>
       
         </div>




</div>
        </div>
         </div>
    

</div>

                
       
    <script src="js/jquery-1.11.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/sidebar_menu.js"></script>


</asp:Content>


