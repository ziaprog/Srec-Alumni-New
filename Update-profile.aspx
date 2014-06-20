<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="Update-profile.aspx.cs" Inherits="pro" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            font-size: smaller;
        }

     </style>
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">

   <h1>Update Profile</h1>
    <p>
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1" Width="100%" 
            FinishCompleteButtonText="Save all" 
            onfinishbuttonclick="Wizard1_FinishButtonClick">
            <WizardSteps>
                <asp:WizardStep runat="server" title="Avatar">
                    <table >
                        <tr>
                            <td style="text-align: center" colspan="3">
                                <asp:Image ID="Image1" runat="server" />
                                <br />
                                <span class="style2">*refresh the page if you can&#39;t see the uploaded photo</span></td>
                        </tr>
                        <tr>
                            <td class="style2" style="text-align: right">
                                Change your Avatar:</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style2" style="text-align: right">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="uploadButton" runat="server" OnClick="upload_Click" 
                                    Text="Upload" />
                                &nbsp;<asp:Label ID="Label1" runat="server" Font-Size="Smaller" ForeColor="#FF3300"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Personal">
                    <h3>
                        Personal Details</h3>
                    <table >
                        <tr>
                            <td class="style5" style="text-align: right">
                                Full name:</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="fullnameTextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5" style="text-align: right">
                                Gender:</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:DropDownList ID="genderddl" runat="server">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5" style="text-align: right">
                                Date of Birth</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="dobTextBox" runat="server"></asp:TextBox>
                                <cc1:TextBoxWatermarkExtender ID="dobTextBox_TextBoxWatermarkExtender" 
                                    runat="server" Enabled="True" TargetControlID="dobTextBox" 
                                    WatermarkText="dd/MM/yyyy">
                                </cc1:TextBoxWatermarkExtender>
                                <cc1:CalendarExtender ID="dobTextBox_CalendarExtender" runat="server" 
                                    DaysModeTitleFormat="MM,dd, yyyy" DefaultView="Years" Enabled="True" 
                                    Format="MM/dd/yyyy" TargetControlID="dobTextBox">
                                </cc1:CalendarExtender>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="dobTextBox" 
                                    
                                    ValidationExpression="(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d">*MM/dd/yyyy</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5" style="text-align: right">
                                Marital Status:</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:DropDownList ID="maritalddl" runat="server">
                                    <asp:ListItem>Single</asp:ListItem>
                                    <asp:ListItem>Committed</asp:ListItem>
                                    <asp:ListItem>Married</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="College">
                    <h3>
                        College Details</h3>
                    <table >
                        <tr>
                            <td class="style2" style="text-align: right">
                                College Roll no:</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="rollnoTextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2" style="text-align: right">
                                Branch/Stream:</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:DropDownList ID="branchddl" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2" style="text-align: right">
                                Year Graduated:</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:DropDownList ID="ddlBatch" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Contact">
                    <h3>
                        Contact Details</h3>
                    <table >
                        <tr>
                            <td class="style6" style="text-align: right">
                                Contact no:</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="contactTextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" style="text-align: right">
                                Email:</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" style="text-align: right">
                                Webpage:</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="webpageTextBox" runat="server">http://</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" style="text-align: right">
                                Address Line1:</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="address1TextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" style="text-align: right">
                                Address Line2:</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="address2TextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" style="text-align: right">
                                City:</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="cityTextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" style="text-align: right">
                                State:</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="stateTextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" style="text-align: right">
                                Country:</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="countryTextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" style="text-align: right">
                                Post Code:</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="postcodeTextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Professional">
                    <h3>
                        Professional Details</h3>
                    <table >
                        <tr>
                            <td class="style2" style="text-align: right">
                                Designation:</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="designationTextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2" style="text-align: right">
                                Current Employer</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="employerTextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
            </WizardSteps>
            <SideBarStyle VerticalAlign="Top" />
        </asp:Wizard>
    </p>
   
</asp:Content>

