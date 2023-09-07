package com.airbnb.lottie.model.content;

import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import b1.t;
import com.airbnb.lottie.LottieDrawable;
import f1.b;
import f1.d;
import java.util.List;

public class ShapeStroke
  implements g1.c
{
  private final String a;
  private final b b;
  private final List<b> c;
  private final f1.a d;
  private final d e;
  private final b f;
  private final LineCapType g;
  private final LineJoinType h;
  private final float i;
  private final boolean j;
  
  public ShapeStroke(String paramString, b paramb1, List<b> paramList, f1.a parama, d paramd, b paramb2, LineCapType paramLineCapType, LineJoinType paramLineJoinType, float paramFloat, boolean paramBoolean)
  {
    this.a = paramString;
    this.b = paramb1;
    this.c = paramList;
    this.d = parama;
    this.e = paramd;
    this.f = paramb2;
    this.g = paramLineCapType;
    this.h = paramLineJoinType;
    this.i = paramFloat;
    this.j = paramBoolean;
  }
  
  public b1.c a(LottieDrawable paramLottieDrawable, com.airbnb.lottie.model.layer.a parama)
  {
    return new t(paramLottieDrawable, parama, this);
  }
  
  public LineCapType b()
  {
    return this.g;
  }
  
  public f1.a c()
  {
    return this.d;
  }
  
  public b d()
  {
    return this.b;
  }
  
  public LineJoinType e()
  {
    return this.h;
  }
  
  public List<b> f()
  {
    return this.c;
  }
  
  public float g()
  {
    return this.i;
  }
  
  public String h()
  {
    return this.a;
  }
  
  public d i()
  {
    return this.e;
  }
  
  public b j()
  {
    return this.f;
  }
  
  public boolean k()
  {
    return this.j;
  }
  
  public static enum LineCapType
  {
    static
    {
      LineCapType localLineCapType1 = new LineCapType("BUTT", 0);
      BUTT = localLineCapType1;
      LineCapType localLineCapType2 = new LineCapType("ROUND", 1);
      ROUND = localLineCapType2;
      LineCapType localLineCapType3 = new LineCapType("UNKNOWN", 2);
      UNKNOWN = localLineCapType3;
      $VALUES = new LineCapType[] { localLineCapType1, localLineCapType2, localLineCapType3 };
    }
    
    private LineCapType() {}
    
    public Paint.Cap toPaintCap()
    {
      int i = ShapeStroke.a.a[ordinal()];
      if (i != 1)
      {
        if (i != 2) {
          return Paint.Cap.SQUARE;
        }
        return Paint.Cap.ROUND;
      }
      return Paint.Cap.BUTT;
    }
  }
  
  public static enum LineJoinType
  {
    static
    {
      LineJoinType localLineJoinType1 = new LineJoinType("MITER", 0);
      MITER = localLineJoinType1;
      LineJoinType localLineJoinType2 = new LineJoinType("ROUND", 1);
      ROUND = localLineJoinType2;
      LineJoinType localLineJoinType3 = new LineJoinType("BEVEL", 2);
      BEVEL = localLineJoinType3;
      $VALUES = new LineJoinType[] { localLineJoinType1, localLineJoinType2, localLineJoinType3 };
    }
    
    private LineJoinType() {}
    
    public Paint.Join toPaintJoin()
    {
      int i = ShapeStroke.a.b[ordinal()];
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 3) {
            return null;
          }
          return Paint.Join.ROUND;
        }
        return Paint.Join.MITER;
      }
      return Paint.Join.BEVEL;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.model.content.ShapeStroke
 * JD-Core Version:    0.7.0.1
 */