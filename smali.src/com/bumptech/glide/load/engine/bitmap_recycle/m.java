package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NavigableMap;
import java.util.Set;
import java.util.TreeMap;

public class m
  implements k
{
  private static final Bitmap.Config[] d;
  private static final Bitmap.Config[] e;
  private static final Bitmap.Config[] f = { Bitmap.Config.RGB_565 };
  private static final Bitmap.Config[] g = { Bitmap.Config.ARGB_4444 };
  private static final Bitmap.Config[] h = { Bitmap.Config.ALPHA_8 };
  private final c a = new c();
  private final g<b, Bitmap> b = new g();
  private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> c = new HashMap();
  
  static
  {
    Bitmap.Config[] arrayOfConfig = (Bitmap.Config[])Arrays.copyOf(new Bitmap.Config[] { Bitmap.Config.ARGB_8888, null }, 3);
    arrayOfConfig[(arrayOfConfig.length - 1)] = Bitmap.Config.RGBA_F16;
    d = arrayOfConfig;
    e = arrayOfConfig;
  }
  
  private void f(Integer paramInteger, Bitmap paramBitmap)
  {
    NavigableMap localNavigableMap = j(paramBitmap.getConfig());
    Object localObject = (Integer)localNavigableMap.get(paramInteger);
    if (localObject != null)
    {
      if (((Integer)localObject).intValue() == 1) {
        localNavigableMap.remove(paramInteger);
      } else {
        localNavigableMap.put(paramInteger, Integer.valueOf(((Integer)localObject).intValue() - 1));
      }
      return;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Tried to decrement empty size, size: ");
    ((StringBuilder)localObject).append(paramInteger);
    ((StringBuilder)localObject).append(", removed: ");
    ((StringBuilder)localObject).append(e(paramBitmap));
    ((StringBuilder)localObject).append(", this: ");
    ((StringBuilder)localObject).append(this);
    throw new NullPointerException(((StringBuilder)localObject).toString());
  }
  
  private b g(int paramInt, Bitmap.Config paramConfig)
  {
    b localb1 = this.a.e(paramInt, paramConfig);
    Bitmap.Config[] arrayOfConfig = i(paramConfig);
    int i = arrayOfConfig.length;
    b localb2;
    for (int j = 0;; j++)
    {
      localb2 = localb1;
      if (j >= i) {
        break;
      }
      Bitmap.Config localConfig = arrayOfConfig[j];
      Integer localInteger = (Integer)j(localConfig).ceilingKey(Integer.valueOf(paramInt));
      if ((localInteger != null) && (localInteger.intValue() <= paramInt * 8))
      {
        if (localInteger.intValue() == paramInt) {
          if (localConfig == null)
          {
            localb2 = localb1;
            if (paramConfig == null) {
              break;
            }
          }
          else
          {
            localb2 = localb1;
            if (localConfig.equals(paramConfig)) {
              break;
            }
          }
        }
        this.a.c(localb1);
        localb2 = this.a.e(localInteger.intValue(), localConfig);
        break;
      }
    }
    return localb2;
  }
  
  static String h(int paramInt, Bitmap.Config paramConfig)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    localStringBuilder.append(paramInt);
    localStringBuilder.append("](");
    localStringBuilder.append(paramConfig);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  private static Bitmap.Config[] i(Bitmap.Config paramConfig)
  {
    if (Bitmap.Config.RGBA_F16.equals(paramConfig)) {
      return e;
    }
    int i = a.a[paramConfig.ordinal()];
    if (i != 1)
    {
      if (i != 2)
      {
        if (i != 3)
        {
          if (i != 4) {
            return new Bitmap.Config[] { paramConfig };
          }
          return h;
        }
        return g;
      }
      return f;
    }
    return d;
  }
  
  private NavigableMap<Integer, Integer> j(Bitmap.Config paramConfig)
  {
    NavigableMap localNavigableMap = (NavigableMap)this.c.get(paramConfig);
    Object localObject = localNavigableMap;
    if (localNavigableMap == null)
    {
      localObject = new TreeMap();
      this.c.put(paramConfig, localObject);
    }
    return localObject;
  }
  
  public String a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return h(f3.k.f(paramInt1, paramInt2, paramConfig), paramConfig);
  }
  
  public int b(Bitmap paramBitmap)
  {
    return f3.k.g(paramBitmap);
  }
  
  public void c(Bitmap paramBitmap)
  {
    int i = f3.k.g(paramBitmap);
    b localb = this.a.e(i, paramBitmap.getConfig());
    this.b.d(localb, paramBitmap);
    paramBitmap = j(paramBitmap.getConfig());
    Integer localInteger = (Integer)paramBitmap.get(Integer.valueOf(localb.b));
    int j = localb.b;
    i = 1;
    if (localInteger != null) {
      i = 1 + localInteger.intValue();
    }
    paramBitmap.put(Integer.valueOf(j), Integer.valueOf(i));
  }
  
  public Bitmap d(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    b localb = g(f3.k.f(paramInt1, paramInt2, paramConfig), paramConfig);
    Bitmap localBitmap = (Bitmap)this.b.a(localb);
    if (localBitmap != null)
    {
      f(Integer.valueOf(localb.b), localBitmap);
      localBitmap.reconfigure(paramInt1, paramInt2, paramConfig);
    }
    return localBitmap;
  }
  
  public String e(Bitmap paramBitmap)
  {
    return h(f3.k.g(paramBitmap), paramBitmap.getConfig());
  }
  
  public Bitmap removeLast()
  {
    Bitmap localBitmap = (Bitmap)this.b.f();
    if (localBitmap != null) {
      f(Integer.valueOf(f3.k.g(localBitmap)), localBitmap);
    }
    return localBitmap;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("SizeConfigStrategy{groupedMap=");
    localStringBuilder.append(this.b);
    localStringBuilder.append(", sortedSizes=(");
    Iterator localIterator = this.c.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localStringBuilder.append(localEntry.getKey());
      localStringBuilder.append('[');
      localStringBuilder.append(localEntry.getValue());
      localStringBuilder.append("], ");
    }
    if (!this.c.isEmpty()) {
      localStringBuilder.replace(localStringBuilder.length() - 2, localStringBuilder.length(), "");
    }
    localStringBuilder.append(")}");
    return localStringBuilder.toString();
  }
  
  static final class b
    implements l
  {
    private final m.c a;
    int b;
    private Bitmap.Config c;
    
    public b(m.c paramc)
    {
      this.a = paramc;
    }
    
    public void a()
    {
      this.a.c(this);
    }
    
    public void b(int paramInt, Bitmap.Config paramConfig)
    {
      this.b = paramInt;
      this.c = paramConfig;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool1 = paramObject instanceof b;
      boolean bool2 = false;
      boolean bool3 = bool2;
      if (bool1)
      {
        paramObject = (b)paramObject;
        bool3 = bool2;
        if (this.b == paramObject.b)
        {
          bool3 = bool2;
          if (f3.k.c(this.c, paramObject.c)) {
            bool3 = true;
          }
        }
      }
      return bool3;
    }
    
    public int hashCode()
    {
      int i = this.b;
      Bitmap.Config localConfig = this.c;
      int j;
      if (localConfig != null) {
        j = localConfig.hashCode();
      } else {
        j = 0;
      }
      return i * 31 + j;
    }
    
    public String toString()
    {
      return m.h(this.b, this.c);
    }
  }
  
  static class c
    extends c<m.b>
  {
    protected m.b d()
    {
      return new m.b(this);
    }
    
    public m.b e(int paramInt, Bitmap.Config paramConfig)
    {
      m.b localb = (m.b)b();
      localb.b(paramInt, paramConfig);
      return localb;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.bitmap_recycle.m
 * JD-Core Version:    0.7.0.1
 */