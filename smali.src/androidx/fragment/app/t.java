package androidx.fragment.app;

import android.content.Context;
import android.graphics.Rect;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.a0;
import androidx.core.view.x;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import n.g;

class t
{
  private static final int[] a = { 0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10 };
  static final v b = new u();
  static final v c = w();
  
  static void A(ArrayList<View> paramArrayList, int paramInt)
  {
    if (paramArrayList == null) {
      return;
    }
    for (int i = paramArrayList.size() - 1; i >= 0; i--) {
      ((View)paramArrayList.get(i)).setVisibility(paramInt);
    }
  }
  
  static void B(Context paramContext, f paramf, ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1, int paramInt1, int paramInt2, boolean paramBoolean, g paramg)
  {
    SparseArray localSparseArray = new SparseArray();
    Object localObject;
    for (int i = paramInt1; i < paramInt2; i++)
    {
      localObject = (a)paramArrayList.get(i);
      if (((Boolean)paramArrayList1.get(i)).booleanValue()) {
        e((a)localObject, localSparseArray, paramBoolean);
      } else {
        c((a)localObject, localSparseArray, paramBoolean);
      }
    }
    if (localSparseArray.size() != 0)
    {
      paramContext = new View(paramContext);
      int j = localSparseArray.size();
      for (i = 0; i < j; i++)
      {
        int k = localSparseArray.keyAt(i);
        localObject = d(k, paramArrayList, paramArrayList1, paramInt1, paramInt2);
        h localh = (h)localSparseArray.valueAt(i);
        if (paramf.d())
        {
          ViewGroup localViewGroup = (ViewGroup)paramf.c(k);
          if (localViewGroup != null) {
            if (paramBoolean) {
              o(localViewGroup, localh, paramContext, (n.a)localObject, paramg);
            } else {
              n(localViewGroup, localh, paramContext, (n.a)localObject, paramg);
            }
          }
        }
      }
    }
  }
  
  private static void a(ArrayList<View> paramArrayList, n.a<String, View> parama, Collection<String> paramCollection)
  {
    for (int i = parama.size() - 1; i >= 0; i--)
    {
      View localView = (View)parama.p(i);
      if (paramCollection.contains(a0.H(localView))) {
        paramArrayList.add(localView);
      }
    }
  }
  
