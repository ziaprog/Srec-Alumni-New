<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Delete-photos.aspx.cs" Inherits="Admin_delete_photos" %>

<%@ Register src="links.ascx" tagname="links" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" Runat="Server">
    <uc1:links ID="links1" runat="server" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="PhotoID" DataSourceID="AccessDataSource1" 
        onrowdeleting="GridView1_RowDeleting" Width="100%" AllowPaging="True" 
    PageSize="20" >
               <Columns>
                   <asp:TemplateField>
                       <EditItemTemplate>
                           <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Image ID="Image1" runat="server" 
                               ImageUrl='<%# Eval("FileSystemName","~/Gallery/Thumbs/{0}") %>' />
                           <br />
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:BoundField DataField="PhotoID" HeaderText="Photo ID" 
                       SortExpression="PhotoID" />
            <asp:BoundField DataField="FileSystemName" HeaderText="FileSystemName" 
                       SortExpression="FileSystemName" />
                   <asp:BoundField DataField="AlbumName" HeaderText="Album Name" 
                       SortExpression="AlbumName" />
            <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" 
                SortExpression="CreateDate" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/aspnet.mdb" 
        DeleteCommand="DELETE FROM [Photos] WHERE [PhotoID] = ?" 
        InsertCommand="INSERT INTO [Photos] ([PhotoID], [AlbumID], [AccountID], [FileSystemName], [IsPublic], [CreateDate], [Approved]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT Photos.PhotoID,Photos.AlbumID,Photos.FileSystemName,Photos.CreateDate,Albums.AlbumID,Albums.AlbumName FROM Photos Inner Join Albums on Photos.AlbumID=Albums.AlbumID order by Photos.PhotoID DESC" 
        
        UpdateCommand="UPDATE [Photos] SET [AlbumID] = ?, [AccountID] = ?, [FileSystemName] = ?, [IsPublic] = ?, [CreateDate] = ?, [Approved] = ? WHERE [PhotoID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="PhotoID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="AlbumID" Type="Int32" />
            <asp:Parameter Name="AccountID" Type="Int32" />
            <asp:Parameter Name="FileSystemName" Type="String" />
            <asp:Parameter Name="IsPublic" Type="Int32" />
            <asp:Parameter Name="CreateDate" Type="DateTime" />
            <asp:Parameter Name="Approved" Type="Int32" />
            <asp:Parameter Name="PhotoID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="PhotoID" Type="Int32" />
            <asp:Parameter Name="AlbumID" Type="Int32" />
            <asp:Parameter Name="AccountID" Type="Int32" />
            <asp:Parameter Name="FileSystemName" Type="String" />
            <asp:Parameter Name="IsPublic" Type="Int32" />
            <asp:Parameter Name="CreateDate" Type="DateTime" />
            <asp:Parameter Name="Approved" Type="Int32" />
        </InsertParameters>
    </asp:AccessDataSource>
    <br />
    <asp:Label ID="Label1" runat="server"></asp:Label>
</asp:Content>

