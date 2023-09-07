package com.miui.calendar.detail;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import com.android.calendar.common.b;
import com.android.calendar.common.k;
import com.miui.calendar.util.a0;
import com.miui.calendar.util.g;
import com.miui.calendar.util.g.z;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import h4.d.d;
import java.util.Calendar;
import java.util.Formatter;
import java.util.Locale;
import miuix.appcompat.app.l;
import miuix.appcompat.app.m;
import miuix.appcompat.widget.Spinner;

public class FortuneSettingsActivity
  extends b
  implements View.OnClickListener
{
  private Context b;
  private EditText c;
  private Spinner d;
  private Spinner e;
  private TextView f;
  private h4.d g;
  private int h = 0;
  private String i;
  private Calendar j;
  private int k;
  private int l;
  private int[] m;
  private int[] n;
  private View o;
  private View p;
  private View q;
  
  private int g0(int paramInt)
  {
    for (int i1 = 0;; i1++)
    {
      int[] arrayOfInt = this.m;
      if (i1 >= arrayOfInt.length) {
        break;
      }
      if (arrayOfInt[i1] == paramInt) {
        return i1;
      }
    }
    return 0;
  }
  
  private int h0(int paramInt)
  {
    for (int i1 = 0;; i1++)
    {
      int[] arrayOfInt = this.n;
      if (i1 >= arrayOfInt.length) {
        break;
      }
      if (arrayOfInt[i1] == paramInt) {
        return i1;
      }
    }
    return 0;
  }
  
  private void i0()
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
  }
  
  private void j0()
  {
    this.c = ((EditText)findViewById(2131362858));
    this.o = findViewById(2131362495);
    this.p = findViewById(2131362034);
    this.q = findViewById(2131362725);
    this.d = ((Spinner)findViewById(2131362494));
    this.e = ((Spinner)findViewById(2131362724));
    ArrayAdapter localArrayAdapter = new ArrayAdapter(this, 2131558738, 16908308, getResources().getStringArray(2130903077));
    localArrayAdapter.setDropDownViewResource(2131558736);
    this.d.setAdapter(localArrayAdapter);
    localArrayAdapter = new ArrayAdapter(this, 2131558738, 16908308, getResources().getStringArray(2130903079));
    localArrayAdapter.setDropDownViewResource(2131558736);
    this.e.setAdapter(localArrayAdapter);
    this.f = ((TextView)findViewById(2131362033));
  }
  
  private boolean k0()
  {
    if (TextUtils.isEmpty(this.c.getText().toString()))
    {
      t0.c(this, getString(2131886652));
      return false;
    }
    return true;
  }
  
  private void l0()
  {
    this.j = Calendar.getInstance();
    this.m = getResources().getIntArray(2130903078);
    this.n = getResources().getIntArray(2130903080);
    this.i = b2.a.c(this.b, "preferences_fortune_name", "");
    this.k = b2.a.a(this.b, "preferences_fortune_gender", 1);
    this.l = b2.a.a(this.b, "preferences_fortune_love", 0);
    long l1 = b2.a.b(this.b, "preferences_fortune_birthday", 0L);
    if (l1 != 0L) {
      this.j.setTimeInMillis(l1);
    }
    this.h = b2.a.a(this.b, "preferences_fortune_birthday_type", 0);
  }
  
  private void m0()
  {
    h4.d locald = this.g;
    if (locald != null) {
      locald.dismiss();
    }
    locald = new h4.d(this.b, new d(), this.h, this.j.get(1), this.j.get(2), this.j.get(5), k.f(), System.currentTimeMillis());
    this.g = locald;
    locald.C();
    this.g.setTitle(getResources().getString(2131886637));
    this.g.setCanceledOnTouchOutside(true);
    this.g.show();
  }
  
  private void n0()
  {
    String str = this.c.getText().toString();
    if (!TextUtils.isEmpty(str)) {
      b2.a.k(this.b, "preferences_fortune_name", str);
    }
    int i1 = this.m[this.d.getSelectedItemPosition()];
    long l1 = this.j.getTimeInMillis();
    int i2 = this.n[this.e.getSelectedItemPosition()];
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("saveSettings() name=");
    localStringBuilder.append(str);
    localStringBuilder.append(",gender=");
    localStringBuilder.append(i1);
    localStringBuilder.append(",birthdayInMills=");
    localStringBuilder.append(l1);
    z.a("Cal:D:FortuneSettingsActivity", localStringBuilder.toString());
    b2.a.i(this.b, "preferences_fortune_gender", i1);
    b2.a.j(this.b, "preferences_fortune_birthday", l1);
    b2.a.i(this.b, "preferences_fortune_birthday_type", this.h);
    b2.a.i(this.b, "preferences_fortune_love", i2);
  }
  
  private void o0()
  {
    Object localObject;
    if (this.h == 0)
    {
      localObject = new Formatter(new StringBuilder(50), Locale.getDefault());
      localObject = DateUtils.formatDateRange(this.b, (Formatter)localObject, this.j.getTimeInMillis(), this.j.getTimeInMillis(), 65556).toString();
    }
    else
    {
      localObject = a0.d(this.j.get(1), this.j.get(2), this.j.get(5));
      localObject = a0.m(getResources(), localObject[0], localObject[1] - 1, localObject[2]);
    }
    this.f.setText((CharSequence)localObject);
  }
  
  private void p0()
  {
    this.c.setText(this.i);
    this.o.setOnClickListener(new a());
    this.q.setOnClickListener(new b());
    v.j(this.o);
    this.d.setSelection(g0(this.k));
    this.e.setSelection(h0(this.l));
    final InputMethodManager localInputMethodManager = (InputMethodManager)getSystemService("input_method");
    this.p.setOnClickListener(new c(localInputMethodManager));
    v.j(this.p);
    o0();
  }
  
  public void onClick(View paramView)
  {
    int i1 = paramView.getId();
    if (i1 != 2131361883)
    {
      if ((i1 == 2131361889) && (k0()))
      {
        n0();
        g.c(new g.z());
        finish();
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
    setContentView(2131558571);
    i0();
    j0();
    l0();
    p0();
  }
  
  protected void onPause()
  {
    super.onPause();
    x0.l0(this, this.c);
  }
  
  protected void onResume()
  {
    super.onResume();
  }
  
  class a
    implements View.OnClickListener
  {
    a() {}
    
    public void onClick(View paramView)
    {
      FortuneSettingsActivity.Y(FortuneSettingsActivity.this).performClick();
    }
  }
  
  class b
    implements View.OnClickListener
  {
    b() {}
    
    public void onClick(View paramView)
    {
      FortuneSettingsActivity.Z(FortuneSettingsActivity.this).performClick();
    }
  }
  
  class c
    implements View.OnClickListener
  {
    c(InputMethodManager paramInputMethodManager) {}
    
    public void onClick(View paramView)
    {
      localInputMethodManager.hideSoftInputFromWindow(paramView.getWindowToken(), 0);
      FortuneSettingsActivity.a0(FortuneSettingsActivity.this).postDelayed(new h(this), 200L);
    }
  }
  
  class d
    implements d.d
  {
    d() {}
    
    public void a(h4.d paramd, int paramInt1, boolean paramBoolean, int paramInt2, int paramInt3, int paramInt4, String paramString)
    {
      FortuneSettingsActivity.c0(FortuneSettingsActivity.this, paramInt1);
      FortuneSettingsActivity.d0(FortuneSettingsActivity.this).set(1, paramInt2);
      FortuneSettingsActivity.d0(FortuneSettingsActivity.this).set(2, paramInt3);
      FortuneSettingsActivity.d0(FortuneSettingsActivity.this).set(5, paramInt4);
      FortuneSettingsActivity.e0(FortuneSettingsActivity.this);
      FortuneSettingsActivity.f0(FortuneSettingsActivity.this).dismiss();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.detail.FortuneSettingsActivity
 * JD-Core Version:    0.7.0.1
 */