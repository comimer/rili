package j1;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.Token;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import k1.g;

class t
{
  private static final Interpolator a = new LinearInterpolator();
  private static n.h<WeakReference<Interpolator>> b;
  static JsonReader.a c = JsonReader.a.a(new String[] { "t", "s", "e", "o", "i", "h", "to", "ti" });
  static JsonReader.a d = JsonReader.a.a(new String[] { "x", "y" });
  
  private static WeakReference<Interpolator> a(int paramInt)
  {
    try
    {
      WeakReference localWeakReference = (WeakReference)g().f(paramInt);
      return localWeakReference;
    }
    finally {}
  }
  
  private static Interpolator b(PointF paramPointF1, PointF paramPointF2)
  {
    paramPointF1.x = g.b(paramPointF1.x, -1.0F, 1.0F);
    paramPointF1.y = g.b(paramPointF1.y, -100.0F, 100.0F);
    paramPointF2.x = g.b(paramPointF2.x, -1.0F, 1.0F);
    float f = g.b(paramPointF2.y, -100.0F, 100.0F);
    paramPointF2.y = f;
    int i = k1.h.i(paramPointF1.x, paramPointF1.y, paramPointF2.x, f);
    localObject = a(i);
    Interpolator localInterpolator;
    if (localObject != null) {
      localInterpolator = (Interpolator)((Reference)localObject).get();
    } else {
      localInterpolator = null;
    }
    if (localObject != null)
    {
      localObject = localInterpolator;
      if (localInterpolator != null) {}
    }
    else
    {
      try
      {
        localInterpolator = androidx.core.view.animation.a.a(paramPointF1.x, paramPointF1.y, paramPointF2.x, paramPointF2.y);
        paramPointF1 = localInterpolator;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        if ("The Path cannot loop back on itself.".equals(localIllegalArgumentException.getMessage())) {
          paramPointF1 = androidx.core.view.animation.a.a(Math.min(paramPointF1.x, 1.0F), paramPointF1.y, Math.max(paramPointF2.x, 0.0F), paramPointF2.y);
        } else {
          paramPointF1 = new LinearInterpolator();
        }
      }
    }
    try
    {
      paramPointF2 = new java/lang/ref/WeakReference;
      paramPointF2.<init>(paramPointF1);
      h(i, paramPointF2);
      localObject = paramPointF1;
    }
    catch (ArrayIndexOutOfBoundsException paramPointF2)
    {
      for (;;)
      {
        localObject = paramPointF1;
      }
    }
    return localObject;
  }
  
  static <T> l1.a<T> c(JsonReader paramJsonReader, com.airbnb.lottie.h paramh, float paramFloat, n0<T> paramn0, boolean paramBoolean1, boolean paramBoolean2)
    throws IOException
  {
    if ((paramBoolean1) && (paramBoolean2)) {
      return e(paramh, paramJsonReader, paramFloat, paramn0);
    }
    if (paramBoolean1) {
      return d(paramh, paramJsonReader, paramFloat, paramn0);
    }
    return f(paramJsonReader, paramFloat, paramn0);
  }
  
