package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.b;
import com.bumptech.glide.load.engine.bitmap_recycle.d;
import com.bumptech.glide.load.engine.s;
import f3.k;
import n2.g;

public abstract class f
  implements g<Bitmap>
{
  public final s<Bitmap> b(Context paramContext, s<Bitmap> params, int paramInt1, int paramInt2)
  {
    if (k.t(paramInt1, paramInt2))
    {
      d locald = b.c(paramContext).f();
      paramContext = (Bitmap)params.get();
      int i = paramInt1;
      if (paramInt1 == -2147483648) {
        i = paramContext.getWidth();
      }
      paramInt1 = paramInt2;
      if (paramInt2 == -2147483648) {
        paramInt1 = paramContext.getHeight();
      }
      Bitmap localBitmap = c(locald, paramContext, i, paramInt1);
      if (!paramContext.equals(localBitmap)) {
        params = e.f(localBitmap, locald);
      }
      return params;
    }
    paramContext = new StringBuilder();
    paramContext.append("Cannot apply transformation on width: ");
    paramContext.append(paramInt1);
    paramContext.append(" or height: ");
    paramContext.append(paramInt2);
    paramContext.append(" less than or equal to zero and not Target.SIZE_ORIGINAL");
    throw new IllegalArgumentException(paramContext.toString());
  }
  
  protected abstract Bitmap c(d paramd, Bitmap paramBitmap, int paramInt1, int paramInt2);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.f
 * JD-Core Version:    0.7.0.1
 */