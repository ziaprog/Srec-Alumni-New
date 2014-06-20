<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
               <h1>
                Welcome</h1>
&nbsp;We&#39;re here to help you <b>stay 
            in touch</b> with thousands of <b>SREC</b> Alumni across the globe. Our 
            work relies on the information you provide. <b>SRECians</b> new to the site, 
            please <a href="Register.aspx">register</a>. Already 
            registered <b>SRECians</b>, keep your profile
            <a href="update-profile.aspx">updated</a>.<br />
               
  &nbsp;<br />
         <div class="iframe"><iframe src="http://www.google.com/calendar/embed?height=300&amp;wkst=2&amp;bgcolor=%23F3F1E9&amp;src=d28soatg64ufr43s1vbtgb90is%40group.calendar.google.com&amp;color=%23AB8B00&amp;ctz=Asia%2FCalcutta" style=" border-width:0 " width="300" height="300" frameborder="0" scrolling="no"></iframe>
             <br />
             <br />
             <br />
              <br />
              </div>
      <div class="news">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BorderWidth="0px" DataSourceID="newsDataSource" 
        onrowcreated="GridView1_RowCreated1" 
         Width="300px" 
        BorderStyle="None">
        <Columns>
            <asp:TemplateField HeaderText="Recent News">
                <ItemTemplate>
                    <table width="100%">
                        <tr>
                            <td >
                                <asp:HyperLink ID="HyperLink2" NavigateUrl="~/NewsandEvents.aspx" runat="server" Text='<%# Eval("Subject") %>'></asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <HeaderStyle BackColor="#416A92" Font-Names="Verdana" ForeColor="White" 
                    HorizontalAlign="Left" />
            </asp:TemplateField>
        </Columns>
        <HeaderStyle Font-Italic="False" />
    </asp:GridView>
    <asp:AccessDataSource ID="newsDataSource" runat="server" 
    DataFile="~/App_Data/aspnet.mdb" 
    
                
              
              SelectCommand="SELECT TOP 5 News.NewsID, News.AccountID, News.Subject, News.Message, News.CreateDate, Account.username, Account.imageurl FROM (News INNER JOIN Account ON News.AccountID = Account.ID) ORDER BY News.NewsID DESC">
</asp:AccessDataSource>
    <br />
    <table width="100%">
        <tr>
            <td style="background-color: #416A92; color: #FFFFFF">
                <b>Contact Address</b></td>
        </tr>
        <tr>
            <td>
        <span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="font-size:9.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;
  mso-bidi-font-family:Verdana">Mr.Sudhesh Johny,<br />
        Secretary, SREC Alumni Association,<br />
        Sri Ramakrishna Engineering College, 
                <br />
                Coimbatore - 641 022.<br />
        Ph:0422-2460088,2461588
                <br />
        </span></span>
            </td>
        </tr>
    </table>
          <br />
    
            </div>
            <br />
            <div class="photos">
    
                <asp:DataList ID="DataList1" runat="server" CellPadding="10" 
                    DataKeyField="PhotoID" DataSourceID="photoDataSource" HorizontalAlign="Center" 
                    RepeatDirection="Horizontal" Width="94%">
                    <HeaderTemplate>
                        <table class="style1">
                            <tr>
                                <td style="background-color: #416A92; color: #FFFFFF" class="style3">
                                    Recent Photos</td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <HeaderStyle Font-Bold="False" Font-Names="Verdana" Font-Size="Medium" />
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            ImageUrl='<%# Eval("FileSystemName","~/Gallery/Thumbs/{0}") %>' 
                            PostBackUrl='<%# Eval("PhotoID","Viewitem.aspx?photoid={0}") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:AccessDataSource ID="photoDataSource" runat="server" 
                    DataFile="~/App_Data/aspnet.mdb" 
                    
                    SelectCommand="SELECT TOP 5 [PhotoID], [FileSystemName] FROM [Photos] ORDER BY [PhotoID] DESC">
                </asp:AccessDataSource>
               </div>
    </asp:Content>



<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

    <style type="text/css">
        .members
        {
            margin-top: 0px;
        }
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-size: small;
        }
        .style3
        {
            font-size: small;
            font-weight: bold;
        }
    </style>

</asp:Content>




