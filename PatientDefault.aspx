<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePatient.master" AutoEventWireup="true" CodeFile="PatientDefault.aspx.cs" Inherits="Default2" %>

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
                           <br /> <br />
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
        </div>
        </div>
             </div>

 
    

</div>

                
       
    <script src="js/jquery-1.11.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/sidebar_menu.js"></script>






</asp:Content>

