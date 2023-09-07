package k1;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import android.provider.Settings.Global;
import android.util.DisplayMetrics;
import b1.u;
import c1.d;
import com.airbnb.lottie.c;
import java.io.Closeable;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import javax.net.ssl.SSLException;

public final class h
{
  private static final ThreadLocal<PathMeasure> a = new a();
  private static final ThreadLocal<Path> b = new b();
  private static final ThreadLocal<Path> c = new c();
  private static final ThreadLocal<float[]> d = new d();
  private static final float e = (float)(Math.sqrt(2.0D) / 2.0D);
  
  public static void a(Path paramPath, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    c.a("applyTrimPathIfNeeded");
    PathMeasure localPathMeasure = (PathMeasure)a.get();
    Path localPath1 = (Path)b.get();
    Path localPath2 = (Path)c.get();
    localPathMeasure.setPath(paramPath, false);
    float f1 = localPathMeasure.getLength();
    if ((paramFloat1 == 1.0F) && (paramFloat2 == 0.0F))
    {
      c.b("applyTrimPathIfNeeded");
      return;
    }
    if ((f1 >= 1.0F) && (Math.abs(paramFloat2 - paramFloat1 - 1.0F) >= 0.01D))
    {
      float f2 = paramFloat1 * f1;
      paramFloat2 *= f1;
      paramFloat1 = Math.min(f2, paramFloat2);
      f2 = Math.max(f2, paramFloat2);
      paramFloat3 *= f1;
      paramFloat2 = paramFloat1 + paramFloat3;
      f2 += paramFloat3;
      paramFloat3 = paramFloat2;
      paramFloat1 = f2;
      if (paramFloat2 >= f1)
      {
        paramFloat3 = paramFloat2;
        paramFloat1 = f2;
        if (f2 >= f1)
        {
          paramFloat3 = g.f(paramFloat2, f1);
          paramFloat1 = g.f(f2, f1);
        }
      }
      paramFloat2 = paramFloat3;
      if (paramFloat3 < 0.0F) {
        paramFloat2 = g.f(paramFloat3, f1);
      }
      paramFloat3 = paramFloat1;
      if (paramFloat1 < 0.0F) {
        paramFloat3 = g.f(paramFloat1, f1);
      }
      boolean bool = paramFloat2 < paramFloat3;
      if (!bool)
      {
        paramPath.reset();
        c.b("applyTrimPathIfNeeded");
        return;
      }
      paramFloat1 = paramFloat2;
      if (!bool) {
        paramFloat1 = paramFloat2 - f1;
      }
      localPath1.reset();
      localPathMeasure.getSegment(paramFloat1, paramFloat3, localPath1, true);
      if (paramFloat3 > f1)
      {
        localPath2.reset();
        localPathMeasure.getSegment(0.0F, paramFloat3 % f1, localPath2, true);
        localPath1.addPath(localPath2);
      }
      else if (paramFloat1 < 0.0F)
      {
        localPath2.reset();
        localPathMeasure.getSegment(paramFloat1 + f1, f1, localPath2, true);
        localPath1.addPath(localPath2);
      }
      paramPath.set(localPath1);
      c.b("applyTrimPathIfNeeded");
      return;
    }
    c.b("applyTrimPathIfNeeded");
  }
  
  public static void b(Path paramPath, u paramu)
  {
    if ((paramu != null) && (!paramu.k()))
    {
      float f1 = ((d)paramu.i()).p();
      float f2 = ((d)paramu.f()).p();
      float f3 = ((d)paramu.h()).p();
      a(paramPath, f1 / 100.0F, f2 / 100.0F, f3 / 360.0F);
    }
  }
  