  private static <T> l1.a<T> d(com.airbnb.lottie.h paramh, JsonReader paramJsonReader, float paramFloat, n0<T> paramn0)
    throws IOException
  {
    paramJsonReader.e();
    Object localObject1 = null;
    int i = 0;
    Object localObject2 = null;
    Object localObject3 = localObject2;
    Object localObject4 = localObject3;
    Object localObject5 = localObject4;
    float f = 0.0F;
    Object localObject6 = localObject5;
    Object localObject7 = localObject4;
    localObject4 = localObject2;
    localObject2 = localObject1;
    while (paramJsonReader.q()) {
      switch (paramJsonReader.a0(c))
      {
      default: 
        paramJsonReader.d0();
        break;
      case 7: 
        localObject5 = s.e(paramJsonReader, paramFloat);
        break;
      case 6: 
        localObject7 = s.e(paramJsonReader, paramFloat);
        break;
      case 5: 
        if (paramJsonReader.z() == 1) {
          i = 1;
        } else {
          i = 0;
        }
        break;
      case 4: 
        localObject6 = s.e(paramJsonReader, 1.0F);
        break;
      case 3: 
        localObject2 = s.e(paramJsonReader, 1.0F);
        break;
      case 2: 
        localObject4 = paramn0.a(paramJsonReader, paramFloat);
        break;
      case 1: 
        localObject3 = paramn0.a(paramJsonReader, paramFloat);
        break;
      case 0: 
        f = (float)paramJsonReader.x();
      }
    }
    paramJsonReader.m();
    if (i != 0)
    {
      paramn0 = a;
      paramJsonReader = localObject3;
    }
    else
    {
      if ((localObject2 != null) && (localObject6 != null)) {
        paramJsonReader = b((PointF)localObject2, (PointF)localObject6);
      } else {
        paramJsonReader = a;
      }
      paramn0 = paramJsonReader;
      paramJsonReader = localObject4;
    }
    paramh = new l1.a(paramh, localObject3, paramJsonReader, paramn0, f, null);
    paramh.o = ((PointF)localObject7);
    paramh.p = ((PointF)localObject5);
    return paramh;
  }
  
