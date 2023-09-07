package com.xiaomi.passport.ui.internal.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import java.io.IOException;
import n5.c;
import n5.d;

public class a
  extends BitmapFactory
{
  static Object a = new Object();
  private static byte[] b = { -119, 80, 78, 71, 13, 10, 26, 10 };
  private static final ThreadLocal<Canvas> c = new ThreadLocal();
  private static final Paint d;
  
  static
  {
    Paint localPaint = new Paint(1);
    d = localPaint;
    localPaint.setFilterBitmap(true);
    localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
  }
  
  static Bitmap a(Bitmap paramBitmap1, Bitmap paramBitmap2, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, int paramInt)
  {
    return b(paramBitmap1, paramBitmap2, paramDrawable1, paramDrawable2, paramDrawable3, null, new Rect(0, 0, paramInt, paramInt));
  }
  
  static Bitmap b(Bitmap paramBitmap1, Bitmap paramBitmap2, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Rect paramRect1, Rect paramRect2)
  {
    if ((paramBitmap2 == null) && (paramRect2 == null)) {
      return null;
    }
    Bitmap localBitmap;
    Rect localRect;
    if (paramBitmap2 == null)
    {
      if ((paramRect2.height() > 0) && (paramRect2.width() > 0))
      {
        localBitmap = Bitmap.createBitmap(paramRect2.width(), paramRect2.height(), Bitmap.Config.ARGB_8888);
        localRect = paramRect2;
      }
      else
      {
        return null;
      }
    }
    else
    {
      localBitmap = paramBitmap2;
      localRect = paramRect2;
      if (paramRect2 == null)
      {
        localRect = new Rect(0, 0, paramBitmap2.getWidth(), paramBitmap2.getHeight());
        localBitmap = paramBitmap2;
      }
    }
    paramBitmap1 = f(paramBitmap1, paramDrawable1, null, paramRect1, localRect);
    paramBitmap2 = e();
    paramBitmap2.setBitmap(localBitmap);
    if (paramDrawable3 != null)
    {
      paramDrawable3.setBounds(localRect);
      paramDrawable3.draw(paramBitmap2);
    }
    paramBitmap2.drawBitmap(paramBitmap1, localRect, localRect, null);
    paramBitmap1.recycle();
    if (paramDrawable2 != null)
    {
      paramDrawable2.setBounds(localRect);
      paramDrawable2.draw(paramBitmap2);
    }
    return localBitmap;
  }
  
  static Bitmap c(Context paramContext, Bitmap paramBitmap)
  {
    return d(paramContext, paramBitmap, paramContext.getResources().getDimensionPixelSize(c.c));
  }
  
  public static Bitmap d(Context paramContext, Bitmap paramBitmap, int paramInt)
  {
    paramContext = paramContext.getResources();
    Drawable localDrawable1 = paramContext.getDrawable(d.c);
    Drawable localDrawable2 = paramContext.getDrawable(d.b);
    return a(paramBitmap, null, paramContext.getDrawable(d.d), localDrawable1, localDrawable2, paramInt);
  }
  
  private static Canvas e()
  {
    ThreadLocal localThreadLocal = c;
    Canvas localCanvas1 = (Canvas)localThreadLocal.get();
    Canvas localCanvas2 = localCanvas1;
    if (localCanvas1 == null)
    {
      localCanvas2 = new Canvas();
      localThreadLocal.set(localCanvas2);
    }
    return localCanvas2;
  }
  
  private static Bitmap f(Bitmap paramBitmap1, Drawable paramDrawable, Bitmap paramBitmap2, Rect paramRect1, Rect paramRect2)
  {
    if ((paramBitmap2 == null) && (paramRect2 == null)) {
      return null;
    }
    int i = 0;
    Bitmap localBitmap;
    Rect localRect;
    if (paramBitmap2 == null)
    {
      if ((paramRect2.height() > 0) && (paramRect2.width() > 0))
      {
        localBitmap = Bitmap.createBitmap(paramRect2.width(), paramRect2.height(), Bitmap.Config.ARGB_8888);
        localRect = paramRect2;
      }
      else
      {
        return null;
      }
    }
    else
    {
      localBitmap = paramBitmap2;
      localRect = paramRect2;
      if (paramRect2 == null)
      {
        localRect = new Rect(0, 0, paramBitmap2.getWidth(), paramBitmap2.getHeight());
        localBitmap = paramBitmap2;
      }
    }
    paramBitmap2 = e();
    paramBitmap2.setBitmap(localBitmap);
    paramBitmap2.drawColor(0, PorterDuff.Mode.CLEAR);
    if (paramDrawable != null)
    {
      paramDrawable.setBounds(localRect);
      paramDrawable.draw(paramBitmap2);
    }
    paramDrawable = paramRect1;
    if (paramRect1 == null)
    {
      int j = paramBitmap1.getWidth();
      int k = paramBitmap1.getHeight();
      int m = localRect.width();
      float f1 = localRect.height();
      float f2 = m;
      float f3 = f1 / f2;
      float f4 = j;
      f2 = f4 / f2;
      float f5 = k;
      f1 = f5 / f1;
      if (f2 > f1)
      {
        m = (int)(f5 / f3);
        i = (j - m) / 2;
        j = m;
        m = 0;
      }
      else if (f2 < f1)
      {
        int n = (int)(f3 * f4);
        m = (k - n) / 2;
        k = n;
      }
      else
      {
        m = 0;
      }
      paramDrawable = new Rect(i, m, j + i, k + m);
    }
    paramBitmap2.drawBitmap(paramBitmap1, paramDrawable, localRect, d);
    return localBitmap;
  }
  
  public static boolean g(Bitmap paramBitmap, String paramString)
    throws IOException
  {
    return h(paramBitmap, paramString, false);
  }
  
  /* Error */
  private static boolean h(Bitmap paramBitmap, String paramString, boolean paramBoolean)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +68 -> 69
    //   4: aconst_null
    //   5: astore_3
    //   6: new 189	java/io/FileOutputStream
    //   9: astore 4
    //   11: aload 4
    //   13: aload_1
    //   14: invokespecial 192	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   17: iload_2
    //   18: ifeq +10 -> 28
    //   21: getstatic 198	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   24: astore_1
    //   25: goto +7 -> 32
    //   28: getstatic 201	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   31: astore_1
    //   32: aload_0
    //   33: aload_1
    //   34: bipush 100
    //   36: aload 4
    //   38: invokevirtual 205	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   41: pop
    //   42: aload 4
    //   44: invokevirtual 208	java/io/FileOutputStream:close	()V
    //   47: iconst_1
    //   48: ireturn
    //   49: astore_0
    //   50: aload 4
    //   52: astore_1
    //   53: goto +6 -> 59
    //   56: astore_0
    //   57: aload_3
    //   58: astore_1
    //   59: aload_1
    //   60: ifnull +7 -> 67
    //   63: aload_1
    //   64: invokevirtual 208	java/io/FileOutputStream:close	()V
    //   67: aload_0
    //   68: athrow
    //   69: iconst_0
    //   70: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	71	0	paramBitmap	Bitmap
    //   0	71	1	paramString	String
    //   0	71	2	paramBoolean	boolean
    //   5	53	3	localObject	Object
    //   9	42	4	localFileOutputStream	java.io.FileOutputStream
    // Exception table:
    //   from	to	target	type
    //   21	25	49	finally
    //   28	32	49	finally
    //   32	42	49	finally
    //   6	17	56	finally
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.internal.util.a
 * JD-Core Version:    0.7.0.1
 */