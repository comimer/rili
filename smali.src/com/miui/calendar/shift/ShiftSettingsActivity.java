package com.miui.calendar.shift;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageButton;
import android.widget.TextView;
import com.android.calendar.common.Utils;
import com.android.calendar.settings.j;
import com.miui.calendar.util.g.q0;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.z;
import com.miui.calendar.view.DynamicLinearLayout;
import com.miui.calendar.view.DynamicLinearLayout.b;
import h4.c;
import h4.c.d;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import miuix.appcompat.app.l;
import miuix.appcompat.app.l.b;
import miuix.appcompat.app.m;
import miuix.pickerwidget.widget.NumberPicker;
import miuix.pickerwidget.widget.NumberPicker.OnValueChangeListener;
import miuix.slidingwidget.widget.SlidingButton;
import o1.i.d;

public class ShiftSettingsActivity
  extends com.android.calendar.common.b
  implements View.OnClickListener
{
  private Context b;
  private String c;
  private ShiftSchema d = new ShiftSchema();
  private View e;
  private SlidingButton f;
  private View g;
  private TextView h;
  private View i;
  private TextView j;
  private DynamicLinearLayout k;
  private com.miui.calendar.view.i l;
  private Dialog m;
  private com.miui.calendar.view.g n;
  private NumberPicker o;
  private View p;
  private TextView q;
  
  private void i0()
  {
    k4.d.j(this, this.d);
    k4.d.l(this);
    l3.b.a(this.b);
    com.miui.calendar.util.g.c(new g.q0());
    finish();
  }
  
  private void j0()
  {
    miuix.appcompat.app.a locala = J();
    if (locala == null) {
      return;
    }
    locala.x(8);
    ImageButton localImageButton1 = new ImageButton(this);
    ImageButton localImageButton2 = new ImageButton(this);
    localImageButton1.setId(2131361883);
    localImageButton2.setId(2131361889);
    localImageButton1.setOnClickListener(this);
    localImageButton2.setOnClickListener(this);
    localImageButton1.setBackgroundResource(2131230890);
    localImageButton2.setBackgroundResource(2131230891);
    localImageButton2.setContentDescription(getResources().getString(2131886143));
    localImageButton1.setContentDescription(getResources().getString(2131886142));
    locala.H(localImageButton1);
    locala.E(localImageButton2);
    locala.A(2131887501);
  }
  
  private void k0()
  {
    this.e = findViewById(2131363028);
    this.f = ((SlidingButton)findViewById(2131363027));
    this.g = findViewById(2131362624);
    this.h = ((TextView)findViewById(2131362623));
    this.i = findViewById(2131363242);
    this.j = ((TextView)findViewById(2131363241));
    this.p = findViewById(2131362372);
    this.q = ((TextView)findViewById(2131363033));
    this.k = ((DynamicLinearLayout)findViewById(2131363036));
    k localk = new k(null);
    this.l = localk;
    this.k.setAdapter(localk);
  }
  
  private void l0()
  {
    ShiftSchema localShiftSchema = k4.d.c(this.b);
    this.d = localShiftSchema;
    if (localShiftSchema.startTimeMillis <= 0L) {
      localShiftSchema.startTimeMillis = System.currentTimeMillis();
    }
    n0();
  }
  
  private void m0()
  {
    Intent localIntent = getIntent();
    if (localIntent == null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("parseIntent(): intent INVALID:");
      localStringBuilder.append(localIntent);
      z.m("Cal:D:NewShiftSettingsActivity", localStringBuilder.toString());
      finish();
    }
    this.c = localIntent.getStringExtra("from");
  }
  
  private void n0()
  {
    Object localObject = this.d;
    ShiftReminderSchema[] arrayOfShiftReminderSchema = ((ShiftSchema)localObject).reminders;
    int i1 = 0;
    int i2 = 0;
    if (arrayOfShiftReminderSchema == null)
    {
      ((ShiftSchema)localObject).reminders = new ShiftReminderSchema[((ShiftSchema)localObject).interval];
      for (i1 = i2;; i1++)
      {
        localObject = this.d.reminders;
        if (i1 >= localObject.length) {
          break;
        }
        localObject[i1] = new ShiftReminderSchema();
      }
    }
    int i3 = arrayOfShiftReminderSchema.length;
    i2 = ((ShiftSchema)localObject).interval;
    if (i3 != i2)
    {
      arrayOfShiftReminderSchema = new ShiftReminderSchema[i2];
      while (i1 < i2)
      {
        localObject = this.d.reminders;
        if (i1 < localObject.length) {
          arrayOfShiftReminderSchema[i1] = localObject[i1];
        } else {
          arrayOfShiftReminderSchema[i1] = new ShiftReminderSchema();
        }
        i1++;
      }
      this.d.reminders = arrayOfShiftReminderSchema;
    }
  }
  
  private void o0()
  {
    Object localObject = this.m;
    if ((localObject != null) && (((Dialog)localObject).isShowing())) {
      return;
    }
    localObject = new NumberPicker(this.b);
    this.o = ((NumberPicker)localObject);
    ((NumberPicker)localObject).setMinValue(1);
    this.o.setMaxValue(60);
    this.o.setWrapSelectorWheel(true);
    this.o.setLabel(getString(2131887494));
    this.o.setValue(this.d.interval);
    this.o.setOnValueChangedListener(new g());
    this.n = com.miui.calendar.view.g.c(new h());
    localObject = new l.b(this.b).I(this.o).G(getString(2131887492, new Object[] { Integer.valueOf(this.d.interval) })).z(17039370, this.n).r(17039360, null).a();
    this.m = ((Dialog)localObject);
    ((Dialog)localObject).show();
    this.n.b(this.m);
  }
  
  private void p0()
  {
    o1.i.k(this, new a());
  }
  
  private void q0(final int paramInt)
  {
    b localb = new b(this.b, new j(paramInt), this.d.reminders[paramInt]);
    localb.setTitle(getString(2131887497, new Object[] { Integer.valueOf(paramInt + 1) }));
    localb.show();
  }
  
  private void r0()
  {
    Object localObject = Calendar.getInstance();
    long l1 = this.d.startTimeMillis;
    if (l1 > 0L) {
      ((Calendar)localObject).setTimeInMillis(l1);
    }
    localObject = new c(this, new i(), 0, ((Calendar)localObject).get(1), ((Calendar)localObject).get(2), ((Calendar)localObject).get(5));
    ((c)localObject).setTitle(2131887502);
    ((l)localObject).setCanceledOnTouchOutside(true);
    ((c)localObject).show();
  }
  
  private void s0()
  {
    this.f.setChecked(this.d.isRemind);
    this.e.setOnClickListener(new b());
    this.f.setOnCheckedChangeListener(new c());
    if (this.d.isRemind)
    {
      this.g.setVisibility(0);
      this.g.setOnClickListener(new d());
      this.i.setVisibility(0);
      this.i.setOnClickListener(new e());
      this.k.setVisibility(0);
      this.p.setVisibility(0);
      this.q.setVisibility(0);
      this.k.setOnItemClickListener(new f());
    }
    else
    {
      this.p.setVisibility(8);
      this.q.setVisibility(8);
      this.g.setVisibility(8);
      this.i.setVisibility(8);
      this.k.setVisibility(8);
      this.k.setOnItemClickListener(null);
    }
    this.h.setText(getString(2131887492, new Object[] { Integer.valueOf(this.d.interval) }));
    this.j.setText(Utils.R(this, this.d.startTimeMillis, true, true));
    this.l.c();
  }
  
  public void onClick(View paramView)
  {
    int i1 = paramView.getId();
    if (i1 != 2131361883)
    {
      if (i1 == 2131361889)
      {
        paramView = this.f;
        if ((paramView != null) && (paramView.isChecked()))
        {
          if (!j.m(this)) {
            p0();
          } else {
            i0();
          }
        }
        else {
          i0();
        }
      }
    }
    else {
      finish();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.b = this;
    setContentView(2131558938);
    m0();
    j0();
    k0();
    l0();
    s0();
    HashMap localHashMap = new HashMap();
    if (TextUtils.isEmpty(this.c)) {
      paramBundle = "来自其他";
    } else {
      paramBundle = this.c;
    }
    localHashMap.put("from", paramBundle);
    g0.e("shift_setting_display", localHashMap);
  }
  
  protected void onDestroy()
  {
    NumberPicker localNumberPicker = this.o;
    if (localNumberPicker != null)
    {
      localNumberPicker.setOnValueChangedListener(null);
      this.o = null;
    }
    super.onDestroy();
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
  }
  
  class a
    implements i.d
  {
    a() {}
    
    public void a()
    {
      o1.i.i(ShiftSettingsActivity.this);
    }
    
    public void b()
    {
      ShiftSettingsActivity.Z(ShiftSettingsActivity.this);
    }
  }
  
  class b
    implements View.OnClickListener
  {
    b() {}
    
    public void onClick(View paramView)
    {
      ShiftSettingsActivity.Y(ShiftSettingsActivity.this).isRemind ^= true;
      ShiftSettingsActivity.a0(ShiftSettingsActivity.this);
    }
  }
  
  class c
    implements CompoundButton.OnCheckedChangeListener
  {
    c() {}
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      if (paramBoolean != ShiftSettingsActivity.Y(ShiftSettingsActivity.this).isRemind)
      {
        ShiftSettingsActivity.Y(ShiftSettingsActivity.this).isRemind = paramBoolean;
        ShiftSettingsActivity.a0(ShiftSettingsActivity.this);
      }
    }
  }
  
  class d
    implements View.OnClickListener
  {
    d() {}
    
    public void onClick(View paramView)
    {
      ShiftSettingsActivity.b0(ShiftSettingsActivity.this);
    }
  }
  
  class e
    implements View.OnClickListener
  {
    e() {}
    
    public void onClick(View paramView)
    {
      ShiftSettingsActivity.c0(ShiftSettingsActivity.this);
    }
  }
  
  class f
    implements DynamicLinearLayout.b
  {
    f() {}
    
    public void a(int paramInt)
    {
      ShiftSettingsActivity.d0(ShiftSettingsActivity.this, paramInt);
    }
  }
  
  class g
    implements NumberPicker.OnValueChangeListener
  {
    g() {}
    
    public void onValueChange(NumberPicker paramNumberPicker, int paramInt1, int paramInt2)
    {
      if (ShiftSettingsActivity.e0(ShiftSettingsActivity.this) != null) {
        ShiftSettingsActivity.e0(ShiftSettingsActivity.this).setTitle(ShiftSettingsActivity.this.getString(2131887492, new Object[] { Integer.valueOf(paramNumberPicker.getValue()) }));
      }
    }
  }
  
  class h
    implements DialogInterface.OnClickListener
  {
    h() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      if (ShiftSettingsActivity.f0(ShiftSettingsActivity.this) != null)
      {
        ShiftSettingsActivity.Y(ShiftSettingsActivity.this).interval = ShiftSettingsActivity.f0(ShiftSettingsActivity.this).getValue();
        ShiftSettingsActivity.g0(ShiftSettingsActivity.this);
        ShiftSettingsActivity.a0(ShiftSettingsActivity.this);
      }
    }
  }
  
  class i
    implements c.d
  {
    i() {}
    
    public void a(c paramc, int paramInt1, boolean paramBoolean, int paramInt2, int paramInt3, int paramInt4, String paramString)
    {
      paramc = Calendar.getInstance();
      paramc.set(1, paramInt2);
      paramc.set(2, paramInt3);
      paramc.set(5, paramInt4);
      ShiftSettingsActivity.Y(ShiftSettingsActivity.this).startTimeMillis = paramc.getTimeInMillis();
      ShiftSettingsActivity.a0(ShiftSettingsActivity.this);
    }
  }
  
  class j
    implements b.d
  {
    j(int paramInt) {}
    
    public void a(h4.g paramg, int paramInt1, int paramInt2)
    {
      ShiftSettingsActivity.Y(ShiftSettingsActivity.this).reminders[paramInt].type = paramInt1;
      ShiftSettingsActivity.Y(ShiftSettingsActivity.this).reminders[paramInt].reminderMinutes = paramInt2;
      ShiftSettingsActivity.a0(ShiftSettingsActivity.this);
    }
  }
  
  private class k
    extends com.miui.calendar.view.i
  {
    private k() {}
    
    public int a()
    {
      if (ShiftSettingsActivity.Y(ShiftSettingsActivity.this).reminders == null) {
        return 0;
      }
      return ShiftSettingsActivity.Y(ShiftSettingsActivity.this).reminders.length;
    }
    
    public View b(int paramInt, View paramView)
    {
      View localView;
      Object localObject;
      if (paramView == null)
      {
        localView = LayoutInflater.from(ShiftSettingsActivity.h0(ShiftSettingsActivity.this)).inflate(2131558934, null);
        paramView = new a(localView);
        localView.setTag(paramView);
      }
      else
      {
        localObject = (a)paramView.getTag();
        localView = paramView;
        paramView = (View)localObject;
      }
      ShiftReminderSchema localShiftReminderSchema = ShiftSettingsActivity.Y(ShiftSettingsActivity.this).reminders[paramInt];
      paramView.b.setText(ShiftSettingsActivity.this.getString(2131887497, new Object[] { Integer.valueOf(paramInt + 1) }));
      if (localShiftReminderSchema.type == 0)
      {
        paramView.c.setText(2131887506);
      }
      else
      {
        localObject = paramView.c;
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(ShiftReminderSchema.a.a(ShiftSettingsActivity.h0(ShiftSettingsActivity.this), localShiftReminderSchema.type));
        localStringBuilder.append(" ");
        localStringBuilder.append(s0.q(ShiftSettingsActivity.h0(ShiftSettingsActivity.this), localShiftReminderSchema.reminderMinutes, true));
        ((TextView)localObject).setText(localStringBuilder.toString());
      }
      paramInt = ShiftSettingsActivity.h0(ShiftSettingsActivity.this).getResources().getDimensionPixelSize(2131165537);
      paramView.a.setPadding(paramInt, 0, paramInt, 0);
      return localView;
    }
    
    private class a
    {
      public View a;
      public TextView b;
      public TextView c;
      
      public a(View paramView)
      {
        this.a = paramView.findViewById(2131363074);
        this.b = ((TextView)paramView.findViewById(2131362666));
        this.c = ((TextView)paramView.findViewById(2131362336));
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.shift.ShiftSettingsActivity
 * JD-Core Version:    0.7.0.1
 */