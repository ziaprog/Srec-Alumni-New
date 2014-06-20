using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.OleDb;
public partial class Admin_delete_photos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" + Server.MapPath("App_Data") + "\\aspnet.mdb");
        OleDbCommand cmd = new OleDbCommand("delete * from Comments where PhotoID=@PhotoID", con);
        con.Open();
        string id=GridView1.Rows[e.RowIndex].Cells[1].Text;
        cmd.Parameters.AddWithValue("@PhotoID",id);
        cmd.ExecuteNonQuery();
        con.Close();
        
        try
        {

            string txt = GridView1.Rows[e.RowIndex].Cells[2].Text;
            File.Delete(Server.MapPath("Gallery") + "\\Thumbs\\" + txt);
            File.Delete(Server.MapPath("Gallery") + "\\" + txt);
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
}
