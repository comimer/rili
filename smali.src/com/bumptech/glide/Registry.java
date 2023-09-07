package com.bumptech.glide;

import b3.b;
import b3.c;
import b3.d;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.e.a;
import com.bumptech.glide.load.engine.g;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.engine.s;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import r2.n;
import r2.o;
import r2.p;

public class Registry
{
  private final p a;
  private final b3.a b;
  private final b3.e c;
  private final b3.f d;
  private final com.bumptech.glide.load.data.f e;
  private final y2.f f;
  private final b g;
  private final d h = new d();
  private final c i = new c();
  private final androidx.core.util.e<List<Throwable>> j;
  
  public Registry()
  {
    androidx.core.util.e locale = g3.a.e();
    this.j = locale;
    this.a = new p(locale);
    this.b = new b3.a();
    this.c = new b3.e();
    this.d = new b3.f();
    this.e = new com.bumptech.glide.load.data.f();
    this.f = new y2.f();
    this.g = new b();
    r(Arrays.asList(new String[] { "Gif", "Bitmap", "BitmapDrawable" }));
  }
  
  private <Data, TResource, Transcode> List<g<Data, TResource, Transcode>> f(Class<Data> paramClass, Class<TResource> paramClass1, Class<Transcode> paramClass2)
  {
    ArrayList localArrayList = new ArrayList();
    paramClass1 = this.c.d(paramClass, paramClass1).iterator();
    while (paramClass1.hasNext())
    {
      Class localClass1 = (Class)paramClass1.next();
      Iterator localIterator = this.f.b(localClass1, paramClass2).iterator();
      while (localIterator.hasNext())
      {
        Class localClass2 = (Class)localIterator.next();
        localArrayList.add(new g(paramClass, localClass1, localClass2, this.c.b(paramClass, localClass1), this.f.a(localClass1, localClass2), this.j));
      }
    }
    return localArrayList;
  }
  
  public <Data, TResource> Registry a(Class<Data> paramClass, Class<TResource> paramClass1, n2.e<Data, TResource> parame)
  {
    e("legacy_append", paramClass, paramClass1, parame);
    return this;
  }
  
  public <Model, Data> Registry b(Class<Model> paramClass, Class<Data> paramClass1, o<Model, Data> paramo)
  {
    this.a.a(paramClass, paramClass1, paramo);
    return this;
  }
  
  public <Data> Registry c(Class<Data> paramClass, n2.a<Data> parama)
  {
    this.b.a(paramClass, parama);
    return this;
  }
  
  public <TResource> Registry d(Class<TResource> paramClass, n2.f<TResource> paramf)
  {
    this.d.a(paramClass, paramf);
    return this;
  }
  
  public <Data, TResource> Registry e(String paramString, Class<Data> paramClass, Class<TResource> paramClass1, n2.e<Data, TResource> parame)
  {
    this.c.a(paramString, parame, paramClass, paramClass1);
    return this;
  }
  
  public List<ImageHeaderParser> g()
  {
    List localList = this.g.b();
    if (!localList.isEmpty()) {
      return localList;
    }
    throw new NoImageHeaderParserException();
  }
  
  public <Data, TResource, Transcode> q<Data, TResource, Transcode> h(Class<Data> paramClass, Class<TResource> paramClass1, Class<Transcode> paramClass2)
  {
    q localq = this.i.a(paramClass, paramClass1, paramClass2);
    if (this.i.c(localq)) {
      return null;
    }
    Object localObject = localq;
    if (localq == null)
    {
      localObject = f(paramClass, paramClass1, paramClass2);
      if (((List)localObject).isEmpty()) {
        localObject = null;
      } else {
        localObject = new q(paramClass, paramClass1, paramClass2, (List)localObject, this.j);
      }
      this.i.d(paramClass, paramClass1, paramClass2, (q)localObject);
    }
    return localObject;
  }
  
