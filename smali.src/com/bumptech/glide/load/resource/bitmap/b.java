package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.engine.s;
import java.io.File;
import n2.a;
import n2.f;

public class b
  implements f<BitmapDrawable>
{
  private final com.bumptech.glide.load.engine.bitmap_recycle.d a;
  private final f<Bitmap> b;
  
  public b(com.bumptech.glide.load.engine.bitmap_recycle.d paramd, f<Bitmap> paramf)
  {
    this.a = paramd;
    this.b = paramf;
  }
  
  public EncodeStrategy a(n2.d paramd)
  {
    return this.b.a(paramd);
  }
  
  public boolean c(s<BitmapDrawable> params, File paramFile, n2.d paramd)
  {
    return this.b.b(new e(((BitmapDrawable)params.get()).getBitmap(), this.a), paramFile, paramd);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.b
 * JD-Core Version:    0.7.0.1
 */