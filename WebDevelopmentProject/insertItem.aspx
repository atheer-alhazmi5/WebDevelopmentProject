<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="insertItem.aspx.cs" Inherits="WebDevelopmentProject.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Panel ID="Panel1" runat="server" BorderColor="#91A584" BorderStyle="Double" Font-Bold="True" Font-Size="Medium" ForeColor="#91A584" HorizontalAlign="Center" BackColor="#FEFCFA">
        PLease Insert Items Information<br />
        <br />
        Item ID<br />&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Item Name
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        Item Price
        <br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        Items Quantity<br />&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        Item Discount<br />&nbsp;
        <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" Text="Yes" />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="No" />
        <br />
        Item Category<br /> &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>face</asp:ListItem>
            <asp:ListItem>eyes</asp:ListItem>
            <asp:ListItem>lips</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert Item" BackColor="#91A584" BorderColor="Black" BorderStyle="Solid" ForeColor="White" />


        

        <br />


        

        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>




    </asp:Panel>
</asp:Content>
