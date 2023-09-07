package com.miui.calendar.limit;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageButton;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.StatusBar;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.q;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.view.LimitNumberView;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Calendar;
import java.util.Formatter;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import miuix.appcompat.app.m;
import okhttp3.b0;
import org.json.JSONObject;
import u1.b.a;

public class LimitDetailActivity
  extends com.android.calendar.common.b
{
  private TextView b;
  private TextView c;
  private LimitNumberView d;
  private View e;
  private LimitNumberView f;
  private View g;
  private LimitNumberView h;
  private TextView i;
  private Context j;
  private AsyncTask k;
  private String l;
  private String m;
  private LimitSchema n;
  private LimitSchema o;
  private LimitSchema p;
  private String q;
  private boolean r;
  private tc.a<b0> v;
  private miuix.appcompat.app.a w;
  
  private void g0()
  {
    Calendar localCalendar = Calendar.getInstance();
    this.n = a.f(this.j, this.l, localCalendar);
    localCalendar.add(5, 1);
    this.o = a.f(this.j, this.l, localCalendar);
    localCalendar.add(5, 1);
    this.p = a.f(this.j, this.l, localCalendar);
  }
  
  private void h0()
  {
    Object localObject = J();
    this.w = ((miuix.appcompat.app.a)localObject);
    if (localObject == null) {
      return;
    }
    localObject = new ImageButton(this);
    ((View)localObject).setOnClickListener(new e4.b(this));
    int i1;
    if (x0.s0(getApplicationContext())) {
      i1 = 2131232007;
    } else {
      i1 = 2131232010;
    }
    ((View)localObject).setBackgroundResource(i1);
    ((View)localObject).setContentDescription(getResources().getString(2131886825));
    this.w.E((View)localObject);
    this.w.A(2131886816);
  }
  
  private void i0()
  {
    this.b = ((TextView)findViewById(2131362167));
    this.c = ((TextView)findViewById(2131362247));
    this.d = ((LimitNumberView)findViewById(2131362916));
    this.e = findViewById(2131362918);
    this.f = ((LimitNumberView)findViewById(2131362917));
    this.g = findViewById(2131362912);
    this.h = ((LimitNumberView)findViewById(2131362911));
    this.i = ((TextView)findViewById(2131362685));
  }
  
  private void k0()
  {
    Intent localIntent = getIntent();
    if (localIntent == null)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("parseIntent(): intent INVALID:");
      ((StringBuilder)localObject).append(localIntent);
      z.m("Cal:D:LimitDetailActivity", ((StringBuilder)localObject).toString());
      finish();
    }
    Object localObject = localIntent.getStringExtra("from");
    this.q = ((String)localObject);
    if ("来自通知".equals(localObject)) {
      this.r = true;
    }
  }
  
  private void l0()
  {
    if (this.k == null)
    {
      c localc = new c(null);
      this.k = localc;
      localc.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
  }
  
  private void m0()
  {
    a.n(this.j, new a(), "启动限行详情页");
    Object localObject1 = a.d(this.j, this.l);
    if (!TextUtils.isEmpty((CharSequence)localObject1))
    {
      String str = u1.d.a(this.j);
      Object localObject2 = new HashMap();
      ((HashMap)localObject2).put("locationKey", localObject1);
      Map localMap = l0.a(this.j, (HashMap)localObject2);
      u1.a locala = u1.d.d();
      localObject2 = new b(this);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("startQuery(): start query limit rule, key=");
      localStringBuilder.append((String)localObject1);
      z.a("Cal:D:LimitDetailActivity", localStringBuilder.toString());
      localObject1 = locala.o(str, localMap);
      this.v = ((tc.a)localObject1);
      ((tc.a)localObject1).q(new u1.b((b.a)localObject2));
    }
  }
  
  private void n0()
  {
    if (this.k != null)
    {
      z.a("Cal:D:LimitDetailActivity", "stop loading");
      this.k.cancel(true);
      this.k = null;
    }
    o0();
  }
  
  private void o0()
  {
    z.a("Cal:D:LimitDetailActivity", "stop query");
    tc.a locala = this.v;
    if (locala != null)
    {
      locala.cancel();
      this.v = null;
    }
  }
  
  private void p0()
  {
    if (TextUtils.isEmpty(this.l))
    {
      this.b.setVisibility(8);
    }
    else
    {
      this.b.setVisibility(0);
      localObject1 = this.b;
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append(this.l);
      ((StringBuilder)localObject2).append(getString(2131886805));
      ((TextView)localObject1).setText(((StringBuilder)localObject2).toString());
    }
    Object localObject1 = new Formatter(new StringBuilder(50), Locale.getDefault());
    Object localObject2 = Calendar.getInstance();
    localObject2 = DateUtils.formatDateRange(this.j, (Formatter)localObject1, ((Calendar)localObject2).getTimeInMillis(), ((Calendar)localObject2).getTimeInMillis(), 18, ((Calendar)localObject2).getTimeZone().getID());
    localObject1 = this.c;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getString(2131886828));
    localStringBuilder.append(" ");
    localStringBuilder.append(((Formatter)localObject2).toString());
    ((TextView)localObject1).setText(localStringBuilder.toString());
    this.d.setItemLayoutId(2131558662);
    localObject2 = this.n;
    if ((localObject2 != null) && (!TextUtils.isEmpty(((LimitSchema)localObject2).desc)))
    {
      if (this.n.desc.equals(getResources().getString(2131886815)))
      {
        this.b.setVisibility(8);
        this.d.setItemLayoutId(2131558663);
        localObject2 = new LinearLayout.LayoutParams(-2, -2);
        ((ViewGroup.MarginLayoutParams)localObject2).setMargins(0, 0, 0, -getResources().getDimensionPixelOffset(2131165559));
        this.d.setLayoutParams((ViewGroup.LayoutParams)localObject2);
        this.d.setLimitNumber(this.n.desc);
      }
      else
      {
        this.d.setLimitNumber(this.n.desc);
      }
    }
    else
    {
      this.b.setVisibility(8);
      this.d.setLimitNumber(getString(2131886808));
    }
    localObject2 = this.o;
    int i1 = 2131558660;
    int i2;
    if (localObject2 == null)
    {
      this.e.setVisibility(4);
    }
    else
    {
      this.e.setVisibility(0);
      localObject2 = this.f;
      if (TextUtils.isEmpty(this.o.number)) {
        i2 = 2131558660;
      } else {
        i2 = 2131558661;
      }
      ((LimitNumberView)localObject2).setItemLayoutId(i2);
      this.f.setLimitNumber(this.o.desc);
    }
    if (this.p == null)
    {
      this.g.setVisibility(8);
    }
    else
    {
      this.g.setVisibility(0);
      localObject2 = this.h;
      if (TextUtils.isEmpty(this.p.number)) {
        i2 = i1;
      } else {
        i2 = 2131558661;
      }
      ((LimitNumberView)localObject2).setItemLayoutId(i2);
      this.h.setLimitNumber(this.p.desc);
    }
    if (TextUtils.isEmpty(this.m)) {
      this.i.setText(2131886809);
    } else {
      this.i.setText(this.m);
    }
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    if (this.r) {
      Utils.x0(this);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131558659);
    this.j = this;
    k0();
    h0();
    i0();
    new StatusBar(this).a(x0.s0(getApplicationContext()));
    HashMap localHashMap = new HashMap();
    if (TextUtils.isEmpty(this.q)) {
      paramBundle = "来自其他";
    } else {
      paramBundle = this.q;
    }
    localHashMap.put("from", paramBundle);
    g0.e("limit_detail_display", localHashMap);
    X();
  }
  
  protected void onPause()
  {
    super.onPause();
    n0();
  }
  
  protected void onResume()
  {
    super.onResume();
    l0();
  }
  
  class a
    implements a.a
  {
    a() {}
    
    public void a()
    {
      LimitDetailActivity.b0(LimitDetailActivity.this);
      LimitDetailActivity.d0(LimitDetailActivity.this);
    }
  }
  
  private static class b
    implements b.a
  {
    private final WeakReference<LimitDetailActivity> a;
    
    public b(LimitDetailActivity paramLimitDetailActivity)
    {
      this.a = new WeakReference(paramLimitDetailActivity);
    }
    
    public void a(JSONObject paramJSONObject)
    {
      LimitDetailActivity localLimitDetailActivity = (LimitDetailActivity)this.a.get();
      if (localLimitDetailActivity == null) {
        return;
      }
      JSONObject localJSONObject = null;
      try
      {
        paramJSONObject = l0.b(paramJSONObject.getString("data"));
        localJSONObject = paramJSONObject;
        StringBuilder localStringBuilder = new java/lang/StringBuilder;
        localJSONObject = paramJSONObject;
        localStringBuilder.<init>();
        localJSONObject = paramJSONObject;
        localStringBuilder.append("LimitDetailResponseListener: data=");
        localJSONObject = paramJSONObject;
        localStringBuilder.append(paramJSONObject);
        localJSONObject = paramJSONObject;
        z.a("Cal:D:LimitDetailActivity", localStringBuilder.toString());
        localJSONObject = paramJSONObject;
        boolean bool = TextUtils.isEmpty(paramJSONObject);
        if (!bool)
        {
          localJSONObject = paramJSONObject;
          q.f(localLimitDetailActivity, "limit_rule", paramJSONObject);
        }
        else
        {
          localJSONObject = paramJSONObject;
          q.h(localLimitDetailActivity, "limit_rule");
        }
        localJSONObject = paramJSONObject;
        LimitDetailActivity.c0(localLimitDetailActivity, paramJSONObject);
        localJSONObject = paramJSONObject;
        LimitDetailActivity.d0(localLimitDetailActivity);
      }
      catch (Exception localException)
      {
        paramJSONObject = new StringBuilder();
        paramJSONObject.append("data:");
        paramJSONObject.append(localJSONObject);
        z.d("Cal:D:LimitDetailActivity", paramJSONObject.toString(), localException);
      }
    }
    
    public void b(Exception paramException)
    {
      z.d("Cal:D:LimitDetailActivity", "LimitDetailResponseListener:", paramException);
    }
  }
  
  private class c
    extends AsyncTask<Void, Void, String>
  {
    private c() {}
    
    protected String a(Void... paramVarArgs)
    {
      paramVarArgs = LimitDetailActivity.this;
      LimitDetailActivity.Z(paramVarArgs, a.i(LimitDetailActivity.a0(paramVarArgs)));
      LimitDetailActivity.b0(LimitDetailActivity.this);
      return q.d(LimitDetailActivity.a0(LimitDetailActivity.this), "limit_rule");
    }
    
    protected void b(String paramString)
    {
      LimitDetailActivity.c0(LimitDetailActivity.this, paramString);
      LimitDetailActivity.d0(LimitDetailActivity.this);
      LimitDetailActivity.e0(LimitDetailActivity.this);
      LimitDetailActivity.f0(LimitDetailActivity.this, null);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.limit.LimitDetailActivity
 * JD-Core Version:    0.7.0.1
 */