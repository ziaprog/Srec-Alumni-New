using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
/// <summary>
/// Summary description for resize
/// </summary>
public class resize
{
    public void resizefromstream(string imgsavepath, int maxsidesize, Stream buffer)
    {
        ////create
        //Image img = Image.FromStream(buffer);
        //Image thumb = img.GetThumbnailImage(maxsidesize, maxsidesize, null, IntPtr.Zero);
        ////save
        //thumb.Save(imgsavepath);
        //img.Dispose();
        //thumb.Dispose();
        //buffer.Close();

        Image img;
        //Reading the images in
        try
        {
            img = Image.FromStream(buffer);
        }
        catch
        {
            return;
        }
        //calculate size
        AspectRatio aspr = new AspectRatio();
        Size ThumbNailSize = aspr.NewImageSize(img.Height,img.Width, maxsidesize);

        // Creating the thumbnail bitmap
        Bitmap source_bitmap = new Bitmap(img);
        Bitmap thumb_bitmap = new Bitmap(ThumbNailSize.Width, ThumbNailSize.Height);
        Graphics g = Graphics.FromImage(thumb_bitmap);
        g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
        g.DrawImage(source_bitmap, 0, 0, ThumbNailSize.Width, ThumbNailSize.Height);
      
        //Saving the thumbnail to disk
        ImageCodecInfo[] Info = ImageCodecInfo.GetImageEncoders();
        EncoderParameters Params = new EncoderParameters(1);
        Params.Param[0] = new EncoderParameter(System.Drawing.Imaging.Encoder.Quality, 80L);
        thumb_bitmap.Save(imgsavepath, Info[1], Params);


    }

   
}
