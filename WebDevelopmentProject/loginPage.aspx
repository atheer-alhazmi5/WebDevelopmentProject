<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="WebDevelopmentProject.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BorderColor="#91A584" BorderStyle="Double" Font-Bold="True" Font-Size="Medium" ForeColor="#91A584" HorizontalAlign="Center" BackColor="#FEFCFA">
         <div>
            <div style="min-height: 350px;">
                <div class="content" style="margin-top: 100px;">
                    <h2 style="text-align:center">LOGIN.</h2>
                    <p style="text-align:center">
                        &nbsp;</p>
                    
                    <div id="Login" class="LoginBox">
                        <div style="width: 90%; margin: auto">
                            <!--username text box-->
                            <asp:TextBox ID="usernameLogin" placeholder="Username" runat="server" ValidationGroup="lgn_validation"></asp:TextBox>
                            <br />
                            <br />
                            <br />
                             <!--password text box-->
                            <asp:TextBox ID="passwordlgin" runat="server" placeholder="Password" TextMode="Password" ValidationGroup="lgn_validation"></asp:TextBox>
                            <br />
                            <div style="font-size: 30px">
                                <asp:Label ID="errorLabel" runat="server" ForeColor="red"></asp:Label>     
                                <br />   
                            </div>
                             <!--login button with onClick even-->
                            <asp:Button ID="lgnbutton" runat="server" OnClick="lgnbutton_Click" Text="Login" CssClass="loginBtn" ValidationGroup="lgn_validation" BackColor="#91A584" BorderColor="Black" BorderStyle="Double" ForeColor="White" Height="43px" Width="117px" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </asp:Panel>
</asp:Content>
