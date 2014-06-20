<%@ Control Language="C#" AutoEventWireup="true" CodeFile="login.ascx.cs" Inherits="login" %>
<style type="text/css">


   
</style>
        <table align="center" class="style1" 
            style="padding: 5px; border: thin solid #C0C0C0; width: 184px;">
            <tr>
                <td class="style4">
        Username:</td>
                <td class="style2">
        <asp:TextBox ID="lusrTextBox" runat="server" MaxLength="15" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
        Password:</td>
                <td class="style6">
                    <asp:TextBox ID="lpassTextBox" runat="server" MaxLength="15" 
            TextMode="Password" Width="100px">samtron</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style2">
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Login" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3" colspan="2">
                    New Users
        <span style="color: #0000ff"><a href="Register.aspx">Register</a></span></td>
            </tr>
        </table>
        