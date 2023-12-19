<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminUploadPhoto.aspx.cs" Inherits="WebDevelopmentProject.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FEFCFA" BorderColor="#91A584" BorderStyle="Double" Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" ForeColor="#91A584">
        <br />
        Please upload your photo here<br />
        <br />
      <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#91A584" ForeColor="Black" />
        <br />
    <asp:Label ID="Label1" runat="server" ></asp:Label>
        <br />
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" BackColor="#91A584" BorderColor="Black" BorderStyle="Double" ForeColor="#FEFCFA" />
        <br />
        </asp:Panel>
</asp:Content>
