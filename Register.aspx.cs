using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Web.Security;
public partial class Register : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" + Server.MapPath("App_Data") + "\\aspnet.mdb");
        OleDbCommand cmd = new OleDbCommand("Select [username] from Account where [username]=@username ", con);
        cmd.Parameters.AddWithValue("@username", usrTextBox.Text.Trim());
       
        try
        {
            con.Open();
            OleDbDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label1.Text="Please Choose a Different Username";
                
            }
               
            else
            {
                //close dr before writing another query
                dr.Close();
                // second query
                cmd.CommandText="INSERT INTO Account ([username],[password],[email],[imageurl],[fullname],passedout,branch) values(@username,@password,@email,@imageurl,@fullname,@passedout,@branch)";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@username", usrTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("@password", passTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("@email", emailTextBox.Text);
                cmd.Parameters.AddWithValue("@imageurl", "default.gif");
                cmd.Parameters.AddWithValue("@fullname", fnameTextBox.Text);
                cmd.Parameters.AddWithValue("@passedout", ddlBatch.Text);
                cmd.Parameters.AddWithValue("@branch", ddlBranch.Text);
                try
                {

                    
                    cmd.ExecuteNonQuery();
                    Button1.Enabled = false;
                    Label1.Text = "Your account has been created. <a href='login.aspx'>Click here</a> to go to login page";
                  

                }
                catch (Exception ex)
                {
                     Label1.Text=ex.Message;
                }
               
            }
        }
        catch (Exception ex)
        {
             Label1.Text=ex.Message;
        }
        finally
        {
            con.Close();
            
        }
        
       

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ddlBatch.Items.Add(new ListItem("select one", "select one"));
            int currentyear = DateTime.Now.Year;
            int startyear = 1950;
            for (int i = startyear; i < currentyear; i++)
            {
                ddlBatch.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }

            branch br = new branch();
            ddlBranch.DataSource = br.branches;
            ddlBranch.DataBind();

        }
    }
}
