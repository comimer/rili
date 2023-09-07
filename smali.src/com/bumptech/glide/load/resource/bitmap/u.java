package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.engine.s;
import java.io.IOException;
import n2.d;
import n2.e;

public final class u
  implements e<ParcelFileDescriptor, Bitmap>
{
  private final l a;
  
  public u(l paraml)
  {
    this.a = paraml;
  }
  
  public s<Bitmap> c(ParcelFileDescriptor paramParcelFileDescriptor, int paramInt1, int paramInt2, d paramd)
    throws IOException
  {
    return this.a.d(paramParcelFileDescriptor, paramInt1, paramInt2, paramd);
  }
  
  public boolean d(ParcelFileDescriptor paramParcelFileDescriptor, d paramd)
  {
    return this.a.o(paramParcelFileDescriptor);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.u
 * JD-Core Version:    0.7.0.1
 */