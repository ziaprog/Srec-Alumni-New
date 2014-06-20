using System;
using System.Collections.Generic;
using System.Web;
using System.Drawing;

/// <summary>
/// Summary description for AspectRatio
/// </summary>
public class AspectRatio
{
    public Size NewImageSize(int OriginalHeight, int OriginalWidth, double FormatSize)
    {
        Size NewSize; double tempval;

        if (OriginalHeight > FormatSize || OriginalWidth > FormatSize)
        {
            if (OriginalHeight > OriginalWidth)
                tempval = FormatSize / Convert.ToDouble(OriginalHeight);
            else
                tempval = FormatSize / Convert.ToDouble(OriginalWidth);

            NewSize = new Size(Convert.ToInt32(tempval * OriginalWidth), Convert.ToInt32(tempval * OriginalHeight));
        }
        else
            NewSize = new Size(OriginalWidth, OriginalHeight); return NewSize;
    }

    public AspectRatio()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}