  private static void b(a parama, s.a parama1, SparseArray<h> paramSparseArray, boolean paramBoolean1, boolean paramBoolean2)
  {
    Fragment localFragment = parama1.b;
    if (localFragment == null) {
      return;
    }
    int i = localFragment.mContainerId;
    if (i == 0) {
      return;
    }
    if (paramBoolean1) {
      j = a[parama1.a];
    } else {
      j = parama1.a;
    }
    boolean bool = false;
    int k = 1;
    if (j != 1)
    {
      if (j != 3) {
        if (j != 4)
        {
          if (j != 5)
          {
            if (j != 6)
            {
              if (j == 7) {
                break label283;
              }
              m = 0;
              j = m;
              n = j;
              break label334;
            }
          }
          else
          {
            if (paramBoolean2)
            {
              if ((!localFragment.mHiddenChanged) || (localFragment.mHidden) || (!localFragment.mAdded)) {
                break label320;
              }
              break label314;
            }
            bool = localFragment.mHidden;
            break label323;
          }
        }
        else
        {
          if (paramBoolean2) {
            if ((!localFragment.mHiddenChanged) || (!localFragment.mAdded) || (!localFragment.mHidden)) {
              break label245;
            }
          }
          for (;;)
          {
            break;
            if ((!localFragment.mAdded) || (localFragment.mHidden)) {
              break label245;
            }
          }
        }
      }
      if (paramBoolean2) {
        if (!localFragment.mAdded)
        {
          parama1 = localFragment.mView;
          if ((parama1 == null) || (parama1.getVisibility() != 0) || (localFragment.mPostponedAlpha < 0.0F)) {}
        }
      }
      for (;;)
      {
        j = 1;
        break;
        label245:
        do
        {
          j = 0;
          break;
        } while ((!localFragment.mAdded) || (localFragment.mHidden));
      }
      n = j;
      m = 1;
      j = 0;
      break label334;
    }
    label283:
    if (paramBoolean2) {
      bool = localFragment.mIsNewlyAdded;
    } else if ((!localFragment.mAdded) && (!localFragment.mHidden)) {
      label314:
      bool = true;
    } else {
      label320:
      bool = false;
    }
    label323:
    int n = 0;
    int m = n;
    int j = k;
    label334:
    Object localObject = (h)paramSparseArray.get(i);
    parama1 = (s.a)localObject;
    if (bool)
    {
      parama1 = p((h)localObject, paramSparseArray, i);
      parama1.a = localFragment;
      parama1.b = paramBoolean1;
      parama1.c = parama;
    }
    if ((!paramBoolean2) && (j != 0))
    {
      if ((parama1 != null) && (parama1.d == localFragment)) {
        parama1.d = null;
      }
      if (!parama.r)
      {
        FragmentManager localFragmentManager = parama.t;
        localObject = localFragmentManager.w(localFragment);
        localFragmentManager.t0().p((q)localObject);
        localFragmentManager.T0(localFragment);
      }
    }
    localObject = parama1;
    if (n != 0) {
      if (parama1 != null)
      {
        localObject = parama1;
        if (parama1.d != null) {}
      }
      else
      {
        localObject = p(parama1, paramSparseArray, i);
        ((h)localObject).d = localFragment;
        ((h)localObject).e = paramBoolean1;
        ((h)localObject).f = parama;
      }
    }
    if ((!paramBoolean2) && (m != 0) && (localObject != null) && (((h)localObject).a == localFragment)) {
      ((h)localObject).a = null;
    }
  }
  
  public static void c(a parama, SparseArray<h> paramSparseArray, boolean paramBoolean)
  {
    int i = parama.c.size();
    for (int j = 0; j < i; j++) {
      b(parama, (s.a)parama.c.get(j), paramSparseArray, false, paramBoolean);
    }
  }
  
  private static n.a<String, String> d(int paramInt1, ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1, int paramInt2, int paramInt3)
  {
    n.a locala = new n.a();
    paramInt3--;
    while (paramInt3 >= paramInt2)
    {
      Object localObject = (a)paramArrayList.get(paramInt3);
      if (((a)localObject).C(paramInt1))
      {
        boolean bool = ((Boolean)paramArrayList1.get(paramInt3)).booleanValue();
        ArrayList localArrayList1 = ((s)localObject).p;
        if (localArrayList1 != null)
        {
          int i = localArrayList1.size();
          ArrayList localArrayList2;
          if (bool)
          {
            localArrayList1 = ((s)localObject).p;
            localArrayList2 = ((s)localObject).q;
          }
          else
          {
            localArrayList2 = ((s)localObject).p;
            localArrayList1 = ((s)localObject).q;
          }
          for (int j = 0; j < i; j++)
          {
            String str1 = (String)localArrayList2.get(j);
            String str2 = (String)localArrayList1.get(j);
            localObject = (String)locala.remove(str2);
            if (localObject != null) {
              locala.put(str1, localObject);
            } else {
              locala.put(str1, str2);
            }
          }
        }
      }
      paramInt3--;
    }
    return locala;
  }
  
  public static void e(a parama, SparseArray<h> paramSparseArray, boolean paramBoolean)
  {
    if (!parama.t.p0().d()) {
      return;
    }
    for (int i = parama.c.size() - 1; i >= 0; i--) {
      b(parama, (s.a)parama.c.get(i), paramSparseArray, true, paramBoolean);
    }
  }
  
  static void f(Fragment paramFragment1, Fragment paramFragment2, boolean paramBoolean1, n.a<String, View> parama, boolean paramBoolean2)
  {
    if (paramBoolean1) {
      paramFragment2.getEnterTransitionCallback();
    } else {
      paramFragment1.getEnterTransitionCallback();
    }
  }
  
