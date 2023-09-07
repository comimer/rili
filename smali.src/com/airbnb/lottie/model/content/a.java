package com.airbnb.lottie.model.content;

import b1.i;
import com.airbnb.lottie.LottieDrawable;
import f1.b;
import f1.d;
import f1.f;
import java.util.List;

public class a
  implements g1.c
{
  private final String a;
  private final GradientType b;
  private final f1.c c;
  private final d d;
  private final f e;
  private final f f;
  private final b g;
  private final ShapeStroke.LineCapType h;
  private final ShapeStroke.LineJoinType i;
  private final float j;
  private final List<b> k;
  private final b l;
  private final boolean m;
  
  public a(String paramString, GradientType paramGradientType, f1.c paramc, d paramd, f paramf1, f paramf2, b paramb1, ShapeStroke.LineCapType paramLineCapType, ShapeStroke.LineJoinType paramLineJoinType, float paramFloat, List<b> paramList, b paramb2, boolean paramBoolean)
  {
    this.a = paramString;
    this.b = paramGradientType;
    this.c = paramc;
    this.d = paramd;
    this.e = paramf1;
    this.f = paramf2;
    this.g = paramb1;
    this.h = paramLineCapType;
    this.i = paramLineJoinType;
    this.j = paramFloat;
    this.k = paramList;
    this.l = paramb2;
    this.m = paramBoolean;
  }
  
  public b1.c a(LottieDrawable paramLottieDrawable, com.airbnb.lottie.model.layer.a parama)
  {
    return new i(paramLottieDrawable, parama, this);
  }
  
  public ShapeStroke.LineCapType b()
  {
    return this.h;
  }
  
  public b c()
  {
    return this.l;
  }
  
  public f d()
  {
    return this.f;
  }
  
  public f1.c e()
  {
    return this.c;
  }
  
  public GradientType f()
  {
    return this.b;
  }
  
  public ShapeStroke.LineJoinType g()
  {
    return this.i;
  }
  
  public List<b> h()
  {
    return this.k;
  }
  
  public float i()
  {
    return this.j;
  }
  
  public String j()
  {
    return this.a;
  }
  
  public d k()
  {
    return this.d;
  }
  
  public f l()
  {
    return this.e;
  }
  
  public b m()
  {
    return this.g;
  }
  
  public boolean n()
  {
    return this.m;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.model.content.a
 * JD-Core Version:    0.7.0.1
 */