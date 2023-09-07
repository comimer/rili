package com.xiaomi.passport.ui.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import b7.o.a;
import n5.e;

public class CountryCodeListItem
  extends LinearLayout
{
  private TextView a;
  private TextView b;
  private TextView c;
  private View d;
  private View e;
  
  public CountryCodeListItem(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void a(o.a parama, String paramString, boolean paramBoolean)
  {
    this.a.setText(parama.b);
    this.b.setText(parama.c);
    if (!paramBoolean) {
      this.e.setVisibility(8);
    }
    if (!TextUtils.isEmpty(paramString))
    {
      this.c.setText(paramString);
      this.d.setVisibility(0);
    }
    else
    {
      this.d.setVisibility(8);
    }
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.a = ((TextView)findViewById(e.d));
    this.b = ((TextView)findViewById(e.e));
    this.c = ((TextView)findViewById(e.s0));
    this.d = findViewById(e.t0);
    this.e = findViewById(e.u);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.internal.CountryCodeListItem
 * JD-Core Version:    0.7.0.1
 */