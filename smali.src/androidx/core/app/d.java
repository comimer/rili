package androidx.core.app;

import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

final class d
{
  protected static final Class<?> a;
  protected static final Field b;
  protected static final Field c;
  protected static final Method d;
  protected static final Method e;
  protected static final Method f;
  private static final Handler g = new Handler(Looper.getMainLooper());
  
  static
  {
    Class localClass = a();
    a = localClass;
    b = b();
    c = f();
    d = d(localClass);
    e = c(localClass);
    f = e(localClass);
  }
  
  private static Class<?> a()
  {
    try
    {
      Class localClass = Class.forName("android.app.ActivityThread");
      return localClass;
    }
    finally {}
    return null;
  }
  
  private static Field b()
  {
    try
    {
      Field localField = Activity.class.getDeclaredField("mMainThread");
      localField.setAccessible(true);
      return localField;
    }
    finally {}
    return null;
  }
  
  private static Method c(Class<?> paramClass)
  {
    if (paramClass == null) {
      return null;
    }
    try
    {
      paramClass = paramClass.getDeclaredMethod("performStopActivity", new Class[] { IBinder.class, Boolean.TYPE });
      paramClass.setAccessible(true);
      return paramClass;
    }
    finally {}
    return null;
  }
  
  private static Method d(Class<?> paramClass)
  {
    if (paramClass == null) {
      return null;
    }
    try
    {
      paramClass = paramClass.getDeclaredMethod("performStopActivity", new Class[] { IBinder.class, Boolean.TYPE, String.class });
      paramClass.setAccessible(true);
      return paramClass;
    }
    finally {}
    return null;
  }
  
  private static Method e(Class<?> paramClass)
  {
    if ((g()) && (paramClass != null)) {}
    try
    {
      Class localClass1 = Integer.TYPE;
      Class localClass2 = Boolean.TYPE;
      paramClass = paramClass.getDeclaredMethod("requestRelaunchActivity", new Class[] { IBinder.class, List.class, List.class, localClass1, localClass2, Configuration.class, Configuration.class, localClass2, localClass2 });
      paramClass.setAccessible(true);
      return paramClass;
    }
    finally
    {
      label84:
      break label84;
    }
    return null;
  }
  
  private static Field f()
  {
    try
    {
      Field localField = Activity.class.getDeclaredField("mToken");
      localField.setAccessible(true);
      return localField;
    }
    finally {}
    return null;
  }
  
