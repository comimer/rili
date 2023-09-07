package androidx.startup;

import android.content.Context;
import java.lang.Class<+Ln0.a<*>;>;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import o0.b;

public final class a
{
  private static volatile a d;
  private static final Object e = new Object();
  final Map<Class<?>, Object> a;
  final Set<Class<? extends n0.a<?>>> b;
  final Context c;
  
  a(Context paramContext)
  {
    this.c = paramContext.getApplicationContext();
    this.b = new HashSet();
    this.a = new HashMap();
  }
  
  public static a c(Context paramContext)
  {
    if (d == null) {
      synchronized (e)
      {
        if (d == null)
        {
          a locala = new androidx/startup/a;
          locala.<init>(paramContext);
          d = locala;
        }
      }
    }
    return d;
  }
  
  /* Error */
  void a()
  {
    // Byte code:
    //   0: ldc 54
    //   2: invokestatic 59	o0/b:a	(Ljava/lang/String;)V
    //   5: new 61	android/content/ComponentName
    //   8: astore_1
    //   9: aload_1
    //   10: aload_0
    //   11: getfield 33	androidx/startup/a:c	Landroid/content/Context;
    //   14: invokevirtual 65	android/content/Context:getPackageName	()Ljava/lang/String;
    //   17: ldc 67
    //   19: invokevirtual 72	java/lang/Class:getName	()Ljava/lang/String;
    //   22: invokespecial 75	android/content/ComponentName:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   25: aload_0
    //   26: getfield 33	androidx/startup/a:c	Landroid/content/Context;
    //   29: invokevirtual 79	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   32: aload_1
    //   33: sipush 128
    //   36: invokevirtual 85	android/content/pm/PackageManager:getProviderInfo	(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    //   39: getfield 91	android/content/pm/ProviderInfo:metaData	Landroid/os/Bundle;
    //   42: astore_2
    //   43: aload_0
    //   44: getfield 33	androidx/startup/a:c	Landroid/content/Context;
    //   47: getstatic 96	n0/b:a	I
    //   50: invokevirtual 100	android/content/Context:getString	(I)Ljava/lang/String;
    //   53: astore_1
    //   54: aload_2
    //   55: ifnull +98 -> 153
    //   58: new 35	java/util/HashSet
    //   61: astore_3
    //   62: aload_3
    //   63: invokespecial 36	java/util/HashSet:<init>	()V
    //   66: aload_2
    //   67: invokevirtual 106	android/os/BaseBundle:keySet	()Ljava/util/Set;
    //   70: invokeinterface 112 1 0
    //   75: astore 4
    //   77: aload 4
    //   79: invokeinterface 118 1 0
    //   84: ifeq +69 -> 153
    //   87: aload 4
    //   89: invokeinterface 122 1 0
    //   94: checkcast 124	java/lang/String
    //   97: astore 5
    //   99: aload_1
    //   100: aload_2
    //   101: aload 5
    //   103: aconst_null
    //   104: invokevirtual 127	android/os/BaseBundle:getString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   107: invokevirtual 131	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   110: ifeq -33 -> 77
    //   113: aload 5
    //   115: invokestatic 135	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   118: astore 5
    //   120: ldc 137
    //   122: aload 5
    //   124: invokevirtual 141	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   127: ifeq -50 -> 77
    //   130: aload_0
    //   131: getfield 38	androidx/startup/a:b	Ljava/util/Set;
    //   134: aload 5
    //   136: invokeinterface 144 2 0
    //   141: pop
    //   142: aload_0
    //   143: aload 5
    //   145: aload_3
    //   146: invokevirtual 147	androidx/startup/a:b	(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;
    //   149: pop
    //   150: goto -73 -> 77
    //   153: invokestatic 149	o0/b:b	()V
    //   156: return
    //   157: astore_1
    //   158: goto +19 -> 177
    //   161: astore_1
    //   162: goto +4 -> 166
    //   165: astore_1
    //   166: new 151	androidx/startup/StartupException
    //   169: astore_2
    //   170: aload_2
    //   171: aload_1
    //   172: invokespecial 154	androidx/startup/StartupException:<init>	(Ljava/lang/Throwable;)V
    //   175: aload_2
    //   176: athrow
    //   177: invokestatic 149	o0/b:b	()V
    //   180: aload_1
    //   181: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	182	0	this	a
    //   8	92	1	localObject1	Object
    //   157	1	1	localObject2	Object
    //   161	1	1	localClassNotFoundException	java.lang.ClassNotFoundException
    //   165	16	1	localNameNotFoundException	android.content.pm.PackageManager.NameNotFoundException
    //   42	134	2	localObject3	Object
    //   61	85	3	localHashSet	HashSet
    //   75	13	4	localIterator	Iterator
    //   97	47	5	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   0	54	157	finally
    //   58	77	157	finally
    //   77	150	157	finally
    //   166	177	157	finally
    //   0	54	161	java/lang/ClassNotFoundException
    //   58	77	161	java/lang/ClassNotFoundException
    //   77	150	161	java/lang/ClassNotFoundException
    //   0	54	165	android/content/pm/PackageManager$NameNotFoundException
    //   58	77	165	android/content/pm/PackageManager$NameNotFoundException
    //   77	150	165	android/content/pm/PackageManager$NameNotFoundException
  }
  
  <T> T b(Class<? extends n0.a<?>> paramClass, Set<Class<?>> paramSet)
  {
    synchronized (e)
    {
      boolean bool = b.d();
      if (bool) {}
      try
      {
        b.a(paramClass.getSimpleName());
        if (!paramSet.contains(paramClass))
        {
          if (!this.a.containsKey(paramClass))
          {
            paramSet.add(paramClass);
            try
            {
              Object localObject2 = (n0.a)paramClass.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
              Object localObject3 = ((n0.a)localObject2).a();
              if (!((List)localObject3).isEmpty())
              {
                localObject3 = ((List)localObject3).iterator();
                while (((Iterator)localObject3).hasNext())
                {
                  Class localClass = (Class)((Iterator)localObject3).next();
                  if (!this.a.containsKey(localClass)) {
                    b(localClass, paramSet);
                  }
                }
              }
              localObject2 = ((n0.a)localObject2).b(this.c);
              paramSet.remove(paramClass);
              this.a.put(paramClass, localObject2);
              paramClass = (Class<? extends n0.a<?>>)localObject2;
            }
            finally
            {
              paramSet = new androidx/startup/StartupException;
              paramSet.<init>(paramClass);
            }
          }
          else
          {
            paramClass = this.a.get(paramClass);
          }
          b.b();
          return paramClass;
        }
        paramSet = String.format("Cannot initialize %s. Cycle detected.", new Object[] { paramClass.getName() });
        paramClass = new java/lang/IllegalStateException;
        paramClass.<init>(paramSet);
        throw paramClass;
      }
      finally
      {
        b.b();
      }
    }
  }
  
  public <T> T d(Class<? extends n0.a<T>> paramClass)
  {
    return b(paramClass, new HashSet());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.startup.a
 * JD-Core Version:    0.7.0.1
 */