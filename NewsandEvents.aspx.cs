using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewsandEvents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCreated1(object sender, GridViewRowEventArgs e)
    {
        e.Row.Attributes.Add("valign", "top");
    }

  
  
}
