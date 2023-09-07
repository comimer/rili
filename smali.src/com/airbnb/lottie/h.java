package com.airbnb.lottie;

import android.graphics.Rect;
import com.airbnb.lottie.model.layer.Layer;
import e1.b;
import e1.c;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class h
{
  private final l0 a = new l0();
  private final HashSet<String> b = new HashSet();
  private Map<String, List<Layer>> c;
  private Map<String, d0> d;
  private Map<String, b> e;
  private List<e1.g> f;
  private n.h<c> g;
  private n.d<Layer> h;
  private List<Layer> i;
  private Rect j;
  private float k;
  private float l;
  private float m;
  private boolean n;
  private int o = 0;
  
  public void a(String paramString)
  {
    k1.d.c(paramString);
    this.b.add(paramString);
  }
  
  public Rect b()
  {
    return this.j;
  }
  
  public n.h<c> c()
  {
    return this.g;
  }
  
  public float d()
  {
    return (float)(e() / this.m * 1000.0F);
  }
  
  public float e()
  {
    return this.l - this.k;
  }
  
  public float f()
  {
    return this.l;
  }
  
  public Map<String, b> g()
  {
    return this.e;
  }
  
  public float h(float paramFloat)
  {
    return k1.g.i(this.k, this.l, paramFloat);
  }
  
  public float i()
  {
    return this.m;
  }
  
  public Map<String, d0> j()
  {
    return this.d;
  }
  
  public List<Layer> k()
  {
    return this.i;
  }
  
  public e1.g l(String paramString)
  {
    int i1 = this.f.size();
    for (int i2 = 0; i2 < i1; i2++)
    {
      e1.g localg = (e1.g)this.f.get(i2);
      if (localg.a(paramString)) {
        return localg;
      }
    }
    return null;
  }
  
  public int m()
  {
    return this.o;
  }
  
  public l0 n()
  {
    return this.a;
  }
  
  public List<Layer> o(String paramString)
  {
    return (List)this.c.get(paramString);
  }
  
  public float p()
  {
    return this.k;
  }
  
  public boolean q()
  {
    return this.n;
  }
  
  public void r(int paramInt)
  {
    this.o += paramInt;
  }
  
  public void s(Rect paramRect, float paramFloat1, float paramFloat2, float paramFloat3, List<Layer> paramList, n.d<Layer> paramd, Map<String, List<Layer>> paramMap, Map<String, d0> paramMap1, n.h<c> paramh, Map<String, b> paramMap2, List<e1.g> paramList1)
  {
    this.j = paramRect;
    this.k = paramFloat1;
    this.l = paramFloat2;
    this.m = paramFloat3;
    this.i = paramList;
    this.h = paramd;
    this.c = paramMap;
    this.d = paramMap1;
    this.g = paramh;
    this.e = paramMap2;
    this.f = paramList1;
  }
  
  public Layer t(long paramLong)
  {
    return (Layer)this.h.f(paramLong);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("LottieComposition:\n");
    Iterator localIterator = this.i.iterator();
    while (localIterator.hasNext()) {
      localStringBuilder.append(((Layer)localIterator.next()).y("\t"));
    }
    return localStringBuilder.toString();
  }
  
  public void u(boolean paramBoolean)
  {
    this.n = paramBoolean;
  }
  
  public void v(boolean paramBoolean)
  {
    this.a.b(paramBoolean);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.h
 * JD-Core Version:    0.7.0.1
 */