package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.v;
import java.util.ArrayList;
import java.util.List;

@SuppressLint({"RestrictedApi"})
public class e
  extends v
{
  private static boolean C(m paramm)
  {
    boolean bool;
    if ((v.l(paramm.getTargetIds())) && (v.l(paramm.getTargetNames())) && (v.l(paramm.getTargetTypes()))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public void A(Object paramObject, ArrayList<View> paramArrayList1, ArrayList<View> paramArrayList2)
  {
    paramObject = (q)paramObject;
    if (paramObject != null)
    {
      paramObject.getTargets().clear();
      paramObject.getTargets().addAll(paramArrayList2);
      q(paramObject, paramArrayList1, paramArrayList2);
    }
  }
  
  public Object B(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    q localq = new q();
    localq.g((m)paramObject);
    return localq;
  }
  
  public void a(Object paramObject, View paramView)
  {
    if (paramObject != null) {
      ((m)paramObject).addTarget(paramView);
    }
  }
  
  public void b(Object paramObject, ArrayList<View> paramArrayList)
  {
    paramObject = (m)paramObject;
    if (paramObject == null) {
      return;
    }
    boolean bool = paramObject instanceof q;
    int i = 0;
    int j = 0;
    if (bool)
    {
      paramObject = (q)paramObject;
      i = paramObject.k();
      while (j < i)
      {
        b(paramObject.i(j), paramArrayList);
        j++;
      }
    }
    if ((!C(paramObject)) && (v.l(paramObject.getTargets())))
    {
      int k = paramArrayList.size();
      for (j = i; j < k; j++) {
        paramObject.addTarget((View)paramArrayList.get(j));
      }
    }
  }
  
  public void c(ViewGroup paramViewGroup, Object paramObject)
  {
    o.a(paramViewGroup, (m)paramObject);
  }
  
  public boolean e(Object paramObject)
  {
    return paramObject instanceof m;
  }
  
  public Object g(Object paramObject)
  {
    if (paramObject != null) {
      paramObject = ((m)paramObject).clone();
    } else {
      paramObject = null;
    }
    return paramObject;
  }
  
  public Object m(Object paramObject1, Object paramObject2, Object paramObject3)
  {
    paramObject1 = (m)paramObject1;
    paramObject2 = (m)paramObject2;
    paramObject3 = (m)paramObject3;
    if ((paramObject1 != null) && (paramObject2 != null)) {
      paramObject1 = new q().g(paramObject1).g(paramObject2).w(1);
    } else if (paramObject1 == null) {
      if (paramObject2 != null) {
        paramObject1 = paramObject2;
      } else {
        paramObject1 = null;
      }
    }
    if (paramObject3 != null)
    {
      paramObject2 = new q();
      if (paramObject1 != null) {
        paramObject2.g(paramObject1);
      }
      paramObject2.g(paramObject3);
      return paramObject2;
    }
    return paramObject1;
  }
  
  public Object n(Object paramObject1, Object paramObject2, Object paramObject3)
  {
    q localq = new q();
    if (paramObject1 != null) {
      localq.g((m)paramObject1);
    }
    if (paramObject2 != null) {
      localq.g((m)paramObject2);
    }
    if (paramObject3 != null) {
      localq.g((m)paramObject3);
    }
    return localq;
  }
  
  public void p(Object paramObject, View paramView)
  {
    if (paramObject != null) {
      ((m)paramObject).removeTarget(paramView);
    }
  }
  
  public void q(Object paramObject, ArrayList<View> paramArrayList1, ArrayList<View> paramArrayList2)
  {
    paramObject = (m)paramObject;
    boolean bool = paramObject instanceof q;
    int i = 0;
    int j = 0;
    if (bool)
    {
      paramObject = (q)paramObject;
      i = paramObject.k();
      while (j < i)
      {
        q(paramObject.i(j), paramArrayList1, paramArrayList2);
        j++;
      }
    }
    if (!C(paramObject))
    {
      List localList = paramObject.getTargets();
      if ((localList.size() == paramArrayList1.size()) && (localList.containsAll(paramArrayList1)))
      {
        if (paramArrayList2 == null) {
          j = 0;
        } else {
          j = paramArrayList2.size();
        }
        while (i < j)
        {
          paramObject.addTarget((View)paramArrayList2.get(i));
          i++;
        }
        for (j = paramArrayList1.size() - 1; j >= 0; j--) {
          paramObject.removeTarget((View)paramArrayList1.get(j));
        }
      }
    }
  }
  
  public void r(Object paramObject, final View paramView, final ArrayList<View> paramArrayList)
  {
    ((m)paramObject).addListener(new b(paramView, paramArrayList));
  }
  
  public void t(Object paramObject1, final Object paramObject2, final ArrayList<View> paramArrayList1, final Object paramObject3, final ArrayList<View> paramArrayList2, final Object paramObject4, final ArrayList<View> paramArrayList3)
  {
    ((m)paramObject1).addListener(new c(paramObject2, paramArrayList1, paramObject3, paramArrayList2, paramObject4, paramArrayList3));
  }
  
  public void u(Object paramObject, final Rect paramRect)
  {
    if (paramObject != null) {
      ((m)paramObject).setEpicenterCallback(new d(paramRect));
    }
  }
  
  public void v(final Object paramObject, View paramView)
  {
    if (paramView != null)
    {
      m localm = (m)paramObject;
      paramObject = new Rect();
      k(paramView, paramObject);
      localm.setEpicenterCallback(new a(paramObject));
    }
  }
  
  public void z(Object paramObject, View paramView, ArrayList<View> paramArrayList)
  {
    q localq = (q)paramObject;
    paramObject = localq.getTargets();
    paramObject.clear();
    int i = paramArrayList.size();
    for (int j = 0; j < i; j++) {
      v.d(paramObject, (View)paramArrayList.get(j));
    }
    paramObject.add(paramView);
    paramArrayList.add(paramView);
    b(localq, paramArrayList);
  }
  
  class a
    extends m.f
  {
    a(Rect paramRect) {}
    
    public Rect a(m paramm)
    {
      return paramObject;
    }
  }
  
  class b
    implements m.g
  {
    b(View paramView, ArrayList paramArrayList) {}
    
    public void onTransitionCancel(m paramm) {}
    
    public void onTransitionEnd(m paramm)
    {
      paramm.removeListener(this);
      paramView.setVisibility(8);
      int i = paramArrayList.size();
      for (int j = 0; j < i; j++) {
        ((View)paramArrayList.get(j)).setVisibility(0);
      }
    }
    
    public void onTransitionPause(m paramm) {}
    
    public void onTransitionResume(m paramm) {}
    
    public void onTransitionStart(m paramm) {}
  }
  
  class c
    extends n
  {
    c(Object paramObject1, ArrayList paramArrayList1, Object paramObject2, ArrayList paramArrayList2, Object paramObject3, ArrayList paramArrayList3) {}
    
    public void onTransitionEnd(m paramm)
    {
      paramm.removeListener(this);
    }
    
    public void onTransitionStart(m paramm)
    {
      paramm = paramObject2;
      if (paramm != null) {
        e.this.q(paramm, paramArrayList1, null);
      }
      paramm = paramObject3;
      if (paramm != null) {
        e.this.q(paramm, paramArrayList2, null);
      }
      paramm = paramObject4;
      if (paramm != null) {
        e.this.q(paramm, paramArrayList3, null);
      }
    }
  }
  
  class d
    extends m.f
  {
    d(Rect paramRect) {}
    
    public Rect a(m paramm)
    {
      paramm = paramRect;
      if ((paramm != null) && (!paramm.isEmpty())) {
        return paramRect;
      }
      return null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.transition.e
 * JD-Core Version:    0.7.0.1
 */