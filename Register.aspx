<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
  <div>
        <h1>
        Create New User Account</h1>
        <br />
        <table align="center" class="style1" 
            style="padding: 5px; border: thin solid #C0C0C0">
            <tr>
                <td>
        Fullname:</td>
                <td>
        <asp:TextBox ID="fnameTextBox" runat="server" 
            ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="fnameTextBox" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
        Username:</td>
                <td>
                    <asp:TextBox ID="usrTextBox" runat="server" MaxLength="15"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usrTextBox"
            ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="usrTextBox"
            ErrorMessage="RegularExpressionValidator" ValidationExpression="([a-zA-Z0-9]{6,15})$">*</asp:RegularExpressionValidator>
                    <br />
                    <span class="style2">Between 6 and 15 alphanumeric characters
                    <br />
                    (eg: yourname, yourname21)</span></td>
            </tr>
            <tr>
                <td>
        Password:</td>
                <td>
                    <asp:TextBox ID="passTextBox" runat="server" MaxLength="15" 
            TextMode="Password"></asp:TextBox>
        <cc1:PasswordStrength ID="passTextBox_PasswordStrength" runat="server" 
            Enabled="True" TargetControlID="passTextBox">
        </cc1:PasswordStrength>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passTextBox"
            ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
        Confirm Password:</td>
                <td>
                    <asp:TextBox ID="cpassTextBox" runat="server" MaxLength="15" 
            TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passTextBox"
            ControlToValidate="cpassTextBox" ErrorMessage="CompareValidator">Passwords must match</asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cpassTextBox"
            ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
        Email-id:</td>
                <td>
                    <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="emailTextBox"
            ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTextBox"
            ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter a valid email</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
        Branch/Stream:</td>
                <td>
                    <asp:DropDownList ID="ddlBranch" runat="server">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="ddlBranch" ErrorMessage="Please select a branch" 
            InitialValue="select one"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
        Year Graduated:</td>
                <td>
                    <asp:DropDownList ID="ddlBatch" runat="server">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="ddlBatch" ErrorMessage="Please select a batch" 
            InitialValue="select one"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
        <asp:Button ID="Button1" runat="server"  Text="Register" 
            OnClick="Button1_Click" style="height: 26px" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        </div>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

    <style type="text/css">
        .style1
        {
            width: 63%;
        }
        .style2
        {
            font-size: x-small;
        }
    </style>

</asp:Content>


