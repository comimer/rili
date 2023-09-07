package com.android.calendar.cards;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.settings.j;
import com.google.gson.JsonElement;
import com.miui.calendar.card.schema.LocalCardSchema;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.q;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.x;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.weather.WeatherInfo;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.b0;
import org.json.JSONObject;
import u1.b.a;
import y4.c;

public class SummaryPresenter
  extends b<b>
{
  Context f = CalendarApplication.e();
  private String g;
  private WeatherInfo h;
  private List<LocalCardSchema> i;
  private SummaryCardExtraSchema j;
  private b k = new b();
  LocalCardSchema l = null;
  private tc.a<b0> m;
  private int n;
  private boolean o;
  
  public SummaryPresenter(t paramt)
  {
    super(paramt);
  }
  
  private void x()
  {
    int i1 = this.n;
    if ((i1 == 0) && (this.o)) {
      this.n = (i1 + 1);
    } else {
      g();
    }
  }
  
  private void y()
  {
    c.b(this.f, s0.m(this.d), new a());
  }
  
  int c()
  {
    return 1;
  }
  
  boolean e()
  {
    return y.n(this.f) ^ true;
  }
  
  void h()
  {
    boolean bool;
    if ((j.r(this.f)) && (y.i(this.f))) {
      bool = true;
    } else {
      bool = false;
    }
    this.o = bool;
    this.n = 0;
    Object localObject1 = new HashMap();
    ((HashMap)localObject1).put("type", "1");
    Object localObject2 = l0.a(this.f, (HashMap)localObject1);
    u1.a locala = u1.d.d();
    long l1 = this.d.getTimeInMillis();
    String str = u1.d.a(this.f);
    localObject1 = new c(l1, this);
    localObject2 = locala.m(str, (Map)localObject2);
    if (localObject2 != null)
    {
      ((tc.a)localObject2).q(new u1.b((b.a)localObject1));
      this.m = ((tc.a)localObject2);
    }
    w();
    if (this.o) {
      y();
    }
    g();
  }
  
  public void i()
  {
    super.i();
    if (this.m != null)
    {
      z.a("Cal:D:SummaryPresenter", "stop query summary card");
      this.m.cancel();
      this.m = null;
    }
  }
  
  x1 t()
  {
    return new x1(this.d);
  }
  
  protected Class<SummaryCardExtraSchema> u()
  {
    return SummaryCardExtraSchema.class;
  }
  
  b v()
  {
    return this.k;
  }
  
  public void w()
  {
    if (!this.o) {
      return;
    }
    Object localObject = q.d(this.f, "weather_info");
    this.g = ((String)localObject);
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      try
      {
        localObject = (WeatherInfo)x.a(this.g, WeatherInfo.class);
        this.h = ((WeatherInfo)localObject);
        this.k.a = ((WeatherInfo)localObject);
      }
      catch (Exception localException)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("getWeatherInfo(): ");
        ((StringBuilder)localObject).append(localException);
        z.c("Cal:D:SummaryPresenter", ((StringBuilder)localObject).toString());
      }
    } else {
      this.g = null;
    }
  }
  
  @Keep
  static class SummaryCardExtraSchema
  {
    String icon = null;
    int reopenDaysAd = 0;
    int reopenDaysNormal = 0;
    String tagText = null;
    String tagTextBgColor = null;
    String tagTextColor = null;
  }
  
  class a
    implements y4.b
  {
    a() {}
    
    public void a(WeatherInfo paramWeatherInfo)
    {
      new Thread(new z1(this, paramWeatherInfo)).start();
    }
    
    public void b()
    {
      z.m("Cal:D:SummaryPresenter", "queryData() weather info load failed!");
      q.h(SummaryPresenter.this.f, "weather_info");
      SummaryPresenter.l(SummaryPresenter.this, null);
      SummaryPresenter.m(SummaryPresenter.this).a = null;
    }
  }
  
  public class b
  {
    public WeatherInfo a = null;
    public LocalCardSchema b = null;
    public SummaryPresenter.SummaryCardExtraSchema c = null;
    
    public b() {}
  }
  
  private static class c
    implements b.a
  {
    private long a;
    private WeakReference<SummaryPresenter> b;
    
    public c(long paramLong, SummaryPresenter paramSummaryPresenter)
    {
      this.a = paramLong;
      this.b = new WeakReference(paramSummaryPresenter);
    }
    
    public void a(JSONObject paramJSONObject)
    {
      SummaryPresenter localSummaryPresenter = (SummaryPresenter)this.b.get();
      if (localSummaryPresenter == null) {
        return;
      }
      LocalCardSchema localLocalCardSchema = null;
      Object localObject;
      try
      {
        localObject = paramJSONObject.getString("data");
        try
        {
          s4.d.d((String)localObject);
          if (e0.h(this.a) == e0.h(localSummaryPresenter.d.getTimeInMillis()))
          {
            if (!TextUtils.isEmpty((CharSequence)localObject)) {
              SummaryPresenter.q(localSummaryPresenter, (List)x.b((String)localObject, LocalCardSchema.getListType()));
            } else {
              SummaryPresenter.q(localSummaryPresenter, null);
            }
            if ((SummaryPresenter.p(localSummaryPresenter) != null) && (SummaryPresenter.p(localSummaryPresenter).size() > 0))
            {
              paramJSONObject = SummaryPresenter.p(localSummaryPresenter).iterator();
              while (paramJSONObject.hasNext())
              {
                localLocalCardSchema = (LocalCardSchema)paramJSONObject.next();
                if (localLocalCardSchema.showType == 1)
                {
                  localSummaryPresenter.l = localLocalCardSchema;
                  SummaryPresenter.s(localSummaryPresenter, (SummaryPresenter.SummaryCardExtraSchema)x.a(localLocalCardSchema.extra.toString(), localSummaryPresenter.u()));
                }
              }
            }
            SummaryPresenter.m(localSummaryPresenter).c = SummaryPresenter.r(localSummaryPresenter);
            SummaryPresenter.m(localSummaryPresenter).b = localSummaryPresenter.l;
            SummaryPresenter.o(localSummaryPresenter);
          }
          else
          {
            z.m("Cal:D:SummaryPresenter", "ResponseListener() timestamp do not match");
          }
        }
        catch (Exception paramJSONObject) {}
        z.d("Cal:D:SummaryPresenter", "ResponseListener:", paramJSONObject);
      }
      catch (Exception paramJSONObject)
      {
        localObject = localLocalCardSchema;
      }
      s4.d.a((String)localObject, new Object[0]);
    }
    
    public void b(Exception paramException)
    {
      SummaryPresenter localSummaryPresenter = (SummaryPresenter)this.b.get();
      if (localSummaryPresenter == null) {
        return;
      }
      SummaryPresenter.o(localSummaryPresenter);
      z.d("Cal:D:SummaryPresenter", "ResponseListener:", paramException);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.SummaryPresenter
 * JD-Core Version:    0.7.0.1
 */