<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="insertCustomer.aspx.cs" Inherits="WebDevelopmentProject.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FEFCFA" BorderColor="#91A584" BorderStyle="Double" ForeColor="#91A584" Font-Size="Medium" Font-Bold="True" HorizontalAlign="Center">
        Please enter customer data<br />
        <asp:Label ID="LblResult" runat="server" Text=""></asp:Label>
        <br />
        enter username<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        enter password<br />&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        enter role
        <br />
    <asp:ListBox ID="ListBox1" runat="server">
    <asp:ListItem Value="admin"></asp:ListItem>
                    <asp:ListItem Value="customer"></asp:ListItem>
        </asp:ListBox>
    <br />
    select date<br /> <br />
    <asp:Calendar ID="Calendar1" runat="server" BackColor="#91A584" ForeColor="White" Width="513px">
        <DayHeaderStyle BorderColor="#91A584" />
        </asp:Calendar>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert Customer" BackColor="#91A584" ForeColor="White" />
        <br />
        </asp:Panel>
</asp:Content>
