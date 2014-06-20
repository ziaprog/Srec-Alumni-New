using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Error : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Uri urlref = Request.UrlReferrer;
            if(urlref!=null)
            linkGoBack.NavigateUrl = urlref.ToString();
        }
      
    }
}
