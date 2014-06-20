using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.IO;
public partial class Add_new_album : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnNewCategory_Click(object sender, EventArgs e)
    {
        
        
        string filepath = Server.MapPath("Gallery");
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

                string path = Server.MapPath("Gallery") + "\\Album\\" + FileUpload1.FileName;

                objimage.resizefromstream(path, 200, myfile.InputStream);

                
               //db
                OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" + Server.MapPath("App_Data") + "\\aspnet.mdb");
                OleDbCommand cmd = new OleDbCommand("INSERT INTO Albums (AccountID," +
                "AlbumName,AlbumPhoto,Description,IsPublic,CreateDate) values(@AccountID,@AlbumName,@AlbumPhoto,@Description,@IsPublic,@CreateDate)", con);
                HttpCookie cookie = Request.Cookies["userinfo"];
                int id = int.Parse(cookie["ID"]);
                cmd.Parameters.AddWithValue("@AccountID", id);
                cmd.Parameters.AddWithValue("@AlbumName", txtAlbumName.Text);
                cmd.Parameters.AddWithValue("@AlbumPhoto", FileUpload1.FileName);
                cmd.Parameters.AddWithValue("@Description", txtAlbumDescription.Text);
                cmd.Parameters.AddWithValue("@IsPublic", 1);
                cmd.Parameters.AddWithValue("@CreateDate", DateTime.Now.ToShortDateString() + ' ' + DateTime.Now.ToShortTimeString());
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                
                Label1.Text = "Album Added";
                break;
            default:
                Label1.Text = "<span style='color:red'>Error:We only accept jpg, png & gif</span></p>";
                break;
        }
        Response.Redirect("Upload-photos.aspx");
    }

}
