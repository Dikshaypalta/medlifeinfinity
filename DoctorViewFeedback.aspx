<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDoctor.master" AutoEventWireup="true" CodeFile="DoctorViewFeedback.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content12" ContentPlaceHolderID="ContentPlaceHolder12" Runat="Server">

    <div class="blog-page default-page clearfix">
<div class="container" style="padding-left:10%;padding-right:10%;">
<div class="row">
<div class="col-lg-9 col-md-8">
    <div class="blog-page-single clearfix">
        <article class="page hentry  clearfix">
            <div class="page-contents">
                <div class="entry-content">

                    <h3>Your Feedbacks</h3>
        <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                <p class="message bg-info text-info"><strong>Behaviour:</strong>
                       <%-- <asp:Label ID="Label1" runat="server" Text=></asp:Label>--%>
                        <asp:Label ID="lblbehav" runat="server" Text='<%# Eval("Behaviour") %>'></asp:Label><br />
                     <strong>Rating:</strong>    
                    <asp:Label ID="lblrating" runat="server" Text='<%# Eval("Rating") %>'></asp:Label><asp:Label ID="Label1" runat="server" Text=" out of 5"></asp:Label><br />
                   <strong>Comment:</strong>
                         <asp:Label ID="lblcomment" runat="server" Text='<%# Eval("Comment") %>'></asp:Label><br />
                        <button type="button" class="close" aria-hidden="true">&times;</button></p><br />
            
                </ItemTemplate>
</asp:Repeater>


                    </div>
                </div>
                    </article>
        </div>
    </div>
    </div>
    </div>
        </div>


</asp:Content>

