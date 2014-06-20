using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Net.Mail;
using System.Web.Configuration;
public partial class Invite : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            HttpCookie cookie = Request.Cookies["userinfo"];
            txtYourName.Text = cookie["fullname"];
            txtYourEmail.Text = cookie["email"];
        }

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        MailMessage mail = new MailMessage();
        mail.To.Add(txtInvitEmail.Text);

        mail.From = new MailAddress(txtYourEmail.Text);
        mail.Subject = txtYourName.Text + " has invited you to join AlumniSREC community";
        mail.Body = "Dear <b>"+ txtInviName.Text+"</b>,<br />"+
                                                        
                                                      "<br />Greetings from <b>Alumni of Sri Ramakrishna College of Engineering, Coimbatore</b>!<br /> <br />"+
                                                       
                                                        "Do you remember your days at <b>SREC</b>, your friends at <b>SREC</b>? Do you wish "+
                                                        "to know, how is <b>SREC</b> doing now-a-days? Do you wish to know where are your "+
                                                        "friends now? Do you wish to get connected with them?<br />"+
                                                        "If your answer is yes, then read on!<br />"+
                                                       
                                                        "<br />We are glad to inform you that, we have started major initiative to connect all "+
                                                        "<b>SRECians</b> across the globe. Please visit us at "+
                                                        "<a href='http://srec.ac.in/alumni' target='_blank'>http://srec.ac.in/alumni</a> " +
                                                        "and Register your details.<br />"+
                                                        "Register your details at <a href='http://srec.ac.in/alumni/register.aspx'" +
                                                            "target='_blank'>http://srec.ac.in/alumni/register.aspx</a>!<br />" +
                                                        "This will also help you get in touch with your long lost friends."+
                                                        "<p> </p><h3><font color='#628c2a' size='3'>"+txtYourName.Text+"&#39;s Personal Message to you:</font></h3>"+
                                                        "<table border='1' cellpadding='0' cellspacing='0'style='BORDER-COLLAPSE: collapse' width='60%'>"+
                                                           "<tr><td width='100%'><font size='2'>"+txtMessage.Text+"</font></td></tr></table>"+
                                                        "<p><br /><br /><font size='1'>(<b>Note</b>: This is an automated mail, sent by "+
                                                            "<a href='mailto:newalumnisrec@gmail.com' target='_blank'>newalumnisrec@gmail.com</a> on "+ 
                                                            "behalf of "+txtYourName.Text+" <a href='mailto:Email:"+txtYourEmail.Text+"' target='_blank'>"+
                                                            "Email:"+txtYourEmail.Text+"</a> .)</font><br />Do not reply to this email.</p>";
        mail.IsBodyHtml = true;

        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
        smtp.Credentials = new System.Net.NetworkCredential
            ("newalumnisrec@gmail.com", WebConfigurationManager.AppSettings["password"]);
        //Or your Smtp Email ID and Password
        smtp.EnableSsl = true;
        try
        {
            smtp.Send(mail);
            Label1.Text = "Email Sent Successfully!";
            txtInviName.Text = "";
            txtInvitEmail.Text = "";
                      
        }
        catch (Exception ex)
        {
            Label1.Text="Oops! Something went wrong";
        }
    }

}