  private static boolean g()
  {
    int i = Build.VERSION.SDK_INT;
    boolean bool;
    if ((i != 26) && (i != 27)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  protected static boolean h(Object paramObject, int paramInt, Activity paramActivity)
  {
    try
    {
      Object localObject = c.get(paramActivity);
      if ((localObject == paramObject) && (paramActivity.hashCode() == paramInt))
      {
        paramActivity = b.get(paramActivity);
        paramObject = g;
        c localc = new androidx/core/app/d$c;
        localc.<init>(paramActivity, localObject);
        return true;
      }
      return false;
    }
    finally
    {
      Log.e("ActivityRecreator", "Exception while fetching field values", paramObject);
    }
    return false;
  }
  
  static boolean i(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 28)
    {
      paramActivity.recreate();
      return true;
    }
    if ((g()) && (f == null)) {
      return false;
    }
    if ((e == null) && (d == null)) {
      return false;
    }
    try
    {
      Object localObject1 = c.get(paramActivity);
      if (localObject1 == null) {
        return false;
      }
      Object localObject2 = b.get(paramActivity);
      if (localObject2 == null) {
        return false;
      }
      Application localApplication = paramActivity.getApplication();
      d locald = new androidx/core/app/d$d;
      locald.<init>(paramActivity);
      localApplication.registerActivityLifecycleCallbacks(locald);
      Handler localHandler = g;
      Object localObject4 = new androidx/core/app/d$a;
      ((a)localObject4).<init>(locald, localObject1);
      localHandler.post((Runnable)localObject4);
      try
      {
        if (g())
        {
          localObject4 = f;
          paramActivity = Boolean.FALSE;
          ((Method)localObject4).invoke(localObject2, new Object[] { localObject1, null, null, Integer.valueOf(0), paramActivity, null, null, paramActivity, paramActivity });
        }
        else
        {
          paramActivity.recreate();
        }
        paramActivity = new androidx/core/app/d$b;
        paramActivity.<init>(localApplication, locald);
        localHandler.post(paramActivity);
        return true;
      }
      finally
      {
        localObject1 = g;
        paramActivity = new androidx/core/app/d$b;
        paramActivity.<init>(localApplication, locald);
        ((Handler)localObject1).post(paramActivity);
      }
      return false;
    }
    finally {}
  }
  
  class a
    implements Runnable
  {
    a(Object paramObject) {}
    
    public void run()
    {
      d.this.a = this.b;
    }
  }
  
  class b
    implements Runnable
  {
    b(d.d paramd) {}
    
    public void run()
    {
      d.this.unregisterActivityLifecycleCallbacks(this.b);
    }
  }
  
  class c
    implements Runnable
  {
    c(Object paramObject) {}
    
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: getstatic 31	androidx/core/app/d:d	Ljava/lang/reflect/Method;
      //   3: astore_1
      //   4: aload_1
      //   5: ifnull +37 -> 42
      //   8: aload_1
      //   9: aload_0
      //   10: getfield 18	androidx/core/app/d$c:a	Ljava/lang/Object;
      //   13: iconst_3
      //   14: anewarray 4	java/lang/Object
      //   17: dup
      //   18: iconst_0
      //   19: aload_0
      //   20: getfield 20	androidx/core/app/d$c:b	Ljava/lang/Object;
      //   23: aastore
      //   24: dup
      //   25: iconst_1
      //   26: getstatic 37	java/lang/Boolean:FALSE	Ljava/lang/Boolean;
      //   29: aastore
      //   30: dup
      //   31: iconst_2
      //   32: ldc 39
      //   34: aastore
      //   35: invokevirtual 45	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
      //   38: pop
      //   39: goto +81 -> 120
      //   42: getstatic 48	androidx/core/app/d:e	Ljava/lang/reflect/Method;
      //   45: aload_0
      //   46: getfield 18	androidx/core/app/d$c:a	Ljava/lang/Object;
      //   49: iconst_2
      //   50: anewarray 4	java/lang/Object
      //   53: dup
      //   54: iconst_0
      //   55: aload_0
      //   56: getfield 20	androidx/core/app/d$c:b	Ljava/lang/Object;
      //   59: aastore
      //   60: dup
      //   61: iconst_1
      //   62: getstatic 37	java/lang/Boolean:FALSE	Ljava/lang/Boolean;
      //   65: aastore
      //   66: invokevirtual 45	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
      //   69: pop
      //   70: goto +50 -> 120
      //   73: astore_1
      //   74: ldc 50
      //   76: ldc 52
      //   78: aload_1
      //   79: invokestatic 57	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   82: pop
      //   83: goto +37 -> 120
      //   86: astore_1
      //   87: aload_1
      //   88: invokevirtual 61	java/lang/Object:getClass	()Ljava/lang/Class;
      //   91: ldc 27
      //   93: if_acmpne +27 -> 120
      //   96: aload_1
      //   97: invokevirtual 67	java/lang/Throwable:getMessage	()Ljava/lang/String;
      //   100: ifnull +20 -> 120
      //   103: aload_1
      //   104: invokevirtual 67	java/lang/Throwable:getMessage	()Ljava/lang/String;
      //   107: ldc 69
      //   109: invokevirtual 75	java/lang/String:startsWith	(Ljava/lang/String;)Z
      //   112: ifne +6 -> 118
      //   115: goto +5 -> 120
      //   118: aload_1
      //   119: athrow
      //   120: return
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	121	0	this	c
      //   3	6	1	localMethod	Method
      //   73	6	1	localThrowable	java.lang.Throwable
      //   86	33	1	localRuntimeException	java.lang.RuntimeException
      // Exception table:
      //   from	to	target	type
      //   0	4	73	finally
      //   8	39	73	finally
      //   42	70	73	finally
      //   0	4	86	java/lang/RuntimeException
      //   8	39	86	java/lang/RuntimeException
      //   42	70	86	java/lang/RuntimeException
    }
  }
  
  private static final class d
    implements Application.ActivityLifecycleCallbacks
  {
    Object a;
    private Activity b;
    private final int c;
    private boolean d = false;
    private boolean e = false;
    private boolean f = false;
    
    d(Activity paramActivity)
    {
      this.b = paramActivity;
      this.c = paramActivity.hashCode();
    }
    
    public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
    
    public void onActivityDestroyed(Activity paramActivity)
    {
      if (this.b == paramActivity)
      {
        this.b = null;
        this.e = true;
      }
    }
    
    public void onActivityPaused(Activity paramActivity)
    {
      if ((this.e) && (!this.f) && (!this.d) && (d.h(this.a, this.c, paramActivity)))
      {
        this.f = true;
        this.a = null;
      }
    }
    
    public void onActivityResumed(Activity paramActivity) {}
    
    public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
    
    public void onActivityStarted(Activity paramActivity)
    {
      if (this.b == paramActivity) {
        this.d = true;
      }
    }
    
    public void onActivityStopped(Activity paramActivity) {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.app.d
 * JD-Core Version:    0.7.0.1
 */