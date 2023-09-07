package com.airbnb.lottie.model.layer;

import com.airbnb.lottie.h;
import com.airbnb.lottie.model.content.Mask;
import f1.b;
import f1.k;
import f1.l;
import g1.c;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class Layer
{
  private final List<c> a;
  private final h b;
  private final String c;
  private final long d;
  private final LayerType e;
  private final long f;
  private final String g;
  private final List<Mask> h;
  private final l i;
  private final int j;
  private final int k;
  private final int l;
  private final float m;
  private final float n;
  private final int o;
  private final int p;
  private final f1.j q;
  private final k r;
  private final b s;
  private final List<l1.a<Float>> t;
  private final MatteType u;
  private final boolean v;
  private final g1.a w;
  private final j1.j x;
  
  public Layer(List<c> paramList, h paramh, String paramString1, long paramLong1, LayerType paramLayerType, long paramLong2, String paramString2, List<Mask> paramList1, l paraml, int paramInt1, int paramInt2, int paramInt3, float paramFloat1, float paramFloat2, int paramInt4, int paramInt5, f1.j paramj, k paramk, List<l1.a<Float>> paramList2, MatteType paramMatteType, b paramb, boolean paramBoolean, g1.a parama, j1.j paramj1)
  {
    this.a = paramList;
    this.b = paramh;
    this.c = paramString1;
    this.d = paramLong1;
    this.e = paramLayerType;
    this.f = paramLong2;
    this.g = paramString2;
    this.h = paramList1;
    this.i = paraml;
    this.j = paramInt1;
    this.k = paramInt2;
    this.l = paramInt3;
    this.m = paramFloat1;
    this.n = paramFloat2;
    this.o = paramInt4;
    this.p = paramInt5;
    this.q = paramj;
    this.r = paramk;
    this.t = paramList2;
    this.u = paramMatteType;
    this.s = paramb;
    this.v = paramBoolean;
    this.w = parama;
    this.x = paramj1;
  }
  
  public g1.a a()
  {
    return this.w;
  }
  
  h b()
  {
    return this.b;
  }
  
  public j1.j c()
  {
    return this.x;
  }
  
  public long d()
  {
    return this.d;
  }
  
  List<l1.a<Float>> e()
  {
    return this.t;
  }
  
  public LayerType f()
  {
    return this.e;
  }
  
  List<Mask> g()
  {
    return this.h;
  }
  
  MatteType h()
  {
    return this.u;
  }
  
  String i()
  {
    return this.c;
  }
  
  long j()
  {
    return this.f;
  }
  
  int k()
  {
    return this.p;
  }
  
  int l()
  {
    return this.o;
  }
  
  String m()
  {
    return this.g;
  }
  
  List<c> n()
  {
    return this.a;
  }
  
  int o()
  {
    return this.l;
  }
  
  int p()
  {
    return this.k;
  }
  
  int q()
  {
    return this.j;
  }
  
  float r()
  {
    return this.n / this.b.e();
  }
  
  f1.j s()
  {
    return this.q;
  }
  
  k t()
  {
    return this.r;
  }
  
  public String toString()
  {
    return y("");
  }
  
  b u()
  {
    return this.s;
  }
  
  float v()
  {
    return this.m;
  }
  
  l w()
  {
    return this.i;
  }
  
  public boolean x()
  {
    return this.v;
  }
  
  public String y(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append(i());
    localStringBuilder.append("\n");
    Object localObject = this.b.t(j());
    if (localObject != null)
    {
      localStringBuilder.append("\t\tParents: ");
      localStringBuilder.append(((Layer)localObject).i());
      for (localObject = this.b.t(((Layer)localObject).j()); localObject != null; localObject = this.b.t(((Layer)localObject).j()))
      {
        localStringBuilder.append("->");
        localStringBuilder.append(((Layer)localObject).i());
      }
      localStringBuilder.append(paramString);
      localStringBuilder.append("\n");
    }
    if (!g().isEmpty())
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append("\tMasks: ");
      localStringBuilder.append(g().size());
      localStringBuilder.append("\n");
    }
    if ((q() != 0) && (p() != 0))
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append("\tBackground: ");
      localStringBuilder.append(String.format(Locale.US, "%dx%d %X\n", new Object[] { Integer.valueOf(q()), Integer.valueOf(p()), Integer.valueOf(o()) }));
    }
    if (!this.a.isEmpty())
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append("\tShapes:\n");
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
      {
        localObject = localIterator.next();
        localStringBuilder.append(paramString);
        localStringBuilder.append("\t\t");
        localStringBuilder.append(localObject);
        localStringBuilder.append("\n");
      }
    }
    return localStringBuilder.toString();
  }
  
  public static enum LayerType
  {
    static
    {
      LayerType localLayerType1 = new LayerType("PRE_COMP", 0);
      PRE_COMP = localLayerType1;
      LayerType localLayerType2 = new LayerType("SOLID", 1);
      SOLID = localLayerType2;
      LayerType localLayerType3 = new LayerType("IMAGE", 2);
      IMAGE = localLayerType3;
      LayerType localLayerType4 = new LayerType("NULL", 3);
      NULL = localLayerType4;
      LayerType localLayerType5 = new LayerType("SHAPE", 4);
      SHAPE = localLayerType5;
      LayerType localLayerType6 = new LayerType("TEXT", 5);
      TEXT = localLayerType6;
      LayerType localLayerType7 = new LayerType("UNKNOWN", 6);
      UNKNOWN = localLayerType7;
      $VALUES = new LayerType[] { localLayerType1, localLayerType2, localLayerType3, localLayerType4, localLayerType5, localLayerType6, localLayerType7 };
    }
    
    private LayerType() {}
  }
  
  public static enum MatteType
  {
    static
    {
      MatteType localMatteType1 = new MatteType("NONE", 0);
      NONE = localMatteType1;
      MatteType localMatteType2 = new MatteType("ADD", 1);
      ADD = localMatteType2;
      MatteType localMatteType3 = new MatteType("INVERT", 2);
      INVERT = localMatteType3;
      MatteType localMatteType4 = new MatteType("LUMA", 3);
      LUMA = localMatteType4;
      MatteType localMatteType5 = new MatteType("LUMA_INVERTED", 4);
      LUMA_INVERTED = localMatteType5;
      MatteType localMatteType6 = new MatteType("UNKNOWN", 5);
      UNKNOWN = localMatteType6;
      $VALUES = new MatteType[] { localMatteType1, localMatteType2, localMatteType3, localMatteType4, localMatteType5, localMatteType6 };
    }
    
    private MatteType() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.model.layer.Layer
 * JD-Core Version:    0.7.0.1
 */