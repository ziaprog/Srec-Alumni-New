<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Viewphotos.aspx.cs" Inherits="Viewphotos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" Runat="Server">
    <br />
    <asp:DataList ID="DataList2" runat="server" DataKeyField="AlbumID" 
        DataSourceID="albumsDataSource2">
        <ItemTemplate>
            <h1>
                <asp:Label ID="AlbumNameLabel" runat="server" Text='<%# Eval("AlbumName") %>' />
            </h1>
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" 
                Text='<%# Eval("Description") %>' />
            <br />
            CreateDate:
            <asp:Label ID="CreateDateLabel" runat="server" 
                Text='<%# Eval("CreateDate") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:AccessDataSource ID="albumsDataSource2" runat="server" 
        DataFile="~/App_Data/aspnet.mdb" 
        SelectCommand="SELECT * FROM [Albums] WHERE ([AlbumID] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="AlbumID" QueryStringField="aid" Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="PhotoID" 
        DataSourceID="photosDataSource1" RepeatColumns="5" 
        RepeatDirection="Horizontal" CellPadding="10" HorizontalAlign="Center">
        <ItemStyle HorizontalAlign="Center" />
        <ItemTemplate>
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl='<%# Eval("FileSystemName","~/Gallery/Thumbs/{0}") %>' 
                PostBackUrl='<%# Eval("PhotoID","Viewitem.aspx?photoid={0}") %>' 
                BorderColor="#416A92" BorderStyle="Solid" BorderWidth="1px" />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:AccessDataSource ID="photosDataSource1" runat="server" 
        DataFile="~/App_Data/aspnet.mdb" 
        
        SelectCommand="SELECT [PhotoID], [AlbumID], [AccountID], [FileSystemName], [IsPublic], [CreateDate], [Approved] FROM [Photos] WHERE ([AlbumID] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="AlbumID" QueryStringField="aid" Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource>
</asp:Content>

