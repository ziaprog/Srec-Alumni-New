using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Net;
using System.Web.Security;
public partial class login : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" + Server.MapPath("App_Data") + "\\aspnet.mdb");
        OleDbCommand cmd = new OleDbCommand("Select [username],[password],[fullname],[email],[ID] from Account where [username]=@username and [password]=@password", con);
        cmd.Parameters.AddWithValue("@username", lusrTextBox.Text.Trim());
        cmd.Parameters.AddWithValue("@password", lpassTextBox.Text.Trim());
        try
        {
            con.Open();
            OleDbDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                // Create the cookie object.
                HttpCookie cookie = new HttpCookie("userinfo");
                cookie.Expires = DateTime.Now.AddDays(1);
                // Set a value in it.
                cookie["ID"] = dr["ID"].ToString();
                cookie["fullname"] = dr["fullname"].ToString();
                cookie["email"] = dr["email"].ToString();
                // Add it to the current web response.
                Response.Cookies.Add(cookie);

                FormsAuthentication.RedirectFromLoginPage(lusrTextBox.Text, true);

            }
            else
                Label1.Text = "Invalid Login";
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }

    }
}
