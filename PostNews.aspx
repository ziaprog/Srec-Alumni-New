<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="PostNews.aspx.cs" Inherits="SendMessage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc1" %>

<%@ Register src="links.ascx" tagname="links" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 500px;
        }
        .style3
        {
            width: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <uc1:links ID="links1" runat="server" />
  <h1>
      Post News and Events</h1>
    <table class="style1">
        <tr>
            <td class="style3">
                Subject:</td>
            <td class="style2">
                <asp:TextBox ID="subjectTextBox" runat="server" Width="300px" MaxLength="100"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Message:</td>
            <td class="style2">
              
                <cc1:Editor ID="Editor1" runat="server" Width="500px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" style="text-align: right">
                <asp:Button ID="sendButton" runat="server" 
                    Text="Send" onclick="sendButton_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

