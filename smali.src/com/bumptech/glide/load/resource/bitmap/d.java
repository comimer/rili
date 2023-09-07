package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder.OnHeaderDecodedListener;
import android.graphics.ImageDecoder.Source;
import android.util.Log;
import com.bumptech.glide.load.engine.s;
import java.io.IOException;
import t2.a;

public final class d
  extends a<Bitmap>
{
  private final com.bumptech.glide.load.engine.bitmap_recycle.d b = new com.bumptech.glide.load.engine.bitmap_recycle.e();
  
  protected s<Bitmap> c(ImageDecoder.Source paramSource, int paramInt1, int paramInt2, ImageDecoder.OnHeaderDecodedListener paramOnHeaderDecodedListener)
    throws IOException
  {
    paramSource = ImageDecoder.decodeBitmap(paramSource, paramOnHeaderDecodedListener);
    if (Log.isLoggable("BitmapImageDecoder", 2))
    {
      paramOnHeaderDecodedListener = new StringBuilder();
      paramOnHeaderDecodedListener.append("Decoded [");
      paramOnHeaderDecodedListener.append(paramSource.getWidth());
      paramOnHeaderDecodedListener.append("x");
      paramOnHeaderDecodedListener.append(paramSource.getHeight());
      paramOnHeaderDecodedListener.append("] for [");
      paramOnHeaderDecodedListener.append(paramInt1);
      paramOnHeaderDecodedListener.append("x");
      paramOnHeaderDecodedListener.append(paramInt2);
      paramOnHeaderDecodedListener.append("]");
      Log.v("BitmapImageDecoder", paramOnHeaderDecodedListener.toString());
    }
    return new e(paramSource, this.b);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.d
 * JD-Core Version:    0.7.0.1
 */