package androidx.lifecycle;

import android.app.Application;
import g0.a.b;
import g0.d;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/k0;", "", "Landroidx/lifecycle/i0;", "T", "Ljava/lang/Class;", "modelClass", "a", "(Ljava/lang/Class;)Landroidx/lifecycle/i0;", "", "key", "b", "(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/i0;", "Landroidx/lifecycle/m0;", "Landroidx/lifecycle/m0;", "store", "Landroidx/lifecycle/k0$b;", "Landroidx/lifecycle/k0$b;", "factory", "Lg0/a;", "defaultCreationExtras", "<init>", "(Landroidx/lifecycle/m0;Landroidx/lifecycle/k0$b;Lg0/a;)V", "Landroidx/lifecycle/n0;", "owner", "(Landroidx/lifecycle/n0;)V", "(Landroidx/lifecycle/n0;Landroidx/lifecycle/k0$b;)V", "c", "d", "lifecycle-viewmodel_release"}, k=1, mv={1, 6, 0})
public class k0
{
  private final m0 a;
  private final b b;
  private final g0.a c;
  
  public k0(m0 paramm0, b paramb)
  {
    this(paramm0, paramb, null, 4, null);
  }
  
  public k0(m0 paramm0, b paramb, g0.a parama)
  {
    this.a = paramm0;
    this.b = paramb;
    this.c = parama;
  }
  
  public k0(n0 paramn0)
  {
    this(localm0, a.f.a(paramn0), l0.a(paramn0));
  }
  
  public k0(n0 paramn0, b paramb)
  {
    this(localm0, paramb, l0.a(paramn0));
  }
  
  public <T extends i0> T a(Class<T> paramClass)
  {
    r.f(paramClass, "modelClass");
    String str = paramClass.getCanonicalName();
    if (str != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("androidx.lifecycle.ViewModelProvider.DefaultKey:");
      localStringBuilder.append(str);
      return b(localStringBuilder.toString(), paramClass);
    }
    throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
  }
  
  public <T extends i0> T b(String paramString, Class<T> paramClass)
  {
    r.f(paramString, "key");
    r.f(paramClass, "modelClass");
    Object localObject = this.a.b(paramString);
    if (paramClass.isInstance(localObject))
    {
      paramString = this.b;
      if ((paramString instanceof d)) {
        paramString = (d)paramString;
      } else {
        paramString = null;
      }
      if (paramString != null)
      {
        r.e(localObject, "viewModel");
        paramString.c((i0)localObject);
      }
      if (localObject != null) {
        return localObject;
      }
      throw new NullPointerException("null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
    }
    localObject = new d(this.c);
    ((d)localObject).c(c.d, paramString);
    try
    {
      localObject = this.b.b(paramClass, (g0.a)localObject);
      paramClass = (Class<T>)localObject;
    }
    catch (AbstractMethodError localAbstractMethodError)
    {
      paramClass = this.b.a(paramClass);
    }
    this.a.d(paramString, paramClass);
    return paramClass;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/k0$a;", "Landroidx/lifecycle/k0$c;", "Landroidx/lifecycle/i0;", "T", "Ljava/lang/Class;", "modelClass", "Landroid/app/Application;", "app", "g", "(Ljava/lang/Class;Landroid/app/Application;)Landroidx/lifecycle/i0;", "Lg0/a;", "extras", "b", "(Ljava/lang/Class;Lg0/a;)Landroidx/lifecycle/i0;", "a", "(Ljava/lang/Class;)Landroidx/lifecycle/i0;", "e", "Landroid/app/Application;", "application", "", "unused", "<init>", "(Landroid/app/Application;I)V", "()V", "(Landroid/app/Application;)V", "f", "lifecycle-viewmodel_release"}, k=1, mv={1, 6, 0})
  public static class a
    extends k0.c
  {
    public static final a f = new a(null);
    private static a g;
    public static final a.b<Application> h = k0.a.a.a.a;
    private final Application e;
    
    public a()
    {
      this(null, 0);
    }
    
    public a(Application paramApplication)
    {
      this(paramApplication, 0);
    }
    
    private a(Application paramApplication, int paramInt)
    {
      this.e = paramApplication;
    }
    
    private final <T extends i0> T g(Class<T> paramClass, Application paramApplication)
    {
      if (a.class.isAssignableFrom(paramClass)) {
        try
        {
          paramApplication = (i0)paramClass.getConstructor(new Class[] { Application.class }).newInstance(new Object[] { paramApplication });
          r.e(paramApplication, "{\n                try {\n…          }\n            }");
          paramClass = paramApplication;
        }
        catch (InvocationTargetException localInvocationTargetException)
        {
          paramApplication = new StringBuilder();
          paramApplication.append("Cannot create an instance of ");
          paramApplication.append(paramClass);
          throw new RuntimeException(paramApplication.toString(), localInvocationTargetException);
        }
        catch (InstantiationException localInstantiationException)
        {
          paramApplication = new StringBuilder();
          paramApplication.append("Cannot create an instance of ");
          paramApplication.append(paramClass);
          throw new RuntimeException(paramApplication.toString(), localInstantiationException);
        }
        catch (IllegalAccessException paramApplication)
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Cannot create an instance of ");
          localStringBuilder.append(paramClass);
          throw new RuntimeException(localStringBuilder.toString(), paramApplication);
        }
        catch (NoSuchMethodException localNoSuchMethodException)
        {
          paramApplication = new StringBuilder();
          paramApplication.append("Cannot create an instance of ");
          paramApplication.append(paramClass);
          throw new RuntimeException(paramApplication.toString(), localNoSuchMethodException);
        }
      } else {
        paramClass = super.a(paramClass);
      }
      return paramClass;
    }
    
    public <T extends i0> T a(Class<T> paramClass)
    {
      r.f(paramClass, "modelClass");
      Application localApplication = this.e;
      if (localApplication != null) {
        return g(paramClass, localApplication);
      }
      throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
    }
    
    public <T extends i0> T b(Class<T> paramClass, g0.a parama)
    {
      r.f(paramClass, "modelClass");
      r.f(parama, "extras");
      if (this.e != null)
      {
        paramClass = a(paramClass);
      }
      else
      {
        parama = (Application)parama.a(h);
        if (parama != null)
        {
          paramClass = g(paramClass, parama);
        }
        else
        {
          if (a.class.isAssignableFrom(paramClass)) {
            break label70;
          }
          paramClass = super.a(paramClass);
        }
      }
      return paramClass;
      label70:
      throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
    }
    
    @Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/k0$a$a;", "", "Landroidx/lifecycle/n0;", "owner", "Landroidx/lifecycle/k0$b;", "a", "(Landroidx/lifecycle/n0;)Landroidx/lifecycle/k0$b;", "Landroid/app/Application;", "application", "Landroidx/lifecycle/k0$a;", "b", "Lg0/a$b;", "APPLICATION_KEY", "Lg0/a$b;", "", "DEFAULT_KEY", "Ljava/lang/String;", "sInstance", "Landroidx/lifecycle/k0$a;", "<init>", "()V", "lifecycle-viewmodel_release"}, k=1, mv={1, 6, 0})
    public static final class a
    {
      public final k0.b a(n0 paramn0)
      {
        r.f(paramn0, "owner");
        if ((paramn0 instanceof i))
        {
          paramn0 = ((i)paramn0).getDefaultViewModelProviderFactory();
          r.e(paramn0, "owner.defaultViewModelProviderFactory");
        }
        else
        {
          paramn0 = k0.c.b.a();
        }
        return paramn0;
      }
      
      public final k0.a b(Application paramApplication)
      {
        r.f(paramApplication, "application");
        if (k0.a.e() == null) {
          k0.a.f(new k0.a(paramApplication));
        }
        paramApplication = k0.a.e();
        r.c(paramApplication);
        return paramApplication;
      }
      
      @Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/k0$a$a$a;", "Lg0/a$b;", "Landroid/app/Application;", "<init>", "()V", "lifecycle-viewmodel_release"}, k=1, mv={1, 6, 0})
      private static final class a
        implements a.b<Application>
      {
        public static final a a = new a();
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/k0$b;", "", "Landroidx/lifecycle/i0;", "T", "Ljava/lang/Class;", "modelClass", "a", "(Ljava/lang/Class;)Landroidx/lifecycle/i0;", "Lg0/a;", "extras", "b", "(Ljava/lang/Class;Lg0/a;)Landroidx/lifecycle/i0;", "lifecycle-viewmodel_release"}, k=1, mv={1, 6, 0})
  public static abstract interface b
  {
    public static final a a = a.a;
    
    public <T extends i0> T a(Class<T> paramClass)
    {
      r.f(paramClass, "modelClass");
      throw new UnsupportedOperationException("Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method.");
    }
    
    public <T extends i0> T b(Class<T> paramClass, g0.a parama)
    {
      r.f(paramClass, "modelClass");
      r.f(parama, "extras");
      return a(paramClass);
    }
    
    @Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/k0$b$a;", "", "<init>", "()V", "lifecycle-viewmodel_release"}, k=1, mv={1, 6, 0})
    public static final class a {}
  }
  
  @Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/k0$c;", "Landroidx/lifecycle/k0$b;", "Landroidx/lifecycle/i0;", "T", "Ljava/lang/Class;", "modelClass", "a", "(Ljava/lang/Class;)Landroidx/lifecycle/i0;", "<init>", "()V", "b", "lifecycle-viewmodel_release"}, k=1, mv={1, 6, 0})
  public static class c
    implements k0.b
  {
    public static final a b = new a(null);
    private static c c;
    public static final a.b<String> d = k0.c.a.a.a;
    
    public <T extends i0> T a(Class<T> paramClass)
    {
      r.f(paramClass, "modelClass");
      try
      {
        Object localObject = paramClass.newInstance();
        r.e(localObject, "{\n                modelC…wInstance()\n            }");
        localObject = (i0)localObject;
        return localObject;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Cannot create an instance of ");
        localStringBuilder.append(paramClass);
        throw new RuntimeException(localStringBuilder.toString(), localIllegalAccessException);
      }
      catch (InstantiationException localInstantiationException)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Cannot create an instance of ");
        localStringBuilder.append(paramClass);
        throw new RuntimeException(localStringBuilder.toString(), localInstantiationException);
      }
    }
    
    @Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/k0$c$a;", "", "Landroidx/lifecycle/k0$c;", "a", "()Landroidx/lifecycle/k0$c;", "getInstance$annotations", "()V", "instance", "Lg0/a$b;", "", "VIEW_MODEL_KEY", "Lg0/a$b;", "sInstance", "Landroidx/lifecycle/k0$c;", "<init>", "lifecycle-viewmodel_release"}, k=1, mv={1, 6, 0})
    public static final class a
    {
      public final k0.c a()
      {
        if (k0.c.c() == null) {
          k0.c.d(new k0.c());
        }
        k0.c localc = k0.c.c();
        r.c(localc);
        return localc;
      }
      
      @Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/k0$c$a$a;", "Lg0/a$b;", "", "<init>", "()V", "lifecycle-viewmodel_release"}, k=1, mv={1, 6, 0})
      private static final class a
        implements a.b<String>
      {
        public static final a a = new a();
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/k0$d;", "", "Landroidx/lifecycle/i0;", "viewModel", "Lkotlin/u;", "c", "<init>", "()V", "lifecycle-viewmodel_release"}, k=1, mv={1, 6, 0})
  public static class d
  {
    public void c(i0 parami0)
    {
      r.f(parami0, "viewModel");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.k0
 * JD-Core Version:    0.7.0.1
 */