<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="SendMessage.aspx.cs" Inherits="SendMessage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
   

    <h1 >
        Send Message</h1>
    <table >
        <tr>
            <td class="style3">
                To:</td>
            <td class="style2">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Subject</td>
            <td class="style2">
                <asp:TextBox ID="subjectTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="subjectTextBox" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                <asp:TextBox ID="msgTextBox" runat="server" Height="122px" TextMode="MultiLine" 
            Width="365px"></asp:TextBox>
                <br />
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="msgTextBox" ErrorMessage="RequiredFieldValidator">* Enter some text</asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:HyperLink ID="HyperLink1" ToolTip="angry" OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[angry]';" runat="server"><img src="images/smiley/smile_baringteeth.gif" alt="angry"/></asp:HyperLink>
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
                </p>
                <p>
                    <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                </p>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td style="text-align: right" class="style2">
                <asp:Button ID="Button1" runat="server" OnClientClick="toggle('hidden');" onclick="Button1_Click" Text="Send" 
            Height="25px" Width="73px" /><br />
                     <div id="hidden" style="display :none;"> Message Sent!</div>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

    <style type="text/css">
        .style1
        {
            width: 29%;
            height: 55px;
        }
        .style2
        {
            width: 448px;
        }
        .style3
        {
            width: 108px;
        }
    </style>

</asp:Content>


