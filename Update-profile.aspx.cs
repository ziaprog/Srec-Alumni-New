using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;

public partial class pro : System.Web.UI.Page
{
    
   
   
    protected void upload_Click(object sender, EventArgs e)
    {
        
         
       String extension = Path.GetExtension(FileUpload1.PostedFile.FileName).ToLower();
        switch (extension)
        {
            case ".png":
            case ".jpg":
            case ".gif":

                //get reference
                HttpPostedFile myfile = FileUpload1.PostedFile;
                //initialize class
                resize objimage = new resize();

                string path = Server.MapPath("images") + "\\profile\\" + User.Identity.Name + extension;

                objimage.resizefromstream(path, 70, myfile.InputStream);
                break;
        }

            //save url in database
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" + Server.MapPath("App_Data") + "\\aspnet.mdb");
            OleDbCommand cmd = new OleDbCommand("UPDATE Account SET imageurl=@imageurl where [username]=@username ", con);
            cmd.Parameters.AddWithValue("@imageurl", User.Identity.Name + extension);
            cmd.Parameters.AddWithValue("@username", User.Identity.Name);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();


            Response.Redirect("update-profile.aspx");
        }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
           //batch
            ddlBatch.Items.Add(new ListItem("select one", "select one"));
            int currentyear = DateTime.Now.Year;
            int startyear = 1950;
            for (int i = startyear; i < currentyear; i++)
            {
                ddlBatch.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }

            //end batch

            //branch
            
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" + Server.MapPath("App_Data") + "\\aspnet.mdb");
            OleDbCommand cmd = new OleDbCommand("SELECT * FROM [Account] WHERE ([username]=@username) ", con);


            cmd.Parameters.AddWithValue("@username", User.Identity.Name);


            con.Open();
            OleDbDataReader dr = cmd.ExecuteReader();
            dr.Read();
            //try
            //{
            //fill out 
            Session["id"] = dr["ID"].ToString();
            Image1.ImageUrl = "~/images/profile/" + dr["imageurl"].ToString();
            fullnameTextBox.Text = dr["fullname"].ToString();
            genderddl.SelectedValue = dr["gender"].ToString();
            dobTextBox.Text = dr["dob"].ToString();
            maritalddl.SelectedValue = dr["marital"].ToString();
            contactTextBox.Text = dr["contactno"].ToString();
            emailTextBox.Text = dr["email"].ToString();
            webpageTextBox.Text = dr["webpage"].ToString();
            address1TextBox.Text = dr["address1"].ToString();
            address2TextBox.Text = dr["address2"].ToString();
            cityTextBox.Text = dr["city"].ToString();
            stateTextBox.Text = dr["state"].ToString();
            countryTextBox.Text = dr["country"].ToString();
            postcodeTextBox.Text = dr["postcode"].ToString();
            rollnoTextBox.Text = dr["rollno"].ToString();
            branchddl.SelectedValue = dr["branch"].ToString();
            ddlBatch.SelectedValue = dr["passedout"].ToString();
            designationTextBox.Text = dr["designation"].ToString();
            employerTextBox.Text = dr["employer"].ToString();
            //}
            //catch (Exception ex)
            //{ }
            //finally
            //{
            con.Close();
            //}

            branch br = new branch();
            branchddl.DataSource = br.branches;
            branchddl.DataBind();
        }
    }

    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" + Server.MapPath("App_Data") + "\\aspnet.mdb");
        OleDbCommand cmd = new OleDbCommand("UPDATE Account SET fullname=@fullname," +
                                                "gender=@gender,dob=@dob,marital=@marital," +
                                                "contactno=@contactno,email=@email,webpage=@webpage,address1=@address1," +
                                                "address2=@address2,city=@city,state=@state," +
                                                "country=@country,postcode=@postcode,rollno=@rollno," +
                                                "branch=@branch,passedout=@passedout,designation=@designation," +
                                                "employer=@employer where [username]=@username ", con);
        cmd.Parameters.AddWithValue("@fullname", fullnameTextBox.Text);
        cmd.Parameters.AddWithValue("@gender", genderddl.Text);
        cmd.Parameters.AddWithValue("@dob", dobTextBox.Text);
        cmd.Parameters.AddWithValue("@marital", maritalddl.Text);
        cmd.Parameters.AddWithValue("@contactno", contactTextBox.Text);
        cmd.Parameters.AddWithValue("@email", emailTextBox.Text);
        cmd.Parameters.AddWithValue("@webpage", webpageTextBox.Text);
        cmd.Parameters.AddWithValue("@address1", address1TextBox.Text);
        cmd.Parameters.AddWithValue("@address2", address2TextBox.Text);
        cmd.Parameters.AddWithValue("@city", cityTextBox.Text);
        cmd.Parameters.AddWithValue("@state", stateTextBox.Text);
        cmd.Parameters.AddWithValue("@country", countryTextBox.Text);
        cmd.Parameters.AddWithValue("@postcode", postcodeTextBox.Text);
        cmd.Parameters.AddWithValue("@rollno", rollnoTextBox.Text);
        cmd.Parameters.AddWithValue("@branch", branchddl.Text);
        cmd.Parameters.AddWithValue("@passedout", ddlBatch.Text);
        cmd.Parameters.AddWithValue("@designation", designationTextBox.Text);
        cmd.Parameters.AddWithValue("@employer", employerTextBox.Text);

        cmd.Parameters.AddWithValue("@username", User.Identity.Name);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("profiles.aspx?pid=" + Session["id"]);
    }
}
