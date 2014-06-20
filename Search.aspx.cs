using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Web.Security;
public partial class Find : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ddlBatch.Items.Add(new ListItem("",""));
            int currentyear = DateTime.Now.Year;
            int startyear = 1950;
            for (int i = startyear; i < currentyear; i++)
            {
                ddlBatch.Items.Add(new ListItem(i.ToString(),i.ToString()));
            }
            string[] branches = { "", "B.Sc(CT)",  
            "B.Sc(IT)",
            "BE(CSE)",
            "BE(ECE)",
            "BE(EEE)",
            "BE(EIE)",
            "BE(MECH)",
            "BTech(IT)",
             "M.E(PED)",
            "M.E(SE)",
            "M.Sc(SE)",
            "MCA", 
           "other"   };

           ddlBranch.DataSource = branches;
           ddlBranch.DataBind();
         
        }
    }


    protected void Search_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        nameTextBox.Text = "";
        ddlBatch.SelectedIndex = 0;
        ddlBranch.SelectedIndex = 0;
    }
}
