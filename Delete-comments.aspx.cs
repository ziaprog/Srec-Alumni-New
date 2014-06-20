using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Delete_comments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        e.Row.Cells[0].Text = Server.HtmlDecode(e.Row.Cells[0].Text);
    }
}
