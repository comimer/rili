package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle.State;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

public abstract class s
{
  private final i a;
  private final ClassLoader b;
  ArrayList<a> c = new ArrayList();
  int d;
  int e;
  int f;
  int g;
  int h;
  boolean i;
  boolean j = true;
  String k;
  int l;
  CharSequence m;
  int n;
  CharSequence o;
  ArrayList<String> p;
  ArrayList<String> q;
  boolean r = false;
  ArrayList<Runnable> s;
  
  s(i parami, ClassLoader paramClassLoader)
  {
    this.a = parami;
    this.b = paramClassLoader;
  }
  
  public s b(int paramInt, Fragment paramFragment)
  {
    m(paramInt, paramFragment, null, 1);
    return this;
  }
  
  public s c(int paramInt, Fragment paramFragment, String paramString)
  {
    m(paramInt, paramFragment, paramString, 1);
    return this;
  }
  
  s d(ViewGroup paramViewGroup, Fragment paramFragment, String paramString)
  {
    paramFragment.mContainer = paramViewGroup;
    return c(paramViewGroup.getId(), paramFragment, paramString);
  }
  
  public s e(Fragment paramFragment, String paramString)
  {
    m(0, paramFragment, paramString, 1);
    return this;
  }
  
  void f(a parama)
  {
    this.c.add(parama);
    parama.c = this.d;
    parama.d = this.e;
    parama.e = this.f;
    parama.f = this.g;
  }
  
  public s g(String paramString)
  {
    if (this.j)
    {
      this.i = true;
      this.k = paramString;
      return this;
    }
    throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
  }
  
  public abstract int h();
  
  public abstract int i();
  
  public abstract void j();
  
  public abstract void k();
  
  public s l()
  {
    if (!this.i)
    {
      this.j = false;
      return this;
    }
    throw new IllegalStateException("This transaction is already being added to the back stack");
  }
  
  void m(int paramInt1, Fragment paramFragment, String paramString, int paramInt2)
  {
    Object localObject = paramFragment.getClass();
    int i1 = ((Class)localObject).getModifiers();
    if ((!((Class)localObject).isAnonymousClass()) && (Modifier.isPublic(i1)) && ((!((Class)localObject).isMemberClass()) || (Modifier.isStatic(i1))))
    {
      if (paramString != null)
      {
        localObject = paramFragment.mTag;
        if ((localObject != null) && (!paramString.equals(localObject)))
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Can't change tag of fragment ");
          ((StringBuilder)localObject).append(paramFragment);
          ((StringBuilder)localObject).append(": was ");
          ((StringBuilder)localObject).append(paramFragment.mTag);
          ((StringBuilder)localObject).append(" now ");
          ((StringBuilder)localObject).append(paramString);
          throw new IllegalStateException(((StringBuilder)localObject).toString());
        }
        paramFragment.mTag = paramString;
      }
      if (paramInt1 != 0) {
        if (paramInt1 != -1)
        {
          i1 = paramFragment.mFragmentId;
          if ((i1 != 0) && (i1 != paramInt1))
          {
            paramString = new StringBuilder();
            paramString.append("Can't change container ID of fragment ");
            paramString.append(paramFragment);
            paramString.append(": was ");
            paramString.append(paramFragment.mFragmentId);
            paramString.append(" now ");
            paramString.append(paramInt1);
            throw new IllegalStateException(paramString.toString());
          }
          paramFragment.mFragmentId = paramInt1;
          paramFragment.mContainerId = paramInt1;
        }
        else
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Can't add fragment ");
          ((StringBuilder)localObject).append(paramFragment);
          ((StringBuilder)localObject).append(" with tag ");
          ((StringBuilder)localObject).append(paramString);
          ((StringBuilder)localObject).append(" to container view with no id");
          throw new IllegalArgumentException(((StringBuilder)localObject).toString());
        }
      }
      f(new a(paramInt2, paramFragment));
      return;
    }
    paramFragment = new StringBuilder();
    paramFragment.append("Fragment ");
    paramFragment.append(((Class)localObject).getCanonicalName());
    paramFragment.append(" must be a public static class to be  properly recreated from instance state.");
    throw new IllegalStateException(paramFragment.toString());
  }
  
  public s n(Fragment paramFragment)
  {
    f(new a(4, paramFragment));
    return this;
  }
  
  public abstract boolean o();
  
  public s p(Fragment paramFragment)
  {
    f(new a(3, paramFragment));
    return this;
  }
  
  public s q(int paramInt, Fragment paramFragment)
  {
    return r(paramInt, paramFragment, null);
  }
  
  public s r(int paramInt, Fragment paramFragment, String paramString)
  {
    if (paramInt != 0)
    {
      m(paramInt, paramFragment, paramString, 2);
      return this;
    }
    throw new IllegalArgumentException("Must use non-zero containerViewId");
  }
  
  public s s(Fragment paramFragment, Lifecycle.State paramState)
  {
    f(new a(10, paramFragment, paramState));
    return this;
  }
  
  public s t(boolean paramBoolean)
  {
    this.r = paramBoolean;
    return this;
  }
  
  public s u(Fragment paramFragment)
  {
    f(new a(5, paramFragment));
    return this;
  }
  
  static final class a
  {
    int a;
    Fragment b;
    int c;
    int d;
    int e;
    int f;
    Lifecycle.State g;
    Lifecycle.State h;
    
    a() {}
    
    a(int paramInt, Fragment paramFragment)
    {
      this.a = paramInt;
      this.b = paramFragment;
      paramFragment = Lifecycle.State.RESUMED;
      this.g = paramFragment;
      this.h = paramFragment;
    }
    
    a(int paramInt, Fragment paramFragment, Lifecycle.State paramState)
    {
      this.a = paramInt;
      this.b = paramFragment;
      this.g = paramFragment.mMaxState;
      this.h = paramState;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.s
 * JD-Core Version:    0.7.0.1
 */