package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.ContentResolver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import c3.f;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder.a;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import com.bumptech.glide.load.resource.bitmap.l;
import com.bumptech.glide.load.resource.bitmap.o;
import com.bumptech.glide.load.resource.bitmap.s;
import com.bumptech.glide.load.resource.bitmap.u;
import com.bumptech.glide.load.resource.bitmap.v;
import com.bumptech.glide.load.resource.bitmap.x;
import com.bumptech.glide.load.resource.bitmap.z;
import f3.k;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import r2.a.b;
import r2.a.c;
import r2.b.d;
import r2.e.c;
import r2.f.b;
import r2.f.e;
import r2.s.a;
import r2.s.b;
import r2.s.c;
import r2.s.d;
import r2.t;
import r2.u.a;
import r2.u.b;
import r2.u.c;
import r2.v.a;
import r2.w.a;
import r2.w.b;
import r2.w.d;
import r2.x.a;
import s2.c.a;
import s2.d.c;
import s2.g.a;
import z2.p;
import z2.p.b;

public class b
  implements ComponentCallbacks2
{
  private static volatile b l;
  private static volatile boolean m;
  private final com.bumptech.glide.load.engine.i a;
  private final com.bumptech.glide.load.engine.bitmap_recycle.d b;
  private final p2.h c;
  private final d d;
  private final Registry e;
  private final com.bumptech.glide.load.engine.bitmap_recycle.b f;
  private final p g;
  private final z2.d h;
  private final List<h> i = new ArrayList();
  private final a j;
  private MemoryCategory k = MemoryCategory.NORMAL;
  
  b(Context paramContext, com.bumptech.glide.load.engine.i parami, p2.h paramh, com.bumptech.glide.load.engine.bitmap_recycle.d paramd, com.bumptech.glide.load.engine.bitmap_recycle.b paramb, p paramp, z2.d paramd1, int paramInt, a parama, Map<Class<?>, i<?, ?>> paramMap, List<com.bumptech.glide.request.d<Object>> paramList, e parame)
  {
    this.a = parami;
    this.b = paramd;
    this.f = paramb;
    this.c = paramh;
    this.g = paramp;
    this.h = paramd1;
    this.j = parama;
    paramd1 = paramContext.getResources();
    Registry localRegistry = new Registry();
    this.e = localRegistry;
    localRegistry.o(new DefaultImageHeaderParser());
    int n = Build.VERSION.SDK_INT;
    if (n >= 27) {
      localRegistry.o(new o());
    }
    List localList = localRegistry.g();
    x2.a locala = new x2.a(paramContext, localList, paramd, paramb);
    n2.e locale = VideoDecoder.h(paramd);
    l locall = new l(localRegistry.g(), paramd1.getDisplayMetrics(), paramd, paramb);
    if ((parame.a(c.b.class)) && (n >= 28))
    {
      paramh = new s();
      paramp = new com.bumptech.glide.load.resource.bitmap.h();
    }
    else
    {
      paramp = new com.bumptech.glide.load.resource.bitmap.g(locall);
      paramh = new x(locall, paramb);
    }
    v2.d locald = new v2.d(paramContext);
    s.c localc = new s.c(paramd1);
    s.d locald1 = new s.d(paramd1);
    s.b localb = new s.b(paramd1);
    s.a locala1 = new s.a(paramd1);
    com.bumptech.glide.load.resource.bitmap.c localc1 = new com.bumptech.glide.load.resource.bitmap.c(paramb);
    y2.a locala2 = new y2.a();
    y2.d locald2 = new y2.d();
    ContentResolver localContentResolver = paramContext.getContentResolver();
    localRegistry.c(ByteBuffer.class, new r2.c()).c(InputStream.class, new t(paramb)).e("Bitmap", ByteBuffer.class, Bitmap.class, paramp).e("Bitmap", InputStream.class, Bitmap.class, paramh);
    if (ParcelFileDescriptorRewinder.c()) {
      localRegistry.e("Bitmap", ParcelFileDescriptor.class, Bitmap.class, new u(locall));
    }
    localRegistry.e("Bitmap", ParcelFileDescriptor.class, Bitmap.class, locale).e("Bitmap", AssetFileDescriptor.class, Bitmap.class, VideoDecoder.c(paramd)).b(Bitmap.class, Bitmap.class, v.a.a()).e("Bitmap", Bitmap.class, Bitmap.class, new z()).d(Bitmap.class, localc1).e("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(paramd1, paramp)).e("BitmapDrawable", InputStream.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(paramd1, paramh)).e("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(paramd1, locale)).d(BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.b(paramd, localc1)).e("Gif", InputStream.class, x2.c.class, new x2.j(localList, locala, paramb)).e("Gif", ByteBuffer.class, x2.c.class, locala).d(x2.c.class, new x2.d()).b(m2.a.class, m2.a.class, v.a.a()).e("Bitmap", m2.a.class, Bitmap.class, new x2.h(paramd)).a(Uri.class, Drawable.class, locald).a(Uri.class, Bitmap.class, new v(locald, paramd)).p(new u2.a.a()).b(File.class, ByteBuffer.class, new r2.d.b()).b(File.class, InputStream.class, new f.e()).a(File.class, File.class, new w2.a()).b(File.class, ParcelFileDescriptor.class, new f.b()).b(File.class, File.class, v.a.a()).p(new com.bumptech.glide.load.data.k.a(paramb));
    if (ParcelFileDescriptorRewinder.c()) {
      localRegistry.p(new ParcelFileDescriptorRewinder.a());
    }
    paramh = Integer.TYPE;
    localRegistry.b(paramh, InputStream.class, localc).b(paramh, ParcelFileDescriptor.class, localb).b(Integer.class, InputStream.class, localc).b(Integer.class, ParcelFileDescriptor.class, localb).b(Integer.class, Uri.class, locald1).b(paramh, AssetFileDescriptor.class, locala1).b(Integer.class, AssetFileDescriptor.class, locala1).b(paramh, Uri.class, locald1).b(String.class, InputStream.class, new e.c()).b(Uri.class, InputStream.class, new e.c()).b(String.class, InputStream.class, new u.c()).b(String.class, ParcelFileDescriptor.class, new u.b()).b(String.class, AssetFileDescriptor.class, new u.a()).b(Uri.class, InputStream.class, new a.c(paramContext.getAssets())).b(Uri.class, ParcelFileDescriptor.class, new a.b(paramContext.getAssets())).b(Uri.class, InputStream.class, new s2.b.a(paramContext)).b(Uri.class, InputStream.class, new c.a(paramContext));
    if (n >= 29)
    {
      localRegistry.b(Uri.class, InputStream.class, new d.c(paramContext));
      localRegistry.b(Uri.class, ParcelFileDescriptor.class, new s2.d.b(paramContext));
    }
    localRegistry.b(Uri.class, InputStream.class, new w.d(localContentResolver)).b(Uri.class, ParcelFileDescriptor.class, new w.b(localContentResolver)).b(Uri.class, AssetFileDescriptor.class, new w.a(localContentResolver)).b(Uri.class, InputStream.class, new x.a()).b(URL.class, InputStream.class, new g.a()).b(Uri.class, File.class, new r2.k.a(paramContext)).b(r2.g.class, InputStream.class, new s2.a.a()).b([B.class, ByteBuffer.class, new r2.b.a()).b([B.class, InputStream.class, new b.d()).b(Uri.class, Uri.class, v.a.a()).b(Drawable.class, Drawable.class, v.a.a()).a(Drawable.class, Drawable.class, new v2.e()).q(Bitmap.class, BitmapDrawable.class, new y2.b(paramd1)).q(Bitmap.class, [B.class, locala2).q(Drawable.class, [B.class, new y2.c(paramd, locala2, locald2)).q(x2.c.class, [B.class, locald2);
    paramh = VideoDecoder.d(paramd);
    localRegistry.a(ByteBuffer.class, Bitmap.class, paramh);
    localRegistry.a(ByteBuffer.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(paramd1, paramh));
    this.d = new d(paramContext, paramb, localRegistry, new f(), parama, paramMap, paramList, parami, parame, paramInt);
  }
  
  private static void a(Context paramContext, GeneratedAppGlideModule paramGeneratedAppGlideModule)
  {
    if (!m)
    {
      m = true;
      m(paramContext, paramGeneratedAppGlideModule);
      m = false;
      return;
    }
    throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
  }
  
  public static b c(Context paramContext)
  {
    if (l == null)
    {
      GeneratedAppGlideModule localGeneratedAppGlideModule = d(paramContext.getApplicationContext());
      try
      {
        if (l == null) {
          a(paramContext, localGeneratedAppGlideModule);
        }
      }
      finally {}
    }
    return l;
  }
  
  private static GeneratedAppGlideModule d(Context paramContext)
  {
    try
    {
      paramContext = (GeneratedAppGlideModule)Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(new Class[] { Context.class }).newInstance(new Object[] { paramContext.getApplicationContext() });
    }
    catch (InvocationTargetException paramContext)
    {
      q(paramContext);
    }
    catch (NoSuchMethodException paramContext)
    {
      q(paramContext);
    }
    catch (IllegalAccessException paramContext)
    {
      q(paramContext);
    }
    catch (InstantiationException paramContext)
    {
      q(paramContext);
    }
    catch (ClassNotFoundException paramContext)
    {
      if (Log.isLoggable("Glide", 5)) {
        Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
      }
    }
    paramContext = null;
    return paramContext;
  }
  
  private static p l(Context paramContext)
  {
    f3.j.e(paramContext, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
    return c(paramContext).k();
  }
  
  private static void m(Context paramContext, GeneratedAppGlideModule paramGeneratedAppGlideModule)
  {
    n(paramContext, new c(), paramGeneratedAppGlideModule);
  }
  
  private static void n(Context paramContext, c paramc, GeneratedAppGlideModule paramGeneratedAppGlideModule)
  {
    Context localContext = paramContext.getApplicationContext();
    paramContext = Collections.emptyList();
    if ((paramGeneratedAppGlideModule == null) || (paramGeneratedAppGlideModule.c())) {
      paramContext = new a3.d(localContext).a();
    }
    Object localObject1;
    a3.b localb;
    if ((paramGeneratedAppGlideModule != null) && (!paramGeneratedAppGlideModule.d().isEmpty()))
    {
      localObject1 = paramGeneratedAppGlideModule.d();
      localObject2 = paramContext.iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localb = (a3.b)((Iterator)localObject2).next();
        if (((Set)localObject1).contains(localb.getClass()))
        {
          if (Log.isLoggable("Glide", 3))
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("AppGlideModule excludes manifest GlideModule: ");
            localStringBuilder.append(localb);
            Log.d("Glide", localStringBuilder.toString());
          }
          ((Iterator)localObject2).remove();
        }
      }
    }
    if (Log.isLoggable("Glide", 3))
    {
      localObject1 = paramContext.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localb = (a3.b)((Iterator)localObject1).next();
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("Discovered GlideModule from manifest: ");
        ((StringBuilder)localObject2).append(localb.getClass());
        Log.d("Glide", ((StringBuilder)localObject2).toString());
      }
    }
    if (paramGeneratedAppGlideModule != null) {
      localObject2 = paramGeneratedAppGlideModule.e();
    } else {
      localObject2 = null;
    }
    paramc.b((p.b)localObject2);
    Object localObject2 = paramContext.iterator();
    while (((Iterator)localObject2).hasNext()) {
      ((a3.b)((Iterator)localObject2).next()).a(localContext, paramc);
    }
    if (paramGeneratedAppGlideModule != null) {
      paramGeneratedAppGlideModule.b(localContext, paramc);
    }
    paramc = paramc.a(localContext);
    localObject2 = paramContext.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      paramContext = (a3.b)((Iterator)localObject2).next();
      try
      {
        paramContext.b(localContext, paramc, paramc.e);
      }
      catch (AbstractMethodError paramGeneratedAppGlideModule)
      {
        paramc = new StringBuilder();
        paramc.append("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: ");
        paramc.append(paramContext.getClass().getName());
        throw new IllegalStateException(paramc.toString(), paramGeneratedAppGlideModule);
      }
    }
    if (paramGeneratedAppGlideModule != null) {
      paramGeneratedAppGlideModule.a(localContext, paramc, paramc.e);
    }
    localContext.registerComponentCallbacks(paramc);
    l = paramc;
  }
  
  private static void q(Exception paramException)
  {
    throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", paramException);
  }
  
  public static h t(Context paramContext)
  {
    return l(paramContext).f(paramContext);
  }
  
  public void b()
  {
    k.a();
    this.c.b();
    this.b.b();
    this.f.b();
  }
  
  public com.bumptech.glide.load.engine.bitmap_recycle.b e()
  {
    return this.f;
  }
  
  public com.bumptech.glide.load.engine.bitmap_recycle.d f()
  {
    return this.b;
  }
  
  z2.d g()
  {
    return this.h;
  }
  
  public Context h()
  {
    return this.d.getBaseContext();
  }
  
  d i()
  {
    return this.d;
  }
  
  public Registry j()
  {
    return this.e;
  }
  
  public p k()
  {
    return this.g;
  }
  
  void o(h paramh)
  {
    synchronized (this.i)
    {
      if (!this.i.contains(paramh))
      {
        this.i.add(paramh);
        return;
      }
      paramh = new java/lang/IllegalStateException;
      paramh.<init>("Cannot register already registered manager");
      throw paramh;
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public void onLowMemory()
  {
    b();
  }
  
  public void onTrimMemory(int paramInt)
  {
    r(paramInt);
  }
  
  boolean p(c3.h<?> paramh)
  {
    synchronized (this.i)
    {
      Iterator localIterator = this.i.iterator();
      while (localIterator.hasNext()) {
        if (((h)localIterator.next()).y(paramh)) {
          return true;
        }
      }
      return false;
    }
  }
  
  public void r(int paramInt)
  {
    
    synchronized (this.i)
    {
      Iterator localIterator = this.i.iterator();
      while (localIterator.hasNext()) {
        ((h)localIterator.next()).onTrimMemory(paramInt);
      }
      this.c.a(paramInt);
      this.b.a(paramInt);
      this.f.a(paramInt);
      return;
    }
  }
  
  void s(h paramh)
  {
    synchronized (this.i)
    {
      if (this.i.contains(paramh))
      {
        this.i.remove(paramh);
        return;
      }
      paramh = new java/lang/IllegalStateException;
      paramh.<init>("Cannot unregister not yet registered manager");
      throw paramh;
    }
  }
  
  public static abstract interface a
  {
    public abstract com.bumptech.glide.request.e build();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.b
 * JD-Core Version:    0.7.0.1
 */