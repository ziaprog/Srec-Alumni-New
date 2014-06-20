<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Messages.aspx.cs" Inherits="Messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        <ProgressTemplate>
            <img alt="loading" src="loading.gif" 
    style="width: 32px; height: 32px" />
        </ProgressTemplate>
    </asp:UpdateProgress>
    <h1>
    </h1>
    <h1>My Messages</h1>
    <script type="text/javascript">
<!--
        function toggle_visibility(id) {
            var e = document.getElementById(id);
            if (e.style.display == 'block')
                e.style.display = 'none';
            else
                e.style.display = 'block';
        }
//-->
</script>
   
       
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" DataSourceID="AccessDataSource1" 
            AutoGenerateColumns="False" DataKeyNames="MessageID" 
            onrowdatabound="GridView1_RowDataBound" Width="100%" 
        onrowcreated="GridView1_RowCreated" 
        AllowPaging="True" PageSize="20" Font-Size="Small">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table class="style1" cellpadding="5">
                                    <tr>
                                        <td class="style5">
                                            <asp:LinkButton ID="LinkButton1" 
                                        runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete"></asp:LinkButton>
                                        </td>
                                        <td class="style2">
                                            <asp:HyperLink ID="HyperLink2" runat="server" 
                                        NavigateUrl='<%# Eval("SentByAccountID","profiles.aspx?pid={0}") %>' 
                                        Text='<%# Eval("SentByName") %>'></asp:HyperLink>
                                        </td>
                                        <td class="style4">
                                            sub:
                                            <a href='javascript:toggle_visibility("<%# CreateID(Eval("MessageID"))%>");'>
                                            <%# Eval("Subject") %></a>
                                            <td class="style3">
                                                <asp:Label ID="Label1" runat="server" 
                                             Text='<%# Eval("CreateDate") %>'></asp:Label>
                                            </td>
                                        </td>
                                        <td>
                                            <asp:HyperLink ID="linkReply" runat="server" 
                                        NavigateUrl='<%# Eval("SentByAccountID","SendMessage.aspx?recid={0}") %>' 
                                        Text="Reply"></asp:HyperLink>
                                        </td>
                                    </tr>
                                </table>
                                <div id="<%# CreateID(Eval("MessageID"))%>" style="display:none; padding:5px;">
                                    <%# Eval("Message") %></div>
                            </ItemTemplate>
                            <HeaderTemplate>
                                INBOX
                            </HeaderTemplate>
                            <HeaderStyle BorderStyle="None" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </ContentTemplate>
    </asp:UpdatePanel>
        
        <p>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/aspnet.mdb" 
            
            SelectCommand="SELECT * FROM [MessageFolder] WHERE MessageRecipientID = @userid ORDER BY MessageID DESC" 
           
            
            DeleteCommand="DELETE FROM [MessageFolder] WHERE [MessageID] = ?" 
            InsertCommand="INSERT INTO [MessageFolder] ([MessageID], [SentByAccountID], [SentByName], [MessageRecipientID], [MessageStatus], [CreateDate], [Subject], [Message]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" 
            
            UpdateCommand="UPDATE [MessageFolder] SET [SentByAccountID] = ?, [SentByName] = ?, [MessageRecipientID] = ?, [MessageStatus] = ?, [CreateDate] = ?, [Subject] = ?, [Message] = ? WHERE [MessageID] = ?" 
            onselecting="AccessDataSource1_Selecting" >
             <SelectParameters>
               <asp:Parameter Name="userid" Type="Int32" />
             </SelectParameters>
             
             <DeleteParameters>
          <asp:Parameter Name="MessageID" Type="Int32" />
        
        </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="SentByAccountID" Type="Int32" />
                <asp:Parameter Name="SentByName" Type="String" />
                <asp:Parameter Name="MessageRecipientID" Type="Int32" />
                <asp:Parameter Name="MessageStatus" Type="String" />
                <asp:Parameter Name="CreateDate" Type="DateTime" />
                <asp:Parameter Name="Subject" Type="String" />
                <asp:Parameter Name="Message" Type="String" />
                <asp:Parameter Name="MessageID" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="MessageID" Type="Int32" />
                <asp:Parameter Name="SentByAccountID" Type="Int32" />
                <asp:Parameter Name="SentByName" Type="String" />
                <asp:Parameter Name="MessageRecipientID" Type="Int32" />
                <asp:Parameter Name="MessageStatus" Type="String" />
                <asp:Parameter Name="CreateDate" Type="DateTime" />
                <asp:Parameter Name="Subject" Type="String" />
                <asp:Parameter Name="Message" Type="String" />
            </InsertParameters>
        </asp:AccessDataSource>
    </p>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

    <style type="text/css">
        .style1
        {
            width: 678px;
        }
        .style2
        {
            width: 110px;
        }
        .style3
        {
            width: 219px;
        }
        .style4
        {
            width: 494px;
        }
        .style5
        {
            width: 97px;
        }
    </style>

</asp:Content>


