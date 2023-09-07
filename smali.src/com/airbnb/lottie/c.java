package com.airbnb.lottie;

import android.content.Context;
import i1.b;
import i1.d;
import i1.e;
import i1.f;
import java.io.File;

public class c
{
  public static boolean a = false;
  private static boolean b = false;
  private static String[] c;
  private static long[] d;
  private static int e;
  private static int f;
  private static e g;
  private static d h;
  private static volatile i1.g i;
  private static volatile f j;
  
  public static void a(String paramString)
  {
    if (!b) {
      return;
    }
    int k = e;
    if (k == 20)
    {
      f += 1;
      return;
    }
    c[k] = paramString;
    d[k] = System.nanoTime();
    androidx.core.os.g.a(paramString);
    e += 1;
  }
  
  public static float b(String paramString)
  {
    int k = f;
    if (k > 0)
    {
      f = k - 1;
      return 0.0F;
    }
    if (!b) {
      return 0.0F;
    }
    k = e - 1;
    e = k;
    if (k != -1)
    {
      if (paramString.equals(c[k]))
      {
        androidx.core.os.g.b();
        return (float)(System.nanoTime() - d[e]) / 1000000.0F;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unbalanced trace call ");
      localStringBuilder.append(paramString);
      localStringBuilder.append(". Expected ");
      localStringBuilder.append(c[e]);
      localStringBuilder.append(".");
      throw new IllegalStateException(localStringBuilder.toString());
    }
    throw new IllegalStateException("Can't end trace section. There are none.");
  }
  
  public static f c(Context paramContext)
  {
    Context localContext = paramContext.getApplicationContext();
    f localf = j;
    paramContext = localf;
    if (localf == null) {
      try
      {
        localf = j;
        paramContext = localf;
        if (localf == null)
        {
          localf = new i1/f;
          paramContext = h;
          if (paramContext == null) {
            paramContext = new a(localContext);
          }
          localf.<init>(paramContext);
          j = localf;
          paramContext = localf;
        }
      }
      finally {}
    }
    return paramContext;
  }
  
  public static i1.g d(Context paramContext)
  {
    Object localObject1 = i;
    Object localObject2 = localObject1;
    if (localObject1 == null) {
      try
      {
        localObject1 = i;
        localObject2 = localObject1;
        if (localObject1 == null)
        {
          localObject2 = new i1/g;
          localObject1 = c(paramContext);
          paramContext = g;
          if (paramContext == null) {
            paramContext = new b();
          }
          ((i1.g)localObject2).<init>((f)localObject1, paramContext);
          i = (i1.g)localObject2;
        }
      }
      finally {}
    }
    return localObject2;
  }
  
  class a
    implements d
  {
    a() {}
    
    public File a()
    {
      return new File(c.this.getCacheDir(), "lottie_network_cache");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.c
 * JD-Core Version:    0.7.0.1
 */