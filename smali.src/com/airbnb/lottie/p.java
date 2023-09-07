package com.airbnb.lottie;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import cc.a0;
import cc.g;
import com.airbnb.lottie.parser.moshi.JsonReader;
import e1.f;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import k1.d;

public class p
{
  private static final Map<String, k0<h>> a = new HashMap();
  private static final byte[] b = { 80, 75, 3, 4 };
  
  private static boolean A(Context paramContext)
  {
    boolean bool;
    if ((paramContext.getResources().getConfiguration().uiMode & 0x30) == 32) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static Boolean B(g paramg)
  {
    try
    {
      g localg = paramg.peek();
      for (int k : b) {
        if (localg.readByte() != k) {
          return Boolean.FALSE;
        }
      }
      localg.close();
      paramg = Boolean.TRUE;
      return paramg;
    }
    catch (Exception paramg)
    {
      d.b("Failed to check zip file header", paramg);
      return Boolean.FALSE;
    }
    catch (NoSuchMethodError paramg) {}
    return Boolean.FALSE;
  }
  
  private static String J(Context paramContext, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("rawRes");
    if (A(paramContext)) {
      paramContext = "_night_";
    } else {
      paramContext = "_day_";
    }
    localStringBuilder.append(paramContext);
    localStringBuilder.append(paramInt);
    return localStringBuilder.toString();
  }
  
  private static k0<h> h(String paramString, Callable<i0<h>> paramCallable)
  {
    Object localObject;
    if (paramString == null) {
      localObject = null;
    } else {
      localObject = f.b().a(paramString);
    }
    if (localObject != null) {
      return new k0(new k((h)localObject));
    }
    if (paramString != null)
    {
      localObject = a;
      if (((Map)localObject).containsKey(paramString)) {
        return (k0)((Map)localObject).get(paramString);
      }
    }
    paramCallable = new k0(paramCallable);
    if (paramString != null)
    {
      localObject = new AtomicBoolean(false);
      paramCallable.d(new l(paramString, (AtomicBoolean)localObject));
      paramCallable.c(new m(paramString, (AtomicBoolean)localObject));
      if (!((AtomicBoolean)localObject).get()) {
        a.put(paramString, paramCallable);
      }
    }
    return paramCallable;
  }
  
  private static d0 i(h paramh, String paramString)
  {
    paramh = paramh.j().values().iterator();
    while (paramh.hasNext())
    {
      d0 locald0 = (d0)paramh.next();
      if (locald0.b().equals(paramString)) {
        return locald0;
      }
    }
    return null;
  }
  
  public static k0<h> j(Context paramContext, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("asset_");
    localStringBuilder.append(paramString);
    return k(paramContext, paramString, localStringBuilder.toString());
  }
  
  public static k0<h> k(Context paramContext, String paramString1, String paramString2)
  {
    return h(paramString2, new n(paramContext.getApplicationContext(), paramString1, paramString2));
  }
  
  public static i0<h> l(Context paramContext, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("asset_");
    localStringBuilder.append(paramString);
    return m(paramContext, paramString, localStringBuilder.toString());
  }
  
  public static i0<h> m(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      if ((!paramString1.endsWith(".zip")) && (!paramString1.endsWith(".lottie"))) {
        return o(paramContext.getAssets().open(paramString1), paramString2);
      }
      ZipInputStream localZipInputStream = new java/util/zip/ZipInputStream;
      localZipInputStream.<init>(paramContext.getAssets().open(paramString1));
      paramContext = y(localZipInputStream, paramString2);
      return paramContext;
    }
    catch (IOException paramContext) {}
    return new i0(paramContext);
  }
  
  public static k0<h> n(InputStream paramInputStream, String paramString)
  {
    return h(paramString, new j(paramInputStream, paramString));
  }
  
  public static i0<h> o(InputStream paramInputStream, String paramString)
  {
    return p(paramInputStream, paramString, true);
  }
  
  private static i0<h> p(InputStream paramInputStream, String paramString, boolean paramBoolean)
  {
    try
    {
      paramString = q(JsonReader.V(cc.n.b(cc.n.e(paramInputStream))), paramString);
      return paramString;
    }
    finally
    {
      if (paramBoolean) {
        k1.h.c(paramInputStream);
      }
    }
  }
  
  public static i0<h> q(JsonReader paramJsonReader, String paramString)
  {
    return r(paramJsonReader, paramString, true);
  }
  
