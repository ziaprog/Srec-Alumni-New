<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Invite.aspx.cs" Inherits="Invite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        INPUT{FONT-FAMILY:Verdana,Arial,Helvetica,sans-serif}
TEXTAREA{FONT-FAMILY:Verdana,Arial,Helvetica,sans-serif}
    .style1
    {
        width: 100%;
    }
    .style2
    {
    }
    .nH {
	ZOOM: 1
}
.ha {
	PADDING-BOTTOM: 0px; MARGIN: 12px 5px 5px 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; FONT-FAMILY: arial,sans-serif; COLOR: #000; FONT-SIZE: 100%; PADDING-TOP: 0px
}
.hP {
	PADDING-RIGHT: 10px
}
.hX {
	MARGIN-TOP: 3px; DISPLAY: inline; CURSOR: pointer; MARGIN-RIGHT: 4px
}
.cf {
	BORDER-COLLAPSE: collapse
}
.hY .hM {
	HEIGHT: 1px
}
.hT {
	WIDTH: 1px
}
.hU {
	FONT: 9px verdana,arial,sans-serif
}
.hS {
	WIDTH: 1px
}
.hV {
	FONT: 9px verdana,arial,sans-serif
}
.hW {
	WIDTH: 1px
}
.hR .hM {
	PADDING-BOTTOM: 1px
}
.hN {
	PADDING-LEFT: 4px; PADDING-RIGHT: 6px
}
.hO {
	PADDING-BOTTOM: 1px; PADDING-LEFT: 4px; PADDING-RIGHT: 4px; PADDING-TOP: 1px
}
.dJ {
	DISPLAY: none
}
.dJ {
	HEIGHT: 0px; CLEAR: both; OVERFLOW: hidden
}
.hx {
	PADDING-BOTTOM: 4px; PADDING-LEFT: 8px; PADDING-RIGHT: 8px; COLOR: #000; PADDING-TOP: 4px
}
.b7 {
	Z-INDEX: 1001; BORDER-BOTTOM: #888 1px solid; POSITION: absolute; BORDER-LEFT: #888 1px solid; OUTLINE-STYLE: none; WHITE-SPACE: nowrap; BACKGROUND: #fff; HEIGHT: auto; VISIBILITY: hidden; COLOR: #000; FONT-SIZE: 80%; OVERFLOW: hidden; BORDER-TOP: #888 1px solid; CURSOR: default; BORDER-RIGHT: #888 1px solid; -moz-outline: none
}
.h7 {
	PADDING-BOTTOM: 0px
}
.Bk {
	BACKGROUND-COLOR: #fff; MARGIN-BOTTOM: 10px
}
.Bo {
	BORDER-LEFT: #fff 5px solid; DISPLAY: none; HEIGHT: 1px; BORDER-RIGHT: #fff 5px solid
}
.iQ {
	BORDER-LEFT: #bcbcbc 1px solid; HEIGHT: 1px; BORDER-RIGHT: #bcbcbc 1px solid
}
.f7 {
	DISPLAY: block
}
.f7 {
	Z-INDEX: 1; POSITION: relative; LINE-HEIGHT: 0; ZOOM: 1; FONT-SIZE: 0px; OVERFLOW: hidden
}
.Bn {
	BORDER-LEFT: #fff 5px solid; DISPLAY: block; HEIGHT: 1px; BORDER-RIGHT: #fff 5px solid
}
.iN {
	BORDER-LEFT: #bcbcbc 1px solid; BACKGROUND: #bcbcbc; HEIGHT: 1px; BORDER-RIGHT: #bcbcbc 1px solid
}
.Bm {
	BORDER-LEFT: #fff 3px solid; DISPLAY: block; HEIGHT: 1px; BORDER-RIGHT: #fff 3px solid
}
.iM {
	BORDER-LEFT: #bcbcbc 2px solid; HEIGHT: 1px; BORDER-RIGHT: #bcbcbc 2px solid
}
.iM .c1 {
	BORDER-LEFT: #bcbcbc 0px solid; DISPLAY: none; BORDER-RIGHT: #bcbcbc 0px solid
}
.c1 {
	HEIGHT: 1px
}
.c1 {
	Z-INDEX: 1; POSITION: relative; LINE-HEIGHT: 0; ZOOM: 1; FONT-SIZE: 0px; OVERFLOW: hidden
}
.Bl {
	BORDER-LEFT: #fff 2px solid; DISPLAY: block; HEIGHT: 2px; BORDER-RIGHT: #fff 2px solid
}
.iK {
	BORDER-LEFT: #bcbcbc 1px solid; HEIGHT: 2px; BORDER-RIGHT: #bcbcbc 1px solid
}
.iK .c1 {
	BORDER-LEFT: #bcbcbc 0px solid; DISPLAY: none; BORDER-RIGHT: #bcbcbc 0px solid
}
.Bk .G3 {
	POSITION: relative; BORDER-LEFT: #efefef 1px solid; BACKGROUND-COLOR: #fff; ZOOM: 1; MARGIN-LEFT: 0px; OVERFLOW: visible; MARGIN-RIGHT: 0px; BORDER-RIGHT: #efefef 1px solid
}
.Bk .G2 {
	BORDER-LEFT: #bcbcbc 1px solid; BACKGROUND-COLOR: #fff; BORDER-TOP: 0px solid; BORDER-RIGHT: #bcbcbc 1px solid
}
.hH {
	DISPLAY: none
}
.hF {
	Z-INDEX: 1; POSITION: absolute; TOP: 4px; LEFT: -9px
}
.hG {
	MARGIN: 4px 0px 0px 2px; WIDTH: 5px; BACKGROUND: url(?ui=2&view=dim&iv=ri70fa02wqb0&it=ic) no-repeat -41px -21px; HEIGHT: 9px
}
.h7 .G0 {
	DISPLAY: inline
}
.G0 {
	DISPLAY: none
}
.G0 {
	MARGIN-TOP: -4px; FLOAT: right; OVERFLOW: hidden
}
.J-J5-Ji {
	DISPLAY: inline
}
.J-J5-Ji {
	POSITION: relative; DISPLAY: inline-block
}
.GZ {
	MARGIN: 0px 0px 2px 2px
}
.J-K-I-Js-KK {
	MARGIN-RIGHT: -2px !important
}
.J-K-I {
	PADDING-BOTTOM: 0px; BORDER-RIGHT-WIDTH: 0px; LIST-STYLE-TYPE: none; MARGIN: 0px; OUTLINE-STYLE: none; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; FONT: 70% arial,sans-serif; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; COLOR: #000; VERTICAL-ALIGN: middle; BORDER-LEFT-WIDTH: 0px; CURSOR: default; TEXT-DECORATION: none; PADDING-TOP: 0px
}
.J-K-I-Kv-H {
	BORDER-RIGHT-WIDTH: 0px; MARGIN: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px
}
.J-K-I-Kv-H {
	BORDER-BOTTOM-STYLE: solid; BORDER-BOTTOM-COLOR: #bbb; PADDING-BOTTOM: 0px; BORDER-RIGHT-STYLE: solid; BORDER-TOP-COLOR: #bbb; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-COLOR: #bbb; BORDER-LEFT-STYLE: solid; BORDER-LEFT-COLOR: #bbb; PADDING-TOP: 0px
}
.J-K-I-Js-KK .J-K-I-J6-H {
	MARGIN: 0px 0px 0px -1px; LEFT: -1px
}
.J-K-I .J-K-I-J6-H {
	LEFT: -1px
}
.J-K-I-Js-KK .J-K-I-J6-H {
	BORDER-RIGHT-COLOR: #bbb !important
}
.J-K-I-J6-H {
	BORDER-RIGHT-WIDTH: 1px; MARGIN: 0px -1px; BACKGROUND: #e3e3e3; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px; CURSOR: pointer
}
.J-K-I-J6-H {
	BORDER-BOTTOM-STYLE: solid; BORDER-BOTTOM-COLOR: #bbb; PADDING-BOTTOM: 0px; BORDER-RIGHT-STYLE: solid; BORDER-TOP-COLOR: #bbb; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-COLOR: #bbb; BORDER-LEFT-STYLE: solid; BORDER-LEFT-COLOR: #bbb; PADDING-TOP: 0px
}
.J-K-I-KC {
	POSITION: relative; HEIGHT: 100%
}
.J-K-I-K9-KP {
	BORDER-BOTTOM: #eeeeee 0.2em solid; POSITION: absolute; BACKGROUND: #f9f9f9; HEIGHT: 0.9em; OVERFLOW: hidden; TOP: 0px; RIGHT: 0px; LEFT: 0px
}
.J-K-I-Jz {
	POSITION: relative; TEXT-ALIGN: center; PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.8em; PADDING-LEFT: 8px; PADDING-RIGHT: 8px; WHITE-SPACE: nowrap; COLOR: #000; VERTICAL-ALIGN: middle; PADDING-TOP: 0px
}
.hB {
	WIDTH: 14px; BACKGROUND: url(?ui=2&view=dim&iv=ri70fa02wqb0&it=ic) no-repeat 0px -40px; HEIGHT: 13px; VERTICAL-ALIGN: middle
}
.hB {
	POSITION: relative
}
.hE {
	TEXT-ALIGN: center; PADDING-LEFT: 4px; PADDING-RIGHT: 4px; WHITE-SPACE: nowrap; COLOR: #2a5db0
}
.J-K-I-Js-Kc {
	MARGIN-LEFT: 0px !important
}
.G1 .J-K-I-Kv-H {
	BORDER-TOP-STYLE: none; OVERFLOW: hidden; PADDING-TOP: 1px
}
.J-K-I-Js-Kc .J-K-I-J6-H {
	MARGIN: 0px -1px 0px 0px; LEFT: 0px
}
.J-K-I-Js-Kc .J-K-I-J6-H {
	BORDER-LEFT: #fff 1px solid
}
.hA {
	POSITION: relative
}
.hA {
	WIDTH: 7px; BACKGROUND: url(?ui=2&view=dim&iv=ri70fa02wqb0&it=ic) no-repeat -120px 0px; HEIGHT: 7px
}
.ie .gE {
	CURSOR: auto
}
.iv {
	PADDING-RIGHT: 0px
}
.iv {
	CURSOR: pointer
}
.gE {
	PADDING-BOTTOM: 3px; PADDING-LEFT: 4px
}
.gt {
	FONT-SIZE: 80%
}
.gJ {
	MARGIN-TOP: 0px; WIDTH: auto
}
.gK {
	PADDING-TOP: 0px
}
.gF {
	TEXT-ALIGN: left; WIDTH: 100%; PADDING-RIGHT: 8px; WHITE-SPACE: nowrap; VERTICAL-ALIGN: top
}
.ix {
	WIDTH: 100%; TABLE-LAYOUT: fixed
}
.iw {
	WHITE-SPACE: nowrap; OVERFLOW: hidden
}
.g8 {
	BACKGROUND: url(?ui=2&view=dim&iv=ri70fa02wqb0&it=ic) no-repeat 0px -20px
}
.g8 {
	WIDTH: 15px; HEIGHT: 15px
}
.f {
	MARGIN-TOP: 0px; VERTICAL-ALIGN: top
}
.gE .ik {
	VERTICAL-ALIGN: bottom
}
.de {
	WIDTH: 16px; HEIGHT: 16px
}
.iv .gD {
	VERTICAL-ALIGN: top
}
.gD {
	DISPLAY: inline; WHITE-SPACE: nowrap; FONT-SIZE: 100%; FONT-WEIGHT: bold
}
.iv .hb {
	VERTICAL-ALIGN: top
}
.g2 {
	VERTICAL-ALIGN: top
}
.gH {
	TEXT-ALIGN: right; WHITE-SPACE: nowrap; VERTICAL-ALIGN: top
}
.iv .iD {
	VERTICAL-ALIGN: top
}
.iD {
	COLOR: #2a5db0; CURSOR: pointer; TEXT-DECORATION: underline
}
.iv .g3 {
	VERTICAL-ALIGN: top; MARGIN-RIGHT: 3px
}
.iF {
	HEIGHT: 0px; CLEAR: both; OVERFLOW: hidden
}
.ii {
	PADDING-BOTTOM: 20px; MARGIN: 5px 15px
}
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" Runat="Server">
    <h1>
        Invite Friends</h1>
    <p align="justify">
        This <b>Invite</b> feature lets you to send email to inform <b>SREC</b>ians to 
        join our Network. This is one way to extend our online community and get 
        connected with more <b>SREC</b>ians across the globe.</p>
    <p align="justify">
        <font style="FONT-SIZE: 8pt">(Please use this feature responsibly. Don&#39;t spam 
        people who are not SRECians or are already registered in this group.)</font></p>
<table class="style1">
    <tr>
        <td class="style2">
            Invitee&#39;s Email:*</td>
        <td>
            <asp:TextBox ID="txtInvitEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtInvitEmail" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtInvitEmail" 
                ErrorMessage="RegularExpressionValidator" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid Email ID</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Invitee&#39;s Name:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="txtInviName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Your Email:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="txtYourEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtYourEmail" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtYourEmail" ErrorMessage="RegularExpressionValidator" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid Email ID</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Your Name:*</td>
        <td style="margin-left: 80px">
            <asp:TextBox ID="txtYourName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Enter your personal Message:</td>
        <td style="margin-left: 80px">
            <asp:TextBox ID="txtMessage" runat="server" Height="117px" TextMode="MultiLine" 
                Width="306px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2" colspan="2" style="text-align: right">
            <br />
            <asp:Button ID="btnSend" runat="server" onclick="btnSend_Click" Text="Send" />
        </td>
    </tr>
    <tr>
        <td class="style2" colspan="2" style="text-align: center">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
</table>
    <p align="right">
        <font color="#ff0000"><span style="FONT-SIZE: 8pt">*</span></font><span 
            style="FONT-SIZE: 8pt">Fields are required.</span></p>
 
                                                        
                                                       
</asp:Content>

