using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Text;
public partial class Viewitem : System.Web.UI.Page
{
    public string relpath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Uri urlref = Request.UrlReferrer;
            if (urlref != null)
                gobackHyperLink.NavigateUrl = urlref.ToString();
               
          
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" + Server.MapPath("App_Data") + "\\aspnet.mdb");
            OleDbCommand cmd = new OleDbCommand("Select PhotoID,FileSystemName from Photos where PhotoID=@PhotoID", con);

            string photoid = Request.QueryString["photoid"];
            cmd.Parameters.AddWithValue("@PhotoID", int.Parse(photoid));

            con.Open();
            OleDbDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string filesystemname = dr["FileSystemName"].ToString();
                relpath = "Gallery/" + filesystemname;
            }
            this.DataBind();
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
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Comments (PhotoID,AccountID,Message,CerateDate) values(@PhotoID,@AccountID,@Message,@CerateDate)", con);

        string photoid = Request.QueryString["photoid"];
                
        cmd.Parameters.AddWithValue("@PhotoID", int.Parse(photoid));

        HttpCookie cookie = Request.Cookies["userinfo"];
        cmd.Parameters.AddWithValue("@AccountID", cookie["ID"]);

        cmd.Parameters.AddWithValue("@Message", sb.ToString());
        cmd.Parameters.AddWithValue("@CerateDate", DateTime.Now.ToShortDateString() + ' ' + DateTime.Now.ToShortTimeString());


        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            //Response.Redirect("Viewitem.aspx?photoid="+photoid);
            GridView1.DataBind();
            Button1.Enabled = false;
            Label4.Text = "comment added";
        }
        catch (Exception ex)
        {
            Label4.Text = ex.Message;
        }
        finally
        {
           
        }
    }
   
   
}
