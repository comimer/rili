package g6;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import dalvik.system.DexClassLoader;
import e6.e;
import java.io.File;
import java.lang.reflect.Method;

public class b
  implements a
{
  private Context a;
  private ClassLoader b;
  private int c;
  private String d = "";
  private String e;
  private String f;
  private volatile boolean g;
  
  public b(Context paramContext, String paramString1, String paramString2)
  {
    this.a = f6.b.a(paramContext);
    this.e = paramString1;
    this.f = paramString2;
    paramContext = paramContext.getPackageManager().getPackageArchiveInfo(paramString1, 1);
    this.c = paramContext.versionCode;
    this.d = paramContext.versionName;
  }
  
  /* Error */
  private void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 63	g6/b:b	Ljava/lang/ClassLoader;
    //   4: ldc 65
    //   6: invokevirtual 71	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   9: ldc 73
    //   11: iconst_3
    //   12: anewarray 75	java/lang/Class
    //   15: dup
    //   16: iconst_0
    //   17: ldc 40
    //   19: aastore
    //   20: dup
    //   21: iconst_1
    //   22: getstatic 81	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   25: aastore
    //   26: dup
    //   27: iconst_2
    //   28: ldc 83
    //   30: aastore
    //   31: invokevirtual 87	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   34: aconst_null
    //   35: iconst_3
    //   36: anewarray 4	java/lang/Object
    //   39: dup
    //   40: iconst_0
    //   41: aload_0
    //   42: getfield 34	g6/b:a	Landroid/content/Context;
    //   45: aastore
    //   46: dup
    //   47: iconst_1
    //   48: aload_0
    //   49: getfield 57	g6/b:c	I
    //   52: invokestatic 91	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   55: aastore
    //   56: dup
    //   57: iconst_2
    //   58: aload_0
    //   59: getfield 27	g6/b:d	Ljava/lang/String;
    //   62: aastore
    //   63: invokevirtual 97	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   66: pop
    //   67: goto +16 -> 83
    //   70: astore_1
    //   71: ldc 99
    //   73: invokestatic 104	f6/a:a	(Ljava/lang/String;)Ljava/lang/String;
    //   76: ldc 106
    //   78: aload_1
    //   79: invokestatic 112	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   82: pop
    //   83: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	this	b
    //   70	9	1	localThrowable	java.lang.Throwable
    // Exception table:
    //   from	to	target	type
    //   0	67	70	finally
  }
  
  public boolean a(String paramString)
  {
    try
    {
      init();
      boolean bool = ((Boolean)this.b.loadClass("com.miui.analytics.Analytics").getDeclaredMethod("isPolicyReady", new Class[] { String.class, String.class }).invoke(null, new Object[] { this.a.getPackageName(), paramString })).booleanValue();
      return bool;
    }
    finally
    {
      Log.w(f6.a.a("DexAnalytics"), "isPolicyReady exception", paramString);
    }
    return false;
  }
  
  public String b(String paramString)
  {
    try
    {
      init();
      paramString = (String)this.b.loadClass("com.miui.analytics.Analytics").getDeclaredMethod("getClientExtra", new Class[] { String.class, String.class }).invoke(null, new Object[] { this.a.getPackageName(), paramString });
      return paramString;
    }
    finally
    {
      Log.w(f6.a.a("DexAnalytics"), "getClientExtra exception", paramString);
    }
    return "";
  }
  
  /* Error */
  public void deleteAllEvents(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 116	g6/b:init	()V
    //   4: aload_0
    //   5: getfield 63	g6/b:b	Ljava/lang/ClassLoader;
    //   8: ldc 65
    //   10: invokevirtual 71	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   13: ldc 137
    //   15: iconst_1
    //   16: anewarray 75	java/lang/Class
    //   19: dup
    //   20: iconst_0
    //   21: ldc 83
    //   23: aastore
    //   24: invokevirtual 87	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   27: aconst_null
    //   28: iconst_1
    //   29: anewarray 4	java/lang/Object
    //   32: dup
    //   33: iconst_0
    //   34: aload_1
    //   35: aastore
    //   36: invokevirtual 97	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   39: pop
    //   40: goto +16 -> 56
    //   43: astore_1
    //   44: ldc 99
    //   46: invokestatic 104	f6/a:a	(Ljava/lang/String;)Ljava/lang/String;
    //   49: ldc 139
    //   51: aload_1
    //   52: invokestatic 112	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   55: pop
    //   56: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	b
    //   0	57	1	paramString	String
    // Exception table:
    //   from	to	target	type
    //   0	40	43	finally
  }
  
  public e getVersion()
  {
    return new e(this.d);
  }
  
  public void init()
  {
    try
    {
      if (!this.g)
      {
        DexClassLoader localDexClassLoader = new dalvik/system/DexClassLoader;
        localDexClassLoader.<init>(this.e, this.a.getDir("dex", 0).getAbsolutePath(), this.f, ClassLoader.getSystemClassLoader());
        this.b = localDexClassLoader;
        c();
        this.g = true;
        f6.a.b("DexAnalytics", "initialized");
      }
    }
    catch (Exception localException)
    {
      Log.e(f6.a.a("DexAnalytics"), "init e", localException);
    }
  }
  
  /* Error */
  public void setDebugOn(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 116	g6/b:init	()V
    //   4: aload_0
    //   5: getfield 63	g6/b:b	Ljava/lang/ClassLoader;
    //   8: ldc 65
    //   10: invokevirtual 71	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   13: ldc 183
    //   15: iconst_1
    //   16: anewarray 75	java/lang/Class
    //   19: dup
    //   20: iconst_0
    //   21: getstatic 184	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   24: aastore
    //   25: invokevirtual 87	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   28: aconst_null
    //   29: iconst_1
    //   30: anewarray 4	java/lang/Object
    //   33: dup
    //   34: iconst_0
    //   35: iload_1
    //   36: invokestatic 187	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   39: aastore
    //   40: invokevirtual 97	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   43: pop
    //   44: goto +16 -> 60
    //   47: astore_2
    //   48: ldc 99
    //   50: invokestatic 104	f6/a:a	(Ljava/lang/String;)Ljava/lang/String;
    //   53: ldc 189
    //   55: aload_2
    //   56: invokestatic 112	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   59: pop
    //   60: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	61	0	this	b
    //   0	61	1	paramBoolean	boolean
    //   47	9	2	localThrowable	java.lang.Throwable
    // Exception table:
    //   from	to	target	type
    //   0	44	47	finally
  }
  
  /* Error */
  public void setDefaultPolicy(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 116	g6/b:init	()V
    //   4: aload_0
    //   5: getfield 63	g6/b:b	Ljava/lang/ClassLoader;
    //   8: ldc 65
    //   10: invokevirtual 71	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   13: ldc 191
    //   15: iconst_2
    //   16: anewarray 75	java/lang/Class
    //   19: dup
    //   20: iconst_0
    //   21: ldc 83
    //   23: aastore
    //   24: dup
    //   25: iconst_1
    //   26: ldc 83
    //   28: aastore
    //   29: invokevirtual 87	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   32: aconst_null
    //   33: iconst_2
    //   34: anewarray 4	java/lang/Object
    //   37: dup
    //   38: iconst_0
    //   39: aload_1
    //   40: aastore
    //   41: dup
    //   42: iconst_1
    //   43: aload_2
    //   44: aastore
    //   45: invokevirtual 97	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   48: pop
    //   49: goto +16 -> 65
    //   52: astore_1
    //   53: ldc 99
    //   55: invokestatic 104	f6/a:a	(Ljava/lang/String;)Ljava/lang/String;
    //   58: ldc 193
    //   60: aload_1
    //   61: invokestatic 112	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   64: pop
    //   65: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	b
    //   0	66	1	paramString1	String
    //   0	66	2	paramString2	String
    // Exception table:
    //   from	to	target	type
    //   0	49	52	finally
  }
  
  /* Error */
  public void trackEvent(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 116	g6/b:init	()V
    //   4: aload_0
    //   5: getfield 63	g6/b:b	Ljava/lang/ClassLoader;
    //   8: ldc 65
    //   10: invokevirtual 71	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   13: ldc 195
    //   15: iconst_1
    //   16: anewarray 75	java/lang/Class
    //   19: dup
    //   20: iconst_0
    //   21: ldc 83
    //   23: aastore
    //   24: invokevirtual 87	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   27: aconst_null
    //   28: iconst_1
    //   29: anewarray 4	java/lang/Object
    //   32: dup
    //   33: iconst_0
    //   34: aload_1
    //   35: aastore
    //   36: invokevirtual 97	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   39: pop
    //   40: goto +16 -> 56
    //   43: astore_1
    //   44: ldc 99
    //   46: invokestatic 104	f6/a:a	(Ljava/lang/String;)Ljava/lang/String;
    //   49: ldc 197
    //   51: aload_1
    //   52: invokestatic 112	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   55: pop
    //   56: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	b
    //   0	57	1	paramString	String
    // Exception table:
    //   from	to	target	type
    //   0	40	43	finally
  }
  
  /* Error */
  public void trackEvents(String[] paramArrayOfString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 116	g6/b:init	()V
    //   4: aload_0
    //   5: getfield 63	g6/b:b	Ljava/lang/ClassLoader;
    //   8: ldc 65
    //   10: invokevirtual 71	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   13: ldc 200
    //   15: iconst_1
    //   16: anewarray 75	java/lang/Class
    //   19: dup
    //   20: iconst_0
    //   21: ldc 202
    //   23: aastore
    //   24: invokevirtual 87	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   27: aconst_null
    //   28: iconst_1
    //   29: anewarray 4	java/lang/Object
    //   32: dup
    //   33: iconst_0
    //   34: aload_1
    //   35: aastore
    //   36: invokevirtual 97	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   39: pop
    //   40: goto +16 -> 56
    //   43: astore_1
    //   44: ldc 99
    //   46: invokestatic 104	f6/a:a	(Ljava/lang/String;)Ljava/lang/String;
    //   49: ldc 204
    //   51: aload_1
    //   52: invokestatic 112	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   55: pop
    //   56: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	b
    //   0	57	1	paramArrayOfString	String[]
    // Exception table:
    //   from	to	target	type
    //   0	40	43	finally
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g6.b
 * JD-Core Version:    0.7.0.1
 */