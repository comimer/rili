package com.xiaomi.passport.ui.view;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import n5.c;

public class FlexVerticalLinearLayout
  extends LinearLayout
{
  private List<Pair<Integer, Integer>> a;
  private Set<ViewTreeObserver.OnPreDrawListener> b = new HashSet();
  private g c = new a();
  private g d = new b();
  private g e = new c();
  private g f = new d();
  
  public FlexVerticalLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    g(paramContext);
  }
  
  private void f(List<FlexVerticalLinearLayout> paramList, g... paramVarArgs)
  {
    h(paramList, 0, paramVarArgs);
  }
  
  private void g(Context paramContext)
  {
    setOrientation(1);
  }
  
  private LinkedList<FlexVerticalLinearLayout> getAllInstancesInViewTree()
  {
    for (Object localObject1 = this; (((View)localObject1).getParent() instanceof ViewGroup); localObject1 = (ViewGroup)((View)localObject1).getParent()) {}
    LinkedList localLinkedList1 = new LinkedList();
    LinkedList localLinkedList2 = new LinkedList();
    LinkedList localLinkedList3 = new LinkedList();
    localLinkedList2.add(localObject1);
    while (!localLinkedList2.isEmpty())
    {
      localObject1 = localLinkedList2.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = (View)((Iterator)localObject1).next();
        if ((localObject2 instanceof FlexVerticalLinearLayout)) {
          localLinkedList1.add((FlexVerticalLinearLayout)localObject2);
        }
        if ((localObject2 instanceof ViewGroup))
        {
          localObject2 = (ViewGroup)localObject2;
          for (int i = 0; i < ((ViewGroup)localObject2).getChildCount(); i++) {
            localLinkedList3.add(((ViewGroup)localObject2).getChildAt(i));
          }
        }
      }
      localLinkedList2.clear();
      localLinkedList2.addAll(localLinkedList3);
      localLinkedList3.clear();
    }
    return localLinkedList1;
  }
  
  private f getFlexAdjustParamWhenPreDraw()
  {
    if (this.a == null) {
      i();
    }
    int i = getMeasuredHeight();
    int j = 0;
    if (i == 0) {
      return new f(0, 0, 0, null);
    }
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      localObject = (Pair)localIterator.next();
      j += ((Integer)((Pair)localObject).first).intValue() + ((Integer)((Pair)localObject).second).intValue();
    }
    Object localObject = (ViewGroup)getParent();
    int k = i;
    while (localObject != null)
    {
      int m = k;
      if (k > ((View)localObject).getMeasuredHeight()) {
        m = ((View)localObject).getMeasuredHeight();
      }
      if ((((View)localObject).getParent() instanceof ViewGroup))
      {
        localObject = (ViewGroup)((View)localObject).getParent();
        k = m;
      }
      else
      {
        localObject = null;
        k = m;
      }
    }
    return new f(i, j, k, null);
  }
  
  private void h(final List<FlexVerticalLinearLayout> paramList, final int paramInt, final g... paramVarArgs)
  {
    if (paramInt == paramVarArgs.length) {
      return;
    }
    paramList = new e(paramVarArgs, paramInt, paramList);
    getViewTreeObserver().addOnPreDrawListener(paramList);
    this.b.add(paramList);
  }
  
  private void i()
  {
    if (this.a != null) {
      return;
    }
    this.a = new ArrayList();
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)getChildAt(j).getLayoutParams();
      this.a.add(new Pair(Integer.valueOf(localLayoutParams.topMargin), Integer.valueOf(localLayoutParams.bottomMargin)));
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    f(getAllInstancesInViewTree(), new g[] { this.c, this.d, this.e });
  }
  
  protected void onDetachedFromWindow()
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      ViewTreeObserver.OnPreDrawListener localOnPreDrawListener = (ViewTreeObserver.OnPreDrawListener)localIterator.next();
      getViewTreeObserver().removeOnPreDrawListener(localOnPreDrawListener);
    }
    super.onDetachedFromWindow();
  }
  
  class a
    implements FlexVerticalLinearLayout.g
  {
    a() {}
    
    public boolean a(List<FlexVerticalLinearLayout> paramList)
    {
      Log.e("FVLinearLayout", "apply resetStrategy");
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        FlexVerticalLinearLayout localFlexVerticalLinearLayout = (FlexVerticalLinearLayout)paramList.next();
        FlexVerticalLinearLayout.a(localFlexVerticalLinearLayout);
        int i = localFlexVerticalLinearLayout.getChildCount();
        for (int j = 0; j < i; j++)
        {
          View localView = localFlexVerticalLinearLayout.getChildAt(j);
          if ((localView instanceof FlexVerticalSpace)) {
            localView.setVisibility(0);
          }
          LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)localView.getLayoutParams();
          localLayoutParams.topMargin = ((Integer)((Pair)FlexVerticalLinearLayout.b(localFlexVerticalLinearLayout).get(j)).first).intValue();
          localLayoutParams.bottomMargin = ((Integer)((Pair)FlexVerticalLinearLayout.b(localFlexVerticalLinearLayout).get(j)).second).intValue();
          localView.setLayoutParams(localLayoutParams);
        }
      }
      return true;
    }
  }
  
  class b
    implements FlexVerticalLinearLayout.g
  {
    b() {}
    
    public boolean a(List<FlexVerticalLinearLayout> paramList)
    {
      Log.e("FVLinearLayout", "apply hideSpaceStrategy");
      Object localObject1 = paramList.iterator();
      boolean bool = false;
      Object localObject2;
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (FlexVerticalLinearLayout)((Iterator)localObject1).next();
        FlexVerticalLinearLayout.a((FlexVerticalLinearLayout)localObject2);
        FlexVerticalLinearLayout.f localf = FlexVerticalLinearLayout.c((FlexVerticalLinearLayout)localObject2);
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("flexAdjustParam ");
        ((StringBuilder)localObject2).append(localf);
        Log.e("FVLinearLayout", ((StringBuilder)localObject2).toString());
        if (localf != null) {
          bool |= localf.a();
        }
      }
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("need flex adjust ");
      ((StringBuilder)localObject1).append(bool);
      Log.e("FVLinearLayout", ((StringBuilder)localObject1).toString());
      if (bool)
      {
        localObject2 = paramList.iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject1 = (FlexVerticalLinearLayout)((Iterator)localObject2).next();
          int i = ((ViewGroup)localObject1).getChildCount();
          for (int j = 0; j < i; j++)
          {
            paramList = ((ViewGroup)localObject1).getChildAt(j);
            if ((paramList instanceof FlexVerticalSpace)) {
              paramList.setVisibility(8);
            }
          }
        }
      }
      return bool;
    }
  }
  
  class c
    implements FlexVerticalLinearLayout.g
  {
    c() {}
    
    private SparseArray<Integer> b(List<FlexVerticalLinearLayout> paramList, int paramInt, float paramFloat)
    {
      SparseArray localSparseArray = new SparseArray();
      ArrayList localArrayList = new ArrayList();
      paramList = paramList.iterator();
      int i = 0;
      int j = i;
      Object localObject;
      int k;
      if (paramList.hasNext())
      {
        localObject = FlexVerticalLinearLayout.b((FlexVerticalLinearLayout)paramList.next()).iterator();
        k = j;
        m = i;
        for (;;)
        {
          i = m;
          j = k;
          if (!((Iterator)localObject).hasNext()) {
            break;
          }
          Pair localPair = (Pair)((Iterator)localObject).next();
          if (((Integer)localPair.first).intValue() <= paramFloat) {}
          for (j = ((Integer)localPair.first).intValue();; j = ((Integer)localPair.second).intValue())
          {
            k += j;
            break;
            m += ((Integer)localPair.first).intValue();
            localArrayList.add((Integer)localPair.first);
            if (((Integer)localPair.second).intValue() > paramFloat) {
              break label203;
            }
          }
          label203:
          m += ((Integer)localPair.second).intValue();
          localArrayList.add((Integer)localPair.second);
        }
      }
      Collections.sort(localArrayList);
      paramList = new StringBuilder();
      paramList.append("target=");
      paramList.append(paramInt);
      paramList.append(", unfixed=");
      paramList.append(i);
      paramList.append(", fixed=");
      paramList.append(j);
      paramList.append(", ints=");
      paramList.append(localArrayList);
      Log.e("FVLinearLayout", paramList.toString());
      int m = j;
      do
      {
        j = m + i - paramInt;
        if (j >= i) {
          return localSparseArray;
        }
        float f = (i - j) * 1.0F / i;
        paramList = new StringBuilder();
        paramList.append("scale=");
        paramList.append(f);
        Log.e("FVLinearLayout", paramList.toString());
        localObject = new ArrayList();
        paramList = localArrayList.iterator();
        j = 0;
        while (paramList.hasNext())
        {
          k = ((Integer)paramList.next()).intValue();
          int n = (int)(k * f);
          if (n <= paramFloat)
          {
            m = (int)(m + paramFloat);
            i -= k;
            j = 1;
            localSparseArray.put(k, Integer.valueOf((int)paramFloat));
          }
          else
          {
            ((List)localObject).add(Integer.valueOf(n));
            localSparseArray.put(k, Integer.valueOf(n));
          }
        }
        localArrayList.clear();
        localArrayList.addAll((Collection)localObject);
      } while (j != 0);
      return localSparseArray;
    }
    
    public boolean a(List<FlexVerticalLinearLayout> paramList)
    {
      Log.e("FVLinearLayout", "apply scaleGapStrategy");
      float f = FlexVerticalLinearLayout.this.getResources().getDimension(c.h);
      Object localObject1 = paramList.iterator();
      int i = 0;
      int j = i;
      int k = j;
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (FlexVerticalLinearLayout)((Iterator)localObject1).next();
        FlexVerticalLinearLayout.a((FlexVerticalLinearLayout)localObject2);
        localObject2 = FlexVerticalLinearLayout.c((FlexVerticalLinearLayout)localObject2);
        localObject3 = new StringBuilder();
        ((StringBuilder)localObject3).append("flexAdjustParam ");
        ((StringBuilder)localObject3).append(localObject2);
        Log.e("FVLinearLayout", ((StringBuilder)localObject3).toString());
        if (localObject2 != null)
        {
          i += ((FlexVerticalLinearLayout.f)localObject2).a;
          j += ((FlexVerticalLinearLayout.f)localObject2).b;
          k += ((FlexVerticalLinearLayout.f)localObject2).c;
        }
      }
      Log.e("FVLinearLayout", String.format("requestTotalHeight=%d, requestGapHeight=%d, visibleHeight=%d", new Object[] { Integer.valueOf(i), Integer.valueOf(j), Integer.valueOf(k) }));
      if (k >= i) {
        return false;
      }
      k = i - k;
      if (j <= k) {
        localObject1 = new SparseArray();
      } else {
        localObject1 = b(paramList, j - k, f);
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("scaledGaps=");
      ((StringBuilder)localObject2).append(localObject1);
      Log.e("FVLinearLayout", ((StringBuilder)localObject2).toString());
      Object localObject3 = paramList.iterator();
      while (((Iterator)localObject3).hasNext())
      {
        localObject2 = (FlexVerticalLinearLayout)((Iterator)localObject3).next();
        int m = ((ViewGroup)localObject2).getChildCount();
        for (j = 0; j < m; j++)
        {
          View localView = ((ViewGroup)localObject2).getChildAt(j);
          paramList = (LinearLayout.LayoutParams)localView.getLayoutParams();
          if (((SparseArray)localObject1).get(paramList.topMargin) == null) {
            k = (int)Math.min(paramList.topMargin, f);
          } else {
            k = ((Integer)((SparseArray)localObject1).get(paramList.topMargin)).intValue();
          }
          if (((SparseArray)localObject1).get(paramList.bottomMargin) == null) {
            i = (int)Math.min(paramList.bottomMargin, f);
          } else {
            i = ((Integer)((SparseArray)localObject1).get(paramList.bottomMargin)).intValue();
          }
          paramList.topMargin = k;
          paramList.bottomMargin = i;
          localView.setLayoutParams(paramList);
        }
      }
      return true;
    }
  }
  
  class d
    implements FlexVerticalLinearLayout.g
  {
    d() {}
    
    public boolean a(List<FlexVerticalLinearLayout> paramList)
    {
      Log.e("FVLinearLayout", "apply finalStrategy");
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        FlexVerticalLinearLayout.f localf = FlexVerticalLinearLayout.c((FlexVerticalLinearLayout)paramList.next());
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("flexAdjustParam ");
        localStringBuilder.append(localf);
        Log.e("FVLinearLayout", localStringBuilder.toString());
      }
      return true;
    }
  }
  
  class e
    implements ViewTreeObserver.OnPreDrawListener
  {
    e(FlexVerticalLinearLayout.g[] paramArrayOfg, int paramInt, List paramList) {}
    
    public boolean onPreDraw()
    {
      FlexVerticalLinearLayout.this.getViewTreeObserver().removeOnPreDrawListener(this);
      FlexVerticalLinearLayout.d(FlexVerticalLinearLayout.this).remove(this);
      if (paramVarArgs[paramInt].a(paramList))
      {
        FlexVerticalLinearLayout.e(FlexVerticalLinearLayout.this, paramList, paramInt + 1, paramVarArgs);
        return false;
      }
      return true;
    }
  }
  
  private static class f
  {
    public final int a;
    public final int b;
    public final int c;
    
    private f(int paramInt1, int paramInt2, int paramInt3)
    {
      this.a = paramInt1;
      this.b = paramInt2;
      this.c = paramInt3;
    }
    
    public boolean a()
    {
      boolean bool;
      if (this.a > this.c) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("FlexAdjustParam{requestTotalHeight=");
      localStringBuilder.append(this.a);
      localStringBuilder.append(", requestGapHeight=");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", visibleHeight=");
      localStringBuilder.append(this.c);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
  
  static abstract interface g
  {
    public abstract boolean a(List<FlexVerticalLinearLayout> paramList);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.view.FlexVerticalLinearLayout
 * JD-Core Version:    0.7.0.1
 */