  /* Error */
  private static i0<h> r(JsonReader paramJsonReader, String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 374	j1/w:a	(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/h;
    //   4: astore_3
    //   5: aload_1
    //   6: ifnull +11 -> 17
    //   9: invokestatic 147	e1/f:b	()Le1/f;
    //   12: aload_1
    //   13: aload_3
    //   14: invokevirtual 152	e1/f:c	(Ljava/lang/String;Lcom/airbnb/lottie/h;)V
    //   17: new 100	com/airbnb/lottie/i0
    //   20: dup
    //   21: aload_3
    //   22: invokespecial 103	com/airbnb/lottie/i0:<init>	(Ljava/lang/Object;)V
    //   25: astore_1
    //   26: iload_2
    //   27: ifeq +7 -> 34
    //   30: aload_0
    //   31: invokestatic 363	k1/h:c	(Ljava/io/Closeable;)V
    //   34: aload_1
    //   35: areturn
    //   36: astore_1
    //   37: goto +23 -> 60
    //   40: astore_1
    //   41: new 100	com/airbnb/lottie/i0
    //   44: dup
    //   45: aload_1
    //   46: invokespecial 326	com/airbnb/lottie/i0:<init>	(Ljava/lang/Throwable;)V
    //   49: astore_1
    //   50: iload_2
    //   51: ifeq +7 -> 58
    //   54: aload_0
    //   55: invokestatic 363	k1/h:c	(Ljava/io/Closeable;)V
    //   58: aload_1
    //   59: areturn
    //   60: iload_2
    //   61: ifeq +7 -> 68
    //   64: aload_0
    //   65: invokestatic 363	k1/h:c	(Ljava/io/Closeable;)V
    //   68: aload_1
    //   69: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	paramJsonReader	JsonReader
    //   0	70	1	paramString	String
    //   0	70	2	paramBoolean	boolean
    //   4	18	3	localh	h
    // Exception table:
    //   from	to	target	type
    //   0	5	36	finally
    //   9	17	36	finally
    //   17	26	36	finally
    //   41	50	36	finally
    //   0	5	40	java/lang/Exception
    //   9	17	40	java/lang/Exception
    //   17	26	40	java/lang/Exception
  }
  
  public static k0<h> s(Context paramContext, int paramInt)
  {
    return t(paramContext, paramInt, J(paramContext, paramInt));
  }
  
  public static k0<h> t(Context paramContext, int paramInt, String paramString)
  {
    return h(paramString, new o(new WeakReference(paramContext), paramContext.getApplicationContext(), paramInt, paramString));
  }
  
  public static i0<h> u(Context paramContext, int paramInt)
  {
    return v(paramContext, paramInt, J(paramContext, paramInt));
  }
  
  public static i0<h> v(Context paramContext, int paramInt, String paramString)
  {
    try
    {
      g localg = cc.n.b(cc.n.e(paramContext.getResources().openRawResource(paramInt)));
      if (B(localg).booleanValue())
      {
        paramContext = new java/util/zip/ZipInputStream;
        paramContext.<init>(localg.o0());
        return y(paramContext, paramString);
      }
      paramContext = o(localg.o0(), paramString);
      return paramContext;
    }
    catch (Resources.NotFoundException paramContext) {}
    return new i0(paramContext);
  }
  
  public static k0<h> w(Context paramContext, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("url_");
    localStringBuilder.append(paramString);
    return x(paramContext, paramString, localStringBuilder.toString());
  }
  
  public static k0<h> x(Context paramContext, String paramString1, String paramString2)
  {
    return h(paramString2, new i(paramContext, paramString1, paramString2));
  }
  
  public static i0<h> y(ZipInputStream paramZipInputStream, String paramString)
  {
    try
    {
      paramString = z(paramZipInputStream, paramString);
      return paramString;
    }
    finally
    {
      k1.h.c(paramZipInputStream);
    }
  }
  
  private static i0<h> z(ZipInputStream paramZipInputStream, String paramString)
  {
    Object localObject1 = new HashMap();
    try
    {
      Object localObject2 = paramZipInputStream.getNextEntry();
      h localh = null;
      while (localObject2 != null)
      {
        String str = ((ZipEntry)localObject2).getName();
        if (str.contains("__MACOSX"))
        {
          paramZipInputStream.closeEntry();
        }
        else if (((ZipEntry)localObject2).getName().equalsIgnoreCase("manifest.json"))
        {
          paramZipInputStream.closeEntry();
        }
        else if (((ZipEntry)localObject2).getName().contains(".json"))
        {
          localh = (h)r(JsonReader.V(cc.n.b(cc.n.e(paramZipInputStream))), null, false).b();
        }
        else if ((!str.contains(".png")) && (!str.contains(".webp")) && (!str.contains(".jpg")) && (!str.contains(".jpeg")))
        {
          paramZipInputStream.closeEntry();
        }
        else
        {
          localObject2 = str.split("/");
          ((Map)localObject1).put(localObject2[(localObject2.length - 1)], BitmapFactory.decodeStream(paramZipInputStream));
        }
        localObject2 = paramZipInputStream.getNextEntry();
      }
      if (localh == null) {
        return new i0(new IllegalArgumentException("Unable to parse composition"));
      }
      localObject2 = ((Map)localObject1).entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        paramZipInputStream = (Map.Entry)((Iterator)localObject2).next();
        localObject1 = i(localh, (String)paramZipInputStream.getKey());
        if (localObject1 != null) {
          ((d0)localObject1).f(k1.h.l((Bitmap)paramZipInputStream.getValue(), ((d0)localObject1).e(), ((d0)localObject1).c()));
        }
      }
      localObject2 = localh.j().entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        paramZipInputStream = (Map.Entry)((Iterator)localObject2).next();
        if (((d0)paramZipInputStream.getValue()).a() == null)
        {
          paramString = new StringBuilder();
          paramString.append("There is no image for ");
          paramString.append(((d0)paramZipInputStream.getValue()).b());
          return new i0(new IllegalStateException(paramString.toString()));
        }
      }
      if (paramString != null) {
        f.b().c(paramString, localh);
      }
      return new i0(localh);
    }
    catch (IOException paramZipInputStream) {}
    return new i0(paramZipInputStream);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.p
 * JD-Core Version:    0.7.0.1
 */