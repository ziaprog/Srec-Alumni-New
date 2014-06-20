<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Scrollable GRIDVIEW.aspx.cs" Inherits="asfddasda" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .gvFixedHeader
    {
      font-weight:bold;
      position:absolute;
      background-color:White;
    }
  </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" Height="300px" Width="300px" ScrollBars="Vertical" >
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="CommentID" DataSourceID="AccessDataSource1" CellPadding="10">
                 
              <Columns>
                  <asp:BoundField DataField="CommentID" HeaderText="CommentID" 
                      InsertVisible="False" ReadOnly="True" SortExpression="CommentID" />
                  <asp:BoundField DataField="PhotoID" HeaderText="PhotoID" 
                      SortExpression="PhotoID" />
                  <asp:BoundField DataField="AccountID" HeaderText="AccountID" 
                      SortExpression="AccountID" />
                  <asp:BoundField DataField="Message" HeaderText="Message" 
                      SortExpression="Message" />
                  <asp:BoundField DataField="CerateDate" HeaderText="CerateDate" 
                      SortExpression="CerateDate" />
              </Columns>
              <HeaderStyle CssClass="gvFixedHeader" ForeColor="#993399" Height="20px" />
        </asp:GridView>
        </asp:Panel>
      
   
    </div>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/aspnet.mdb" SelectCommand="SELECT * FROM [Comments]">
    </asp:AccessDataSource>
    </form>
</body>
</html>
