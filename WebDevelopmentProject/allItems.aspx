<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="allItems.aspx.cs" Inherits="WebDevelopmentProject.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StyleSheets" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FEFCFA" BorderColor="#91A584" BorderStyle="Dotted" BorderWidth="4px">
    <div style="background-color:#FEFCFA; font-family: 'times New Roman', Times, serif; font-size: medium; color: #91A584; text-align: center; font-weight: bold;">
        <br />
       <asp:Label ID="UserName" runat="server" Font-Size="X-Large" Font-Bold="True"></asp:Label>!<br /> &nbsp;If you made up your mind about what you want to buy, go to buy items page!<br /> <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
        DataSourceID="SqlDataSource1" BackColor="#FEFCFA" BorderColor="#91A584" 
        BorderStyle="Solid" ForeColor="#91A584" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
            <asp:CheckBoxField DataField="discountYes" HeaderText="discountYes" SortExpression="discountYes" />
            <asp:CheckBoxField DataField="DiscountNo" HeaderText="DiscountNo" SortExpression="DiscountNo" />
            <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
        </Columns>
        <HeaderStyle BackColor="#91A584" BorderColor="#006600" BorderStyle="Double" 
            ForeColor="#FEFCFA" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#91A584" ForeColor="#FEFCFA" />
</asp:GridView>
        <br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:infoConnectionString %>" 
    SelectCommand="SELECT * FROM [items]">
</asp:SqlDataSource>
   </div>
        </asp:Panel>
</asp:Content>
