package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import b1.n;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.a;
import f1.b;
import f1.m;

public class PolystarShape
  implements g1.c
{
  private final String a;
  private final Type b;
  private final b c;
  private final m<PointF, PointF> d;
  private final b e;
  private final b f;
  private final b g;
  private final b h;
  private final b i;
  private final boolean j;
  private final boolean k;
  
  public PolystarShape(String paramString, Type paramType, b paramb1, m<PointF, PointF> paramm, b paramb2, b paramb3, b paramb4, b paramb5, b paramb6, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.a = paramString;
    this.b = paramType;
    this.c = paramb1;
    this.d = paramm;
    this.e = paramb2;
    this.f = paramb3;
    this.g = paramb4;
    this.h = paramb5;
    this.i = paramb6;
    this.j = paramBoolean1;
    this.k = paramBoolean2;
  }
  
  public b1.c a(LottieDrawable paramLottieDrawable, a parama)
  {
    return new n(paramLottieDrawable, parama, this);
  }
  
  public b b()
  {
    return this.f;
  }
  
  public b c()
  {
    return this.h;
  }
  
  public String d()
  {
    return this.a;
  }
  
  public b e()
  {
    return this.g;
  }
  
  public b f()
  {
    return this.i;
  }
  
  public b g()
  {
    return this.c;
  }
  
  public m<PointF, PointF> h()
  {
    return this.d;
  }
  
  public b i()
  {
    return this.e;
  }
  
  public Type j()
  {
    return this.b;
  }
  
  public boolean k()
  {
    return this.j;
  }
  
  public boolean l()
  {
    return this.k;
  }
  
  public static enum Type
  {
    private final int value;
    
    static
    {
      Type localType1 = new Type("STAR", 0, 1);
      STAR = localType1;
      Type localType2 = new Type("POLYGON", 1, 2);
      POLYGON = localType2;
      $VALUES = new Type[] { localType1, localType2 };
    }
    
    private Type(int paramInt)
    {
      this.value = paramInt;
    }
    
    public static Type forValue(int paramInt)
    {
      for (Type localType : ) {
        if (localType.value == paramInt) {
          return localType;
        }
      }
      return null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.model.content.PolystarShape
 * JD-Core Version:    0.7.0.1
 */