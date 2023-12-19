<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="deleteItem.aspx.cs" Inherits="WebDevelopmentProject.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FEFCFA" BorderColor="#91A584" BorderStyle="Double" Font-Bold="True" Font-Size="Medium" ForeColor="#91A584" HorizontalAlign="Center">
        <br />
        Please delete item of your choice based on item ID<br />
        <br />
        Item ID
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete Item" BackColor="#91A584" BorderColor="Black" BorderStyle="Double" ForeColor="#FEFCFA" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </asp:Panel>
</asp:Content>
