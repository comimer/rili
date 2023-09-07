package com.android.calendar.cards;

import android.content.Context;
import com.android.calendar.application.CalendarApplication;
import com.google.gson.JsonElement;
import com.miui.calendar.ad.AdSchema;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.q;
import com.miui.calendar.util.x;
import java.util.Calendar;
import v3.a;

public class m
  extends b<b>
{
  Context f = CalendarApplication.e();
  private b g = new b();
  protected boolean h = false;
  
  public m(t paramt)
  {
    super(paramt);
  }
  
  private String m()
  {
    return a.c("is_ad_closed_today", String.valueOf(this.g.a.ads.id));
  }
  
  int c()
  {
    return 20;
  }
  
  boolean e()
  {
    boolean bool;
    if ((!this.h) && (this.g.a != null)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  void h()
  {
    this.g.a = com.miui.calendar.ad.b.e().d(e0.d(this.d, Calendar.getInstance()));
    b localb = this.g;
    CustomCardSchema localCustomCardSchema = localb.a;
    if (localCustomCardSchema != null)
    {
      localb.b = localCustomCardSchema.ads;
      localb.c = ((a)x.a(localCustomCardSchema.extra.toString(), a.class));
    }
    this.h = o(this.f);
    g();
  }
  
  j l()
  {
    return new j(this.d, new l(this));
  }
  
  b n()
  {
    return this.g;
  }
  
  protected boolean o(Context paramContext)
  {
    boolean bool;
    try
    {
      bool = Boolean.parseBoolean(q.d(paramContext, a.d(m())));
    }
    catch (Exception paramContext)
    {
      bool = false;
    }
    return bool;
  }
  
  protected void q(Context paramContext, boolean paramBoolean)
  {
    q.f(paramContext, a.d(m()), String.valueOf(paramBoolean));
  }
  
  public static class a
  {
    public int a;
  }
  
  public static class b
  {
    public CustomCardSchema a = null;
    public AdSchema b = null;
    public m.a c = null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.m
 * JD-Core Version:    0.7.0.1
 */