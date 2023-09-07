package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.load.engine.bitmap_recycle.d;
import f3.j;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class y
{
  private static final Paint a = new Paint(6);
  private static final Paint b = new Paint(7);
  private static final Paint c;
  private static final Set<String> d;
  private static final Lock e;
  
  static
  {
    Object localObject = new HashSet(Arrays.asList(new String[] { "XT1085", "XT1092", "XT1093", "XT1094", "XT1095", "XT1096", "XT1097", "XT1098", "XT1031", "XT1028", "XT937C", "XT1032", "XT1008", "XT1033", "XT1035", "XT1034", "XT939G", "XT1039", "XT1040", "XT1042", "XT1045", "XT1063", "XT1064", "XT1068", "XT1069", "XT1072", "XT1077", "XT1078", "XT1079" }));
    d = (Set)localObject;
    if (((Set)localObject).contains(Build.MODEL)) {
      localObject = new ReentrantLock();
    } else {
      localObject = new c();
    }
    e = (Lock)localObject;
    localObject = new Paint(7);
    c = (Paint)localObject;
    ((Paint)localObject).setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
  }
  
  private static void a(Bitmap paramBitmap1, Bitmap paramBitmap2, Matrix paramMatrix)
  {
    Lock localLock = e;
    localLock.lock();
    try
    {
      Canvas localCanvas = new android/graphics/Canvas;
      localCanvas.<init>(paramBitmap2);
      localCanvas.drawBitmap(paramBitmap1, paramMatrix, a);
      e(localCanvas);
      localLock.unlock();
      return;
    }
    finally
    {
      e.unlock();
    }
  }
  
  public static Bitmap b(d paramd, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    if ((paramBitmap.getWidth() == paramInt1) && (paramBitmap.getHeight() == paramInt2)) {
      return paramBitmap;
    }
    Matrix localMatrix = new Matrix();
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    float f1 = 0.0F;
    float f2;
    float f3;
    if (i * paramInt2 > j * paramInt1)
    {
      f2 = paramInt2 / paramBitmap.getHeight();
      f1 = (paramInt1 - paramBitmap.getWidth() * f2) * 0.5F;
      f3 = 0.0F;
    }
    else
    {
      f2 = paramInt1 / paramBitmap.getWidth();
      f3 = (paramInt2 - paramBitmap.getHeight() * f2) * 0.5F;
    }
    localMatrix.setScale(f2, f2);
    localMatrix.postTranslate((int)(f1 + 0.5F), (int)(f3 + 0.5F));
    paramd = paramd.d(paramInt1, paramInt2, k(paramBitmap));
    q(paramBitmap, paramd);
    a(paramBitmap, paramd, localMatrix);
    return paramd;
  }
  
  public static Bitmap c(d paramd, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    if ((paramBitmap.getWidth() <= paramInt1) && (paramBitmap.getHeight() <= paramInt2))
    {
      if (Log.isLoggable("TransformationUtils", 2)) {
        Log.v("TransformationUtils", "requested target size larger or equal to input, returning input");
      }
      return paramBitmap;
    }
    if (Log.isLoggable("TransformationUtils", 2)) {
      Log.v("TransformationUtils", "requested target size too big for input, fit centering instead");
    }
    return f(paramd, paramBitmap, paramInt1, paramInt2);
  }
  
  public static Bitmap d(d paramd, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    paramInt2 = Math.min(paramInt1, paramInt2);
    float f1 = paramInt2;
    float f2 = f1 / 2.0F;
    int i = paramBitmap.getWidth();
    paramInt1 = paramBitmap.getHeight();
    float f3 = i;
    float f4 = f1 / f3;
    float f5 = paramInt1;
    f4 = Math.max(f4, f1 / f5);
    f3 *= f4;
    f5 = f4 * f5;
    f4 = (f1 - f3) / 2.0F;
    f1 = (f1 - f5) / 2.0F;
    RectF localRectF = new RectF(f4, f1, f3 + f4, f5 + f1);
    Bitmap localBitmap1 = g(paramd, paramBitmap);
    Bitmap localBitmap2 = paramd.d(paramInt2, paramInt2, h(paramBitmap));
    localBitmap2.setHasAlpha(true);
    Lock localLock = e;
    localLock.lock();
    try
    {
      Canvas localCanvas = new android/graphics/Canvas;
      localCanvas.<init>(localBitmap2);
      localCanvas.drawCircle(f2, f2, f2, b);
      localCanvas.drawBitmap(localBitmap1, null, localRectF, c);
      e(localCanvas);
      localLock.unlock();
      if (!localBitmap1.equals(paramBitmap)) {
        paramd.c(localBitmap1);
      }
      return localBitmap2;
    }
    finally
    {
      e.unlock();
    }
  }
  
  private static void e(Canvas paramCanvas)
  {
    paramCanvas.setBitmap(null);
  }
  
  public static Bitmap f(d paramd, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    if ((paramBitmap.getWidth() == paramInt1) && (paramBitmap.getHeight() == paramInt2))
    {
      if (Log.isLoggable("TransformationUtils", 2)) {
        Log.v("TransformationUtils", "requested target size matches input, returning input");
      }
      return paramBitmap;
    }
    float f = Math.min(paramInt1 / paramBitmap.getWidth(), paramInt2 / paramBitmap.getHeight());
    int i = Math.round(paramBitmap.getWidth() * f);
    int j = Math.round(paramBitmap.getHeight() * f);
    if ((paramBitmap.getWidth() == i) && (paramBitmap.getHeight() == j))
    {
      if (Log.isLoggable("TransformationUtils", 2)) {
        Log.v("TransformationUtils", "adjusted target size matches input, returning input");
      }
      return paramBitmap;
    }
    paramd = paramd.d((int)(paramBitmap.getWidth() * f), (int)(paramBitmap.getHeight() * f), k(paramBitmap));
    q(paramBitmap, paramd);
    if (Log.isLoggable("TransformationUtils", 2))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("request: ");
      ((StringBuilder)localObject).append(paramInt1);
      ((StringBuilder)localObject).append("x");
      ((StringBuilder)localObject).append(paramInt2);
      Log.v("TransformationUtils", ((StringBuilder)localObject).toString());
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("toFit:   ");
      ((StringBuilder)localObject).append(paramBitmap.getWidth());
      ((StringBuilder)localObject).append("x");
      ((StringBuilder)localObject).append(paramBitmap.getHeight());
      Log.v("TransformationUtils", ((StringBuilder)localObject).toString());
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("toReuse: ");
      ((StringBuilder)localObject).append(paramd.getWidth());
      ((StringBuilder)localObject).append("x");
      ((StringBuilder)localObject).append(paramd.getHeight());
      Log.v("TransformationUtils", ((StringBuilder)localObject).toString());
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("minPct:   ");
      ((StringBuilder)localObject).append(f);
      Log.v("TransformationUtils", ((StringBuilder)localObject).toString());
    }
    Object localObject = new Matrix();
    ((Matrix)localObject).setScale(f, f);
    a(paramBitmap, paramd, (Matrix)localObject);
    return paramd;
  }
  
  private static Bitmap g(d paramd, Bitmap paramBitmap)
  {
    Bitmap.Config localConfig = h(paramBitmap);
    if (localConfig.equals(paramBitmap.getConfig())) {
      return paramBitmap;
    }
    paramd = paramd.d(paramBitmap.getWidth(), paramBitmap.getHeight(), localConfig);
    new Canvas(paramd).drawBitmap(paramBitmap, 0.0F, 0.0F, null);
    return paramd;
  }
  
  private static Bitmap.Config h(Bitmap paramBitmap)
  {
    if (Bitmap.Config.RGBA_F16.equals(paramBitmap.getConfig())) {
      return Bitmap.Config.RGBA_F16;
    }
    return Bitmap.Config.ARGB_8888;
  }
  
  public static Lock i()
  {
    return e;
  }
  
  public static int j(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      paramInt = 0;
      break;
    case 7: 
    case 8: 
      paramInt = 270;
      break;
    case 5: 
    case 6: 
      paramInt = 90;
      break;
    case 3: 
    case 4: 
      paramInt = 180;
    }
    return paramInt;
  }
  
  private static Bitmap.Config k(Bitmap paramBitmap)
  {
    if (paramBitmap.getConfig() != null) {
      paramBitmap = paramBitmap.getConfig();
    } else {
      paramBitmap = Bitmap.Config.ARGB_8888;
    }
    return paramBitmap;
  }
  
  static void l(int paramInt, Matrix paramMatrix)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 8: 
      paramMatrix.setRotate(-90.0F);
      break;
    case 7: 
      paramMatrix.setRotate(-90.0F);
      paramMatrix.postScale(-1.0F, 1.0F);
      break;
    case 6: 
      paramMatrix.setRotate(90.0F);
      break;
    case 5: 
      paramMatrix.setRotate(90.0F);
      paramMatrix.postScale(-1.0F, 1.0F);
      break;
    case 4: 
      paramMatrix.setRotate(180.0F);
      paramMatrix.postScale(-1.0F, 1.0F);
      break;
    case 3: 
      paramMatrix.setRotate(180.0F);
      break;
    case 2: 
      paramMatrix.setScale(-1.0F, 1.0F);
    }
  }
  
  public static boolean m(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return false;
    }
    return true;
  }
  
  public static Bitmap n(d paramd, Bitmap paramBitmap, int paramInt)
  {
    if (!m(paramInt)) {
      return paramBitmap;
    }
    Matrix localMatrix = new Matrix();
    l(paramInt, localMatrix);
    RectF localRectF = new RectF(0.0F, 0.0F, paramBitmap.getWidth(), paramBitmap.getHeight());
    localMatrix.mapRect(localRectF);
    paramd = paramd.d(Math.round(localRectF.width()), Math.round(localRectF.height()), k(paramBitmap));
    localMatrix.postTranslate(-localRectF.left, -localRectF.top);
    paramd.setHasAlpha(paramBitmap.hasAlpha());
    a(paramBitmap, paramd, localMatrix);
    return paramd;
  }
  
  public static Bitmap o(d paramd, Bitmap paramBitmap, int paramInt)
  {
    boolean bool;
    if (paramInt > 0) {
      bool = true;
    } else {
      bool = false;
    }
    j.a(bool, "roundingRadius must be greater than 0.");
    return p(paramd, paramBitmap, new a(paramInt));
  }
  
  private static Bitmap p(d paramd, Bitmap paramBitmap, b paramb)
  {
    Object localObject1 = h(paramBitmap);
    Bitmap localBitmap = g(paramd, paramBitmap);
    localObject1 = paramd.d(localBitmap.getWidth(), localBitmap.getHeight(), (Bitmap.Config)localObject1);
    ((Bitmap)localObject1).setHasAlpha(true);
    Object localObject2 = Shader.TileMode.CLAMP;
    Object localObject3 = new BitmapShader(localBitmap, (Shader.TileMode)localObject2, (Shader.TileMode)localObject2);
    localObject2 = new Paint();
    ((Paint)localObject2).setAntiAlias(true);
    ((Paint)localObject2).setShader((Shader)localObject3);
    RectF localRectF = new RectF(0.0F, 0.0F, ((Bitmap)localObject1).getWidth(), ((Bitmap)localObject1).getHeight());
    localObject3 = e;
    ((Lock)localObject3).lock();
    try
    {
      Canvas localCanvas = new android/graphics/Canvas;
      localCanvas.<init>((Bitmap)localObject1);
      localCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
      paramb.a(localCanvas, (Paint)localObject2, localRectF);
      e(localCanvas);
      ((Lock)localObject3).unlock();
      if (!localBitmap.equals(paramBitmap)) {
        paramd.c(localBitmap);
      }
      return localObject1;
    }
    finally
    {
      e.unlock();
    }
  }
  
  public static void q(Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    paramBitmap2.setHasAlpha(paramBitmap1.hasAlpha());
  }
  
  class a
    implements y.b
  {
    a() {}
    
    public void a(Canvas paramCanvas, Paint paramPaint, RectF paramRectF)
    {
      int i = this.a;
      paramCanvas.drawRoundRect(paramRectF, i, i, paramPaint);
    }
  }
  
  private static abstract interface b
  {
    public abstract void a(Canvas paramCanvas, Paint paramPaint, RectF paramRectF);
  }
  
  private static final class c
    implements Lock
  {
    public void lock() {}
    
    public void lockInterruptibly()
      throws InterruptedException
    {}
    
    public Condition newCondition()
    {
      throw new UnsupportedOperationException("Should not be called");
    }
    
    public boolean tryLock()
    {
      return true;
    }
    
    public boolean tryLock(long paramLong, TimeUnit paramTimeUnit)
      throws InterruptedException
    {
      return true;
    }
    
    public void unlock() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.y
 * JD-Core Version:    0.7.0.1
 */