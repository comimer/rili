package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.Event;
import androidx.lifecycle.l;
import androidx.lifecycle.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Landroidx/savedstate/Recreator;", "Landroidx/lifecycle/l;", "", "className", "Lkotlin/u;", "h", "Landroidx/lifecycle/n;", "source", "Landroidx/lifecycle/Lifecycle$Event;", "event", "g", "Landroidx/savedstate/e;", "a", "Landroidx/savedstate/e;", "owner", "<init>", "(Landroidx/savedstate/e;)V", "b", "savedstate_release"}, k=1, mv={1, 6, 0})
public final class Recreator
  implements l
{
  public static final a b = new a(null);
  private final e a;
  
  public Recreator(e parame)
  {
    this.a = parame;
  }
  
  /* Error */
  private final void h(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: iconst_0
    //   2: ldc 2
    //   4: invokevirtual 71	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   7: invokestatic 75	java/lang/Class:forName	(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    //   10: ldc 77
    //   12: invokevirtual 81	java/lang/Class:asSubclass	(Ljava/lang/Class;)Ljava/lang/Class;
    //   15: astore_2
    //   16: aload_2
    //   17: ldc 83
    //   19: invokestatic 86	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   22: aload_2
    //   23: iconst_0
    //   24: anewarray 67	java/lang/Class
    //   27: invokevirtual 90	java/lang/Class:getDeclaredConstructor	([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   30: astore_3
    //   31: aload_3
    //   32: iconst_1
    //   33: invokevirtual 96	java/lang/reflect/AccessibleObject:setAccessible	(Z)V
    //   36: aload_3
    //   37: iconst_0
    //   38: anewarray 4	java/lang/Object
    //   41: invokevirtual 102	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   44: astore_2
    //   45: aload_2
    //   46: ldc 104
    //   48: invokestatic 86	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   51: aload_2
    //   52: checkcast 77	androidx/savedstate/c$a
    //   55: astore_2
    //   56: aload_2
    //   57: aload_0
    //   58: getfield 58	androidx/savedstate/Recreator:a	Landroidx/savedstate/e;
    //   61: invokeinterface 106 2 0
    //   66: return
    //   67: astore_2
    //   68: new 108	java/lang/StringBuilder
    //   71: dup
    //   72: invokespecial 109	java/lang/StringBuilder:<init>	()V
    //   75: astore_3
    //   76: aload_3
    //   77: ldc 111
    //   79: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: pop
    //   83: aload_3
    //   84: aload_1
    //   85: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: pop
    //   89: new 117	java/lang/RuntimeException
    //   92: dup
    //   93: aload_3
    //   94: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   97: aload_2
    //   98: invokespecial 124	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   101: athrow
    //   102: astore_3
    //   103: new 108	java/lang/StringBuilder
    //   106: dup
    //   107: invokespecial 109	java/lang/StringBuilder:<init>	()V
    //   110: astore_1
    //   111: aload_1
    //   112: ldc 126
    //   114: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: pop
    //   118: aload_1
    //   119: aload_2
    //   120: invokevirtual 129	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   123: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: pop
    //   127: aload_1
    //   128: ldc 131
    //   130: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: pop
    //   134: new 133	java/lang/IllegalStateException
    //   137: dup
    //   138: aload_1
    //   139: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   142: aload_3
    //   143: invokespecial 134	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   146: athrow
    //   147: astore_2
    //   148: new 108	java/lang/StringBuilder
    //   151: dup
    //   152: invokespecial 109	java/lang/StringBuilder:<init>	()V
    //   155: astore_3
    //   156: aload_3
    //   157: ldc 126
    //   159: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: pop
    //   163: aload_3
    //   164: aload_1
    //   165: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: pop
    //   169: aload_3
    //   170: ldc 136
    //   172: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: pop
    //   176: new 117	java/lang/RuntimeException
    //   179: dup
    //   180: aload_3
    //   181: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   184: aload_2
    //   185: invokespecial 124	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   188: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	189	0	this	Recreator
    //   0	189	1	paramString	String
    //   15	42	2	localObject1	Object
    //   67	53	2	localException	java.lang.Exception
    //   147	38	2	localClassNotFoundException	java.lang.ClassNotFoundException
    //   30	64	3	localObject2	Object
    //   102	41	3	localNoSuchMethodException	java.lang.NoSuchMethodException
    //   155	26	3	localStringBuilder	java.lang.StringBuilder
    // Exception table:
    //   from	to	target	type
    //   36	56	67	java/lang/Exception
    //   22	31	102	java/lang/NoSuchMethodException
    //   0	22	147	java/lang/ClassNotFoundException
  }
  
  public void g(n paramn, Lifecycle.Event paramEvent)
  {
    r.f(paramn, "source");
    r.f(paramEvent, "event");
    if (paramEvent == Lifecycle.Event.ON_CREATE)
    {
      paramn.getLifecycle().c(this);
      paramn = this.a.getSavedStateRegistry().b("androidx.savedstate.Restarter");
      if (paramn == null) {
        return;
      }
      paramn = paramn.getStringArrayList("classes_to_restore");
      if (paramn != null)
      {
        paramn = paramn.iterator();
        while (paramn.hasNext()) {
          h((String)paramn.next());
        }
        return;
      }
      throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
    }
    throw new AssertionError("Next event must be ON_CREATE");
  }
  
  @Metadata(bv={}, d1={""}, d2={"Landroidx/savedstate/Recreator$a;", "", "", "CLASSES_KEY", "Ljava/lang/String;", "COMPONENT_KEY", "<init>", "()V", "savedstate_release"}, k=1, mv={1, 6, 0})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Landroidx/savedstate/Recreator$b;", "Landroidx/savedstate/c$c;", "Landroid/os/Bundle;", "a", "", "className", "Lkotlin/u;", "b", "", "Ljava/util/Set;", "classes", "Landroidx/savedstate/c;", "registry", "<init>", "(Landroidx/savedstate/c;)V", "savedstate_release"}, k=1, mv={1, 6, 0})
  public static final class b
    implements c.c
  {
    private final Set<String> a = new LinkedHashSet();
    
    public b(c paramc)
    {
      paramc.h("androidx.savedstate.Restarter", this);
    }
    
    public Bundle a()
    {
      Bundle localBundle = new Bundle();
      localBundle.putStringArrayList("classes_to_restore", new ArrayList(this.a));
      return localBundle;
    }
    
    public final void b(String paramString)
    {
      r.f(paramString, "className");
      this.a.add(paramString);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.savedstate.Recreator
 * JD-Core Version:    0.7.0.1
 */