<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Find" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <h1>
       Find a SRECian</h1>
    <div id="searchbox">
        <div id="search_padding">
				
                  <table class="style1" cellpadding="10" style="border: 1px solid #666666" 
                      align="center">
                      <tr>
                          <td class="style2">
                              Name:</td>
                          <td class="style3">
                              <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                          </td>
                          <td class="style5">
                              Year Graduated:</td>
                          <td>
                              <asp:DropDownList ID="ddlBatch" runat="server" AutoPostBack="True">
                              </asp:DropDownList>
                          </td>
                      </tr>
                      <tr>
                          <td class="style2">
                              Branch:</td>
                          <td class="style3">
                              <asp:DropDownList ID="ddlBranch" runat="server" AutoPostBack="True">
                              </asp:DropDownList>
                          </td>
                          <td class="style4" colspan="2">
                  <span class="btn"> 
                      <asp:Button ID="Search" runat="server" Text="Search" 
                      onclick="Search_Click" Width="69px" />
                  &nbsp;&nbsp;&nbsp;</span><asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                  Text="Reset" Width="67px" />
				          </td>
                      </tr>
                      </table>
                  <br />
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="GridViewStyle" 
                      DataSourceID="accountsDataSource" Width="90%" AllowSorting="True" 
                      HorizontalAlign="Center" AllowPaging="True">
                      <RowStyle Height="25px" />
                      <Columns>
                          <asp:TemplateField HeaderText="Name" SortExpression="fullname">
                              <ItemTemplate>
                                  <asp:HyperLink ID="HyperLink1" runat="server" 
                                      NavigateUrl='<%# Eval("ID", "Profiles.aspx?pid={0}") %>' 
                                      Text='<%# Eval("fullname") %>'></asp:HyperLink>
                              </ItemTemplate>
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fullname") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle Font-Bold="False" />
                          </asp:TemplateField>
                          <asp:BoundField DataField="branch" HeaderText="Branch" 
                              SortExpression="branch" >
                          <HeaderStyle HorizontalAlign="Left" />
                          </asp:BoundField>
                          <asp:BoundField DataField="passedout" HeaderText="Graduated" 
                              SortExpression="passedout" >
                          <HeaderStyle HorizontalAlign="Left" />
                          </asp:BoundField>
                      </Columns>
                                <RowStyle CssClass="RowStyle" />
                                <EmptyDataRowStyle CssClass="EmptyRowStyle" />
                                <PagerStyle CssClass="PagerStyle" />
                                <SelectedRowStyle CssClass="SelectedRowStyle" />
                                <HeaderStyle CssClass="HeaderStyle" />
                                <EditRowStyle CssClass="EditRowStyle" />
                                <AlternatingRowStyle CssClass="AltRowStyle" />
                  </asp:GridView>
                  <asp:AccessDataSource ID="accountsDataSource" runat="server" 
                      DataFile="~/App_Data/aspnet.mdb" 
                      
                      SelectCommand="SELECT Top 100 [ID], [fullname], [branch], [passedout] FROM [Account] WHERE (([fullname] LIKE '%' + ? + '%') AND ([branch] LIKE '%' + ? + '%') AND ([passedout] LIKE '%' + ? + '%'))">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="nameTextBox" DefaultValue="%" Name="fullname" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="ddlBranch" DefaultValue="%" Name="branch" 
                              PropertyName="SelectedValue" Type="String" />
                          <asp:ControlParameter ControlID="ddlBatch" DefaultValue="%" Name="passedout" 
                              PropertyName="SelectedValue" Type="String" />
                      </SelectParameters>
                  </asp:AccessDataSource>
                  <br />
                
				</div>
    
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

    <style type="text/css">
        .style1
        {
            width: 88%;
        }
        .style2
        {
            width: 56px;
        }
        .style3
        {
        width: 292px;
    }
        .style4
        {
        }
        .style5
        {
            width: 100px;
        }
    </style>

</asp:Content>


