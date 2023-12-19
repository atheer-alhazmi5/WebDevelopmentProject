<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="customerPage.aspx.cs" Inherits="WebDevelopmentProject.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StyleSheets" runat="server">
         <link rel="stylesheet" href="StyleSheet1.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel1" runat="server" CssClass="header1">
    <div>   
                     <br />
                     <asp:Image ID="Image2" runat="server" style="width:200px"/>
                    <h2>Welcome our favorite customer   <asp:Label ID="UserName" runat="server"></asp:Label>
                    </h2>
                    <h3>welcome to Vogue Makeup & Skin
                    </h3>
          <p> here you can view & buy all your favorite items
             and upload a photo of your choice!
              have fun!
          </p>        
                </div> 
    </asp:Panel>
</asp:Content>
