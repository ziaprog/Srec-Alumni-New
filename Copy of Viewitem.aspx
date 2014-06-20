<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Copy of Viewitem.aspx.cs" Inherits="Viewitem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

<script type="text/javascript" language="javascript">

var ow = 0;

var oh = 0;

var s = 680;

var onload_blows = 0;

function scale(img)

{

    if (!onload_blows)

    scale_load(img);

                   

    i = document.getElementById(img);

    if (i.width > s) 

    {

          i.style.cursor = "pointer";

                   i.width = s;

          i.height = s / (ow / oh);      

    }

    else if (i.width == s)

    {

          i.width = ow;

          i.height = oh;

    }

}

function scale_load(img)

{

    onload_blows = 1;

    t = 0;

    if (navigator.appName == "Netscape")

          t = window.innerWidth;

    else if (navigator.appName.indexOf("Microsoft") != -1 ||

                    navigator.appName.indexOf("Opera") != -1)

        t = document.body.offsetWidth;

    if (t > 64 && t < s)

          s = t - 60;

    i = document.getElementById(img);

    ow = i.width;

    oh = i.height;

    scale(img);

}

</script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" Runat="Server">
    <div>

        <asp:HyperLink ID="gobackHyperLink" runat="server">&lt;&lt; Go Back</asp:HyperLink>
        <br />

        <img ID="thepic" alt="" OnClick="scale('thepic')" OnLoad="scale_load('thepic')" src="<%#relpath%>" />
     <br />
 <!-- AddThis Button BEGIN -->
<a class="addthis_button" href="http://www.addthis.com/bookmark.php?v=250&amp;username=xa-4b66f8174e9fdae3"><img src="http://s7.addthis.com/static/btn/v2/lg-share-en.gif" width="125" height="16" alt="Bookmark and Share" style="border:0"/></a><script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#username=xa-4b66f8174e9fdae3"></script>
<!-- AddThis Button END -->


      </div>


    <h5>
        Comments:</h5>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BorderWidth="0px" DataSourceID="AccessDataSource2" 
        onrowcreated="GridView1_RowCreated1" 
        onrowdatabound="GridView1_RowDataBound1" Width="100%" 
    AllowPaging="True">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <table class="style1" width="100%">
                                <tr>
                                    <td>
                                        <asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl='<%# Eval("AccountID", "profiles.aspx?pid={0}") %>' 
                                    Text='<%# Eval("username") %>' Font-Size="Small"></asp:HyperLink>
                                        &nbsp;-
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("CerateDate", "{0:d}") %>' 
                                    Font-Size="Small"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding: 5px 5px 5px 5px;">
                                        <asp:Label ID="Label1" runat="server" Font-Size="Small" 
                                    Text='<%# Eval("Message") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <h5>
                Comment on this Photo</h5>
            <p>
                <asp:TextBox ID="msgTextBox" runat="server" Height="147px" TextMode="MultiLine" 
                    Width="358px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="msgTextBox" ErrorMessage="RequiredFieldValidator">* Enter some text</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:HyperLink ID="HyperLink14" runat="server" 
                    OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[angry]';" 
                    ToolTip="angry"><img 
            src="images/smiley/smile_baringteeth.gif" alt="angry"/></asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[cry]';" 
                    ToolTip="cry"><img 
            src="images/smiley/smile_cry.gif" alt="cry"/></asp:HyperLink>
                <asp:HyperLink ID="HyperLink3" runat="server" 
                    OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[devil]';" 
                    ToolTip="devil"><img 
            src="images/smiley/smile_devil.gif" alt="devil"/></asp:HyperLink>
                <asp:HyperLink ID="HyperLink4" runat="server" 
                    OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[embaressed]';" 
                    ToolTip="embaressed"><img 
            src="images/smiley/smile_embaressed.gif" alt="embaressed"/></asp:HyperLink>
                <asp:HyperLink ID="HyperLink5" runat="server" 
                    OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[omg]';" 
                    ToolTip="oh my god!"><img 
            src="images/smiley/smile_omg.gif" alt="omg"/></asp:HyperLink>
                <asp:HyperLink ID="HyperLink6" runat="server" 
                    OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[party]';" 
                    ToolTip="party"><img 
            src="images/smiley/smile_party.gif" alt="party"/></asp:HyperLink>
                <asp:HyperLink ID="HyperLink7" runat="server" 
                    OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[smile]';" 
                    ToolTip="smile"><img 
            src="images/smiley/smile_regular.gif" alt="regular"/></asp:HyperLink>
                <asp:HyperLink ID="HyperLink8" runat="server" 
                    OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[sad]';" 
                    ToolTip="sad"><img 
            src="images/smiley/smile_sad.gif" alt="sad"/></asp:HyperLink>
                <asp:HyperLink ID="HyperLink9" runat="server" 
                    OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[cool]';" 
                    ToolTip="cool"><img 
            src="images/smiley/smile_shades.gif" alt="cool"/></asp:HyperLink>
                <asp:HyperLink ID="HyperLink10" runat="server" 
                    OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[sick]';" 
                    ToolTip="sick"><img 
            src="images/smiley/smile_sick.gif" alt="sick"/></asp:HyperLink>
                <asp:HyperLink ID="HyperLink11" runat="server" 
                    OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[teeth]';" 
                    ToolTip="teeth"><img 
            src="images/smiley/smile_teeth.gif" alt="teeth"/></asp:HyperLink>
                <asp:HyperLink ID="HyperLink12" runat="server" 
                    OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[tongue]';" 
                    ToolTip="tongue"><img 
            src="images/smiley/smile_tongue.gif" alt="tongue"/></asp:HyperLink>
                <asp:HyperLink ID="HyperLink13" runat="server" 
                    OnClick="javascript:document.forms[0].ctl00_mainContent_msgTextBox.value+='[wink]';" 
                    ToolTip="wink"><img 
            src="images/smiley/smile_wink.gif" alt="wink"/></asp:HyperLink>
            </p>
            <p>
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" Height="26px" onclick="Button1_Click" 
                    Text="Post Comment" />
                &nbsp;</p>
            <p>
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </p>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
        </Triggers>
</asp:UpdatePanel>
    <br />
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="~/App_Data/aspnet.mdb" 
        
        SelectCommand="SELECT Comments.CommentID, Comments.PhotoID, Comments.AccountID, Comments.Message, Comments.CerateDate,Account.ID,Account.imageurl,Account.username FROM (Comments INNER JOIN Account ON Comments.AccountID = Account.ID) WHERE (Comments.PhotoID = ?) ORDER BY Comments.CommentID DESC">
        <SelectParameters>
            <asp:QueryStringParameter Name="PhotoID" QueryStringField="photoid" 
                Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource>
    </asp:Content>

