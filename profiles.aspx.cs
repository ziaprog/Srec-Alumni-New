using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Text;
public partial class Default2 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Uri urlref = Request.UrlReferrer;
            if (urlref != null)
                linkGoBack.NavigateUrl = urlref.ToString();
        }
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append(msgTextBox.Text);
        sb.Replace("\r\n", "<br/>");
        sb.Replace("[angry]", "<img src='images/smiley/smile_baringteeth.gif' />");
        sb.Replace("[cry]", "<img src='images/smiley/smile_cry.gif' />");
        sb.Replace("[devil]", "<img src='images/smiley/smile_devil.gif' />");
        sb.Replace("[embaressed]", "<img src='images/smiley/smile_embaressed.gif' />");
        sb.Replace("[party]", "<img src='images/smiley/smile_party.gif' />");
        sb.Replace("[smile]", "<img src='images/smiley/smile_regular.gif' />");
        sb.Replace("[smile]", "<img src='images/smiley/smile_regular.gif' />");
        sb.Replace("[omg]", "<img src='images/smiley/smile_omg.gif' />");
        sb.Replace("[sad]", "<img src='images/smiley/smile_sad.gif' />");
        sb.Replace("[cool]", "<img src='images/smiley/smile_shades.gif' />");
        sb.Replace("[sick]", "<img src='images/smiley/smile_sick.gif' />");
        sb.Replace("[teeth]", "<img src='images/smiley/smile_teeth.gif' />");
        sb.Replace("[tongue]", "<img src='images/smiley/smile_tongue.gif' />");
        sb.Replace("[wink]", "<img src='images/smiley/smile_wink.gif' />");

        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" + Server.MapPath("App_Data") + "\\aspnet.mdb");
        OleDbCommand cmd = new OleDbCommand("INSERT INTO MessageFolder ([SentByAccountID],[SentByName],[MessageRecipientID],[MessageStatus],[CreateDate],[Subject],[Message]) values(@SentByAccountID,@SentByName,@MessageRecipientID,@MessageStatus,@CreateDate,@Subject,@Message)", con);
        con.Open();
        HttpCookie cookie = Request.Cookies["userinfo"];
        cmd.Parameters.AddWithValue("@SentByAccountID", cookie["ID"]);
        cmd.Parameters.AddWithValue("@SentByName", User.Identity.Name);
        cmd.Parameters.AddWithValue("@MessageRecipientID", int.Parse(Request.QueryString["pid"]));
        cmd.Parameters.AddWithValue("@MessageStatus", "new");
        cmd.Parameters.AddWithValue("@CreateDate", DateTime.Now.ToShortDateString() + ' ' + DateTime.Now.ToShortTimeString());
        cmd.Parameters.AddWithValue("@Subject", subjectTextBox.Text);
        cmd.Parameters.AddWithValue("@Message", sb.ToString());

        cmd.ExecuteNonQuery();
        con.Close();

        subjectTextBox.Text = "";
        msgTextBox.Text = "";
    }
}