  public <Model> List<n<Model, ?>> i(Model paramModel)
  {
    return this.a.d(paramModel);
  }
  
  public <Model, TResource, Transcode> List<Class<?>> j(Class<Model> paramClass, Class<TResource> paramClass1, Class<Transcode> paramClass2)
  {
    Object localObject1 = this.h.a(paramClass, paramClass1, paramClass2);
    Object localObject2 = localObject1;
    if (localObject1 == null)
    {
      localObject2 = new ArrayList();
      localObject1 = this.a.c(paramClass).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject3 = (Class)((Iterator)localObject1).next();
        localObject3 = this.c.d((Class)localObject3, paramClass1).iterator();
        while (((Iterator)localObject3).hasNext())
        {
          Class localClass = (Class)((Iterator)localObject3).next();
          if ((!this.f.b(localClass, paramClass2).isEmpty()) && (!((List)localObject2).contains(localClass))) {
            ((List)localObject2).add(localClass);
          }
        }
      }
      this.h.b(paramClass, paramClass1, paramClass2, Collections.unmodifiableList((List)localObject2));
    }
    return localObject2;
  }
  
  public <X> n2.f<X> k(s<X> params)
    throws Registry.NoResultEncoderAvailableException
  {
    n2.f localf = this.d.b(params.d());
    if (localf != null) {
      return localf;
    }
    throw new NoResultEncoderAvailableException(params.d());
  }
  
  public <X> com.bumptech.glide.load.data.e<X> l(X paramX)
  {
    return this.e.a(paramX);
  }
  
  public <X> n2.a<X> m(X paramX)
    throws Registry.NoSourceEncoderAvailableException
  {
    n2.a locala = this.b.b(paramX.getClass());
    if (locala != null) {
      return locala;
    }
    throw new NoSourceEncoderAvailableException(paramX.getClass());
  }
  
  public boolean n(s<?> params)
  {
    boolean bool;
    if (this.d.b(params.d()) != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public Registry o(ImageHeaderParser paramImageHeaderParser)
  {
    this.g.a(paramImageHeaderParser);
    return this;
  }
  
  public Registry p(e.a<?> parama)
  {
    this.e.b(parama);
    return this;
  }
  
  public <TResource, Transcode> Registry q(Class<TResource> paramClass, Class<Transcode> paramClass1, y2.e<TResource, Transcode> parame)
  {
    this.f.c(paramClass, paramClass1, parame);
    return this;
  }
  
  public final Registry r(List<String> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    localArrayList.add("legacy_prepend_all");
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localArrayList.add((String)paramList.next());
    }
    localArrayList.add("legacy_append");
    this.c.e(localArrayList);
    return this;
  }
  
  public static class MissingComponentException
    extends RuntimeException
  {
    public MissingComponentException(String paramString)
    {
      super();
    }
  }
  
  public static final class NoImageHeaderParserException
    extends Registry.MissingComponentException
  {
    public NoImageHeaderParserException()
    {
      super();
    }
  }
  
  public static class NoModelLoaderAvailableException
    extends Registry.MissingComponentException
  {
    public NoModelLoaderAvailableException(Class<?> paramClass1, Class<?> paramClass2)
    {
      super();
    }
    
    public NoModelLoaderAvailableException(Object paramObject)
    {
      super();
    }
    
    public <M> NoModelLoaderAvailableException(M paramM, List<n<M, ?>> paramList)
    {
      super();
    }
  }
  
  public static class NoResultEncoderAvailableException
    extends Registry.MissingComponentException
  {
    public NoResultEncoderAvailableException(Class<?> paramClass)
    {
      super();
    }
  }
  
  public static class NoSourceEncoderAvailableException
    extends Registry.MissingComponentException
  {
    public NoSourceEncoderAvailableException(Class<?> paramClass)
    {
      super();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.Registry
 * JD-Core Version:    0.7.0.1
 */