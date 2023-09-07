package com.airbnb.lottie;

import androidx.core.util.d;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import k1.f;
import n.b;

public class l0
{
  private boolean a = false;
  private final Set<b> b = new b();
  private final Map<String, f> c = new HashMap();
  private final Comparator<d<String, Float>> d = new a();
  
  public void a(String paramString, float paramFloat)
  {
    if (!this.a) {
      return;
    }
    f localf1 = (f)this.c.get(paramString);
    f localf2 = localf1;
    if (localf1 == null)
    {
      localf2 = new f();
      this.c.put(paramString, localf2);
    }
    localf2.a(paramFloat);
    if (paramString.equals("__container"))
    {
      paramString = this.b.iterator();
      while (paramString.hasNext()) {
        ((b)paramString.next()).a(paramFloat);
      }
    }
  }
  
  void b(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }
  
  class a
    implements Comparator<d<String, Float>>
  {
    a() {}
    
    public int a(d<String, Float> paramd1, d<String, Float> paramd2)
    {
      float f1 = ((Float)paramd1.b).floatValue();
      float f2 = ((Float)paramd2.b).floatValue();
      if (f2 > f1) {
        return 1;
      }
      if (f1 > f2) {
        return -1;
      }
      return 0;
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(float paramFloat);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.l0
 * JD-Core Version:    0.7.0.1
 */