  public static void c(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      try
      {
        paramCloseable.close();
      }
      catch (RuntimeException paramCloseable)
      {
        throw paramCloseable;
      }
      label16:
      return;
    }
    catch (Exception paramCloseable)
    {
      break label16;
    }
  }
  
  public static Path d(PointF paramPointF1, PointF paramPointF2, PointF paramPointF3, PointF paramPointF4)
  {
    Path localPath = new Path();
    localPath.moveTo(paramPointF1.x, paramPointF1.y);
    if ((paramPointF3 != null) && (paramPointF4 != null) && ((paramPointF3.length() != 0.0F) || (paramPointF4.length() != 0.0F)))
    {
      float f1 = paramPointF1.x;
      float f2 = paramPointF3.x;
      float f3 = paramPointF1.y;
      float f4 = paramPointF3.y;
      float f5 = paramPointF2.x;
      float f6 = paramPointF4.x;
      float f7 = paramPointF2.y;
      localPath.cubicTo(f2 + f1, f3 + f4, f5 + f6, f7 + paramPointF4.y, f5, f7);
    }
    else
    {
      localPath.lineTo(paramPointF2.x, paramPointF2.y);
    }
    return localPath;
  }
  
  public static float e()
  {
    return Resources.getSystem().getDisplayMetrics().density;
  }
  
  public static float f(Context paramContext)
  {
    return Settings.Global.getFloat(paramContext.getContentResolver(), "animator_duration_scale", 1.0F);
  }
  
  public static float g(Matrix paramMatrix)
  {
    float[] arrayOfFloat = (float[])d.get();
    arrayOfFloat[0] = 0.0F;
    arrayOfFloat[1] = 0.0F;
    float f1 = e;
    arrayOfFloat[2] = f1;
    arrayOfFloat[3] = f1;
    paramMatrix.mapPoints(arrayOfFloat);
    float f2 = arrayOfFloat[2];
    float f3 = arrayOfFloat[0];
    float f4 = arrayOfFloat[3];
    f1 = arrayOfFloat[1];
    return (float)Math.hypot(f2 - f3, f4 - f1);
  }
  
  public static boolean h(Matrix paramMatrix)
  {
    float[] arrayOfFloat = (float[])d.get();
    boolean bool = false;
    arrayOfFloat[0] = 0.0F;
    arrayOfFloat[1] = 0.0F;
    arrayOfFloat[2] = 37394.73F;
    arrayOfFloat[3] = 39575.234F;
    paramMatrix.mapPoints(arrayOfFloat);
    if ((arrayOfFloat[0] == arrayOfFloat[2]) || (arrayOfFloat[1] == arrayOfFloat[3])) {
      bool = true;
    }
    return bool;
  }
  
  public static int i(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if (paramFloat1 != 0.0F) {
      i = (int)(527 * paramFloat1);
    } else {
      i = 17;
    }
    int j = i;
    if (paramFloat2 != 0.0F) {
      j = (int)(i * 31 * paramFloat2);
    }
    int i = j;
    if (paramFloat3 != 0.0F) {
      i = (int)(j * 31 * paramFloat3);
    }
    j = i;
    if (paramFloat4 != 0.0F) {
      j = (int)(i * 31 * paramFloat4);
    }
    return j;
  }
  
  public static boolean j(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    boolean bool = false;
    if (paramInt1 < paramInt4) {
      return false;
    }
    if (paramInt1 > paramInt4) {
      return true;
    }
    if (paramInt2 < paramInt5) {
      return false;
    }
    if (paramInt2 > paramInt5) {
      return true;
    }
    if (paramInt3 >= paramInt6) {
      bool = true;
    }
    return bool;
  }
  
  public static boolean k(Throwable paramThrowable)
  {
    boolean bool;
    if ((!(paramThrowable instanceof SocketException)) && (!(paramThrowable instanceof ClosedChannelException)) && (!(paramThrowable instanceof InterruptedIOException)) && (!(paramThrowable instanceof ProtocolException)) && (!(paramThrowable instanceof SSLException)) && (!(paramThrowable instanceof UnknownHostException)) && (!(paramThrowable instanceof UnknownServiceException))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public static Bitmap l(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    if ((paramBitmap.getWidth() == paramInt1) && (paramBitmap.getHeight() == paramInt2)) {
      return paramBitmap;
    }
    Bitmap localBitmap = Bitmap.createScaledBitmap(paramBitmap, paramInt1, paramInt2, true);
    paramBitmap.recycle();
    return localBitmap;
  }
  
  public static void m(Canvas paramCanvas, RectF paramRectF, Paint paramPaint)
  {
    n(paramCanvas, paramRectF, paramPaint, 31);
  }
  
  public static void n(Canvas paramCanvas, RectF paramRectF, Paint paramPaint, int paramInt)
  {
    c.a("Utils#saveLayer");
    paramCanvas.saveLayer(paramRectF, paramPaint);
    c.b("Utils#saveLayer");
  }
  
  class a
    extends ThreadLocal<PathMeasure>
  {
    protected PathMeasure a()
    {
      return new PathMeasure();
    }
  }
  
  class b
    extends ThreadLocal<Path>
  {
    protected Path a()
    {
      return new Path();
    }
  }
  
  class c
    extends ThreadLocal<Path>
  {
    protected Path a()
    {
      return new Path();
    }
  }
  
  class d
    extends ThreadLocal<float[]>
  {
    protected float[] a()
    {
      return new float[4];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k1.h
 * JD-Core Version:    0.7.0.1
 */