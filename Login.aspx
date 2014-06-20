<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div>
        <h1>
        Login</h1>
        <br />
        <asp:Panel ID="Panel1" runat="server" DefaultButton="button2"> <table align="center" class="style1" 
            style="padding: 5px; border: thin solid #C0C0C0">
            <tr>
                <td>
        Username:</td>
                <td>
        <asp:TextBox ID="lusrTextBox" runat="server" MaxLength="15"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        Password:</td>
                <td>
                    <asp:TextBox ID="lpassTextBox" runat="server" MaxLength="15" 
            TextMode="Password">samtron</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Login" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    New Users
        <span style="color: #0000ff"><a href="Register.aspx">Register</a></span></td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        </asp:Panel>  
        <br />
        &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        </div>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

    <style type="text/css">
        .style1
        {
            width: 42%;
        }
    </style>

</asp:Content>


