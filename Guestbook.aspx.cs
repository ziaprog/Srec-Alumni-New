using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Text;
public partial class Guestbook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    int i = 1;
   
    protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label lblSerial = (Label)e.Row.FindControl("lblSerial");
            lblSerial.Text = i.ToString();
            i++;
        }
    }
    protected void GridView1_RowCreated1(object sender, GridViewRowEventArgs e)
    {
        e.Row.Attributes.Add("valign", "top");
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
        OleDbCommand cmd = new OleDbCommand("INSERT INTO guestbook ([postedby],[postedon],[message],[pid]) values(@postedby,@postedon,@message,@pid)", con);
        cmd.Parameters.AddWithValue("@postedby", User.Identity.Name);
        cmd.Parameters.AddWithValue("@postedon", DateTime.Now.ToShortDateString() + ' ' + DateTime.Now.ToShortTimeString());
        cmd.Parameters.AddWithValue("@message", sb.ToString());
        HttpCookie cookie = Request.Cookies["userinfo"];
        cmd.Parameters.AddWithValue("@pid", cookie["ID"]);


        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("Guestbook.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            con.Close();
        }
    }
}
