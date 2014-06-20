<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Add-new-album.aspx.cs" Inherits="Add_new_album" %>

<%@ Register src="links.ascx" tagname="links" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" Runat="Server">
    <uc1:links ID="links1" runat="server" />
    <br />
    <table width="650">
        <tr>
            <td colspan="3" valign="top" width="15%">
                <h1>
                Add New Album</h1>
            </td>
        </tr>
        <tr>
            <td valign="top" width="15%">
                Album Name</td>
            <td style="width: 20%" valign="top">
                <asp:TextBox ID="txtAlbumName" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td valign="top" width="25%">
                <asp:RequiredFieldValidator ID="ReqCategoryTitle" runat="server" 
                    ControlToValidate="txtAlbumName" ErrorMessage="Please enter Album title"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td valign="top" width="15%">
                Album Photo</td>
            <td style="width: 20%" valign="top">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td valign="top" width="25%">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="Please select Photo"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td valign="top" width="15%">
                Album Description</td>
            <td style="width: 20%" valign="top">
                <asp:TextBox ID="txtAlbumDescription" runat="server" Height="100px" 
                    TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
            <td valign="top" width="25%">
                <asp:RequiredFieldValidator ID="reqCategoryDescription" runat="server" 
                    ControlToValidate="txtAlbumDescription" 
                    ErrorMessage="Please enter description"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td valign="top" width="15%">
            </td>
            <td style="width: 20%; text-align: center;" valign="top">
                <asp:Button ID="btnNewAlbum" runat="server" onclick="btnNewCategory_Click" 
                    Text="New Album" />
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="Green" Width="100%"></asp:Label>
            </td>
            <td valign="top" width="25%">
            </td>
        </tr>
    </table>
</asp:Content>

