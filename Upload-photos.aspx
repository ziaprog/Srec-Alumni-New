<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Upload-photos.aspx.cs" Inherits="Upload" %>

<%@ Register src="links.ascx" tagname="links" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
        .style2
        {
            width: 332px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" Runat="Server">
    <uc1:links ID="links1" runat="server" />
    <br />
    <h1>Upload Photos</h1>
   
    <table style="padding: 5px; border: thin solid #333333; width: 502px; background-color: #416A92; color: #FFFFFF;" 
        align="center" >
    <tr>
        <td>
            Album:</td>
        <td colspan="2">
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="AlbumDataSource" DataTextField="AlbumName" 
                DataValueField="AlbumID">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            Select Photo:</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <asp:FileUpload ID="FileUpload2" runat="server" />
            <br />
            <asp:FileUpload ID="FileUpload3" runat="server" />
            <br />
            <asp:FileUpload ID="FileUpload4" runat="server" />
            <br />
            <asp:FileUpload ID="FileUpload9" runat="server" />
        </td>
        <td class="style2" style="text-align: right">
            <asp:FileUpload ID="FileUpload5" runat="server" />
            <br />
            <asp:FileUpload ID="FileUpload6" runat="server" />
            <br />
            <asp:FileUpload ID="FileUpload7" runat="server" />
            <br />
            <asp:FileUpload ID="FileUpload8" runat="server" />
            <br />
            <asp:FileUpload ID="FileUpload10" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td colspan="2" style="text-align: right">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" />
            <br />
        </td>
    </tr>
    <tr>
        <td colspan="3" style="background-color: #FFFFFF">
            <asp:Label ID="Label1" runat="server" ForeColor="Black"></asp:Label>
        </td>
    </tr>
</table>
    <br />
    <br />
    <asp:AccessDataSource ID="AlbumDataSource" runat="server" 
        DataFile="~/App_Data/aspnet.mdb" 
        SelectCommand="SELECT [AlbumName], [AlbumID] FROM [Albums]">
    </asp:AccessDataSource>
    </asp:Content>

