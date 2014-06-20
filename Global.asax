<%@ Application Language="C#" %>
<%-- We need these namespaces to send e-mail --%>
<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.Net.Mail" %>
<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }

    //void Application_Error(object sender, EventArgs e)
    //{
    //    // Get current exception
    //    Exception CurrentException = Server.GetLastError();
    //    string ErrorDetails = CurrentException.ToString();

    //    // Send notification e-mail
    //    MailMessage Email =
    //        new MailMessage("newalumnisrec@gmail.com",
    //        "newalumnisrec@gmail.com");
    //    Email.IsBodyHtml = false;
    //    Email.Subject = "WEB SITE ERROR";
    //    Email.Body = ErrorDetails;
    //    Email.Priority = MailPriority.High;
    //    SmtpClient smtp = new SmtpClient();
    //    smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
    //    smtp.Credentials = new System.Net.NetworkCredential
    //        ("newalumnisrec@gmail.com", "admin@srec");
    //    //Or your Smtp Email ID and Password
    //    smtp.EnableSsl = true;
    //    smtp.Send(Email);
    //    Response.Redirect("Error.aspx");
    //}

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
