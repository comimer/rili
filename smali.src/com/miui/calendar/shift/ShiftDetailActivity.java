package com.miui.calendar.shift;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import com.android.calendar.common.Utils;
import com.android.calendar.common.b;
import com.miui.calendar.util.StatusBar;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import java.util.Calendar;
import java.util.Formatter;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import miuix.appcompat.app.m;

public class ShiftDetailActivity
  extends b
{
  private TextView b;
  private TextView c;
  private View d;
  private TextView e;
  private TextView f;
  private View g;
  private TextView h;
  private TextView i;
  private TextView j;
  private miuix.appcompat.app.a k;
  private Context l;
  private ShiftSchema m;
  private String n;
  private boolean o;
  
  private void Z()
  {
    Object localObject = J();
    this.k = ((miuix.appcompat.app.a)localObject);
    if (localObject == null) {
      return;
    }
    localObject = new ImageButton(this);
    ((View)localObject).setContentDescription(getString(2131887419));
    ((View)localObject).setOnClickListener(new k4.a(this));
    int i1;
    if (x0.s0(getApplicationContext())) {
      i1 = 2131232007;
    } else {
      i1 = 2131232010;
    }
    ((View)localObject).setBackgroundResource(i1);
    this.k.E((View)localObject);
    this.k.A(2131887498);
  }
  
  private void a0()
  {
    this.b = ((TextView)findViewById(2131362668));
    this.c = ((TextView)findViewById(2131363365));
    this.d = findViewById(2131363401);
    this.e = ((TextView)findViewById(2131362669));
    this.f = ((TextView)findViewById(2131363366));
    this.g = findViewById(2131361916);
    this.h = ((TextView)findViewById(2131362667));
    this.i = ((TextView)findViewById(2131363362));
    this.j = ((TextView)findViewById(2131362336));
  }
  
  private void c0()
  {
    Intent localIntent = getIntent();
    if (localIntent == null)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("parseIntent(): intent INVALID:");
      ((StringBuilder)localObject).append(localIntent);
      z.m("Cal:D:ShiftDetailActivity", ((StringBuilder)localObject).toString());
      finish();
    }
    Object localObject = localIntent.getStringExtra("from");
    this.n = ((String)localObject);
    if ("来自通知".equals(localObject)) {
      this.o = true;
    }
  }
  
  private void d0()
  {
    long l1 = System.currentTimeMillis();
    long l2 = l1 + 86400000L;
    long l3 = l2 + 86400000L;
    Object localObject1 = new Formatter(new StringBuilder(50), Locale.getDefault());
    Object localObject2 = DateUtils.formatDateRange(this.l, (Formatter)localObject1, l1, l1, 18, Calendar.getInstance().getTimeZone().getID());
    localObject1 = this.k;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getString(2131886828));
    localStringBuilder.append(" ");
    localStringBuilder.append(((Formatter)localObject2).toString());
    ((androidx.appcompat.app.a)localObject1).z(localStringBuilder.toString());
    if (!this.m.isStartShift(l3))
    {
      this.b.setText(2131887486);
      this.c.setText(s0.g(this.l, this.m.startTimeMillis));
      this.d.setVisibility(4);
      this.g.setVisibility(4);
    }
    else
    {
      this.d.setVisibility(0);
      this.g.setVisibility(0);
      if (this.m.isStartShift(l1))
      {
        if (this.m.getShiftType(l1) == 0)
        {
          this.b.setText(2131887487);
          this.c.setText(ShiftReminderSchema.a.a(this, 0));
        }
        else
        {
          this.b.setText(getString(2131887488, new Object[] { ShiftReminderSchema.a.a(this, this.m.getShiftType(l1)) }));
          this.c.setText(s0.q(this.l, this.m.getShiftReminderMinutes(l1), true));
        }
      }
      else
      {
        this.b.setText(2131887487);
        this.c.setText(2131887491);
      }
      if (this.m.isStartShift(l2))
      {
        if (this.m.getShiftType(l2) == 0)
        {
          this.e.setText(2131887489);
          this.f.setText(ShiftReminderSchema.a.a(this, 0));
        }
        else
        {
          this.e.setText(getString(2131887490, new Object[] { ShiftReminderSchema.a.a(this, this.m.getShiftType(l2)) }));
          this.f.setText(s0.q(this.l, this.m.getShiftReminderMinutes(l2), true));
        }
      }
      else
      {
        this.e.setText(2131887489);
        this.f.setText(2131887491);
      }
      if (this.m.isStartShift(l3))
      {
        if (this.m.getShiftType(l3) == 0)
        {
          this.h.setText(2131887484);
          this.i.setText(ShiftReminderSchema.a.a(this, 0));
        }
        else
        {
          this.h.setText(getString(2131887485, new Object[] { ShiftReminderSchema.a.a(this, this.m.getShiftType(l3)) }));
          this.i.setText(s0.q(this.l, this.m.getShiftReminderMinutes(l3), true));
        }
      }
      else
      {
        this.h.setText(2131887484);
        this.i.setText(2131887491);
      }
    }
    localObject1 = new Formatter(new StringBuilder(50), Locale.getDefault());
    localObject2 = this.l;
    l3 = this.m.startTimeMillis;
    localObject1 = DateUtils.formatDateRange((Context)localObject2, (Formatter)localObject1, l3, l3, 20, Calendar.getInstance().getTimeZone().getID());
    if (this.m.isStartShift(l1)) {
      this.j.setText(getString(2131887481, new Object[] { Integer.valueOf(this.m.interval), Integer.valueOf(this.m.getReminderIndex(l1) + 1), ((Formatter)localObject1).toString() }));
    } else {
      this.j.setText(getString(2131887483, new Object[] { Integer.valueOf(this.m.interval), ((Formatter)localObject1).toString() }));
    }
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    if (this.o) {
      Utils.x0(this);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131558933);
    this.l = this;
    c0();
    Z();
    a0();
    new StatusBar(this).a(x0.s0(getApplicationContext()));
    HashMap localHashMap = new HashMap();
    if (TextUtils.isEmpty(this.n)) {
      paramBundle = "来自其他";
    } else {
      paramBundle = this.n;
    }
    localHashMap.put("from", paramBundle);
    g0.e("shift_detail_display", localHashMap);
    X();
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    this.m = k4.d.c(this);
    d0();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.shift.ShiftDetailActivity
 * JD-Core Version:    0.7.0.1
 */