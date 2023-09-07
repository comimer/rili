package com.xiaomi.passport.ui.page;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import n5.e;
import s6.b;
import s6.h;
import s6.i;
import s6.m;
import s6.o;
import s6.p;
import s6.t;
import s6.u;

public class f
  extends BaseLoginFragment
  implements View.OnClickListener
{
  private View j;
  private ImageView k;
  private ImageView l;
  private ImageView m;
  private ImageView n;
  private ImageView o;
  private Map<String, p> p;
  
  private void n() {}
  
  private void o()
  {
    Object localObject1 = i().getStringArrayList("sns_entrance");
    this.p = new HashMap();
    if ((localObject1 != null) && (!((List)localObject1).isEmpty()))
    {
      Object localObject2 = ((List)localObject1).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject1 = (String)((Iterator)localObject2).next();
        ((String)localObject1).hashCode();
        int i = -1;
        switch (((String)localObject1).hashCode())
        {
        default: 
          break;
        case 497130182: 
          if (((String)localObject1).equals("facebook")) {
            i = 4;
          }
          break;
        case 113011944: 
          if (((String)localObject1).equals("weibo")) {
            i = 3;
          }
          break;
        case 3616: 
          if (((String)localObject1).equals("qq")) {
            i = 2;
          }
          break;
        case -791575966: 
          if (((String)localObject1).equals("weixin")) {
            i = 1;
          }
          break;
        case -1240244679: 
          if (((String)localObject1).equals("google")) {
            i = 0;
          }
          break;
        }
        switch (i)
        {
        default: 
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append("unknown sns type ");
          ((StringBuilder)localObject2).append((String)localObject1);
          throw new IllegalStateException(((StringBuilder)localObject2).toString());
        case 4: 
          this.p.put(localObject1, new h());
          this.k.setVisibility(0);
          break;
        case 3: 
          this.p.put(localObject1, new u());
          this.m.setVisibility(0);
          break;
        case 2: 
          this.p.put(localObject1, new m());
          this.n.setVisibility(0);
          break;
        case 1: 
          this.p.put(localObject1, new t());
          this.o.setVisibility(0);
          break;
        case 0: 
          this.p.put(localObject1, new i());
          this.l.setVisibility(0);
        }
      }
    }
    if (this.p.isEmpty()) {
      this.j.setVisibility(8);
    }
  }
  
  private void y(View paramView)
  {
    this.k = ((ImageView)paramView.findViewById(e.n0));
    this.l = ((ImageView)paramView.findViewById(e.o0));
    this.m = ((ImageView)paramView.findViewById(e.r0));
    this.n = ((ImageView)paramView.findViewById(e.p0));
    this.o = ((ImageView)paramView.findViewById(e.q0));
    this.k.setOnClickListener(this);
    this.l.setOnClickListener(this);
    this.m.setOnClickListener(this);
    this.n.setOnClickListener(this);
    this.o.setOnClickListener(this);
  }
  
  private void z()
  {
    Iterator localIterator = this.p.values().iterator();
    while (localIterator.hasNext()) {
      ((p)localIterator.next()).b();
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    o();
    n();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    Iterator localIterator = this.p.values().iterator();
    while (localIterator.hasNext())
    {
      p localp = (p)localIterator.next();
      if (paramInt1 == localp.h())
      {
        localp.l(getActivity(), paramInt1, paramInt2, paramIntent);
        o localo = p.e;
        if (localo != null)
        {
          p.i();
          z6.c.f(getActivity(), localp, localo, new b());
        }
      }
    }
  }
  
  public void onClick(final View paramView)
  {
    if (paramView == this.k) {
      paramView = (p)this.p.get("facebook");
    } else if (paramView == this.l) {
      paramView = (p)this.p.get("google");
    } else if (paramView == this.m) {
      paramView = (p)this.p.get("weibo");
    } else if (paramView == this.n) {
      paramView = (p)this.p.get("qq");
    } else if (paramView == this.o) {
      paramView = (p)this.p.get("weixin");
    } else {
      paramView = null;
    }
    if (!this.i.j())
    {
      this.i.k(new c(paramView));
      return;
    }
    paramView.p(getActivity(), this.f, j());
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(n5.f.k, paramViewGroup, false);
    this.j = paramLayoutInflater;
    y(paramLayoutInflater);
    return this.j;
  }
  
  public void onDestroyView()
  {
    z();
    super.onDestroyView();
  }
  
  public void onResume()
  {
    super.onResume();
    o localo = p.e;
    if (localo != null)
    {
      p.i();
      z6.c.f(getContext(), (s6.c)this.p.get(localo.a), localo, new a());
    }
  }
  
  class a
    extends v6.a
  {
    a() {}
    
    public void a(AccountInfo paramAccountInfo)
    {
      z6.c.m(f.this.getActivity(), paramAccountInfo);
      z6.c.b(f.this.getActivity(), paramAccountInfo, f.this.c);
    }
  }
  
  class b
    extends v6.a
  {
    b() {}
    
    public void a(AccountInfo paramAccountInfo)
    {
      z6.c.m(f.this.getActivity(), paramAccountInfo);
      z6.c.b(f.this.getActivity(), paramAccountInfo, f.this.c);
    }
  }
  
  class c
    implements View.OnClickListener
  {
    c(p paramp) {}
    
    public void onClick(View paramView)
    {
      p localp = paramView;
      paramView = f.this.getActivity();
      f localf = f.this;
      localp.p(paramView, localf.f, localf.j());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.page.f
 * JD-Core Version:    0.7.0.1
 */