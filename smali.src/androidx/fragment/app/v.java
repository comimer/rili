package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.os.e;
import androidx.core.view.a0;
import androidx.core.view.x;
import androidx.core.view.x0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

@SuppressLint({"UnknownNullness"})
public abstract class v
{
  protected static void d(List<View> paramList, View paramView)
  {
    int i = paramList.size();
    if (h(paramList, paramView, i)) {
      return;
    }
    if (a0.H(paramView) != null) {
      paramList.add(paramView);
    }
    for (int j = i; j < paramList.size(); j++)
    {
      paramView = (View)paramList.get(j);
      if ((paramView instanceof ViewGroup))
      {
        ViewGroup localViewGroup = (ViewGroup)paramView;
        int k = localViewGroup.getChildCount();
        for (int m = 0; m < k; m++)
        {
          paramView = localViewGroup.getChildAt(m);
          if ((!h(paramList, paramView, i)) && (a0.H(paramView) != null)) {
            paramList.add(paramView);
          }
        }
      }
    }
  }
  
  private static boolean h(List<View> paramList, View paramView, int paramInt)
  {
    for (int i = 0; i < paramInt; i++) {
      if (paramList.get(i) == paramView) {
        return true;
      }
    }
    return false;
  }
  
  static String i(Map<String, String> paramMap, String paramString)
  {
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      if (paramString.equals(localEntry.getValue())) {
        return (String)localEntry.getKey();
      }
    }
    return null;
  }
  
  protected static boolean l(List paramList)
  {
    boolean bool;
    if ((paramList != null) && (!paramList.isEmpty())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public abstract void A(Object paramObject, ArrayList<View> paramArrayList1, ArrayList<View> paramArrayList2);
  
  public abstract Object B(Object paramObject);
  
  public abstract void a(Object paramObject, View paramView);
  
  public abstract void b(Object paramObject, ArrayList<View> paramArrayList);
  
  public abstract void c(ViewGroup paramViewGroup, Object paramObject);
  
  public abstract boolean e(Object paramObject);
  
  void f(ArrayList<View> paramArrayList, View paramView)
  {
    if (paramView.getVisibility() == 0) {
      if ((paramView instanceof ViewGroup))
      {
        paramView = (ViewGroup)paramView;
        if (x0.a(paramView))
        {
          paramArrayList.add(paramView);
        }
        else
        {
          int i = paramView.getChildCount();
          for (int j = 0; j < i; j++) {
            f(paramArrayList, paramView.getChildAt(j));
          }
        }
      }
      else
      {
        paramArrayList.add(paramView);
      }
    }
  }
  
  public abstract Object g(Object paramObject);
  
  void j(Map<String, View> paramMap, View paramView)
  {
    if (paramView.getVisibility() == 0)
    {
      String str = a0.H(paramView);
      if (str != null) {
        paramMap.put(str, paramView);
      }
      if ((paramView instanceof ViewGroup))
      {
        paramView = (ViewGroup)paramView;
        int i = paramView.getChildCount();
        for (int j = 0; j < i; j++) {
          j(paramMap, paramView.getChildAt(j));
        }
      }
    }
  }
  
  protected void k(View paramView, Rect paramRect)
  {
    if (!a0.O(paramView)) {
      return;
    }
    RectF localRectF = new RectF();
    localRectF.set(0.0F, 0.0F, paramView.getWidth(), paramView.getHeight());
    paramView.getMatrix().mapRect(localRectF);
    localRectF.offset(paramView.getLeft(), paramView.getTop());
    for (Object localObject = paramView.getParent(); (localObject instanceof View); localObject = ((View)localObject).getParent())
    {
      localObject = (View)localObject;
      localRectF.offset(-((View)localObject).getScrollX(), -((View)localObject).getScrollY());
      ((View)localObject).getMatrix().mapRect(localRectF);
      localRectF.offset(((View)localObject).getLeft(), ((View)localObject).getTop());
    }
    localObject = new int[2];
    paramView.getRootView().getLocationOnScreen((int[])localObject);
    localRectF.offset(localObject[0], localObject[1]);
    paramRect.set(Math.round(localRectF.left), Math.round(localRectF.top), Math.round(localRectF.right), Math.round(localRectF.bottom));
  }
  
  public abstract Object m(Object paramObject1, Object paramObject2, Object paramObject3);
  
  public abstract Object n(Object paramObject1, Object paramObject2, Object paramObject3);
  
  ArrayList<String> o(ArrayList<View> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    int i = paramArrayList.size();
    for (int j = 0; j < i; j++)
    {
      View localView = (View)paramArrayList.get(j);
      localArrayList.add(a0.H(localView));
      a0.F0(localView, null);
    }
    return localArrayList;
  }
  
  public abstract void p(Object paramObject, View paramView);
  
  public abstract void q(Object paramObject, ArrayList<View> paramArrayList1, ArrayList<View> paramArrayList2);
  
  public abstract void r(Object paramObject, View paramView, ArrayList<View> paramArrayList);
  
  void s(ViewGroup paramViewGroup, final ArrayList<View> paramArrayList, final Map<String, String> paramMap)
  {
    x.a(paramViewGroup, new c(paramArrayList, paramMap));
  }
  
  public abstract void t(Object paramObject1, Object paramObject2, ArrayList<View> paramArrayList1, Object paramObject3, ArrayList<View> paramArrayList2, Object paramObject4, ArrayList<View> paramArrayList3);
  
  public abstract void u(Object paramObject, Rect paramRect);
  
  public abstract void v(Object paramObject, View paramView);
  
  public void w(Fragment paramFragment, Object paramObject, e parame, Runnable paramRunnable)
  {
    paramRunnable.run();
  }
  
  void x(View paramView, final ArrayList<View> paramArrayList, final Map<String, String> paramMap)
  {
    x.a(paramView, new b(paramArrayList, paramMap));
  }
  
  void y(View paramView, final ArrayList<View> paramArrayList1, final ArrayList<View> paramArrayList2, final ArrayList<String> paramArrayList, Map<String, String> paramMap)
  {
    final int i = paramArrayList2.size();
    final ArrayList localArrayList = new ArrayList();
    for (int j = 0; j < i; j++)
    {
      Object localObject = (View)paramArrayList1.get(j);
      String str = a0.H((View)localObject);
      localArrayList.add(str);
      if (str != null)
      {
        a0.F0((View)localObject, null);
        localObject = (String)paramMap.get(str);
        for (int k = 0; k < i; k++) {
          if (((String)localObject).equals(paramArrayList.get(k)))
          {
            a0.F0((View)paramArrayList2.get(k), str);
            break;
          }
        }
      }
    }
    x.a(paramView, new a(i, paramArrayList2, paramArrayList, paramArrayList1, localArrayList));
  }
  
  public abstract void z(Object paramObject, View paramView, ArrayList<View> paramArrayList);
  
  class a
    implements Runnable
  {
    a(int paramInt, ArrayList paramArrayList1, ArrayList paramArrayList2, ArrayList paramArrayList3, ArrayList paramArrayList4) {}
    
    public void run()
    {
      for (int i = 0; i < i; i++)
      {
        a0.F0((View)paramArrayList2.get(i), (String)paramArrayList.get(i));
        a0.F0((View)paramArrayList1.get(i), (String)localArrayList.get(i));
      }
    }
  }
  
  class b
    implements Runnable
  {
    b(ArrayList paramArrayList, Map paramMap) {}
    
    public void run()
    {
      int i = paramArrayList.size();
      for (int j = 0; j < i; j++)
      {
        View localView = (View)paramArrayList.get(j);
        String str = a0.H(localView);
        if (str != null) {
          a0.F0(localView, v.i(paramMap, str));
        }
      }
    }
  }
  
  class c
    implements Runnable
  {
    c(ArrayList paramArrayList, Map paramMap) {}
    
    public void run()
    {
      int i = paramArrayList.size();
      for (int j = 0; j < i; j++)
      {
        View localView = (View)paramArrayList.get(j);
        String str = a0.H(localView);
        a0.F0(localView, (String)paramMap.get(str));
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.v
 * JD-Core Version:    0.7.0.1
 */