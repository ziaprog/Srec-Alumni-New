using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
public partial class Messages : System.Web.UI.Page
{
    public string CreateID(object value)
    {

        return "div_" + value.ToString();

    }
    
    int uid;
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["userinfo"];
        uid =int.Parse(cookie["ID"].ToString());
    }
    //protected void AccessDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    //{

    //    e.Command.Parameters["userid"].Value = uid;
    //}

    protected void AccessDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        e.Command.Parameters["userid"].Value = uid;
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //e.Row.Cells["Message"].Text = Server.HtmlDecode(e.Row.Cells[9].Text);
        //foreach (TableCell cell in e.Row.Cells)
        //{
        //    cell.Text = Server.HtmlDecode(cell.Text);
        //}

    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("valign", "top");
        }
    }
   
}
