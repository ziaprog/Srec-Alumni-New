<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="NewsandEvents.aspx.cs" Inherits="NewsandEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
    .style1
    {
        height: 20px;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" Runat="Server">
    <h1>
        News &amp; Events</h1>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BorderWidth="0px" DataSourceID="AccessDataSource1" 
        onrowcreated="GridView1_RowCreated1" 
         Width="100%" AllowPaging="True" 
        BorderStyle="None">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <table width="100%">
                        <tr>
                            <td 
                                
                                
                                style="border: thin none #416A92; padding: 5px; background-color: #416A92" >
                                &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("Subject") %>' 
                                    Font-Bold="True" Font-Size="Medium" ForeColor="White"></asp:Label>
                            </td>
                        </tr>
                        <tr >
                            <td style="padding: 5px 5px 5px 5px;" valign="top" width="70">
                                <asp:Label ID="Label1" runat="server" Font-Size="Small" 
                                    Text='<%# Eval("Message") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right" class="style1">
                                &nbsp;Posted by -
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Small" 
                                    NavigateUrl='<%# Eval("AccountID", "profiles.aspx?pid={0}") %>' 
                                    Text='<%# Eval("username") %>'></asp:HyperLink>
                                &nbsp;; Posted on -
                                <asp:Label ID="Label2" runat="server" Font-Size="Small" 
                                    Text='<%# Eval("CreateDate") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
    DataFile="~/App_Data/aspnet.mdb" 
    SelectCommand="SELECT News.NewsID, News.AccountID, News.Subject, News.Message, News.CreateDate, Account.username, Account.imageurl FROM (News INNER JOIN Account ON News.AccountID = Account.ID) ORDER BY News.NewsID DESC">
</asp:AccessDataSource>
    
</asp:Content>