  private static <T> l1.a<T> e(com.airbnb.lottie.h paramh, JsonReader paramJsonReader, float paramFloat, n0<T> paramn0)
    throws IOException
  {
    paramJsonReader.e();
    PointF localPointF1 = null;
    int i = 0;
    PointF localPointF2 = null;
    PointF localPointF3 = null;
    Object localObject1 = null;
    Object localObject2 = null;
    Object localObject3 = null;
    Object localObject4 = null;
    Object localObject5 = null;
    float f1 = 0.0F;
    PointF localPointF4 = null;
    Object localObject6 = null;
    while (paramJsonReader.q())
    {
      float f2;
      float f3;
      float f4;
      float f5;
      int j;
      switch (paramJsonReader.a0(c))
      {
      default: 
        paramJsonReader.d0();
        break;
      case 7: 
        localPointF1 = s.e(paramJsonReader, paramFloat);
        break;
      case 6: 
        localPointF4 = s.e(paramJsonReader, paramFloat);
        break;
      case 5: 
        if (paramJsonReader.z() == 1) {
          i = 1;
        } else {
          i = 0;
        }
        break;
      case 4: 
        if (paramJsonReader.W() == JsonReader.Token.BEGIN_OBJECT)
        {
          paramJsonReader.e();
          f2 = 0.0F;
          f3 = 0.0F;
          f4 = 0.0F;
          f5 = 0.0F;
          if (paramJsonReader.q())
          {
            j = paramJsonReader.a0(d);
            if (j != 0) {
              if (j != 1) {
                paramJsonReader.d0();
              }
            }
            for (;;)
            {
              break;
              localObject5 = paramJsonReader.W();
              localObject4 = JsonReader.Token.NUMBER;
              if (localObject5 == localObject4)
              {
                f5 = (float)paramJsonReader.x();
                f3 = f5;
              }
              else
              {
                paramJsonReader.d();
                f3 = (float)paramJsonReader.x();
                if (paramJsonReader.W() == localObject4) {
                  f5 = (float)paramJsonReader.x();
                } else {
                  f5 = f3;
                }
                paramJsonReader.j();
                break;
                localObject5 = paramJsonReader.W();
                localObject4 = JsonReader.Token.NUMBER;
                if (localObject5 == localObject4)
                {
                  f4 = (float)paramJsonReader.x();
                  f2 = f4;
                }
                else
                {
                  paramJsonReader.d();
                  f2 = (float)paramJsonReader.x();
                  if (paramJsonReader.W() == localObject4) {
                    f4 = (float)paramJsonReader.x();
                  } else {
                    f4 = f2;
                  }
                  paramJsonReader.j();
                }
              }
            }
          }
          localObject4 = new PointF(f2, f3);
          localObject5 = new PointF(f4, f5);
          paramJsonReader.m();
        }
        else
        {
          localPointF3 = s.e(paramJsonReader, paramFloat);
        }
        break;
      case 3: 
        if (paramJsonReader.W() == JsonReader.Token.BEGIN_OBJECT)
        {
          paramJsonReader.e();
          f2 = 0.0F;
          f5 = 0.0F;
          f4 = 0.0F;
          f3 = 0.0F;
          while (paramJsonReader.q())
          {
            j = paramJsonReader.a0(d);
            if (j != 0)
            {
              if (j != 1)
              {
                paramJsonReader.d0();
              }
              else
              {
                localObject1 = paramJsonReader.W();
                localObject3 = JsonReader.Token.NUMBER;
                if (localObject1 == localObject3)
                {
                  f3 = (float)paramJsonReader.x();
                  f5 = f3;
                }
                else
                {
                  paramJsonReader.d();
                  f5 = (float)paramJsonReader.x();
                  if (paramJsonReader.W() == localObject3) {
                    f3 = (float)paramJsonReader.x();
                  } else {
                    f3 = f5;
                  }
                  paramJsonReader.j();
                }
              }
            }
            else
            {
              localObject1 = paramJsonReader.W();
              localObject3 = JsonReader.Token.NUMBER;
              if (localObject1 == localObject3)
              {
                f4 = (float)paramJsonReader.x();
                f2 = f4;
              }
              else
              {
                paramJsonReader.d();
                f2 = (float)paramJsonReader.x();
                if (paramJsonReader.W() == localObject3) {
                  f4 = (float)paramJsonReader.x();
                } else {
                  f4 = f2;
                }
                paramJsonReader.j();
              }
            }
          }
          localObject1 = new PointF(f2, f5);
          localObject3 = new PointF(f4, f3);
          paramJsonReader.m();
        }
        else
        {
          localPointF2 = s.e(paramJsonReader, paramFloat);
        }
        break;
      case 2: 
        localObject6 = paramn0.a(paramJsonReader, paramFloat);
        break;
      case 1: 
        localObject2 = paramn0.a(paramJsonReader, paramFloat);
        break;
      case 0: 
        f1 = (float)paramJsonReader.x();
      }
    }
    paramJsonReader.m();
    if (i != 0) {
      paramn0 = a;
    }
    for (paramJsonReader = localObject2;; paramJsonReader = (JsonReader)localObject6)
    {
      localObject3 = null;
      localObject5 = null;
      localObject6 = paramJsonReader;
      paramJsonReader = (JsonReader)localObject5;
      break;
      if ((localPointF2 != null) && (localPointF3 != null))
      {
        paramn0 = b(localPointF2, localPointF3);
      }
      else
      {
        if ((localObject1 != null) && (localObject3 != null) && (localObject4 != null) && (localObject5 != null))
        {
          paramJsonReader = b((PointF)localObject1, (PointF)localObject4);
          paramn0 = b((PointF)localObject3, (PointF)localObject5);
          localObject3 = paramJsonReader;
          paramJsonReader = paramn0;
          paramn0 = null;
          break;
        }
        paramn0 = a;
      }
    }
    if ((localObject3 != null) && (paramJsonReader != null)) {
      paramh = new l1.a(paramh, localObject2, localObject6, (Interpolator)localObject3, paramJsonReader, f1, null);
    } else {
      paramh = new l1.a(paramh, localObject2, localObject6, paramn0, f1, null);
    }
    paramh.o = localPointF4;
    paramh.p = localPointF1;
    return paramh;
  }
  
  private static <T> l1.a<T> f(JsonReader paramJsonReader, float paramFloat, n0<T> paramn0)
    throws IOException
  {
    return new l1.a(paramn0.a(paramJsonReader, paramFloat));
  }
  
  private static n.h<WeakReference<Interpolator>> g()
  {
    if (b == null) {
      b = new n.h();
    }
    return b;
  }
  
  private static void h(int paramInt, WeakReference<Interpolator> paramWeakReference)
  {
    try
    {
      b.l(paramInt, paramWeakReference);
      return;
    }
    finally {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.t
 * JD-Core Version:    0.7.0.1
 */