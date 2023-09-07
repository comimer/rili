package n3;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.android.calendar.alerts.AlertLaterReceiver;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.settings.j;
import com.miui.calendar.alerts.entities.BaseAlert;
import com.miui.calendar.util.z;
import m3.a;
import m3.a.a;
import m3.a.b;
import o1.g;

public abstract class c<T extends BaseAlert<? extends Event>>
{
  protected T a;
  private Context b;
  private int c = 0;
  protected String d;
  protected String e;
  
  public c(Context paramContext, T paramT)
  {
    this.a = paramT;
    this.b = paramContext.getApplicationContext();
  }
  
  private void c(a.b paramb)
  {
    paramb.n(null);
    paramb.m(g.c(l()));
    paramb.c(true);
    paramb.g(this.a.getDeleteIntent(this.b, true, false));
    Context localContext = this.b;
    paramb.a(a.a.e(localContext, 2131886379, this.a.getDeleteIntent(localContext, true, false), true));
    paramb.d(this.a.getContentIntent(this.b, false));
  }
  
  private void e(a.b paramb)
  {
    paramb.n(null);
    paramb.m(false);
    paramb.c(true);
    paramb.h(false);
    Context localContext = this.b;
    paramb.a(a.a.e(localContext, 2131886266, i(localContext, this.a), false));
    paramb.d(this.a.getContentIntent(this.b, false));
  }
  
  private void f(a.b paramb, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramb.n(g.f(l()));
    paramb.m(g.d(l()));
    paramb.c(paramBoolean2);
    paramb.h(true);
    if ((!Utils.n0(l())) && (!Utils.m0(l()))) {
      paramb.i(10000);
    }
    if (paramBoolean2) {
      paramb.g(this.a.getDeleteIntent(this.b, true, false));
    }
    paramb.d(this.a.getContentIntent(this.b, true));
    if (paramBoolean1)
    {
      Context localContext = this.b;
      paramb.a(a.a.e(localContext, 2131887347, j(localContext, this.a), false));
    }
  }
  
  private void g(a.b paramb)
  {
    paramb.n(null);
    paramb.m(false);
    paramb.c(true);
    paramb.h(false);
    paramb.d(this.a.getContentIntent(this.b, true));
    paramb.g(this.a.getDeleteIntent(this.b, true, false));
  }
  
  private void h(a.b paramb)
  {
    paramb.n(null);
    paramb.m(false);
    paramb.c(true);
    paramb.h(true);
    if ((!Utils.n0(l())) && (!Utils.m0(l()))) {
      paramb.i(10000);
    }
    paramb.g(this.a.getDeleteIntent(this.b, true, false));
    paramb.d(this.a.getContentIntent(this.b, true));
    Context localContext = this.b;
    paramb.a(a.a.e(localContext, 2131887347, j(localContext, this.a), false));
  }
  
  private static PendingIntent i(Context paramContext, BaseAlert<? extends Event> paramBaseAlert)
  {
    Intent localIntent = new Intent("com.android.calendar.CANCEL_REMINDER_LATER");
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("calendar://");
    localStringBuilder.append(paramBaseAlert.getNotificationId());
    localIntent.setData(Uri.parse(localStringBuilder.toString()));
    localIntent.setClass(paramContext, AlertLaterReceiver.class);
    localIntent.putExtra("extra_key_alert", paramBaseAlert);
    return PendingIntent.getBroadcast(paramContext, 0, localIntent, 201326592);
  }
  
  private static PendingIntent j(Context paramContext, BaseAlert<? extends Event> paramBaseAlert)
  {
    Intent localIntent = new Intent("com.android.calendar.SET_REMINDER_LATER");
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("calendar://");
    localStringBuilder.append(paramBaseAlert.getNotificationId());
    localIntent.setData(Uri.parse(localStringBuilder.toString()));
    localIntent.setClass(paramContext, AlertLaterReceiver.class);
    localIntent.putExtra("extra_key_alert", paramBaseAlert);
    return PendingIntent.getBroadcast(paramContext, 0, localIntent, 201326592);
  }
  
  protected String a()
  {
    String str;
    if (TextUtils.isEmpty(this.e)) {
      str = this.a.getSummaryText(this.b);
    } else {
      str = this.e;
    }
    return str;
  }
  
  protected String b()
  {
    String str;
    if (TextUtils.isEmpty(this.d)) {
      str = this.a.getEventTitle();
    } else {
      str = this.d;
    }
    return str;
  }
  
  protected void d(a.b paramb)
  {
    paramb.f(b());
    paramb.e(a());
    if ((1 != k()) && (4 != k()))
    {
      if (3 == k()) {
        h(paramb);
      } else if (2 == this.c) {
        e(paramb);
      } else {
        g(paramb);
      }
    }
    else if ((!this.a.isNeedAlarm(this.b)) && (!j.n(this.b)))
    {
      boolean bool1 = this.a.needPopup(l());
      boolean bool2 = false;
      boolean bool3 = false;
      StringBuilder localStringBuilder;
      if (bool1)
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("needPopup true, type: ");
        localStringBuilder.append(this.a.getEventType());
        z.a("Cal:D:BaseNotificationAdapter", localStringBuilder.toString());
        paramb.j(this.a.getFullscreenIntent(this.b));
        paramb.k(false);
        if (1 == k()) {
          bool3 = true;
        }
        f(paramb, bool3, true);
      }
      else
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("needPopup true, false: ");
        localStringBuilder.append(this.a.getEventType());
        z.a("Cal:D:BaseNotificationAdapter", localStringBuilder.toString());
        bool3 = bool2;
        if (1 == k()) {
          bool3 = true;
        }
        f(paramb, bool3, true);
      }
    }
    else
    {
      paramb.j(this.a.getFullscreenIntent(this.b));
      paramb.k(true);
      c(paramb);
    }
    paramb.l(this.a.getNotificationId());
  }
  
  public int k()
  {
    return this.c;
  }
  
  public Context l()
  {
    return this.b;
  }
  
  public a m()
  {
    a.b localb = new a.b();
    d(localb);
    return localb.b();
  }
  
  public void n(int paramInt)
  {
    this.c = paramInt;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n3.c
 * JD-Core Version:    0.7.0.1
 */