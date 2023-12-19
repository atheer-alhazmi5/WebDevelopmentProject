<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="sendMail.aspx.cs" Inherits="WebDevelopmentProject.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            
    <asp:Panel ID="Panel1" runat="server" ForeColor="#91A584" BackColor="#FEFCFA" BorderColor="#91A584" BorderStyle="Double" Font-Size="Medium" HorizontalAlign="Center" Font-Bold="True">
                <br />
          <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Customer Email : "></asp:Label>
                 </td>
            <td class="auto-style2">
                <br />
        <br />
                <asp:TextBox ID="Email" TextMode="Email" runat="server">

                </asp:TextBox>
                </td>
            <td>
        <br />  <!--validator for email-->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Email"
                    runat="server" ErrorMessage="Please Enter Email *"></asp:RequiredFieldValidator>
                <br /><!--validator for valid email address-->
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email"
                    ErrorMessage="Please Enter Valid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">

                </asp:RegularExpressionValidator>
                        </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Subject: "></asp:Label>
         <br />
                </td>
            <td class="auto-style2">
                <asp:TextBox ID="subject" runat="server" Width="168px"></asp:TextBox>
                </td>
            <td>
  <br /><!--validator subject-->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="subject" 
                    runat="server" ErrorMessage="Please Enter Subject *"></asp:RequiredFieldValidator>
                 </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Message: "></asp:Label>
     <br /></td>
            <td class="auto-style2">
                <asp:TextBox ID="Msg" TextMode="MultiLine" runat="server"></asp:TextBox>
        <br /><!--validator for message-->
                 </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Msg" runat="server" 
                    ErrorMessage="Please Enter Message *"></asp:RequiredFieldValidator>
                <br /> </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
    <br />
                <asp:Button ID="SendBtn" OnClick="SendBtn_Click" runat="server" Text="Send Mail" Width="177px"
                    BackColor="#91A584" BorderColor="Black" BorderStyle="Solid" ForeColor="#FEFCFA" />
        <br />
        <asp:Label ID="Label2" runat="server" ></asp:Label>
    </td>
            <td>&nbsp;</td>
        </tr>
</table>
    </asp:Panel>
           
</asp:Content>
