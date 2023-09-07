package com.xiaomi.passport.ui.internal;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import androidx.appcompat.app.d;
import b7.o;
import b7.o.a;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.passport.ui.settings.c;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import n5.e;
import n5.f;
import r6.a.a;
import r6.a.b;
import r6.a.d;
import s6.j;

public class PickCountryCodeActivity
  extends j
{
  private static String g = "iso";
  public static String h = "code";
  private ListView d;
  private r6.a<Void> e;
  private a7.b f;
  
  private void L()
  {
    if ((this.f != null) && (!isFinishing()))
    {
      this.f.dismiss();
      this.f = null;
    }
  }
  
  private void N()
  {
    if (this.f == null)
    {
      a7.b localb = new a7.b(this);
      this.f = localb;
      localb.f(true);
      this.f.h(getString(n5.g.H));
      this.f.setCanceledOnTouchOutside(false);
    }
    this.f.show();
  }
  
  private void O(List<o.a> paramList)
  {
    this.d = ((ListView)findViewById(e.x));
    ArrayList localArrayList = new ArrayList();
    if (((o.a)paramList.get(0)).e != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        o.a locala = (o.a)localIterator.next();
        if ((!TextUtils.isEmpty((CharSequence)locala.e.first)) && (!localArrayList.contains(locala.e.first))) {
          localArrayList.add((String)locala.e.first);
        }
      }
    }
    Collections.sort(localArrayList);
    this.d.setDividerHeight(0);
    this.d.setAdapter(new s6.a(this, paramList, (String[])localArrayList.toArray(new String[0])));
    this.d.setOnItemClickListener(new c());
    if (localArrayList.size() > 0)
    {
      paramList = (AlphabetFastIndexer)findViewById(e.v);
      paramList.setVisibility(0);
      paramList.setSectionAlphabets((String[])localArrayList.toArray(new String[0]));
      this.d.setOnScrollListener(new d(paramList, null));
    }
  }
  
  public void A(ViewGroup paramViewGroup)
  {
    LayoutInflater.from(this).inflate(f.e, paramViewGroup);
  }
  
  public void M()
  {
    Object localObject = b7.g.c(o.a());
    if (localObject != null)
    {
      O((List)localObject);
      return;
    }
    N();
    localObject = new r6.a(new e(null), new a(), new b());
    this.e = ((r6.a)localObject);
    ((r6.a)localObject).c();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    D(getString(n5.g.w));
    M();
  }
  
  protected void onDestroy()
  {
    L();
    r6.a locala = this.e;
    if (locala != null)
    {
      locala.a();
      this.e = null;
    }
    super.onDestroy();
  }
  
  class a
    implements a.d<Void>
  {
    a() {}
    
    public void b(Void paramVoid)
    {
      PickCountryCodeActivity.H(PickCountryCodeActivity.this);
      paramVoid = b7.g.c(o.a());
      if (paramVoid != null)
      {
        PickCountryCodeActivity.I(PickCountryCodeActivity.this, paramVoid);
      }
      else
      {
        z6.a.a(PickCountryCodeActivity.this, n5.g.l0);
        PickCountryCodeActivity.this.finish();
      }
    }
  }
  
  class b
    implements a.b
  {
    b() {}
    
    public void a(Throwable paramThrowable)
    {
      PickCountryCodeActivity.H(PickCountryCodeActivity.this);
      PickCountryCodeActivity.this.finish();
    }
  }
  
  class c
    implements AdapterView.OnItemClickListener
  {
    c() {}
    
    public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      paramAdapterView = (o.a)PickCountryCodeActivity.J(PickCountryCodeActivity.this).getAdapter().getItem(paramInt);
      paramView = new Intent();
      paramView.putExtra(PickCountryCodeActivity.K(), paramAdapterView.a);
      paramView.putExtra(PickCountryCodeActivity.h, b7.g.g(paramAdapterView.c));
      PickCountryCodeActivity.this.setResult(-1, paramView);
      PickCountryCodeActivity.this.finish();
    }
  }
  
  class d
    extends AlphabetFastIndexer.d
  {
    d(AlphabetFastIndexer paramAlphabetFastIndexer, AbsListView.OnScrollListener paramOnScrollListener)
    {
      super(paramOnScrollListener);
    }
    
    protected String a(Object paramObject)
    {
      return (String)((o.a)paramObject).e.first;
    }
  }
  
  private static class e
    implements a.a<Void>
  {
    public Void a()
      throws Throwable
    {
      String str1 = o.a();
      try
      {
        String str2 = c.a(str1);
      }
      catch (AuthenticationFailureException localAuthenticationFailureException) {}catch (AccessDeniedException localAccessDeniedException) {}catch (IOException localIOException) {}
      com.xiaomi.accountsdk.utils.b.h("FetchCountryCodeBgRunnable", "get country code exception: ", localIOException);
      String str3 = null;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("get country code result: ");
      localStringBuilder.append(str3);
      com.xiaomi.accountsdk.utils.b.g("FetchCountryCodeBgRunnable", localStringBuilder.toString());
      if (!TextUtils.isEmpty(str3)) {
        o.d(str3, str1);
      }
      return null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.internal.PickCountryCodeActivity
 * JD-Core Version:    0.7.0.1
 */