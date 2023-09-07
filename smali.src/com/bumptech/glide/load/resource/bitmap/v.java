package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.load.engine.s;
import n2.e;

public class v
  implements e<Uri, Bitmap>
{
  private final v2.d a;
  private final com.bumptech.glide.load.engine.bitmap_recycle.d b;
  
  public v(v2.d paramd, com.bumptech.glide.load.engine.bitmap_recycle.d paramd1)
  {
    this.a = paramd;
    this.b = paramd1;
  }
  
  public s<Bitmap> c(Uri paramUri, int paramInt1, int paramInt2, n2.d paramd)
  {
    paramUri = this.a.c(paramUri, paramInt1, paramInt2, paramd);
    if (paramUri == null) {
      return null;
    }
    paramUri = (Drawable)paramUri.get();
    return m.a(this.b, paramUri, paramInt1, paramInt2);
  }
  
  public boolean d(Uri paramUri, n2.d paramd)
  {
    return "android.resource".equals(paramUri.getScheme());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.v
 * JD-Core Version:    0.7.0.1
 */