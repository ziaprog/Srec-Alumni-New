<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Guestbook.aspx.cs" Inherits="Guestbook" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
.ModalPopupBG
{
    background-color: #000;
    filter: alpha(opacity=50);
    opacity: 0.7;
}
  </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <asp:AccessDataSource ID="guestbookAccessDataSource1" runat="server" 
        DataFile="~/App_Data/aspnet.mdb" 
        
        
        
        
        SelectCommand="SELECT guestbook.postedby, guestbook.postedon,guestbook.message, guestbook.pid, Account.imageurl FROM guestbook INNER JOIN Account ON guestbook.pid=Account.ID ORDER BY guestbook.postedon DESC">
    </asp:AccessDataSource>
    <h1 class="style2">
        Alumni Memories</h1>
    <p>
    <asp:LinkButton ID="LinkButton1" runat="server">Share your Memories</asp:LinkButton>
        <cc1:ModalPopupExtender ID="LinkButton1_ModalPopupExtender" runat="server" 
            CancelControlID="btnClose" DynamicServicePath="" Enabled="True" 
            PopupControlID="ihidden" TargetControlID="LinkButton1" 
            BackgroundCssClass="ModalPopupBG">
        </cc1:ModalPopupExtender>
        <br />
    </p>
    <div id="ihidden" style="display:none"> <table bgcolor="#FFCC99" 
            style="border: thin solid #C0C0C0" >
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style11">
                Share your memories</td>
            <td style="text-align: right" class="style12">
                <b style="text-align: center">
                <asp:ImageButton ID="btnClose" runat="server" 
                    ImageUrl="~/images/closelabel.gif" style="text-align: right" />
                </b>
            </td>
        </tr>
        <tr>
            <td class="style8">
                </td>
            <td class="style7" colspan="2">
                <asp:TextBox ID="msgTextBox" runat="server" Height="120px" TextMode="MultiLine" 
            Width="322px"></asp:TextBox>
               
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="msgTextBox" ErrorMessage="RequiredFieldValidator">* Enter some text</asp:RequiredFieldValidator>
                <br />
               
                    <asp:HyperLink ID="HyperLink14" ToolTip="angry" 
                    OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[angry]';" 
                    runat="server"><img src="images/smiley/smile_baringteeth.gif" alt="angry"/></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink2" ToolTip="cry" OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[cry]';" runat="server"><img src="images/smiley/smile_cry.gif" alt="cry"/></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink3" ToolTip="devil" OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[devil]';" runat="server"><img src="images/smiley/smile_devil.gif" alt="devil"/></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink4" ToolTip="embaressed" OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[embaressed]';" runat="server"><img src="images/smiley/smile_embaressed.gif" alt="embaressed"/></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink5" ToolTip="oh my god!" OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[omg]';" runat="server"><img src="images/smiley/smile_omg.gif" alt="omg"/></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink6" ToolTip="party" OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[party]';" runat="server"><img src="images/smiley/smile_party.gif" alt="party"/></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink7" ToolTip="smile" OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[smile]';" runat="server"><img src="images/smiley/smile_regular.gif" alt="regular"/></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink8" ToolTip="sad" OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[sad]';" runat="server"><img src="images/smiley/smile_sad.gif" alt="sad"/></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink9" ToolTip="cool" OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[cool]';" runat="server"><img src="images/smiley/smile_shades.gif" alt="cool"/></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink10" ToolTip="sick" OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[sick]';" runat="server"><img src="images/smiley/smile_sick.gif" alt="sick"/></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink11" ToolTip="teeth" OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[teeth]';" runat="server"><img src="images/smiley/smile_teeth.gif" alt="teeth"/></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink12" ToolTip="tongue" OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[tongue]';" runat="server"><img src="images/smiley/smile_tongue.gif" alt="tongue"/></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink13" ToolTip="wink" OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[wink]';" runat="server"><img src="images/smiley/smile_wink.gif" alt="wink"/></asp:HyperLink>
                
            </td>
        </tr>
        <tr>
            <td class="style3">
                </td>
            <td style="text-align: right" class="style9" colspan="2">
                     <div id="Message0" style="display :none;"> Message Sent!</div>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
            Height="25px" Width="73px" />
            </td>
        </tr>
    </table></div>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BorderWidth="0px" DataSourceID="guestbookAccessDataSource1" 
        onrowcreated="GridView1_RowCreated1" 
        onrowdatabound="GridView1_RowDataBound1" Width="100%" AllowPaging="True" 
        BorderStyle="None">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <table width="100%">
                        <tr>
                            <td colspan="2" >
                                <asp:Label ID="lblSerial" runat="server" Font-Size="Small"></asp:Label>
                                . &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl='<%# Eval("pid", "profiles.aspx?pid={0}") %>' 
                                    Text='<%# Eval("postedby") %>' Font-Size="Small"></asp:HyperLink>
                                &nbsp;-
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("postedon", "{0:d}") %>' 
                                    Font-Size="Small"></asp:Label>
                            </td>
                        </tr>
                        <tr >
                            <td style="padding: 5px 5px 5px 5px;" valign="top" width="70">
                                <asp:ImageButton ID="ImageButton1" runat="server" 
                                    ImageUrl='<%# Eval("imageurl", "~/images/profile/{0}") %>' 
                                    PostBackUrl='<%# Eval("pid", "profiles.aspx?pid={0}") %>' />
                                <br />
                            </td>
                            <td  style="padding: 5px 5px 5px 5px;" valign="top">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("message") %>' 
                                    Font-Size="Small"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                            </td>
                            <td style="text-align: right">
                                &nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
  
    
<p>
    <asp:LinkButton ID="LinkButton2" runat="server">Share your Memories</asp:LinkButton>
        <cc1:ModalPopupExtender ID="LinkButton2_ModalPopupExtender" runat="server" 
            CancelControlID="btnClose" DynamicServicePath="" Enabled="True" 
            PopupControlID="ihidden" TargetControlID="LinkButton2" 
        BackgroundCssClass="ModalPopupBG">
        </cc1:ModalPopupExtender>
        </p></asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

    <style type="text/css">
        .style2
        {
            text-align: left;
        }
        .style3
        {
            text-align: left;
            color: #333;
            font-style: normal;
            font-variant: normal;
            font-weight: bold;
            font-size: 8pt;
            line-height: 130%;
            font-family: Verdana, "Segoe UI Bold", sans-serif;
            margin-left: 40px;
        }
        .style8
        {
            text-align: left;
            color: #333;
            font-style: normal;
            font-variant: normal;
            font-weight: bold;
            font-size: 8pt;
            line-height: 130%;
            font-family: Verdana, "Segoe UI Bold", sans-serif;
            margin-left: 40px;
            height: 96px;
        }
        .style7
        {
            width: 318px;
            height: 96px;
        }
        .style9
        {
            width: 318px;
        }
        .style11
        {
            width: 292px;
            font-weight: bold;
        }
        .style12
        {
            width: 39px;
        }
    </style>

</asp:Content>


