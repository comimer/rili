package com.android.calendar.widget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.widget.RemoteViews;
import b2.a;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.Utils;
import com.android.calendar.common.k;
import com.android.calendar.homepage.AllInOneActivity;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import e2.b;
import java.util.Iterator;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import y4.c;

public class MonthWidgetProvider
  extends AppWidgetProvider
{
  private static volatile int d = 0;
  public static int e = 0;
  public static String f = "";
  private static Timer g = new Timer();
  private static Timer h = new Timer();
  private Context a;
  private AppWidgetManager b;
  private d c;
  
  public MonthWidgetProvider()
  {
    if (d == 0)
    {
      d = a.a(CalendarApplication.e().getApplicationContext(), "preferences_month_widget_init_height", 0);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("MonthWidgetProvider() mInitWidgetHeight=");
      localStringBuilder.append(d);
      z.a("Cal:D:MonthWidgetProvider", localStringBuilder.toString());
    }
  }
  
  static ComponentName f(Context paramContext)
  {
    return new ComponentName(paramContext, MonthWidgetProvider.class);
  }
  
  static PendingIntent g(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.setFlags(268484608);
    localIntent.setClass(paramContext, AllInOneActivity.class);
    localIntent.putExtra("START_BY_WIDGET", true);
    return PendingIntent.getActivity(paramContext, 0, localIntent, 167772160);
  }
  
  private void h(Context paramContext, RemoteViews paramRemoteViews, int paramInt)
  {
    int i = Utils.C(paramContext);
    int j = 1;
    int k = i - 1;
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("firstDayOfWeek ");
    ((StringBuilder)localObject).append(k);
    z.a("Cal:D:MonthWidgetProvider", ((StringBuilder)localObject).toString());
    int m = b.f(paramContext, paramInt);
    int n = (int)paramContext.getResources().getDimension(2131165802);
    paramContext = new String[14];
    if (y.a()) {
      paramInt = 50;
    } else {
      paramInt = 20;
    }
    while (j <= 7)
    {
      i = j - 1;
      localObject = DateUtils.getDayOfWeekString(j, paramInt).toUpperCase();
      paramContext[i] = localObject;
      paramContext[(i + 7)] = localObject;
      j++;
    }
    localObject = new int[7];
    Object tmp143_141 = localObject;
    tmp143_141[0] = 2131362463;
    Object tmp148_143 = tmp143_141;
    tmp148_143[1] = 2131363127;
    Object tmp153_148 = tmp148_143;
    tmp153_148[2] = 2131363358;
    Object tmp158_153 = tmp153_148;
    tmp158_153[3] = 2131362480;
    Object tmp163_158 = tmp158_153;
    tmp163_158[4] = 2131362449;
    Object tmp168_163 = tmp163_158;
    tmp168_163[5] = 2131363168;
    Object tmp173_168 = tmp168_163;
    tmp173_168[6] = 2131363150;
    tmp173_168;
    for (paramInt = 0; paramInt < 7; paramInt++)
    {
      i = paramInt + k;
      j = i;
      if (i >= 14) {
        j = i - 14;
      }
      i = paramInt % 7;
      if (!Utils.r0(i, k)) {
        Utils.s0(i, k);
      }
      paramRemoteViews.setTextColor(localObject[paramInt], m);
      paramRemoteViews.setTextViewText(localObject[paramInt], paramContext[j]);
      paramRemoteViews.setTextViewTextSize(localObject[paramInt], 0, n);
    }
  }
  
  private void i(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt, long[] paramArrayOfLong)
  {
    long l1 = System.currentTimeMillis();
    r0 localr0 = new r0(Utils.U(paramContext));
    localr0.M();
    int i = paramArrayOfInt.length;
    for (int j = 0; j < i; j++)
    {
      int k = paramArrayOfInt[j];
      paramArrayOfLong = this.b.getAppWidgetOptions(k);
      Object localObject1 = new Intent(paramContext, MonthWidgetService.class);
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("");
      ((StringBuilder)localObject2).append(k);
      ((Intent)localObject1).setType(((StringBuilder)localObject2).toString());
      ((Intent)localObject1).putExtra("appWidgetId", k);
      localObject2 = new RemoteViews(paramContext.getPackageName(), 2131558790);
      ((RemoteViews)localObject2).setRemoteAdapter(2131362820, (Intent)localObject1);
      ((RemoteViews)localObject2).setViewVisibility(2131362703, 8);
      ((RemoteViews)localObject2).setViewVisibility(2131362213, 0);
      localObject1 = e0.o(localr0, e);
      int m = r0.n(((r0)localObject1).P(true), ((r0)localObject1).l());
      if (m > k.b() - 31)
      {
        ((RemoteViews)localObject2).setViewVisibility(2131362060, 4);
      }
      else
      {
        ((RemoteViews)localObject2).setViewVisibility(2131362060, 0);
        localObject3 = new Intent("miui.intent.action.MONTH_CHANGED_NEXT");
        ((Intent)localObject3).setClass(paramContext, MonthWidgetProvider.class);
        ((RemoteViews)localObject2).setOnClickPendingIntent(2131362060, PendingIntent.getBroadcast(paramContext, 0, (Intent)localObject3, 201326592));
      }
      if (m < k.e() + 31)
      {
        ((RemoteViews)localObject2).setViewVisibility(2131362061, 4);
      }
      else
      {
        ((RemoteViews)localObject2).setViewVisibility(2131362061, 0);
        localObject3 = new Intent("miui.intent.action.MONTH_CHANGED_PREV");
        ((Intent)localObject3).setClass(paramContext, MonthWidgetProvider.class);
        ((RemoteViews)localObject2).setOnClickPendingIntent(2131362061, PendingIntent.getBroadcast(paramContext, 0, (Intent)localObject3, 201326592));
      }
      Object localObject3 = new Intent(paramContext, MonthWidgetEventService.class);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("");
      localStringBuilder.append(k);
      ((Intent)localObject3).setType(localStringBuilder.toString());
      ((Intent)localObject3).putExtra("appWidgetId", k);
      ((RemoteViews)localObject2).setRemoteAdapter(2131362432, (Intent)localObject3);
      ((RemoteViews)localObject2).setEmptyView(2131362432, 2131362399);
      ((RemoteViews)localObject2).setTextColor(2131362404, b.c(paramContext, k));
      if (!k(paramContext, paramArrayOfLong)) {
        ((RemoteViews)localObject2).setViewVisibility(2131362422, 4);
      } else {
        ((RemoteViews)localObject2).setViewVisibility(2131362422, 0);
      }
      if (c.i(this.a)) {
        ((RemoteViews)localObject2).setViewVisibility(2131363542, 0);
      } else {
        ((RemoteViews)localObject2).setViewVisibility(2131363542, 8);
      }
      m = b.d(this.a, k);
      ((RemoteViews)localObject2).setTextColor(2131362347, m);
      ((RemoteViews)localObject2).setTextColor(2131363542, m);
      b.k(this.a, (RemoteViews)localObject2, 2131362369, k);
      b.k(this.a, (RemoteViews)localObject2, 2131362370, k);
      paramArrayOfLong = new r0();
      paramArrayOfLong.M();
      ((RemoteViews)localObject2).setTextViewText(2131362347, Utils.f0(this.a, paramArrayOfLong));
      if (TextUtils.isEmpty(f))
      {
        paramArrayOfLong = this.a.getString(2131887839);
        if (x0.x0())
        {
          localObject3 = new StringBuilder();
          ((StringBuilder)localObject3).append("< ");
          ((StringBuilder)localObject3).append(paramArrayOfLong);
          paramArrayOfLong = ((StringBuilder)localObject3).toString();
        }
        else
        {
          localObject3 = new StringBuilder();
          ((StringBuilder)localObject3).append(paramArrayOfLong);
          ((StringBuilder)localObject3).append(" >");
          paramArrayOfLong = ((StringBuilder)localObject3).toString();
        }
        ((RemoteViews)localObject2).setTextViewText(2131363542, paramArrayOfLong);
      }
      else
      {
        ((RemoteViews)localObject2).setTextViewText(2131363542, f);
      }
      if (this.c == null)
      {
        paramArrayOfLong = new d(null);
        this.c = paramArrayOfLong;
        paramArrayOfLong.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new RemoteViews[] { localObject2 });
      }
      if (DeviceUtils.r(paramContext, "com.miui.weather2") >= 12080301L)
      {
        localObject3 = c.g(this.a);
        paramArrayOfLong = new StringBuilder();
        paramArrayOfLong.append("performUpdate(): intents:");
        paramArrayOfLong.append(localObject3);
        z.a("Cal:D:MonthWidgetProvider", paramArrayOfLong.toString());
        if (localObject3 != null) {
          ((RemoteViews)localObject2).setOnClickPendingIntent(2131363542, PendingIntent.getActivities(paramContext, 0, (Intent[])localObject3, 67108864));
        }
      }
      else
      {
        localObject3 = c.e(this.a);
        paramArrayOfLong = new StringBuilder();
        paramArrayOfLong.append("performUpdate(): intent:");
        paramArrayOfLong.append(localObject3);
        z.a("Cal:D:MonthWidgetProvider", paramArrayOfLong.toString());
        if (localObject3 != null) {
          ((RemoteViews)localObject2).setOnClickPendingIntent(2131363542, PendingIntent.getActivity(paramContext, 0, (Intent)localObject3, 67108864));
        }
      }
      b.l(this.a, (RemoteViews)localObject2, k);
      l2 = ((r0)localObject1).P(true);
      if (y.a())
      {
        paramArrayOfLong = new StringBuilder();
        paramArrayOfLong.append(String.valueOf(((r0)localObject1).p() + 1));
        paramArrayOfLong.append(this.a.getString(2131886977));
        paramArrayOfLong = paramArrayOfLong.toString();
      }
      else
      {
        paramArrayOfLong = Utils.p(paramContext, l2, l2, 65576);
      }
      m = b.a(this.a, k);
      int n = this.a.getResources().getDimensionPixelSize(2131167450);
      ((RemoteViews)localObject2).setImageViewBitmap(2131361860, x0.y(this.a, paramArrayOfLong, m, n, false));
      m = b.b(this.a, k);
      localObject1 = String.valueOf(((r0)localObject1).v());
      paramArrayOfLong = (long[])localObject1;
      if (y.a())
      {
        paramArrayOfLong = new StringBuilder();
        paramArrayOfLong.append((String)localObject1);
        paramArrayOfLong.append(this.a.getString(2131887622));
        paramArrayOfLong = paramArrayOfLong.toString();
      }
      ((RemoteViews)localObject2).setTextViewText(2131361882, paramArrayOfLong);
      ((RemoteViews)localObject2).setTextColor(2131361882, m);
      if (e == 0)
      {
        ((RemoteViews)localObject2).setTextViewText(2131361878, Utils.p(paramContext, l2, l2, 32770));
        ((RemoteViews)localObject2).setTextColor(2131361878, m);
      }
      if (e == 0) {
        m = 0;
      } else {
        m = 8;
      }
      ((RemoteViews)localObject2).setViewVisibility(2131361878, m);
      h(paramContext, (RemoteViews)localObject2, k);
      paramArrayOfLong = g(paramContext);
      ((RemoteViews)localObject2).setPendingIntentTemplate(2131362820, paramArrayOfLong);
      ((RemoteViews)localObject2).setPendingIntentTemplate(2131362432, paramArrayOfLong);
      paramAppWidgetManager.updateAppWidget(k, (RemoteViews)localObject2);
    }
    long l2 = System.currentTimeMillis();
    paramContext = new StringBuilder();
    paramContext.append("performUpdate() end, cost ");
    paramContext.append(l2 - l1);
    paramContext.append("ms");
    z.a("Cal:D:MonthWidgetProvider", paramContext.toString());
  }
  
  private void j()
  {
    z.a("Cal:D:MonthWidgetProvider", "resetRunnable():reset to current month");
    Object localObject = this.b.getAppWidgetIds(f(this.a));
    long l1 = System.currentTimeMillis();
    e = 0;
    this.c = null;
    if (localObject != null)
    {
      i(this.a, this.b, (int[])localObject, null);
      this.b.notifyAppWidgetViewDataChanged((int[])localObject, 2131362820);
      this.b.notifyAppWidgetViewDataChanged((int[])localObject, 2131362432);
      this.b.notifyAppWidgetViewDataChanged((int[])localObject, 2131362516);
    }
    long l2 = System.currentTimeMillis();
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("resetToCurrentMonth() end, cost ");
    ((StringBuilder)localObject).append(l2 - l1);
    ((StringBuilder)localObject).append("ms");
    z.a("Cal:D:MonthWidgetProvider", ((StringBuilder)localObject).toString());
  }
  
  private boolean k(Context paramContext, Bundle paramBundle)
  {
    int i = paramBundle.getInt("appWidgetMinHeight");
    if ((d != 0) && (i != 0))
    {
      if (i - d < -(DeviceUtils.P(paramContext, DeviceUtils.o(paramContext)) + 1)) {
        return false;
      }
      if (i == d) {
        return true;
      }
      paramBundle = new StringBuilder();
      paramBundle.append("showExtra(): amend init widget Height, old=");
      paramBundle.append(d);
      paramBundle.append(" new=");
      paramBundle.append(i);
      z.a("Cal:D:MonthWidgetProvider", paramBundle.toString());
      d = i;
      a.i(paramContext, "preferences_month_widget_init_height", i);
    }
    return true;
  }
  
  public void onAppWidgetOptionsChanged(Context paramContext, AppWidgetManager paramAppWidgetManager, int paramInt, Bundle paramBundle)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onAppWidgetOptionsChanged(): appWidgetId:");
    localStringBuilder.append(paramInt);
    localStringBuilder.append(" newOptions=");
    localStringBuilder.append(paramBundle);
    z.a("Cal:D:MonthWidgetProvider", localStringBuilder.toString());
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("onAppWidgetOptionsChanged() newOptions: key:");
      localStringBuilder.append(str);
      localStringBuilder.append(", value:");
      localStringBuilder.append(paramBundle.get(str));
      z.a("Cal:D:MonthWidgetProvider", localStringBuilder.toString());
    }
    if (d == 0)
    {
      d = paramBundle.getInt("appWidgetMinHeight");
      a.i(paramContext, "preferences_month_widget_init_height", d);
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("onAppWidgetOptionsChanged(): init widget Height = ");
      localStringBuilder.append(d);
      z.a("Cal:D:MonthWidgetProvider", localStringBuilder.toString());
    }
    i(paramContext, this.b, new int[] { paramInt }, null);
    super.onAppWidgetOptionsChanged(paramContext, paramAppWidgetManager, paramInt, paramBundle);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    this.a = paramContext;
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onReceive(): action:");
    ((StringBuilder)localObject).append(str1);
    z.a("Cal:D:MonthWidgetProvider", ((StringBuilder)localObject).toString());
    long l1 = System.currentTimeMillis();
    localObject = AppWidgetManager.getInstance(paramContext);
    this.b = ((AppWidgetManager)localObject);
    localObject = ((AppWidgetManager)localObject).getAppWidgetIds(f(paramContext));
    if ((!"android.intent.action.BOOT_COMPLETED".equals(str1)) && (!"android.appwidget.action.APPWIDGET_UPDATE".equals(str1)) && (!"android.appwidget.action.APPWIDGET_DELETED".equals(str1))) {}
    for (;;)
    {
      break;
      int j;
      if (localObject == null)
      {
        z.a("Cal:D:MonthWidgetProvider", "onReceive(): appWidgetIds is null");
        g0.h("month_widget_count", 0L);
      }
      else
      {
        g0.h("month_widget_count", localObject.length);
        int i = localObject.length;
        for (j = 0; j < i; j++)
        {
          int k = localObject[j];
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("onReceive(): id:");
          localStringBuilder.append(k);
          z.a("Cal:D:MonthWidgetProvider", localStringBuilder.toString());
          Bundle localBundle = this.b.getAppWidgetOptions(k);
          Iterator localIterator = localBundle.keySet().iterator();
          while (localIterator.hasNext())
          {
            String str2 = (String)localIterator.next();
            localStringBuilder = new StringBuilder();
            localStringBuilder.append("onReceive(): key:");
            localStringBuilder.append(str2);
            localStringBuilder.append(", value:");
            localStringBuilder.append(localBundle.get(str2));
            z.a("Cal:D:MonthWidgetProvider", localStringBuilder.toString());
          }
        }
      }
      if ("android.appwidget.action.APPWIDGET_DELETED".equals(str1))
      {
        j = paramIntent.getIntExtra("appWidgetId", -1);
        if (j > -1) {
          b.i(paramContext, j);
        }
      }
    }
    if (TextUtils.equals("com.miui.weather2.FROM_FOREGROUND_TO_WAKE_BACKGROUND", str1))
    {
      if ((localObject != null) && (localObject.length > 0) && (TextUtils.isEmpty(f)))
      {
        z.a("Cal:D:MonthWidgetProvider", "onReceive(): weather wake background");
        h.cancel();
        h = new Timer();
        paramContext = new b(null);
        h.schedule(paramContext, 3000L);
      }
    }
    else if (TextUtils.equals(Utils.h0(paramContext), str1))
    {
      e = 0;
      if (localObject != null) {
        i(paramContext, this.b, (int[])localObject, null);
      }
    }
    else if ((!"android.intent.action.PROVIDER_CHANGED".equals(str1)) && (!"android.intent.action.TIME_SET".equals(str1)) && (!"android.intent.action.TIMEZONE_CHANGED".equals(str1)) && (!"com.miui.action.MIDNIGHT".equals(str1)) && (!"android.intent.action.BOOT_COMPLETED".equals(str1)) && (!TextUtils.equals(str1, Utils.g0(paramContext))))
    {
      if ((!"miui.intent.action.MONTH_CHANGED_NEXT".equals(str1)) && (!"miui.intent.action.MONTH_CHANGED_PREV".equals(str1)))
      {
        if ("miui.intent.action.MONTH_VIEW_REFRESH".equals(str1))
        {
          if (localObject != null) {
            this.b.notifyAppWidgetViewDataChanged((int[])localObject, 2131362820);
          }
        }
        else
        {
          e = 0;
          super.onReceive(paramContext, paramIntent);
        }
      }
      else
      {
        g.cancel();
        g = new Timer();
        paramIntent = new c(null);
        g.schedule(paramIntent, 300000L);
        if (str1.equals("miui.intent.action.MONTH_CHANGED_NEXT")) {
          e += 1;
        } else {
          e -= 1;
        }
        if (localObject != null)
        {
          i(paramContext, this.b, (int[])localObject, null);
          this.b.notifyAppWidgetViewDataChanged((int[])localObject, 2131362820);
        }
      }
    }
    else
    {
      j();
    }
    long l2 = System.currentTimeMillis();
    paramContext = new StringBuilder();
    paramContext.append("onReceive() end, cost ");
    paramContext.append(l2 - l1);
    paramContext.append("ms");
    z.a("Cal:D:MonthWidgetProvider", paramContext.toString());
  }
  
  public void onUpdate(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt)
  {
    i(paramContext, paramAppWidgetManager, paramArrayOfInt, null);
    paramAppWidgetManager.notifyAppWidgetViewDataChanged(paramArrayOfInt, 2131362820);
    paramAppWidgetManager.notifyAppWidgetViewDataChanged(paramArrayOfInt, 2131362432);
  }
  
  private class b
    extends TimerTask
  {
    private b() {}
    
    public void run()
    {
      if (TextUtils.isEmpty(MonthWidgetProvider.f))
      {
        z.a("Cal:D:MonthWidgetProvider", "GetWeatherTask(): first get weather info");
        int[] arrayOfInt = MonthWidgetProvider.d(MonthWidgetProvider.this).getAppWidgetIds(MonthWidgetProvider.f(MonthWidgetProvider.a(MonthWidgetProvider.this)));
        if (arrayOfInt != null)
        {
          MonthWidgetProvider.e(MonthWidgetProvider.this, null);
          MonthWidgetProvider localMonthWidgetProvider = MonthWidgetProvider.this;
          MonthWidgetProvider.b(localMonthWidgetProvider, MonthWidgetProvider.a(localMonthWidgetProvider), MonthWidgetProvider.d(MonthWidgetProvider.this), arrayOfInt, null);
        }
      }
    }
  }
  
  private class c
    extends TimerTask
  {
    private c() {}
    
    public void run()
    {
      MonthWidgetProvider.c(MonthWidgetProvider.this);
    }
  }
  
  private class d
    extends AsyncTask<RemoteViews, Void, String>
  {
    private RemoteViews a;
    
    private d() {}
    
    protected String a(RemoteViews... paramVarArgs)
    {
      this.a = paramVarArgs[0];
      paramVarArgs = new r0();
      paramVarArgs.M();
      int i = r0.n(paramVarArgs.P(true), paramVarArgs.l());
      return c.c(MonthWidgetProvider.a(MonthWidgetProvider.this), i);
    }
    
    protected void b(String paramString)
    {
      if (TextUtils.equals(MonthWidgetProvider.f, paramString)) {
        return;
      }
      MonthWidgetProvider.f = paramString;
      paramString = AppWidgetManager.getInstance(MonthWidgetProvider.a(MonthWidgetProvider.this));
      int[] arrayOfInt = paramString.getAppWidgetIds(MonthWidgetProvider.f(MonthWidgetProvider.a(MonthWidgetProvider.this)));
      MonthWidgetProvider localMonthWidgetProvider = MonthWidgetProvider.this;
      MonthWidgetProvider.b(localMonthWidgetProvider, MonthWidgetProvider.a(localMonthWidgetProvider), paramString, arrayOfInt, null);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.widget.MonthWidgetProvider
 * JD-Core Version:    0.7.0.1
 */