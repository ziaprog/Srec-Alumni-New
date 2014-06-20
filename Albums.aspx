<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Albums.aspx.cs" Inherits="Viewalbums" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" Runat="Server">
   <h1>Photo gallery</h1>
    <p>&nbsp;</p>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="AlbumID" 
        DataSourceID="AccessDataSource1" RepeatColumns="3" 
        RepeatDirection="Horizontal" HorizontalAlign="Center" CellPadding="5" 
        style="text-align: center">
        <ItemTemplate>
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl='<%# Eval("AlbumPhoto","Gallery/Album/{0}") %>' 
                PostBackUrl='<%# Eval("AlbumID", "Viewphotos.aspx?aid={0}") %>' 
                BorderColor="#416A92" BorderStyle="Solid" BorderWidth="1px" />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl='<%# Eval("AlbumID", "Viewphotos.aspx?aid={0}") %>' 
                Text='<%# Eval("AlbumName") %>'></asp:HyperLink>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/aspnet.mdb" 
        SelectCommand="SELECT [AlbumID], [AlbumName], [AlbumPhoto] FROM [Albums]">
    </asp:AccessDataSource><p>Send your photos to <a href="mailto:alumniuce@gmail.com">newalumnisrec@gmail.com</a> 
        with the following details:
        <br />
        Album Name:<br />
        Photo would be added to the album in about a weeks time, subject to approval by 
        admins.
        <br />
        Note: Please avoid sending your personal photos to us.     </p>
</asp:Content>