  private static boolean g(v paramv, List<Object> paramList)
  {
    int i = paramList.size();
    for (int j = 0; j < i; j++) {
      if (!paramv.e(paramList.get(j))) {
        return false;
      }
    }
    return true;
  }
  
  static n.a<String, View> h(v paramv, n.a<String, String> parama, Object paramObject, h paramh)
  {
    Fragment localFragment = paramh.a;
    View localView = localFragment.getView();
    if ((!parama.isEmpty()) && (paramObject != null) && (localView != null))
    {
      paramObject = new n.a();
      paramv.j(paramObject, localView);
      paramv = paramh.c;
      if (paramh.b)
      {
        localFragment.getExitTransitionCallback();
        paramv = paramv.p;
      }
      else
      {
        localFragment.getEnterTransitionCallback();
        paramv = paramv.q;
      }
      if (paramv != null)
      {
        paramObject.r(paramv);
        paramObject.r(parama.values());
      }
      x(parama, paramObject);
      return paramObject;
    }
    parama.clear();
    return null;
  }
  
  private static n.a<String, View> i(v paramv, n.a<String, String> parama, Object paramObject, h paramh)
  {
    if ((!parama.isEmpty()) && (paramObject != null))
    {
      Fragment localFragment = paramh.d;
      paramObject = new n.a();
      paramv.j(paramObject, localFragment.requireView());
      paramv = paramh.f;
      if (paramh.e)
      {
        localFragment.getEnterTransitionCallback();
        paramv = paramv.q;
      }
      else
      {
        localFragment.getExitTransitionCallback();
        paramv = paramv.p;
      }
      if (paramv != null) {
        paramObject.r(paramv);
      }
      parama.r(paramObject.keySet());
      return paramObject;
    }
    parama.clear();
    return null;
  }
  
