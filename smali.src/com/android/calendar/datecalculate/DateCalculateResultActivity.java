package com.android.calendar.datecalculate;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.g.n;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Calendar;
import miuix.appcompat.app.m;
import org.greenrobot.eventbus.ThreadMode;
import pc.c;
import pc.l;
import z3.f;

public class DateCalculateResultActivity
  extends com.android.calendar.common.b
  implements View.OnClickListener
{
  private TextView D;
  private int E = 0;
  public int F = 0;
  private int G;
  private Context H;
  private Calendar b;
  private Calendar c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private ArrayList<String> i;
  private String j;
  private String k;
  private String l;
  private String m;
  private TextView n;
  private TextView o;
  private TextView p;
  private View q;
  private TextView r;
  private TextView v;
  private View w;
  private View x;
  private View y;
  private TextView z;
  
  private void Y()
  {
    Object localObject1 = this.c;
    if (localObject1 == null)
    {
      z.m("Cal:D:DateCalculateResultActivity", "dateCalculate(): mDateCalculate INVALID");
      finish();
      return;
    }
    int i1 = this.G;
    if (i1 == 0) {
      this.b = s0.e(((Calendar)localObject1).getTimeInMillis(), this.E, Integer.parseInt(this.d));
    } else if (i1 == 2) {
      this.b = ((Calendar)localObject1);
    }
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("dateCalculate(): mDesiredDay = ");
    ((StringBuilder)localObject1).append(this.b.getTimeInMillis());
    z.a("Cal:D:DateCalculateResultActivity", ((StringBuilder)localObject1).toString());
    this.e = Utils.Q(this.H, this.b.get(1), this.b.get(2), this.b.get(5), true, false);
    this.g = a4.d.l(this.H, this.b);
    boolean bool = y.q(this.H);
    Object localObject3 = "";
    if (bool)
    {
      localObject1 = this.H.getResources();
      if (y.f(this)) {
        i1 = 2131886854;
      } else {
        i1 = 2131886853;
      }
      this.f = ((Resources)localObject1).getString(i1, new Object[] { a4.d.g(this.b) });
    }
    else
    {
      this.f = "";
    }
    if (y.p(this.H)) {
      this.k = a4.d.a(this.b);
    } else {
      this.k = "";
    }
    if (y.t(this.H)) {
      this.h = Utils.v(this.H, this.b);
    } else {
      this.h = "";
    }
    if (y.s(this.H)) {
      this.i = f.a(this.H, this.b.getTimeInMillis());
    }
    if (this.i == null) {
      this.i = new ArrayList();
    }
    if (y.r(this.H)) {
      this.j = f.d(this.b.getTimeInMillis());
    } else {
      this.j = "";
    }
    if (a4.d.t(this.H))
    {
      try
      {
        localObject1 = a4.d.f(this.b.getTimeInMillis());
        if ((localObject1 == null) || (localObject1.length != 2)) {
          break label440;
        }
        this.l = localObject1[0];
        this.m = localObject1[1];
      }
      catch (Exception localException)
      {
        z.d("Cal:D:DateCalculateResultActivity", "dateCalculate()", localException);
      }
    }
    else
    {
      this.l = "";
      this.m = "";
    }
    label440:
    i1 = this.G;
    Object localObject2;
    if (i1 == 0)
    {
      localObject3 = Utils.Q(this.H, this.c.get(1), this.c.get(2), this.c.get(5), true, false);
      localObject2 = localObject3;
      if (s0.z(this.c.getTimeInMillis()))
      {
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append((String)localObject3);
        ((StringBuilder)localObject2).append(this.H.getResources().getString(2131886423));
        localObject2 = ((StringBuilder)localObject2).toString();
      }
      localObject3 = localObject2;
      if (this.E == 0) {
        localObject2 = this.H.getResources().getQuantityString(2131755062, Integer.parseInt(this.d), new Object[] { Integer.valueOf(Integer.parseInt(this.d)) });
      } else {
        localObject2 = this.H.getResources().getQuantityString(2131755063, Integer.parseInt(this.d), new Object[] { Integer.valueOf(Integer.parseInt(this.d)) });
      }
      this.n.setText(this.e);
      this.o.setText(String.format("%s %s", new Object[] { this.f, miuix.pickerwidget.date.b.a(getApplicationContext(), this.b.getTimeInMillis(), 1024) }));
    }
    else if (i1 == 2)
    {
      if (this.F == 0)
      {
        if (s0.z(this.b.getTimeInMillis()))
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append(this.e);
          ((StringBuilder)localObject2).append(this.H.getResources().getString(2131886423));
          localObject2 = ((StringBuilder)localObject2).toString();
        }
        else
        {
          localObject2 = this.e;
        }
        localObject3 = localObject2;
        localObject2 = this.H.getResources();
        if (y.f(this)) {
          i1 = 2131887553;
        } else {
          i1 = 2131887552;
        }
        localObject2 = ((Resources)localObject2).getString(i1);
        this.n.setText(this.f);
        this.o.setText(String.format("%s%s", new Object[] { this.e, miuix.pickerwidget.date.b.a(getApplicationContext(), this.b.getTimeInMillis(), 1024) }));
      }
      else
      {
        if (s0.z(this.b.getTimeInMillis()))
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append(this.f);
          ((StringBuilder)localObject2).append(this.H.getResources().getString(2131886423));
          localObject2 = ((StringBuilder)localObject2).toString();
        }
        else
        {
          localObject2 = this.f;
        }
        localObject3 = localObject2;
        localObject2 = this.H.getResources();
        if (y.f(this)) {
          i1 = 2131886870;
        } else {
          i1 = 2131886869;
        }
        localObject2 = ((Resources)localObject2).getString(i1);
        this.n.setText(this.e);
        this.o.setText(String.format("%s %s", new Object[] { this.f, miuix.pickerwidget.date.b.a(getApplicationContext(), this.b.getTimeInMillis(), 1024) }));
      }
    }
    else
    {
      localObject2 = "";
    }
    miuix.appcompat.app.a locala = J();
    if (locala != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append((String)localObject3);
      localStringBuilder.append(" ");
      localStringBuilder.append((String)localObject2);
      locala.z(localStringBuilder.toString());
    }
    if ((TextUtils.isEmpty(this.g)) && (TextUtils.isEmpty(this.h)))
    {
      localObject2 = this.i;
      if ((localObject2 != null) && (((ArrayList)localObject2).size() == 0) && (TextUtils.isEmpty(this.j)) && (TextUtils.isEmpty(this.k)))
      {
        this.p.setVisibility(8);
        break label1164;
      }
    }
    this.p.setVisibility(0);
    Utils.b(this.H, this.p, this.g, this.h, this.i, this.k, this.j, this.b);
    label1164:
    if (TextUtils.isEmpty(this.l))
    {
      this.w.setVisibility(8);
      this.x.setVisibility(8);
      this.y.setVisibility(8);
      this.q.setVisibility(8);
    }
    else
    {
      this.w.setVisibility(0);
      this.x.setVisibility(0);
      this.y.setVisibility(0);
      this.q.setVisibility(0);
      this.r.setText(this.l);
      this.v.setText(this.m);
    }
  }
  
  private void Z()
  {
    this.c = ((Calendar)getIntent().getSerializableExtra("date_calculate"));
    this.E = getIntent().getIntExtra("direction", 0);
    this.d = getIntent().getStringExtra("days");
    this.F = getIntent().getIntExtra("date_type", 0);
    this.G = getIntent().getIntExtra("extra_key_calculate_type", 0);
  }
  
  private void a0()
  {
    this.n = ((TextView)findViewById(2131363184));
    this.o = ((TextView)findViewById(2131362736));
    this.p = ((TextView)findViewById(2131362536));
    this.w = findViewById(2131362552);
    this.x = findViewById(2131362559);
    this.y = findViewById(2131362554);
    this.q = findViewById(2131362555);
    this.r = ((TextView)findViewById(2131362556));
    this.v = ((TextView)findViewById(2131362553));
    this.z = ((TextView)findViewById(2131363518));
    this.D = ((TextView)findViewById(2131361915));
    this.z.setOnClickListener(this);
    v.f(this.z, false);
    this.D.setOnClickListener(this);
    v.f(this.D, false);
  }
  
  private void b0()
  {
    long l1 = this.b.getTimeInMillis();
    if (this.b.getTimeInMillis() < 0L) {
      l1 = 28800000L;
    }
    Utils.y0(this.H, l1, 4, false);
  }
  
  public void onClick(View paramView)
  {
    int i1 = paramView.getId();
    if (i1 != 2131361915)
    {
      if (i1 == 2131363518) {
        b0();
      }
    }
    else {
      Utils.j(this, this.b);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    z.a("Cal:D:DateCalculateResultActivity", "onCreate()");
    super.onCreate(paramBundle);
    c.c().o(this);
    setContentView(2131558443);
    this.H = this;
    Z();
    a0();
    Y();
    X();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    c.c().q(this);
  }
  
  @l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.n paramn)
  {
    if (paramn == null) {
      return;
    }
    if (this.G == 2) {
      finish();
    } else {
      Y();
    }
  }
  
  protected void onPause()
  {
    z.a("Cal:D:DateCalculateResultActivity", "onPause()");
    super.onPause();
  }
  
  protected void onResume()
  {
    z.a("Cal:D:DateCalculateResultActivity", "onResume()");
    super.onResume();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.datecalculate.DateCalculateResultActivity
 * JD-Core Version:    0.7.0.1
 */