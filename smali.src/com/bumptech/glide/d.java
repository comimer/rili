package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import android.widget.ImageView;
import c3.f;
import com.bumptech.glide.load.engine.bitmap_recycle.b;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class d
  extends ContextWrapper
{
  static final i<?, ?> k = new a();
  private final b a;
  private final Registry b;
  private final f c;
  private final b.a d;
  private final List<com.bumptech.glide.request.d<Object>> e;
  private final Map<Class<?>, i<?, ?>> f;
  private final com.bumptech.glide.load.engine.i g;
  private final e h;
  private final int i;
  private com.bumptech.glide.request.e j;
  
  public d(Context paramContext, b paramb, Registry paramRegistry, f paramf, b.a parama, Map<Class<?>, i<?, ?>> paramMap, List<com.bumptech.glide.request.d<Object>> paramList, com.bumptech.glide.load.engine.i parami, e parame, int paramInt)
  {
    super(paramContext.getApplicationContext());
    this.a = paramb;
    this.b = paramRegistry;
    this.c = paramf;
    this.d = parama;
    this.e = paramList;
    this.f = paramMap;
    this.g = parami;
    this.h = parame;
    this.i = paramInt;
  }
  
  public <X> c3.i<ImageView, X> a(ImageView paramImageView, Class<X> paramClass)
  {
    return this.c.a(paramImageView, paramClass);
  }
  
  public b b()
  {
    return this.a;
  }
  
  public List<com.bumptech.glide.request.d<Object>> c()
  {
    return this.e;
  }
  
  public com.bumptech.glide.request.e d()
  {
    try
    {
      if (this.j == null) {
        this.j = ((com.bumptech.glide.request.e)this.d.build().R());
      }
      com.bumptech.glide.request.e locale = this.j;
      return locale;
    }
    finally {}
  }
  
  public <T> i<?, T> e(Class<T> paramClass)
  {
    i locali = (i)this.f.get(paramClass);
    Object localObject = locali;
    if (locali == null)
    {
      Iterator localIterator = this.f.entrySet().iterator();
      for (;;)
      {
        localObject = locali;
        if (!localIterator.hasNext()) {
          break;
        }
        localObject = (Map.Entry)localIterator.next();
        if (((Class)((Map.Entry)localObject).getKey()).isAssignableFrom(paramClass)) {
          locali = (i)((Map.Entry)localObject).getValue();
        }
      }
    }
    paramClass = (Class<T>)localObject;
    if (localObject == null) {
      paramClass = k;
    }
    return paramClass;
  }
  
  public com.bumptech.glide.load.engine.i f()
  {
    return this.g;
  }
  
  public e g()
  {
    return this.h;
  }
  
  public int h()
  {
    return this.i;
  }
  
  public Registry i()
  {
    return this.b;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.d
 * JD-Core Version:    0.7.0.1
 */