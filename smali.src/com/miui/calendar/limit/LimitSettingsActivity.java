package com.miui.calendar.limit;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AbsSpinner;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageButton;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.fragment.app.d;
import com.android.calendar.settings.j;
import com.miui.calendar.util.g;
import com.miui.calendar.util.g.f0;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0.j;
import e4.c;
import h4.h;
import h4.h.b;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import miuix.appcompat.app.m;
import miuix.appcompat.widget.Spinner;
import miuix.slidingwidget.widget.SlidingButton;
import o1.i;
import o1.i.d;

public class LimitSettingsActivity
  extends com.android.calendar.common.b
  implements View.OnClickListener
{
  private Context b;
  private String c;
  private boolean d;
  private int e;
  private String f;
  private String g;
  private View h;
  private View i;
  private SlidingButton j;
  private View k;
  private TextView l;
  private View m;
  private TextView n;
  private Spinner o;
  private Spinner p;
  private String[] q;
  private String[] r = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" };
  
  private void l0()
  {
    if (p0())
    {
      t0();
      l3.b.a(this.b);
      g.c(new g.f0());
      finish();
    }
    else
    {
      t0.f(this.b, 2131886824);
    }
  }
  
  private void m0()
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
    localImageButton2.setContentDescription(getResources().getString(2131886143));
    localImageButton1.setContentDescription(getResources().getString(2131886142));
    localImageButton1.setBackgroundResource(2131230890);
    localImageButton2.setBackgroundResource(2131230891);
    locala.H(localImageButton1);
    locala.E(localImageButton2);
    locala.A(2131886825);
  }
  
  private void n0()
  {
    this.n = ((TextView)findViewById(2131363372));
    String str1 = getString(2131886827);
    String str2 = getString(2131886826, new Object[] { str1 });
    c localc = new c(this);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str2);
    int i1 = getResources().getColor(2131099693);
    int i2 = str2.indexOf(str1);
    localSpannableStringBuilder.setSpan(new z0.j(localc, i1), i2, str1.length() + i2, 33);
    this.n.setText(localSpannableStringBuilder);
    this.n.setMovementMethod(LinkMovementMethod.getInstance());
  }
  
  private void o0()
  {
    this.h = findViewById(2131362168);
    this.i = findViewById(2131363028);
    this.j = ((SlidingButton)findViewById(2131363027));
    this.k = findViewById(2131363031);
    this.l = ((TextView)findViewById(2131363030));
    this.m = findViewById(2131362108);
    this.o = ((Spinner)findViewById(2131362169));
    this.p = ((Spinner)findViewById(2131362109));
    n0();
  }
  
  private boolean p0()
  {
    return (!TextUtils.isEmpty(this.c)) && (!TextUtils.equals(this.c, "未选择"));
  }
  
  private void r0()
  {
    this.c = a.i(this.b);
    this.d = b2.a.d(this.b, "preferences_limit_reminder", false);
    this.e = b2.a.a(this.b, "preferences_limit_reminder_minute", 480);
    this.f = b2.a.c(this.b, "preferences_limit_car_number", "0");
    Object localObject = a.e(this.b);
    this.q = ((String[])localObject);
    if (localObject != null)
    {
      localObject = new ArrayAdapter(this, 2131558738, 16908308, this.q);
      ((ArrayAdapter)localObject).setDropDownViewResource(2131558736);
      this.o.setAdapter((SpinnerAdapter)localObject);
    }
    localObject = new ArrayAdapter(this, 2131558738, 16908308, this.r);
    ((ArrayAdapter)localObject).setDropDownViewResource(2131558736);
    this.p.setAdapter((SpinnerAdapter)localObject);
  }
  
  private void s0()
  {
    Intent localIntent = getIntent();
    if (localIntent == null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("parseIntent(): intent INVALID:");
      localStringBuilder.append(localIntent);
      z.m("Cal:D:LimitSettingsActivity", localStringBuilder.toString());
      finish();
    }
    this.g = localIntent.getStringExtra("from");
  }
  
  private void t0()
  {
    b2.a.l(this.b, "preferences_limit_reminder", this.d);
    b2.a.i(this.b, "preferences_limit_reminder_minute", this.e);
    b2.a.k(this.b, "preferences_limit_car_number", this.f);
    b2.a.k(this.b, "preferences_limit_city", this.c);
  }
  
  private void u0()
  {
    i.k(this, new a());
  }
  
  private void v0()
  {
    Context localContext = this.b;
    Object localObject = new i();
    int i1 = this.e;
    localObject = new h(localContext, (h.b)localObject, i1 / 60, i1 % 60);
    ((h)localObject).setTitle(2131886822);
    ((h)localObject).show();
  }
  
  private void w0()
  {
    Object localObject = this.q;
    int i1;
    if (localObject != null) {
      i1 = Arrays.asList((Object[])localObject).indexOf(this.c);
    } else {
      i1 = 0;
    }
    localObject = this.o;
    int i2 = i1;
    if (i1 < 0) {
      i2 = 0;
    }
    ((AdapterView)localObject).setSelection(i2);
    this.o.setOnItemSelectedListener(new b());
    this.h.setOnClickListener(new c());
    v.j(this.h);
    localObject = this.r;
    if (localObject != null) {
      i1 = Arrays.asList((Object[])localObject).indexOf(this.f);
    } else {
      i1 = 0;
    }
    localObject = this.p;
    i2 = i1;
    if (i1 < 0) {
      i2 = 0;
    }
    ((AdapterView)localObject).setSelection(i2);
    this.p.setOnItemSelectedListener(new d());
    this.j.setChecked(this.d);
    this.i.setOnClickListener(new e());
    v.j(this.i);
    this.j.setOnCheckedChangeListener(new f());
    if (this.d)
    {
      this.k.setVisibility(0);
      this.n.setVisibility(0);
      this.k.setOnClickListener(new g());
      v.j(this.k);
      this.m.setVisibility(0);
      this.m.setOnClickListener(new h());
      v.j(this.m);
    }
    else
    {
      this.k.setVisibility(8);
      this.m.setVisibility(8);
      this.n.setVisibility(8);
    }
    this.l.setText(s0.n(this.b, this.e));
  }
  
  public void onClick(View paramView)
  {
    int i1 = paramView.getId();
    if (i1 != 2131361883)
    {
      if (i1 == 2131361889)
      {
        paramView = this.j;
        if ((paramView != null) && (paramView.isChecked()))
        {
          if (!j.m(this)) {
            u0();
          } else {
            l0();
          }
        }
        else {
          l0();
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
    setContentView(2131558664);
    s0();
    m0();
    o0();
    r0();
    w0();
    b2.a.l(this.b, "preferences_limit_setting_entered", true);
    HashMap localHashMap = new HashMap();
    if (TextUtils.isEmpty(this.g)) {
      paramBundle = "来自其他";
    } else {
      paramBundle = this.g;
    }
    localHashMap.put("from", paramBundle);
    g0.e("limit_setting_display", localHashMap);
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
      i.i(LimitSettingsActivity.this);
    }
    
    public void b()
    {
      LimitSettingsActivity.b0(LimitSettingsActivity.this);
    }
  }
  
  class b
    implements AdapterView.OnItemSelectedListener
  {
    b() {}
    
    public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      LimitSettingsActivity.Z(LimitSettingsActivity.this).setSelection(paramInt);
      if (LimitSettingsActivity.a0(LimitSettingsActivity.this) != null)
      {
        paramAdapterView = LimitSettingsActivity.this;
        LimitSettingsActivity.c0(paramAdapterView, LimitSettingsActivity.a0(paramAdapterView)[paramInt]);
      }
    }
    
    public void onNothingSelected(AdapterView<?> paramAdapterView) {}
  }
  
  class c
    implements View.OnClickListener
  {
    c() {}
    
    public void onClick(View paramView)
    {
      if (LimitSettingsActivity.Z(LimitSettingsActivity.this).getAdapter() == null) {
        return;
      }
      LimitSettingsActivity.Z(LimitSettingsActivity.this).performClick();
    }
  }
  
  class d
    implements AdapterView.OnItemSelectedListener
  {
    d() {}
    
    public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      LimitSettingsActivity.d0(LimitSettingsActivity.this).setSelection(paramInt);
      if (LimitSettingsActivity.e0(LimitSettingsActivity.this) != null)
      {
        paramAdapterView = LimitSettingsActivity.this;
        LimitSettingsActivity.f0(paramAdapterView, LimitSettingsActivity.e0(paramAdapterView)[paramInt]);
      }
    }
    
    public void onNothingSelected(AdapterView<?> paramAdapterView) {}
  }
  
  class e
    implements View.OnClickListener
  {
    e() {}
    
    public void onClick(View paramView)
    {
      paramView = LimitSettingsActivity.this;
      LimitSettingsActivity.h0(paramView, LimitSettingsActivity.g0(paramView) ^ true);
      LimitSettingsActivity.i0(LimitSettingsActivity.this);
    }
  }
  
  class f
    implements CompoundButton.OnCheckedChangeListener
  {
    f() {}
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      if (paramBoolean != LimitSettingsActivity.g0(LimitSettingsActivity.this))
      {
        LimitSettingsActivity.h0(LimitSettingsActivity.this, paramBoolean);
        LimitSettingsActivity.i0(LimitSettingsActivity.this);
      }
    }
  }
  
  class g
    implements View.OnClickListener
  {
    g() {}
    
    public void onClick(View paramView)
    {
      LimitSettingsActivity.j0(LimitSettingsActivity.this);
    }
  }
  
  class h
    implements View.OnClickListener
  {
    h() {}
    
    public void onClick(View paramView)
    {
      LimitSettingsActivity.d0(LimitSettingsActivity.this).performClick();
    }
  }
  
  class i
    implements h.b
  {
    i() {}
    
    public void a(h paramh, int paramInt1, int paramInt2, String paramString)
    {
      LimitSettingsActivity.k0(LimitSettingsActivity.this, paramInt1 * 60 + paramInt2);
      LimitSettingsActivity.i0(LimitSettingsActivity.this);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.limit.LimitSettingsActivity
 * JD-Core Version:    0.7.0.1
 */