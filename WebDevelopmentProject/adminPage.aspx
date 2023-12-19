<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminPage.aspx.cs" Inherits="WebDevelopmentProject.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="StyleSheet2.css" type="text/css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" BackColor="#FEFCFA" BorderColor="#91A584" BorderStyle="Double" Font-Bold="True" ForeColor="#91A584" HorizontalAlign="Center">
   
      <div CssClass="header1">
           <br />
           <br />
           <asp:Image ID="Image2" runat="server" style="width:200px"/>
                    <h2 CssClass="header1">Welcome Admin   <asp:Label ID="UserName" runat="server"></asp:Label>
                    </h2>
                    <h3 style="font-family: 'Times New Roman', Times, serif">welcome to Vogue Makeup & Skin
                    </h3>
          <p style="font-family: 'Times New Roman', Times, serif"> here you can insert update search and delete items ,
              and send emails to our favorite customers
              have fun admin!
          </p>
                   
                </div> 
        </asp:Panel>
</asp:Content>
