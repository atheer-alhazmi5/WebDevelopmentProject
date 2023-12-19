<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="buyItems.aspx.cs" Inherits="WebDevelopmentProject.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StyleSheets" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color:#FEFCFA; font-family: 'times New Roman', Times, serif; font-size: medium; color: #91A584; text-align: center; font-weight: bold;">
        <asp:Label ID="UserName" runat="server" Font-Size="XX-Large" Font-Bold="True" ForeColor="#996633"></asp:Label>!<br /> &nbsp;You Made It!
    <br /> choose what you like from our products<br />
             <asp:Label ID="lbl" runat="server" style="font-size: 20px" ForeColor="Green" Text=""></asp:Label>
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
           OnRowCommand="GridView1_RowCommand" DataKeyNames="ID" DataSourceID="SqlDataSource1" 
           BackColor="#FEFCFA" BorderColor="#91A584" BorderStyle="Solid" ForeColor="#91A584" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                <asp:CheckBoxField DataField="discountYes" HeaderText="discountYes" SortExpression="Discount" />
                <asp:CheckBoxField DataField="DiscountNo"  HeaderText="DiscountNo" SortExpression="DiscountNo" />
                <asp:BoundField DataField="category"  HeaderText="category" SortExpression="category" />
             <asp:CommandField SelectText="Buy" ShowSelectButton="true" ControlStyle-ForeColor="#996633" />             
            </Columns>
    </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:infoConnectionString %>" SelectCommand="SELECT * FROM [items]">
                </asp:SqlDataSource>
           </div>
        </asp:Content>