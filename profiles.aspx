<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="profiles.aspx.cs" Inherits="Default2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .ModalPopupBG
{
    background-color: #000;
    filter: alpha(opacity=50);
    opacity: 0.7;
}
        .style1
        {
            width: 100%;
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
        .style2
        {
            width: 448px;
        }
        .style4
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
            height: 37px;
        }
        .style5
        {
            width: 448px;
            height: 37px;
        }
        .style6
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
            height: 245px;
        }
        .style7
        {
            width: 318px;
            height: 96px;
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
        .style9
        {
            width: 318px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
   
    <h1>Profile</h1>
    <p>
        <asp:HyperLink ID="linkGoBack" runat="server">&lt;&lt;Go Back</asp:HyperLink>
    </p>
    <asp:LinkButton ID="LinkButton2" runat="server">Send Message</asp:LinkButton>
    <cc1:ModalPopupExtender ID="LinkButton2_ModalPopupExtender" runat="server" 
        DynamicServicePath="" Enabled="True" 
        PopupControlID="ihidden" TargetControlID="LinkButton2" 
        BackgroundCssClass="ModalPopupBG" CancelControlID="btnClose">
    </cc1:ModalPopupExtender>
    
    
    <div id="ihidden" style="display:none"> <table bgcolor="#FFCC99" 
            style="border: thin solid #C0C0C0" >
        <tr>
            <td class="style3">
                Subject</td>
            <td>
                <asp:TextBox ID="subjectTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="subjectTextBox" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
            <td style="text-align: right">
                <asp:ImageButton ID="btnClose" runat="server" 
                    ImageUrl="~/images/closelabel.gif" style="text-align: right" />
            </td>
        </tr>
        <tr>
            <td class="style8">
                </td>
            <td class="style7" colspan="2">
                <asp:TextBox ID="msgTextBox" runat="server" Height="85px" TextMode="MultiLine" 
            Width="297px"></asp:TextBox>
               
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="msgTextBox" ErrorMessage="RequiredFieldValidator">* Enter some text</asp:RequiredFieldValidator>
                <br />
               
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
                
            </td>
        </tr>
        <tr>
            <td class="style3">
                </td>
            <td style="text-align: right" class="style9" colspan="2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Send" 
            Height="25px" Width="73px" />
                     <div id="Message0" style="display :none;"> Message Sent!</div>
            </td>
        </tr>
    </table></div>

  
    
    
    <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" 
        DataSourceID="AccessDataSource1">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" 
                ImageUrl='<%# Eval("imageurl","~/images/profile/{0}") %>' />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" 
                ForeColor="Maroon" Text='<%# Eval("username") %>'></asp:Label>
            <br />
            <br />
            <br />
            <table class="style1">
                <tr>
                    <td class="style3">
                        <h3>
                            Personal Details</h3>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        Full name:</td>
                    <td>
                        <asp:Label ID="fullnameLabel" runat="server" Text='<%# Eval("fullname") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Gender:</td>
                    <td>
                        <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Date of Birth</td>
                    <td>
                        <asp:Label ID="dobLabel" runat="server" Text='<%# Eval("dob") %>'></asp:Label>
                        &nbsp;(MM/dd/yyyy)</td>
                </tr>
                <tr>
                    <td class="style3">
                        Marital Status:</td>
                    <td>
                        <asp:Label ID="maritalLabel" runat="server" Text='<%# Eval("marital") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        <h3>
                            Contact Details</h3>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        Contact no:</td>
                    <td>
                        <asp:Label ID="contactnoLabel" runat="server" Text='<%# Eval("contactno") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Email:</td>
                    <td>
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Webpage:</td>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server"
                            PostBackUrl='<%# Eval("webpage","http://{0}") %>' 
                            Text='<%# Eval("webpage","http://{0}") %>'></asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Address Line1:</td>
                    <td>
                        <asp:Label ID="address1Label" runat="server" Text='<%# Eval("address1") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Address Line2:</td>
                    <td>
                        <asp:Label ID="address2Label" runat="server" Text='<%# Eval("address2") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        City:</td>
                    <td>
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        State:</td>
                    <td>
                        <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Country:</td>
                    <td>
                        <asp:Label ID="countryLabel" runat="server" Text='<%# Eval("country") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Post Code:</td>
                    <td>
                        <asp:Label ID="postcodeLabel" runat="server" Text='<%# Eval("postcode") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        <h3>
                            College Details</h3>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        College Roll no:</td>
                    <td>
                        <asp:Label ID="rollnoLabel" runat="server" Text='<%# Eval("rollno") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Branch/Stream:</td>
                    <td>
                        <asp:Label ID="branchLabel" runat="server" Text='<%# Eval("branch") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Year Graduated:</td>
                    <td>
                        <asp:Label ID="passedoutLabel" runat="server" Text='<%# Eval("passedout") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        <h3>
                            Professional Details</h3>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        Designation:</td>
                    <td>
                        <asp:Label ID="designationLabel" runat="server" 
                            Text='<%# Eval("designation") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Current Employer/Organization:</td>
                    <td>
                        <asp:Label ID="employerLabel" runat="server" Text='<%# Eval("employer") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/aspnet.mdb" 
        SelectCommand="SELECT * FROM [Account] WHERE ([ID] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="pid" QueryStringField="pid" 
                Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
   
    <br />
   
   
    </asp:Content>

