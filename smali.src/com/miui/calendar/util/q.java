package com.miui.calendar.util;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import h3.a;
import h3.a.c;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class q
  extends p
{
  private static q d;
  private static ConcurrentMap<String, String> e = new ConcurrentHashMap();
  private static ConcurrentMap<String, Integer> f = new ConcurrentHashMap();
  
  private q(Context paramContext)
  {
    super(paramContext, "cache_dir_string", 1048576);
  }
  
  private static String b(InputStream paramInputStream)
  {
    paramInputStream = new Scanner(paramInputStream).useDelimiter("\\A");
    if (paramInputStream.hasNext()) {
      paramInputStream = paramInputStream.next();
    } else {
      paramInputStream = "";
    }
    return paramInputStream;
  }
  
  private static q c(Context paramContext)
  {
    try
    {
      if (d == null)
      {
        q localq = new com/miui/calendar/util/q;
        localq.<init>(paramContext);
        d = localq;
      }
      paramContext = d;
      return paramContext;
    }
    finally {}
  }
  
  public static String d(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
    try
    {
      String str1 = String.format(Locale.ENGLISH, paramString, new Object[0]);
      String str2 = (String)e.get(str1);
      paramString = str2;
      if (TextUtils.isEmpty(str2))
      {
        paramString = c(paramContext).e(str1);
        e.put(str1, paramString);
        f.put(str1, Integer.valueOf(paramString.hashCode()));
      }
      return paramString;
    }
    catch (Exception paramContext)
    {
      Log.e("Cal:D:StringCache", "getString()", paramContext);
    }
    return "";
  }
  
  /* Error */
  private String e(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 122	com/miui/calendar/util/p:a	Lh3/a;
    //   4: astore_2
    //   5: ldc 53
    //   7: astore_3
    //   8: aload_2
    //   9: ifnonnull +13 -> 22
    //   12: ldc 109
    //   14: ldc 124
    //   16: invokestatic 130	com/miui/calendar/util/z:m	(Ljava/lang/String;Ljava/lang/String;)V
    //   19: ldc 53
    //   21: areturn
    //   22: aconst_null
    //   23: astore 4
    //   25: aconst_null
    //   26: astore 5
    //   28: aload_2
    //   29: aload_1
    //   30: invokevirtual 136	h3/a:c0	(Ljava/lang/String;)Lh3/a$e;
    //   33: astore_2
    //   34: aload_3
    //   35: astore 4
    //   37: aload_2
    //   38: ifnull +68 -> 106
    //   41: aload_2
    //   42: astore 5
    //   44: aload_2
    //   45: astore 4
    //   47: aload_2
    //   48: iconst_0
    //   49: invokevirtual 141	h3/a$e:c	(I)Ljava/io/InputStream;
    //   52: astore 6
    //   54: aload_3
    //   55: astore 4
    //   57: aload 6
    //   59: ifnull +47 -> 106
    //   62: aload_2
    //   63: astore 5
    //   65: aload_2
    //   66: astore 4
    //   68: new 143	java/io/BufferedInputStream
    //   71: astore 7
    //   73: aload_2
    //   74: astore 5
    //   76: aload_2
    //   77: astore 4
    //   79: aload 7
    //   81: aload 6
    //   83: getstatic 146	com/miui/calendar/util/p:c	I
    //   86: invokespecial 149	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;I)V
    //   89: aload_2
    //   90: astore 5
    //   92: aload_2
    //   93: astore 4
    //   95: aload 7
    //   97: invokestatic 151	com/miui/calendar/util/q:b	(Ljava/io/InputStream;)Ljava/lang/String;
    //   100: astore 6
    //   102: aload 6
    //   104: astore 4
    //   106: aload 4
    //   108: astore 5
    //   110: aload_2
    //   111: ifnull +43 -> 154
    //   114: aload 4
    //   116: astore_3
    //   117: aload_2
    //   118: invokevirtual 154	h3/a$e:close	()V
    //   121: aload_3
    //   122: astore 5
    //   124: goto +30 -> 154
    //   127: astore_1
    //   128: goto +87 -> 215
    //   131: astore_2
    //   132: aload 4
    //   134: astore 5
    //   136: aload_2
    //   137: invokevirtual 159	java/lang/Throwable:printStackTrace	()V
    //   140: aload_3
    //   141: astore 5
    //   143: aload 4
    //   145: ifnull +9 -> 154
    //   148: aload 4
    //   150: astore_2
    //   151: goto -34 -> 117
    //   154: aload 5
    //   156: invokestatic 68	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   159: ifne +53 -> 212
    //   162: new 161	java/lang/StringBuilder
    //   165: dup
    //   166: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   169: astore 4
    //   171: aload 4
    //   173: ldc 164
    //   175: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   178: pop
    //   179: aload 4
    //   181: aload_1
    //   182: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: pop
    //   186: aload 4
    //   188: ldc 170
    //   190: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   193: pop
    //   194: aload 4
    //   196: aload 5
    //   198: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: pop
    //   202: ldc 109
    //   204: aload 4
    //   206: invokevirtual 173	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   209: invokestatic 175	com/miui/calendar/util/z:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   212: aload 5
    //   214: areturn
    //   215: aload 5
    //   217: ifnull +8 -> 225
    //   220: aload 5
    //   222: invokevirtual 154	h3/a$e:close	()V
    //   225: aload_1
    //   226: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	227	0	this	q
    //   0	227	1	paramString	String
    //   4	114	2	localObject1	Object
    //   131	6	2	localIOException	IOException
    //   150	1	2	localObject2	Object
    //   7	134	3	localObject3	Object
    //   23	182	4	localObject4	Object
    //   26	195	5	localObject5	Object
    //   52	51	6	localObject6	Object
    //   71	25	7	localBufferedInputStream	java.io.BufferedInputStream
    // Exception table:
    //   from	to	target	type
    //   28	34	127	finally
    //   47	54	127	finally
    //   68	73	127	finally
    //   79	89	127	finally
    //   95	102	127	finally
    //   136	140	127	finally
    //   28	34	131	java/io/IOException
    //   47	54	131	java/io/IOException
    //   68	73	131	java/io/IOException
    //   79	89	131	java/io/IOException
    //   95	102	131	java/io/IOException
  }
  
  public static void f(Context paramContext, String paramString1, String paramString2)
  {
    if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2))) {
      try
      {
        paramString1 = String.format(Locale.ENGLISH, paramString1, new Object[0]);
        int i = paramString2.hashCode();
        boolean bool = f.containsKey(paramString1);
        if ((bool) && (((Integer)f.get(paramString1)).intValue() == i))
        {
          paramContext = new java/lang/StringBuilder;
          paramContext.<init>();
          paramContext.append("key=");
          paramContext.append(paramString1);
          paramContext.append(" mem is up to date");
          z.b("Cal:D:StringCache", paramContext.toString());
          return;
        }
        e.put(paramString1, paramString2);
        f.put(paramString1, Integer.valueOf(i));
        Object localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        ((StringBuilder)localObject).append("hash_");
        ((StringBuilder)localObject).append(paramString1);
        String str1 = ((StringBuilder)localObject).toString();
        String str2 = c(paramContext).e(str1);
        localObject = String.valueOf(i);
        if (TextUtils.equals(str2, (CharSequence)localObject))
        {
          paramContext = new java/lang/StringBuilder;
          paramContext.<init>();
          paramContext.append("key=");
          paramContext.append(paramString1);
          paramContext.append(" disk is up to date");
          z.b("Cal:D:StringCache", paramContext.toString());
          return;
        }
        c(paramContext).g(paramString1, paramString2);
        c(paramContext).g(str1, (String)localObject);
      }
      catch (Exception paramContext)
      {
        Log.e("Cal:D:StringCache", "putString()", paramContext);
      }
    }
  }
  
  private void g(String paramString1, String paramString2)
  {
    Object localObject1 = this.a;
    if (localObject1 == null)
    {
      z.m("Cal:D:StringCache", "putString(): disk cache is null");
      return;
    }
    Object localObject2 = null;
    try
    {
      localObject1 = ((a)localObject1).Z(paramString1);
      if (localObject1 == null) {
        return;
      }
      localObject2 = localObject1;
      if (i(paramString2, (a.c)localObject1))
      {
        localObject2 = localObject1;
        this.a.flush();
        localObject2 = localObject1;
        ((a.c)localObject1).e();
        localObject2 = localObject1;
        StringBuilder localStringBuilder = new java/lang/StringBuilder;
        localObject2 = localObject1;
        localStringBuilder.<init>();
        localObject2 = localObject1;
        localStringBuilder.append("put disk string: key=");
        localObject2 = localObject1;
        localStringBuilder.append(paramString1);
        localObject2 = localObject1;
        localStringBuilder.append(", value=");
        localObject2 = localObject1;
        localStringBuilder.append(paramString2);
        localObject2 = localObject1;
        z.b("Cal:D:StringCache", localStringBuilder.toString());
      }
      else
      {
        localObject2 = localObject1;
        ((a.c)localObject1).a();
        localObject2 = localObject1;
        paramString2 = new java/lang/StringBuilder;
        localObject2 = localObject1;
        paramString2.<init>();
        localObject2 = localObject1;
        paramString2.append("[Error] put disk string: key=");
        localObject2 = localObject1;
        paramString2.append(paramString1);
        localObject2 = localObject1;
        z.b("Cal:D:StringCache", paramString2.toString());
      }
    }
    catch (IOException paramString2)
    {
      paramString2 = new StringBuilder();
      paramString2.append("[IOError] put disk string: key=");
      paramString2.append(paramString1);
      z.b("Cal:D:StringCache", paramString2.toString());
      if (localObject2 == null) {}
    }
    try
    {
      localObject2.a();
      label230:
      return;
    }
    catch (IOException paramString1)
    {
      break label230;
    }
  }
  
  public static void h(Context paramContext, String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (!TextUtils.isEmpty(d(paramContext, paramString)))) {
      try
      {
        paramString = String.format(Locale.ENGLISH, paramString, new Object[0]);
        e.remove(paramString);
        f.remove(paramString);
        Object localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        ((StringBuilder)localObject).append("hash_");
        ((StringBuilder)localObject).append(paramString);
        localObject = ((StringBuilder)localObject).toString();
        c(paramContext).g(paramString, "");
        c(paramContext).g((String)localObject, "");
      }
      catch (Exception paramContext)
      {
        Log.e("Cal:D:StringCache", "removeString()", paramContext);
      }
    }
  }
  
  /* Error */
  private boolean i(String paramString, a.c paramc)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 239	java/io/BufferedOutputStream
    //   5: astore 4
    //   7: aload 4
    //   9: aload_2
    //   10: iconst_0
    //   11: invokevirtual 242	h3/a$c:f	(I)Ljava/io/OutputStream;
    //   14: getstatic 146	com/miui/calendar/util/p:c	I
    //   17: invokespecial 245	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   20: aload 4
    //   22: aload_1
    //   23: invokevirtual 249	java/lang/String:getBytes	()[B
    //   26: invokevirtual 255	java/io/OutputStream:write	([B)V
    //   29: aload 4
    //   31: invokevirtual 256	java/io/OutputStream:close	()V
    //   34: iconst_1
    //   35: ireturn
    //   36: astore_1
    //   37: aload 4
    //   39: astore_2
    //   40: goto +6 -> 46
    //   43: astore_1
    //   44: aload_3
    //   45: astore_2
    //   46: aload_2
    //   47: ifnull +7 -> 54
    //   50: aload_2
    //   51: invokevirtual 256	java/io/OutputStream:close	()V
    //   54: aload_1
    //   55: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	q
    //   0	56	1	paramString	String
    //   0	56	2	paramc	a.c
    //   1	44	3	localObject	Object
    //   5	33	4	localBufferedOutputStream	java.io.BufferedOutputStream
    // Exception table:
    //   from	to	target	type
    //   20	29	36	finally
    //   2	20	43	finally
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.q
 * JD-Core Version:    0.7.0.1
 */