  private static v j(Fragment paramFragment1, Fragment paramFragment2)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramFragment1 != null)
    {
      Object localObject = paramFragment1.getExitTransition();
      if (localObject != null) {
        localArrayList.add(localObject);
      }
      localObject = paramFragment1.getReturnTransition();
      if (localObject != null) {
        localArrayList.add(localObject);
      }
      paramFragment1 = paramFragment1.getSharedElementReturnTransition();
      if (paramFragment1 != null) {
        localArrayList.add(paramFragment1);
      }
    }
    if (paramFragment2 != null)
    {
      paramFragment1 = paramFragment2.getEnterTransition();
      if (paramFragment1 != null) {
        localArrayList.add(paramFragment1);
      }
      paramFragment1 = paramFragment2.getReenterTransition();
      if (paramFragment1 != null) {
        localArrayList.add(paramFragment1);
      }
      paramFragment1 = paramFragment2.getSharedElementEnterTransition();
      if (paramFragment1 != null) {
        localArrayList.add(paramFragment1);
      }
    }
    if (localArrayList.isEmpty()) {
      return null;
    }
    paramFragment2 = b;
    if ((paramFragment2 != null) && (g(paramFragment2, localArrayList))) {
      return paramFragment2;
    }
    paramFragment1 = c;
    if ((paramFragment1 != null) && (g(paramFragment1, localArrayList))) {
      return paramFragment1;
    }
    if ((paramFragment2 == null) && (paramFragment1 == null)) {
      return null;
    }
    throw new IllegalArgumentException("Invalid Transition types");
  }
  
  static ArrayList<View> k(v paramv, Object paramObject, Fragment paramFragment, ArrayList<View> paramArrayList, View paramView)
  {
    if (paramObject != null)
    {
      ArrayList localArrayList = new ArrayList();
      paramFragment = paramFragment.getView();
      if (paramFragment != null) {
        paramv.f(localArrayList, paramFragment);
      }
      if (paramArrayList != null) {
        localArrayList.removeAll(paramArrayList);
      }
      paramFragment = localArrayList;
      if (!localArrayList.isEmpty())
      {
        localArrayList.add(paramView);
        paramv.b(paramObject, localArrayList);
        paramFragment = localArrayList;
      }
    }
    else
    {
      paramFragment = null;
    }
    return paramFragment;
  }
  
  private static Object l(v paramv, ViewGroup paramViewGroup, final View paramView, final n.a<String, String> parama, final h paramh, final ArrayList<View> paramArrayList1, final ArrayList<View> paramArrayList2, final Object paramObject1, final Object paramObject2)
  {
    final Fragment localFragment1 = paramh.a;
    final Fragment localFragment2 = paramh.d;
    if ((localFragment1 != null) && (localFragment2 != null))
    {
      final boolean bool = paramh.b;
      final Object localObject;
      if (parama.isEmpty()) {
        localObject = null;
      } else {
        localObject = t(paramv, localFragment1, localFragment2, bool);
      }
      n.a locala = i(paramv, parama, localObject, paramh);
      if (parama.isEmpty()) {
        localObject = null;
      } else {
        paramArrayList1.addAll(locala.values());
      }
      if ((paramObject1 == null) && (paramObject2 == null) && (localObject == null)) {
        return null;
      }
      f(localFragment1, localFragment2, bool, locala, true);
      if (localObject != null)
      {
        Rect localRect = new Rect();
        paramv.z(localObject, paramView, paramArrayList1);
        z(paramv, localObject, paramObject2, locala, paramh.e, paramh.f);
        paramObject2 = localRect;
        if (paramObject1 != null)
        {
          paramv.u(paramObject1, localRect);
          paramObject2 = localRect;
        }
      }
      else
      {
        paramObject2 = null;
      }
      x.a(paramViewGroup, new f(parama, localObject, paramh, paramArrayList2, paramView, localFragment1, localFragment2, bool, paramArrayList1, paramObject1, paramObject2));
      return localObject;
    }
    return null;
  }
  
  private static Object m(final v paramv, ViewGroup paramViewGroup, View paramView, n.a<String, String> parama, final h paramh, final ArrayList<View> paramArrayList1, ArrayList<View> paramArrayList2, Object paramObject1, Object paramObject2)
  {
    Fragment localFragment1 = paramh.a;
    final Fragment localFragment2 = paramh.d;
    if (localFragment1 != null) {
      localFragment1.requireView().setVisibility(0);
    }
    if ((localFragment1 != null) && (localFragment2 != null))
    {
      final boolean bool = paramh.b;
      Object localObject;
      if (parama.isEmpty()) {
        localObject = null;
      } else {
        localObject = t(paramv, localFragment1, localFragment2, bool);
      }
      n.a locala1 = i(paramv, parama, localObject, paramh);
      final n.a locala2 = h(paramv, parama, localObject, paramh);
      if (parama.isEmpty())
      {
        if (locala1 != null) {
          locala1.clear();
        }
        if (locala2 != null) {
          locala2.clear();
        }
        parama = null;
      }
      else
      {
        a(paramArrayList1, locala1, parama.keySet());
        a(paramArrayList2, locala2, parama.values());
        parama = localObject;
      }
      if ((paramObject1 == null) && (paramObject2 == null) && (parama == null)) {
        return null;
      }
      f(localFragment1, localFragment2, bool, locala1, true);
      if (parama != null)
      {
        paramArrayList2.add(paramView);
        paramv.z(parama, paramView, paramArrayList1);
        z(paramv, parama, paramObject2, locala1, paramh.e, paramh.f);
        paramView = new Rect();
        paramh = s(locala2, paramh, paramObject1, bool);
        if (paramh != null) {
          paramv.u(paramObject1, paramView);
        }
        paramArrayList1 = paramView;
      }
      else
      {
        paramView = null;
        paramArrayList1 = paramView;
        paramh = paramView;
      }
      x.a(paramViewGroup, new e(localFragment1, localFragment2, bool, locala2, paramh, paramv, paramArrayList1));
      return parama;
    }
    return null;
  }
  
  private static void n(ViewGroup paramViewGroup, h paramh, View paramView, n.a<String, String> parama, g paramg)
  {
    Fragment localFragment1 = paramh.a;
    final Fragment localFragment2 = paramh.d;
    v localv = j(localFragment2, localFragment1);
    if (localv == null) {
      return;
    }
    boolean bool1 = paramh.b;
    boolean bool2 = paramh.e;
    Object localObject1 = q(localv, localFragment1, bool1);
    Object localObject2 = r(localv, localFragment2, bool2);
    Object localObject3 = new ArrayList();
    ArrayList localArrayList1 = new ArrayList();
    Object localObject4 = l(localv, paramViewGroup, paramView, parama, paramh, (ArrayList)localObject3, localArrayList1, localObject1, localObject2);
    if ((localObject1 == null) && (localObject4 == null) && (localObject2 == null)) {
      return;
    }
    ArrayList localArrayList2 = k(localv, localObject2, localFragment2, (ArrayList)localObject3, paramView);
    if ((localArrayList2 == null) || (localArrayList2.isEmpty())) {
      localObject2 = null;
    }
    localv.a(localObject1, paramView);
    paramh = u(localv, localObject1, localObject2, localObject4, localFragment1, paramh.b);
    if ((localFragment2 != null) && (localArrayList2 != null) && ((localArrayList2.size() > 0) || (((ArrayList)localObject3).size() > 0)))
    {
      localObject3 = new androidx.core.os.e();
      paramg.b(localFragment2, (androidx.core.os.e)localObject3);
      localv.w(localFragment2, paramh, (androidx.core.os.e)localObject3, new c(paramg, localFragment2, (androidx.core.os.e)localObject3));
    }
    if (paramh != null)
    {
      paramg = new ArrayList();
      localv.t(paramh, localObject1, paramg, localObject2, localArrayList2, localObject4, localArrayList1);
      y(localv, paramViewGroup, localFragment1, paramView, localArrayList1, localObject1, paramg, localObject2, localArrayList2);
      localv.x(paramViewGroup, localArrayList1, parama);
      localv.c(paramViewGroup, paramh);
      localv.s(paramViewGroup, localArrayList1, parama);
    }
  }
  
  private static void o(ViewGroup paramViewGroup, h paramh, View paramView, n.a<String, String> parama, g paramg)
  {
    Object localObject1 = paramh.a;
    final Fragment localFragment = paramh.d;
    v localv = j(localFragment, (Fragment)localObject1);
    if (localv == null) {
      return;
    }
    boolean bool1 = paramh.b;
    boolean bool2 = paramh.e;
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    Object localObject2 = q(localv, (Fragment)localObject1, bool1);
    Object localObject3 = r(localv, localFragment, bool2);
    Object localObject4 = m(localv, paramViewGroup, paramView, parama, paramh, localArrayList2, localArrayList1, localObject2, localObject3);
    if ((localObject2 == null) && (localObject4 == null) && (localObject3 == null)) {
      return;
    }
    paramh = (h)localObject3;
    localObject3 = k(localv, paramh, localFragment, localArrayList2, paramView);
    paramView = k(localv, localObject2, (Fragment)localObject1, localArrayList1, paramView);
    A(paramView, 4);
    localObject1 = u(localv, localObject2, paramh, localObject4, (Fragment)localObject1, bool1);
    if ((localFragment != null) && (localObject3 != null) && ((((ArrayList)localObject3).size() > 0) || (localArrayList2.size() > 0)))
    {
      final androidx.core.os.e locale = new androidx.core.os.e();
      paramg.b(localFragment, locale);
      localv.w(localFragment, localObject1, locale, new a(paramg, localFragment, locale));
    }
    if (localObject1 != null)
    {
      v(localv, paramh, localFragment, (ArrayList)localObject3);
      paramg = localv.o(localArrayList1);
      localv.t(localObject1, localObject2, paramView, paramh, (ArrayList)localObject3, localObject4, localArrayList1);
      localv.c(paramViewGroup, localObject1);
      localv.y(paramViewGroup, localArrayList2, localArrayList1, paramg, parama);
      A(paramView, 0);
      localv.A(localObject4, localArrayList2, localArrayList1);
    }
  }
  
  private static h p(h paramh, SparseArray<h> paramSparseArray, int paramInt)
  {
    h localh = paramh;
    if (paramh == null)
    {
      localh = new h();
      paramSparseArray.put(paramInt, localh);
    }
    return localh;
  }
  
  private static Object q(v paramv, Fragment paramFragment, boolean paramBoolean)
  {
    if (paramFragment == null) {
      return null;
    }
    if (paramBoolean) {
      paramFragment = paramFragment.getReenterTransition();
    } else {
      paramFragment = paramFragment.getEnterTransition();
    }
    return paramv.g(paramFragment);
  }
  
  private static Object r(v paramv, Fragment paramFragment, boolean paramBoolean)
  {
    if (paramFragment == null) {
      return null;
    }
    if (paramBoolean) {
      paramFragment = paramFragment.getReturnTransition();
    } else {
      paramFragment = paramFragment.getExitTransition();
    }
    return paramv.g(paramFragment);
  }
  
  static View s(n.a<String, View> parama, h paramh, Object paramObject, boolean paramBoolean)
  {
    paramh = paramh.c;
    if ((paramObject != null) && (parama != null))
    {
      paramObject = paramh.p;
      if ((paramObject != null) && (!paramObject.isEmpty()))
      {
        if (paramBoolean) {
          paramh = (String)paramh.p.get(0);
        } else {
          paramh = (String)paramh.q.get(0);
        }
        return (View)parama.get(paramh);
      }
    }
    return null;
  }
  
  private static Object t(v paramv, Fragment paramFragment1, Fragment paramFragment2, boolean paramBoolean)
  {
    if ((paramFragment1 != null) && (paramFragment2 != null))
    {
      if (paramBoolean) {
        paramFragment1 = paramFragment2.getSharedElementReturnTransition();
      } else {
        paramFragment1 = paramFragment1.getSharedElementEnterTransition();
      }
      return paramv.B(paramv.g(paramFragment1));
    }
    return null;
  }
  
  private static Object u(v paramv, Object paramObject1, Object paramObject2, Object paramObject3, Fragment paramFragment, boolean paramBoolean)
  {
    if ((paramObject1 != null) && (paramObject2 != null) && (paramFragment != null))
    {
      if (paramBoolean) {
        paramBoolean = paramFragment.getAllowReturnTransitionOverlap();
      } else {
        paramBoolean = paramFragment.getAllowEnterTransitionOverlap();
      }
    }
    else {
      paramBoolean = true;
    }
    if (paramBoolean) {
      paramv = paramv.n(paramObject2, paramObject1, paramObject3);
    } else {
      paramv = paramv.m(paramObject2, paramObject1, paramObject3);
    }
    return paramv;
  }
  
  private static void v(v paramv, Object paramObject, Fragment paramFragment, ArrayList<View> paramArrayList)
  {
    if ((paramFragment != null) && (paramObject != null) && (paramFragment.mAdded) && (paramFragment.mHidden) && (paramFragment.mHiddenChanged))
    {
      paramFragment.setHideReplaced(true);
      paramv.r(paramObject, paramFragment.getView(), paramArrayList);
      x.a(paramFragment.mContainer, new b(paramArrayList));
    }
  }
  
  private static v w()
  {
    try
    {
      v localv = (v)androidx.transition.e.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
      return localv;
    }
    catch (Exception localException) {}
    return null;
  }
  
  static void x(n.a<String, String> parama, n.a<String, View> parama1)
  {
    for (int i = parama.size() - 1; i >= 0; i--) {
      if (!parama1.containsKey((String)parama.p(i))) {
        parama.n(i);
      }
    }
  }
  
  private static void y(final v paramv, ViewGroup paramViewGroup, final Fragment paramFragment, final View paramView, final ArrayList<View> paramArrayList1, Object paramObject1, final ArrayList<View> paramArrayList2, final Object paramObject2, final ArrayList<View> paramArrayList3)
  {
    x.a(paramViewGroup, new d(paramObject1, paramv, paramView, paramFragment, paramArrayList1, paramArrayList2, paramArrayList3, paramObject2));
  }
  
  private static void z(v paramv, Object paramObject1, Object paramObject2, n.a<String, View> parama, boolean paramBoolean, a parama1)
  {
    ArrayList localArrayList = parama1.p;
    if ((localArrayList != null) && (!localArrayList.isEmpty()))
    {
      if (paramBoolean) {
        parama1 = (String)parama1.q.get(0);
      } else {
        parama1 = (String)parama1.p.get(0);
      }
      parama = (View)parama.get(parama1);
      paramv.v(paramObject1, parama);
      if (paramObject2 != null) {
        paramv.v(paramObject2, parama);
      }
    }
  }
  
  class a
    implements Runnable
  {
    a(Fragment paramFragment, androidx.core.os.e parame) {}
    
    public void run()
    {
      t.this.a(localFragment, locale);
    }
  }
  
  class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      t.A(t.this, 4);
    }
  }
  
  class c
    implements Runnable
  {
    c(Fragment paramFragment, androidx.core.os.e parame) {}
    
    public void run()
    {
      t.this.a(localFragment2, this.c);
    }
  }
  
  class d
    implements Runnable
  {
    d(v paramv, View paramView, Fragment paramFragment, ArrayList paramArrayList1, ArrayList paramArrayList2, ArrayList paramArrayList3, Object paramObject) {}
    
    public void run()
    {
      Object localObject = t.this;
      if (localObject != null)
      {
        paramv.p(localObject, paramView);
        localObject = t.k(paramv, t.this, paramFragment, paramArrayList1, paramView);
        paramArrayList2.addAll((Collection)localObject);
      }
      if (paramArrayList3 != null)
      {
        if (paramObject2 != null)
        {
          localObject = new ArrayList();
          ((ArrayList)localObject).add(paramView);
          paramv.q(paramObject2, paramArrayList3, (ArrayList)localObject);
        }
        paramArrayList3.clear();
        paramArrayList3.add(paramView);
      }
    }
  }
  
  class e
    implements Runnable
  {
    e(Fragment paramFragment, boolean paramBoolean, n.a parama, View paramView, v paramv, Rect paramRect) {}
    
    public void run()
    {
      t.f(t.this, localFragment2, bool, locala2, false);
      View localView = paramh;
      if (localView != null) {
        paramv.k(localView, paramArrayList1);
      }
    }
  }
  
  class f
    implements Runnable
  {
    f(n.a parama, Object paramObject1, t.h paramh, ArrayList paramArrayList1, View paramView, Fragment paramFragment1, Fragment paramFragment2, boolean paramBoolean, ArrayList paramArrayList2, Object paramObject2, Rect paramRect) {}
    
    public void run()
    {
      Object localObject1 = t.h(t.this, parama, localObject, paramh);
      if (localObject1 != null)
      {
        paramArrayList2.addAll(((n.a)localObject1).values());
        paramArrayList2.add(paramView);
      }
      t.f(localFragment1, localFragment2, bool, (n.a)localObject1, false);
      Object localObject2 = localObject;
      if (localObject2 != null)
      {
        t.this.A(localObject2, paramArrayList1, paramArrayList2);
        localObject1 = t.s((n.a)localObject1, paramh, paramObject1, bool);
        if (localObject1 != null) {
          t.this.k((View)localObject1, paramObject2);
        }
      }
    }
  }
  
  static abstract interface g
  {
    public abstract void a(Fragment paramFragment, androidx.core.os.e parame);
    
    public abstract void b(Fragment paramFragment, androidx.core.os.e parame);
  }
  
  static class h
  {
    public Fragment a;
    public boolean b;
    public a c;
    public Fragment d;
    public boolean e;
    public a f;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.t
 * JD-Core Version:    0.7.0.1
 */