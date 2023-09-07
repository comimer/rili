package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.engine.bitmap_recycle.d;
import com.bumptech.glide.load.engine.s;
import java.security.MessageDigest;
import n2.g;

public class n
  implements g<Drawable>
{
  private final g<Bitmap> b;
  private final boolean c;
  
  public n(g<Bitmap> paramg, boolean paramBoolean)
  {
    this.b = paramg;
    this.c = paramBoolean;
  }
  
  private s<Drawable> d(Context paramContext, s<Bitmap> params)
  {
    return t.f(paramContext.getResources(), params);
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    this.b.a(paramMessageDigest);
  }
  
  public s<Drawable> b(Context paramContext, s<Drawable> params, int paramInt1, int paramInt2)
  {
    Object localObject1 = com.bumptech.glide.b.c(paramContext).f();
    Object localObject2 = (Drawable)params.get();
    localObject1 = m.a((d)localObject1, (Drawable)localObject2, paramInt1, paramInt2);
    if (localObject1 == null)
    {
      if (!this.c) {
        return params;
      }
      paramContext = new StringBuilder();
      paramContext.append("Unable to convert ");
      paramContext.append(localObject2);
      paramContext.append(" to a Bitmap");
      throw new IllegalArgumentException(paramContext.toString());
    }
    localObject2 = this.b.b(paramContext, (s)localObject1, paramInt1, paramInt2);
    if (localObject2.equals(localObject1))
    {
      ((s)localObject2).a();
      return params;
    }
    return d(paramContext, (s)localObject2);
  }
  
  public g<BitmapDrawable> c()
  {
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof n))
    {
      paramObject = (n)paramObject;
      return this.b.equals(paramObject.b);
    }
    return false;
  }
  
  public int hashCode()
  {
    return this.b.hashCode();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.n
 * JD-Core Version:    0.7.0.1
 */