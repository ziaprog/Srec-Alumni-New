<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Error.aspx.cs" Inherits="Error" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <style type="text/css">
  #error
  {
  width:500px;
  border:solid 1px blue;
  margin-left:auto  ;
    margin-right:auto  ;
  margin-top:100px;
  padding:10px;
  background-image:url(images/sorry.jpg);
  background-repeat:no-repeat;
  background-position:right bottom;
 
  }

    </style>
    </head>
<body>
    <form id="form1" runat="server">
   <div id="error">
    <div>
    
        <h1>
            Sorry, An Error has Occurred </h1>An error has occurred during the current request.<br />
        The
        <em>webmaster</em> has been <em>notified</em> via email of the <em>error</em>
        <br />
        and will work to resolve it.<br />
            <br />
            You can either:<br />
       
    
    </div>
    <ul>
        <li>
            <asp:HyperLink ID="linkGoBack" runat="server">Go back</asp:HyperLink>
&nbsp;and try again</li>
        <li>Return to the <a href="Default.aspx">homepage</a></li>
    </ul>
   
    </div>
    </form>
</body>
</html>
