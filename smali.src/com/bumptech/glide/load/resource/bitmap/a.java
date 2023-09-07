package com.bumptech.glide.load.resource.bitmap;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.engine.s;
import f3.j;
import java.io.IOException;
import n2.d;
import n2.e;

public class a<DataType>
  implements e<DataType, BitmapDrawable>
{
  private final e<DataType, Bitmap> a;
  private final Resources b;
  
  public a(Resources paramResources, e<DataType, Bitmap> parame)
  {
    this.b = ((Resources)j.d(paramResources));
    this.a = ((e)j.d(parame));
  }
  
  public boolean a(DataType paramDataType, d paramd)
    throws IOException
  {
    return this.a.a(paramDataType, paramd);
  }
  
  public s<BitmapDrawable> b(DataType paramDataType, int paramInt1, int paramInt2, d paramd)
    throws IOException
  {
    paramDataType = this.a.b(paramDataType, paramInt1, paramInt2, paramd);
    return t.f(this.b, paramDataType);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.a
 * JD-Core Version:    0.7.0.1
 */