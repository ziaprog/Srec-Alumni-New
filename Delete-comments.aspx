<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Delete-comments.aspx.cs" Inherits="Delete_comments" %>

<%@ Register src="links.ascx" tagname="links" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" Runat="Server">
    <p>
        <uc1:links ID="links1" runat="server" />
    </p>
   <h1>Delete Comments</h1>
    <p>Filter: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
       <asp:Button ID="Button1" runat="server" Text="Search" />
    </p>
   <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="CommentID" 
        DataSourceID="AccessDataSource1" onrowdatabound="GridView2_RowDataBound" 
        PageSize="100" Width="100%">
        <Columns>
            <asp:BoundField DataField="Message" HeaderText="Message" 
                SortExpression="Message" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/aspnet.mdb" 
        
        
        SelectCommand="SELECT [Message], [CommentID] FROM [Comments] WHERE ([Message] LIKE '%' + ? + '%') ORDER BY [CommentID] DESC" 
        DeleteCommand="DELETE FROM [Comments] WHERE [CommentID] = ?" 
        InsertCommand="INSERT INTO [Comments] ([CommentID], [Message]) VALUES (?, ?)" 
        UpdateCommand="UPDATE [Comments] SET [Message] = ? WHERE [CommentID] = ?">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" DefaultValue="%" Name="?" 
                PropertyName="Text" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="CommentID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Message" Type="String" />
            <asp:Parameter Name="CommentID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="CommentID" Type="Int32" />
            <asp:Parameter Name="Message" Type="String" />
        </InsertParameters>
    </asp:AccessDataSource>
</asp:Content>

