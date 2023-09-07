package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.a0;
import androidx.recyclerview.widget.RecyclerView.g;
import e.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class h
  extends RecyclerView.g<l>
  implements Preference.b
{
  private PreferenceGroup a;
  private List<Preference> b;
  private List<Preference> c;
  private List<c> d;
  private Handler e;
  private Runnable f = new a();
  
  public h(PreferenceGroup paramPreferenceGroup)
  {
    this.a = paramPreferenceGroup;
    this.e = new Handler();
    this.a.C0(this);
    this.b = new ArrayList();
    this.c = new ArrayList();
    this.d = new ArrayList();
    paramPreferenceGroup = this.a;
    if ((paramPreferenceGroup instanceof PreferenceScreen)) {
      setHasStableIds(((PreferenceScreen)paramPreferenceGroup).f1());
    } else {
      setHasStableIds(true);
    }
    o();
  }
  
  private b f(final PreferenceGroup paramPreferenceGroup, List<Preference> paramList)
  {
    paramList = new b(paramPreferenceGroup.n(), paramList, paramPreferenceGroup.s());
    paramList.E0(new b(paramPreferenceGroup));
    return paramList;
  }
  
  private List<Preference> g(PreferenceGroup paramPreferenceGroup)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    int i = paramPreferenceGroup.X0();
    int j = 0;
    int k = 0;
    while (j < i)
    {
      Object localObject = paramPreferenceGroup.W0(j);
      if (((Preference)localObject).Q())
      {
        if ((k(paramPreferenceGroup)) && (k >= paramPreferenceGroup.U0())) {
          localArrayList2.add(localObject);
        } else {
          localArrayList1.add(localObject);
        }
        if (!(localObject instanceof PreferenceGroup))
        {
          k++;
        }
        else
        {
          localObject = (PreferenceGroup)localObject;
          if (((PreferenceGroup)localObject).Y0())
          {
            if ((k(paramPreferenceGroup)) && (k((PreferenceGroup)localObject))) {
              throw new IllegalStateException("Nesting an expandable group inside of another expandable group is not supported!");
            }
            localObject = g((PreferenceGroup)localObject).iterator();
            for (int m = k;; m++)
            {
              k = m;
              if (!((Iterator)localObject).hasNext()) {
                break;
              }
              Preference localPreference = (Preference)((Iterator)localObject).next();
              if ((k(paramPreferenceGroup)) && (m >= paramPreferenceGroup.U0())) {
                localArrayList2.add(localPreference);
              } else {
                localArrayList1.add(localPreference);
              }
            }
          }
        }
      }
      j++;
    }
    if ((k(paramPreferenceGroup)) && (k > paramPreferenceGroup.U0())) {
      localArrayList1.add(f(paramPreferenceGroup, localArrayList2));
    }
    return localArrayList1;
  }
  
  private void h(List<Preference> paramList, PreferenceGroup paramPreferenceGroup)
  {
    paramPreferenceGroup.e1();
    int i = paramPreferenceGroup.X0();
    for (int j = 0; j < i; j++)
    {
      Preference localPreference = paramPreferenceGroup.W0(j);
      paramList.add(localPreference);
      Object localObject = new c(localPreference);
      if (!this.d.contains(localObject)) {
        this.d.add(localObject);
      }
      if ((localPreference instanceof PreferenceGroup))
      {
        localObject = (PreferenceGroup)localPreference;
        if (((PreferenceGroup)localObject).Y0()) {
          h(paramList, (PreferenceGroup)localObject);
        }
      }
      localPreference.C0(this);
    }
  }
  
  private boolean k(PreferenceGroup paramPreferenceGroup)
  {
    boolean bool;
    if (paramPreferenceGroup.U0() != 2147483647) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void b(Preference paramPreference)
  {
    this.e.removeCallbacks(this.f);
    this.e.post(this.f);
  }
  
  public void d(Preference paramPreference)
  {
    b(paramPreference);
  }
  
  public void e(Preference paramPreference)
  {
    int i = this.c.indexOf(paramPreference);
    if (i != -1) {
      notifyItemChanged(i, paramPreference);
    }
  }
  
  public int getItemCount()
  {
    return this.c.size();
  }
  
  public long getItemId(int paramInt)
  {
    if (!hasStableIds()) {
      return -1L;
    }
    return i(paramInt).s();
  }
  
  public int getItemViewType(int paramInt)
  {
    c localc = new c(i(paramInt));
    paramInt = this.d.indexOf(localc);
    if (paramInt != -1) {
      return paramInt;
    }
    paramInt = this.d.size();
    this.d.add(localc);
    return paramInt;
  }
  
  public Preference i(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < getItemCount())) {
      return (Preference)this.c.get(paramInt);
    }
    return null;
  }
  
  public int j(Preference paramPreference)
  {
    int i = this.c.size();
    for (int j = 0; j < i; j++)
    {
      Preference localPreference = (Preference)this.c.get(j);
      if ((localPreference != null) && (localPreference.equals(paramPreference))) {
        return j;
      }
    }
    return -1;
  }
  
  public void l(l paraml, int paramInt)
  {
    i(paramInt).X(paraml);
  }
  
  public l m(ViewGroup paramViewGroup, int paramInt)
  {
    c localc = (c)this.d.get(paramInt);
    LayoutInflater localLayoutInflater = LayoutInflater.from(paramViewGroup.getContext());
    TypedArray localTypedArray = paramViewGroup.getContext().obtainStyledAttributes(null, s.p);
    Drawable localDrawable = localTypedArray.getDrawable(s.q);
    Object localObject = localDrawable;
    if (localDrawable == null) {
      localObject = a.b(paramViewGroup.getContext(), 17301602);
    }
    localTypedArray.recycle();
    paramViewGroup = localLayoutInflater.inflate(localc.a, paramViewGroup, false);
    if (paramViewGroup.getBackground() == null) {
      a0.p0(paramViewGroup, (Drawable)localObject);
    }
    localObject = (ViewGroup)paramViewGroup.findViewById(16908312);
    if (localObject != null)
    {
      paramInt = localc.b;
      if (paramInt != 0) {
        localLayoutInflater.inflate(paramInt, (ViewGroup)localObject);
      } else {
        ((View)localObject).setVisibility(8);
      }
    }
    return new l(paramViewGroup);
  }
  
  void o()
  {
    Object localObject = this.b.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((Preference)((Iterator)localObject).next()).C0(null);
    }
    localObject = new ArrayList(this.b.size());
    this.b = ((List)localObject);
    h((List)localObject, this.a);
    this.c = g(this.a);
    localObject = this.a.F();
    if (localObject != null) {
      ((j)localObject).g();
    }
    notifyDataSetChanged();
    localObject = this.b.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((Preference)((Iterator)localObject).next()).h();
    }
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      h.this.o();
    }
  }
  
  class b
    implements Preference.d
  {
    b(PreferenceGroup paramPreferenceGroup) {}
    
    public boolean d(Preference paramPreference)
    {
      paramPreferenceGroup.c1(2147483647);
      h.this.b(paramPreference);
      paramPreference = paramPreferenceGroup.V0();
      if (paramPreference != null) {
        paramPreference.a();
      }
      return true;
    }
  }
  
  private static class c
  {
    int a;
    int b;
    String c;
    
    c(Preference paramPreference)
    {
      this.c = paramPreference.getClass().getName();
      this.a = paramPreference.v();
      this.b = paramPreference.K();
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool1 = paramObject instanceof c;
      boolean bool2 = false;
      if (!bool1) {
        return false;
      }
      paramObject = (c)paramObject;
      bool1 = bool2;
      if (this.a == paramObject.a)
      {
        bool1 = bool2;
        if (this.b == paramObject.b)
        {
          bool1 = bool2;
          if (TextUtils.equals(this.c, paramObject.c)) {
            bool1 = true;
          }
        }
      }
      return bool1;
    }
    
    public int hashCode()
    {
      return ((527 + this.a) * 31 + this.b) * 31 + this.c.hashCode();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.h
 * JD-Core Version:    0.7.0.1
 */