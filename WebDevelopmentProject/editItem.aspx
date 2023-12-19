<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="editItem.aspx.cs" Inherits="WebDevelopmentProject.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" BackColor="#FEFCFA" BorderColor="#91A584" BorderStyle="Double" Font-Bold="True" Font-Size="Medium" ForeColor="#91A584">
          Please Update Items<br />
          <br />
          Item ID<br />&nbsp;
          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          <br />
          Item Name<br />&nbsp;
          <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
          <br />
          Item Price<br /> &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        Items Quantity<br />&nbsp;
          <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
          <br />
          Item Discount<br /> &nbsp;<asp:RadioButton ID="RadioButton1" runat="server" Text="Yes" />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="No"/>
        <br />
        Item Category<br /> &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>face</asp:ListItem>
            <asp:ListItem>eyes</asp:ListItem>
            <asp:ListItem>lips</asp:ListItem>
        </asp:DropDownList>
          <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Edit Item" BackColor="#91A584" BorderColor="Black" BorderStyle="Double" ForeColor="#FEFCFA" />


        

          <br />


        

        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>




    </asp:Panel>
</asp:Content>
