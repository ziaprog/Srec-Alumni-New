using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
public partial class SendMessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void sendButton_Click(object sender, EventArgs e)
    {
          OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" + Server.MapPath("App_Data") + "\\aspnet.mdb");
          OleDbCommand cmd = new OleDbCommand("INSERT INTO News (AccountID,Subject,Message,CreateDate) values(@AccountID,@Subject,@Message,@CreateDate)", con);
              con.Open();
              HttpCookie cookie = Request.Cookies["userinfo"];
               cmd.Parameters.AddWithValue("@AccountID",cookie["ID"]);
           cmd.Parameters.AddWithValue("@Subject", subjectTextBox.Text);
            cmd.Parameters.AddWithValue("@Message", Editor1.Content);
            cmd.Parameters.AddWithValue("@CreateDate", DateTime.Now.ToShortDateString() + ' ' + DateTime.Now.ToShortTimeString());
            
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("NewsandEvents.aspx");
        }
    }

