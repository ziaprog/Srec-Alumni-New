using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.IO;
public partial class Upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
             
        Random rnd = new Random();


        string filepath = Server.MapPath("Gallery");
        HttpFileCollection uploadedfiles = Request.Files;
        for (int i = 0; i < uploadedfiles.Count; i++)
        {
            HttpPostedFile userPostedFile = uploadedfiles[i];
            try
            {
                if (userPostedFile.ContentLength > 0)
                {
                    String extension = Path.GetExtension(userPostedFile.FileName).ToLower();
                    switch (extension)
                    {
                        case ".png":
                        case ".jpg":
                        case ".gif":
                            Label1.Text += "<p><u>File #" + (i + 1) +"</u><br>";
                            Label1.Text += "File Content Type: " +
                            userPostedFile.ContentType + "<br>";
                            Label1.Text += "File Size: " +
                            userPostedFile.ContentLength + "kb<br>";
                            Label1.Text += "File Name: " +
                            userPostedFile.FileName + "<br>";
                            userPostedFile.SaveAs(filepath + "\\" + System.IO.Path.GetFileName(userPostedFile.FileName));
                            //thumb
                           //get reference
             
                //call class method
                resize objimage = new resize();

                string path = filepath + "\\Thumbs\\" + System.IO.Path.GetFileName(userPostedFile.FileName);

                objimage.resizefromstream(path, 100, userPostedFile.InputStream);

                            //insert into database
                            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" + Server.MapPath("App_Data") + "\\aspnet.mdb");
                            OleDbCommand cmd = new OleDbCommand("INSERT INTO Photos (AlbumID,AccountID," +
                            "FileSystemName,IsPublic,CreateDate,Approved) values(@AlbumID,@AccountID,@FileSystemName," +
                            "@IsPublic,@CreateDate,@Approved)", con);

                            string ddlvalue = DropDownList1.SelectedValue;
                            cmd.Parameters.AddWithValue("@AlbumID", int.Parse(ddlvalue));
                            HttpCookie cookie = Request.Cookies["userinfo"];
                            int id = int.Parse(cookie["ID"]);
                            cmd.Parameters.AddWithValue("@AccountID", id);
                            cmd.Parameters.AddWithValue("@FileSystemName", userPostedFile.FileName);
                            cmd.Parameters.AddWithValue("@IsPublic", 1);
                            cmd.Parameters.AddWithValue("@CreateDate", DateTime.Now.ToShortDateString() + ' ' + DateTime.Now.ToShortTimeString());
                            cmd.Parameters.AddWithValue("@Approved", 0);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            Label1.Text += "Uploaded Successfully</p>";
                            con.Close();
                            break;
                        default:
                            Label1.Text += "<p><u>File #" + (i + 1) +
                    "</u><br>";
                            Label1.Text += "File Content Type: " +
                            userPostedFile.ContentType + "<br>";
                            Label1.Text += "File Size: " +
                            userPostedFile.ContentLength + "kb<br>";
                            Label1.Text += "File Name: " +
                            userPostedFile.FileName + "<br>";
                            Label1.Text += "<span style='color:red'>Error:We only accept jpg, png & gif</span></p>";
                            break;
                    }
                    
                }
            }
            catch (Exception ex)
            {
                Label1.Text += ex.Message;
            }
        }
    }
}
