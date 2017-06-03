<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePatient.master" AutoEventWireup="true" CodeFile="QRCode.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">



<asp:Button ID="btnGenerate" style="margin-left:3%;" runat="server" Text="Generate QR Code" class="btn btn-success active" onclick="btnGenerate_Click" />
<hr />
<asp:PlaceHolder ID="plBarCode" runat="server" />

        <br />
        <br />
        <br />

       <%-- <asp:TextBox ID="TextBox1" runat="server" Width="165px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Click To Get Details" OnClick="Button1_Click" />--%>
         <asp:Label ID="lblname" runat="server" Text="" Visible="false"></asp:Label>
          <br />
        <br />
        <br /> <br />
        <br />
        <br /> <br />
        <br />
        <br /> <br />
        <br />
        <br /> <br />
        <br />
        <br /> <br />
        <br />
        <br /> <br />
        <br />
        <br />

</asp:Content>

