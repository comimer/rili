package androidx.fragment.app;

import android.util.Log;
import androidx.lifecycle.Lifecycle.State;
import java.io.PrintWriter;
import java.util.ArrayList;

final class a
  extends s
  implements FragmentManager.k, FragmentManager.o
{
  final FragmentManager t;
  boolean u;
  int v = -1;
  
  a(FragmentManager paramFragmentManager)
  {
    super(locali, localClassLoader);
    this.t = paramFragmentManager;
  }
  
  private static boolean E(s.a parama)
  {
    parama = parama.b;
    boolean bool;
    if ((parama != null) && (parama.mAdded) && (parama.mView != null) && (!parama.mDetached) && (!parama.mHidden) && (parama.isPostponed())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  void A(boolean paramBoolean)
  {
    Object localObject1;
    for (int i = this.c.size() - 1; i >= 0; i--)
    {
      localObject1 = (s.a)this.c.get(i);
      Object localObject2 = ((s.a)localObject1).b;
      if (localObject2 != null)
      {
        ((Fragment)localObject2).setPopDirection(true);
        ((Fragment)localObject2).setNextTransition(FragmentManager.l1(this.h));
        ((Fragment)localObject2).setSharedElementNames(this.q, this.p);
      }
      switch (((s.a)localObject1).a)
      {
      case 2: 
      default: 
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("Unknown cmd: ");
        ((StringBuilder)localObject2).append(((s.a)localObject1).a);
        throw new IllegalArgumentException(((StringBuilder)localObject2).toString());
      case 10: 
        this.t.q1((Fragment)localObject2, ((s.a)localObject1).g);
        break;
      case 9: 
        this.t.r1((Fragment)localObject2);
        break;
      case 8: 
        this.t.r1(null);
        break;
      case 7: 
        ((Fragment)localObject2).setAnimations(((s.a)localObject1).c, ((s.a)localObject1).d, ((s.a)localObject1).e, ((s.a)localObject1).f);
        this.t.p1((Fragment)localObject2, true);
        this.t.y((Fragment)localObject2);
        break;
      case 6: 
        ((Fragment)localObject2).setAnimations(((s.a)localObject1).c, ((s.a)localObject1).d, ((s.a)localObject1).e, ((s.a)localObject1).f);
        this.t.l((Fragment)localObject2);
        break;
      case 5: 
        ((Fragment)localObject2).setAnimations(((s.a)localObject1).c, ((s.a)localObject1).d, ((s.a)localObject1).e, ((s.a)localObject1).f);
        this.t.p1((Fragment)localObject2, true);
        this.t.E0((Fragment)localObject2);
        break;
      case 4: 
        ((Fragment)localObject2).setAnimations(((s.a)localObject1).c, ((s.a)localObject1).d, ((s.a)localObject1).e, ((s.a)localObject1).f);
        this.t.t1((Fragment)localObject2);
        break;
      case 3: 
        ((Fragment)localObject2).setAnimations(((s.a)localObject1).c, ((s.a)localObject1).d, ((s.a)localObject1).e, ((s.a)localObject1).f);
        this.t.g((Fragment)localObject2);
        break;
      case 1: 
        ((Fragment)localObject2).setAnimations(((s.a)localObject1).c, ((s.a)localObject1).d, ((s.a)localObject1).e, ((s.a)localObject1).f);
        this.t.p1((Fragment)localObject2, true);
        this.t.g1((Fragment)localObject2);
      }
      if ((!this.r) && (((s.a)localObject1).a != 3) && (localObject2 != null) && (!FragmentManager.P)) {
        this.t.R0((Fragment)localObject2);
      }
    }
    if ((!this.r) && (paramBoolean) && (!FragmentManager.P))
    {
      localObject1 = this.t;
      ((FragmentManager)localObject1).S0(((FragmentManager)localObject1).q, true);
    }
  }
  
  Fragment B(ArrayList<Fragment> paramArrayList, Fragment paramFragment)
  {
    int i = 0;
    for (Fragment localFragment1 = paramFragment; i < this.c.size(); localFragment1 = paramFragment)
    {
      s.a locala = (s.a)this.c.get(i);
      int j = locala.a;
      if (j != 1)
      {
        Fragment localFragment2;
        if (j != 2)
        {
          if ((j != 3) && (j != 6))
          {
            if (j != 7)
            {
              if (j != 8)
              {
                paramFragment = localFragment1;
                j = i;
                break label441;
              }
              this.c.add(i, new s.a(9, localFragment1));
              j = i + 1;
              paramFragment = locala.b;
              break label441;
            }
          }
          else
          {
            paramArrayList.remove(locala.b);
            localFragment2 = locala.b;
            paramFragment = localFragment1;
            j = i;
            if (localFragment2 != localFragment1) {
              break label441;
            }
            this.c.add(i, new s.a(9, localFragment2));
            j = i + 1;
            paramFragment = null;
            break label441;
          }
        }
        else
        {
          localFragment2 = locala.b;
          int k = localFragment2.mContainerId;
          int m = paramArrayList.size() - 1;
          int n = 0;
          j = i;
          paramFragment = localFragment1;
          while (m >= 0)
          {
            Fragment localFragment3 = (Fragment)paramArrayList.get(m);
            localFragment1 = paramFragment;
            i = j;
            int i1 = n;
            if (localFragment3.mContainerId == k) {
              if (localFragment3 == localFragment2)
              {
                i1 = 1;
                localFragment1 = paramFragment;
                i = j;
              }
              else
              {
                localFragment1 = paramFragment;
                i = j;
                if (localFragment3 == paramFragment)
                {
                  this.c.add(j, new s.a(9, localFragment3));
                  i = j + 1;
                  localFragment1 = null;
                }
                paramFragment = new s.a(3, localFragment3);
                paramFragment.c = locala.c;
                paramFragment.e = locala.e;
                paramFragment.d = locala.d;
                paramFragment.f = locala.f;
                this.c.add(i, paramFragment);
                paramArrayList.remove(localFragment3);
                i++;
                i1 = n;
              }
            }
            m--;
            paramFragment = localFragment1;
            j = i;
            n = i1;
          }
          if (n != 0)
          {
            this.c.remove(j);
            j--;
            break label441;
          }
          locala.a = 1;
          paramArrayList.add(localFragment2);
          break label441;
        }
      }
      paramArrayList.add(locala.b);
      j = i;
      paramFragment = localFragment1;
      label441:
      i = j + 1;
    }
    return localFragment1;
  }
  
  boolean C(int paramInt)
  {
    int i = this.c.size();
    for (int j = 0; j < i; j++)
    {
      Fragment localFragment = ((s.a)this.c.get(j)).b;
      int k;
      if (localFragment != null) {
        k = localFragment.mContainerId;
      } else {
        k = 0;
      }
      if ((k != 0) && (k == paramInt)) {
        return true;
      }
    }
    return false;
  }
  
  boolean D(ArrayList<a> paramArrayList, int paramInt1, int paramInt2)
  {
    if (paramInt2 == paramInt1) {
      return false;
    }
    int i = this.c.size();
    int j = -1;
    int k = 0;
    while (k < i)
    {
      Object localObject = ((s.a)this.c.get(k)).b;
      int m;
      if (localObject != null) {
        m = ((Fragment)localObject).mContainerId;
      } else {
        m = 0;
      }
      int n = j;
      if (m != 0)
      {
        n = j;
        if (m != j)
        {
          for (j = paramInt1; j < paramInt2; j++)
          {
            localObject = (a)paramArrayList.get(j);
            int i1 = ((s)localObject).c.size();
            for (n = 0; n < i1; n++)
            {
              Fragment localFragment = ((s.a)((s)localObject).c.get(n)).b;
              int i2;
              if (localFragment != null) {
                i2 = localFragment.mContainerId;
              } else {
                i2 = 0;
              }
              if (i2 == m) {
                return true;
              }
            }
          }
          n = m;
        }
      }
      k++;
      j = n;
    }
    return false;
  }
  
  boolean F()
  {
    for (int i = 0; i < this.c.size(); i++) {
      if (E((s.a)this.c.get(i))) {
        return true;
      }
    }
    return false;
  }
  
  public void G()
  {
    if (this.s != null)
    {
      for (int i = 0; i < this.s.size(); i++) {
        ((Runnable)this.s.get(i)).run();
      }
      this.s = null;
    }
  }
  
  void H(Fragment.k paramk)
  {
    for (int i = 0; i < this.c.size(); i++)
    {
      s.a locala = (s.a)this.c.get(i);
      if (E(locala)) {
        locala.b.setOnStartEnterTransitionListener(paramk);
      }
    }
  }
  
  Fragment I(ArrayList<Fragment> paramArrayList, Fragment paramFragment)
  {
    for (int i = this.c.size() - 1; i >= 0; i--)
    {
      s.a locala = (s.a)this.c.get(i);
      int j = locala.a;
      if (j != 1)
      {
        if (j != 3) {}
        switch (j)
        {
        default: 
          break;
        case 10: 
          locala.h = locala.g;
          break;
        case 9: 
          paramFragment = locala.b;
          break;
        case 8: 
          paramFragment = null;
          break;
        case 6: 
          paramArrayList.add(locala.b);
          break;
        }
      }
      else
      {
        paramArrayList.remove(locala.b);
      }
    }
    return paramFragment;
  }
  
  public boolean a(ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1)
  {
    if (FragmentManager.H0(2))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Run: ");
      localStringBuilder.append(this);
      Log.v("FragmentManager", localStringBuilder.toString());
    }
    paramArrayList.add(this);
    paramArrayList1.add(Boolean.FALSE);
    if (this.i) {
      this.t.e(this);
    }
    return true;
  }
  
  public String getName()
  {
    return this.k;
  }
  
  public int h()
  {
    return w(false);
  }
  
  public int i()
  {
    return w(true);
  }
  
  public void j()
  {
    l();
    this.t.c0(this, false);
  }
  
  public void k()
  {
    l();
    this.t.c0(this, true);
  }
  
  void m(int paramInt1, Fragment paramFragment, String paramString, int paramInt2)
  {
    super.m(paramInt1, paramFragment, paramString, paramInt2);
    paramFragment.mFragmentManager = this.t;
  }
  
  public s n(Fragment paramFragment)
  {
    Object localObject = paramFragment.mFragmentManager;
    if ((localObject != null) && (localObject != this.t))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Cannot hide Fragment attached to a different FragmentManager. Fragment ");
      ((StringBuilder)localObject).append(paramFragment.toString());
      ((StringBuilder)localObject).append(" is already attached to a FragmentManager.");
      throw new IllegalStateException(((StringBuilder)localObject).toString());
    }
    return super.n(paramFragment);
  }
  
  public boolean o()
  {
    return this.c.isEmpty();
  }
  
  public s p(Fragment paramFragment)
  {
    Object localObject = paramFragment.mFragmentManager;
    if ((localObject != null) && (localObject != this.t))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Cannot remove Fragment attached to a different FragmentManager. Fragment ");
      ((StringBuilder)localObject).append(paramFragment.toString());
      ((StringBuilder)localObject).append(" is already attached to a FragmentManager.");
      throw new IllegalStateException(((StringBuilder)localObject).toString());
    }
    return super.p(paramFragment);
  }
  
  public s s(Fragment paramFragment, Lifecycle.State paramState)
  {
    if (paramFragment.mFragmentManager == this.t)
    {
      if ((paramState == Lifecycle.State.INITIALIZED) && (paramFragment.mState > -1))
      {
        paramFragment = new StringBuilder();
        paramFragment.append("Cannot set maximum Lifecycle to ");
        paramFragment.append(paramState);
        paramFragment.append(" after the Fragment has been created");
        throw new IllegalArgumentException(paramFragment.toString());
      }
      if (paramState != Lifecycle.State.DESTROYED) {
        return super.s(paramFragment, paramState);
      }
      paramFragment = new StringBuilder();
      paramFragment.append("Cannot set maximum Lifecycle to ");
      paramFragment.append(paramState);
      paramFragment.append(". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
      throw new IllegalArgumentException(paramFragment.toString());
    }
    paramFragment = new StringBuilder();
    paramFragment.append("Cannot setMaxLifecycle for Fragment not attached to FragmentManager ");
    paramFragment.append(this.t);
    throw new IllegalArgumentException(paramFragment.toString());
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("BackStackEntry{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    if (this.v >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(this.v);
    }
    if (this.k != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(this.k);
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public s u(Fragment paramFragment)
  {
    Object localObject = paramFragment.mFragmentManager;
    if ((localObject != null) && (localObject != this.t))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Cannot show Fragment attached to a different FragmentManager. Fragment ");
      ((StringBuilder)localObject).append(paramFragment.toString());
      ((StringBuilder)localObject).append(" is already attached to a FragmentManager.");
      throw new IllegalStateException(((StringBuilder)localObject).toString());
    }
    return super.u(paramFragment);
  }
  
  void v(int paramInt)
  {
    if (!this.i) {
      return;
    }
    Object localObject1;
    if (FragmentManager.H0(2))
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("Bump nesting in ");
      ((StringBuilder)localObject1).append(this);
      ((StringBuilder)localObject1).append(" by ");
      ((StringBuilder)localObject1).append(paramInt);
      Log.v("FragmentManager", ((StringBuilder)localObject1).toString());
    }
    int i = this.c.size();
    for (int j = 0; j < i; j++)
    {
      localObject1 = (s.a)this.c.get(j);
      Object localObject2 = ((s.a)localObject1).b;
      if (localObject2 != null)
      {
        ((Fragment)localObject2).mBackStackNesting += paramInt;
        if (FragmentManager.H0(2))
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append("Bump nesting of ");
          ((StringBuilder)localObject2).append(((s.a)localObject1).b);
          ((StringBuilder)localObject2).append(" to ");
          ((StringBuilder)localObject2).append(((s.a)localObject1).b.mBackStackNesting);
          Log.v("FragmentManager", ((StringBuilder)localObject2).toString());
        }
      }
    }
  }
  
  int w(boolean paramBoolean)
  {
    if (!this.u)
    {
      if (FragmentManager.H0(2))
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Commit: ");
        ((StringBuilder)localObject).append(this);
        Log.v("FragmentManager", ((StringBuilder)localObject).toString());
        localObject = new PrintWriter(new x("FragmentManager"));
        x("  ", (PrintWriter)localObject);
        ((PrintWriter)localObject).close();
      }
      this.u = true;
      if (this.i) {
        this.v = this.t.j();
      } else {
        this.v = -1;
      }
      this.t.Z(this, paramBoolean);
      return this.v;
    }
    throw new IllegalStateException("commit already called");
  }
  
  public void x(String paramString, PrintWriter paramPrintWriter)
  {
    y(paramString, paramPrintWriter, true);
  }
  
  public void y(String paramString, PrintWriter paramPrintWriter, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mName=");
      paramPrintWriter.print(this.k);
      paramPrintWriter.print(" mIndex=");
      paramPrintWriter.print(this.v);
      paramPrintWriter.print(" mCommitted=");
      paramPrintWriter.println(this.u);
      if (this.h != 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mTransition=#");
        paramPrintWriter.print(Integer.toHexString(this.h));
      }
      if ((this.d != 0) || (this.e != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(this.d));
        paramPrintWriter.print(" mExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(this.e));
      }
      if ((this.f != 0) || (this.g != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mPopEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(this.f));
        paramPrintWriter.print(" mPopExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(this.g));
      }
      if ((this.l != 0) || (this.m != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(this.l));
        paramPrintWriter.print(" mBreadCrumbTitleText=");
        paramPrintWriter.println(this.m);
      }
      if ((this.n != 0) || (this.o != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbShortTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(this.n));
        paramPrintWriter.print(" mBreadCrumbShortTitleText=");
        paramPrintWriter.println(this.o);
      }
    }
    if (!this.c.isEmpty())
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Operations:");
      int i = this.c.size();
      for (int j = 0; j < i; j++)
      {
        s.a locala = (s.a)this.c.get(j);
        Object localObject;
        switch (locala.a)
        {
        default: 
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("cmd=");
          ((StringBuilder)localObject).append(locala.a);
          localObject = ((StringBuilder)localObject).toString();
          break;
        case 10: 
          localObject = "OP_SET_MAX_LIFECYCLE";
          break;
        case 9: 
          localObject = "UNSET_PRIMARY_NAV";
          break;
        case 8: 
          localObject = "SET_PRIMARY_NAV";
          break;
        case 7: 
          localObject = "ATTACH";
          break;
        case 6: 
          localObject = "DETACH";
          break;
        case 5: 
          localObject = "SHOW";
          break;
        case 4: 
          localObject = "HIDE";
          break;
        case 3: 
          localObject = "REMOVE";
          break;
        case 2: 
          localObject = "REPLACE";
          break;
        case 1: 
          localObject = "ADD";
          break;
        case 0: 
          localObject = "NULL";
        }
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  Op #");
        paramPrintWriter.print(j);
        paramPrintWriter.print(": ");
        paramPrintWriter.print((String)localObject);
        paramPrintWriter.print(" ");
        paramPrintWriter.println(locala.b);
        if (paramBoolean)
        {
          if ((locala.c != 0) || (locala.d != 0))
          {
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("enterAnim=#");
            paramPrintWriter.print(Integer.toHexString(locala.c));
            paramPrintWriter.print(" exitAnim=#");
            paramPrintWriter.println(Integer.toHexString(locala.d));
          }
          if ((locala.e != 0) || (locala.f != 0))
          {
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("popEnterAnim=#");
            paramPrintWriter.print(Integer.toHexString(locala.e));
            paramPrintWriter.print(" popExitAnim=#");
            paramPrintWriter.println(Integer.toHexString(locala.f));
          }
        }
      }
    }
  }
  
  void z()
  {
    int i = this.c.size();
    Object localObject1;
    for (int j = 0; j < i; j++)
    {
      localObject1 = (s.a)this.c.get(j);
      Object localObject2 = ((s.a)localObject1).b;
      if (localObject2 != null)
      {
        ((Fragment)localObject2).setPopDirection(false);
        ((Fragment)localObject2).setNextTransition(this.h);
        ((Fragment)localObject2).setSharedElementNames(this.p, this.q);
      }
      switch (((s.a)localObject1).a)
      {
      case 2: 
      default: 
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("Unknown cmd: ");
        ((StringBuilder)localObject2).append(((s.a)localObject1).a);
        throw new IllegalArgumentException(((StringBuilder)localObject2).toString());
      case 10: 
        this.t.q1((Fragment)localObject2, ((s.a)localObject1).h);
        break;
      case 9: 
        this.t.r1(null);
        break;
      case 8: 
        this.t.r1((Fragment)localObject2);
        break;
      case 7: 
        ((Fragment)localObject2).setAnimations(((s.a)localObject1).c, ((s.a)localObject1).d, ((s.a)localObject1).e, ((s.a)localObject1).f);
        this.t.p1((Fragment)localObject2, false);
        this.t.l((Fragment)localObject2);
        break;
      case 6: 
        ((Fragment)localObject2).setAnimations(((s.a)localObject1).c, ((s.a)localObject1).d, ((s.a)localObject1).e, ((s.a)localObject1).f);
        this.t.y((Fragment)localObject2);
        break;
      case 5: 
        ((Fragment)localObject2).setAnimations(((s.a)localObject1).c, ((s.a)localObject1).d, ((s.a)localObject1).e, ((s.a)localObject1).f);
        this.t.p1((Fragment)localObject2, false);
        this.t.t1((Fragment)localObject2);
        break;
      case 4: 
        ((Fragment)localObject2).setAnimations(((s.a)localObject1).c, ((s.a)localObject1).d, ((s.a)localObject1).e, ((s.a)localObject1).f);
        this.t.E0((Fragment)localObject2);
        break;
      case 3: 
        ((Fragment)localObject2).setAnimations(((s.a)localObject1).c, ((s.a)localObject1).d, ((s.a)localObject1).e, ((s.a)localObject1).f);
        this.t.g1((Fragment)localObject2);
        break;
      case 1: 
        ((Fragment)localObject2).setAnimations(((s.a)localObject1).c, ((s.a)localObject1).d, ((s.a)localObject1).e, ((s.a)localObject1).f);
        this.t.p1((Fragment)localObject2, false);
        this.t.g((Fragment)localObject2);
      }
      if ((!this.r) && (((s.a)localObject1).a != 1) && (localObject2 != null) && (!FragmentManager.P)) {
        this.t.R0((Fragment)localObject2);
      }
    }
    if ((!this.r) && (!FragmentManager.P))
    {
      localObject1 = this.t;
      ((FragmentManager)localObject1).S0(((FragmentManager)localObject1).q, true);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.a
 * JD-Core Version:    0.7.0.1
 */