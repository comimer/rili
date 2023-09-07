package com.android.calendar.widget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.widget.RemoteViews;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.homepage.AllInOneActivity;
import com.android.calendar.widget.base.BaseWidgetProvider;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import f2.c;
import f2.d;
import f2.j;
import f2.k;
import java.util.Calendar;
import java.util.List;

public class NearEventAppWidget
  extends com.android.calendar.widget.base.a
{
  private static final Object c = new Object();
  
  protected static a r(Context paramContext, List<Event> paramList, String paramString)
  {
    paramContext = new a(paramContext, paramString);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("events size#1 : ");
    localStringBuilder.append(paramList.size());
    z.a("Cal:D:NearEventAppWidget", localStringBuilder.toString());
    paramContext.b(paramList, paramString, 202);
    return paramContext;
  }
  
  public static void s(Context paramContext, int paramInt1, RemoteViews paramRemoteViews, a.b paramb, int paramInt2, int paramInt3, int paramInt4, int paramInt5, boolean paramBoolean)
  {
    z.a("Cal:D:NearEventAppWidget", "buildItem : ");
    paramRemoteViews.setViewVisibility(paramInt2, 0);
    paramRemoteViews.setImageViewBitmap(paramInt3, x0.p(paramb.l, 30, false));
    paramRemoteViews.setTextViewText(paramInt4, paramb.f);
    long l1 = paramb.i;
    long l2 = paramb.j;
    if (paramb.k)
    {
      paramRemoteViews.setTextViewText(paramInt5, paramb.d);
      String str = Utils.U(paramContext);
      r0 localr0 = new r0();
      l1 = Utils.e(localr0, l1, str);
      l2 = Utils.e(localr0, l2, str);
    }
    else
    {
      paramRemoteViews.setTextViewText(paramInt5, paramb.b);
    }
    paramRemoteViews.setOnClickPendingIntent(paramInt2, PendingIntent.getActivity(paramContext, paramInt1 + 3001, d.a(paramContext, paramb.h, l1, l2, paramb.p), 201326592));
    if (!paramBoolean)
    {
      paramRemoteViews.setTextColor(paramInt4, paramContext.getColor(2131101056));
      paramRemoteViews.setTextColor(paramInt5, paramContext.getColor(2131101054));
    }
  }
  
  private void u(Context paramContext, RemoteViews paramRemoteViews)
  {
    paramRemoteViews.setPendingIntentTemplate(2131362514, d.e(paramContext));
    paramContext = PendingIntent.getActivity(paramContext, 0, d.c(paramContext), 201326592);
    paramRemoteViews.setOnClickPendingIntent(2131363454, paramContext);
    paramRemoteViews.setOnClickPendingIntent(2131362467, paramContext);
  }
  
  private void v(Context paramContext, RemoteViews paramRemoteViews)
  {
    r0 localr0 = new r0(Utils.U(paramContext));
    localr0.M();
    long l = localr0.P(true);
    paramRemoteViews.setTextViewText(2131362860, Utils.p(paramContext, l, l, 1572872));
    if (!this.a)
    {
      paramRemoteViews.setTextColor(2131362860, paramContext.getColor(2131101056));
      paramRemoteViews.setTextColor(2131363454, paramContext.getColor(2131101052));
      c.f(paramContext, paramRemoteViews, 4);
    }
  }
  
  private void x(Context paramContext, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("updateAppWidget id : ");
    localStringBuilder.append(paramInt);
    z.a("Cal:D:NearEventAppWidget", localStringBuilder.toString());
    w(paramContext, paramInt);
  }
  
  protected Class<? extends BaseWidgetProvider> e()
  {
    return NearEventAppWidget.class;
  }
  
  protected void k(Context paramContext, int paramInt)
  {
    x(paramContext, paramInt);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    AppWidgetManager localAppWidgetManager = AppWidgetManager.getInstance(paramContext);
    int[] arrayOfInt = localAppWidgetManager.getAppWidgetIds(d(paramContext));
    String str = paramIntent.getAction();
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onReceive action: ");
    ((StringBuilder)localObject).append(str);
    z.a("Cal:D:NearEventAppWidget", ((StringBuilder)localObject).toString());
    if ("miui.intent.action.START_WEEK_DAY_CHANGED".equals(str))
    {
      localObject = paramIntent.getStringExtra("key_widget_first_day_of_week");
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        paramIntent = new StringBuilder();
        paramIntent.append("provider change firstWeek : ");
        paramIntent.append((String)localObject);
        z.a("Cal:D:NearEventAppWidget", paramIntent.toString());
        k.f(paramContext, "preferences_key_widget_first_day_of_week", (String)localObject);
      }
      onUpdate(paramContext, localAppWidgetManager, arrayOfInt);
    }
    else
    {
      super.onReceive(paramContext, paramIntent);
    }
  }
  
  public RemoteViews t(RemoteViews paramRemoteViews, Context paramContext, List<a.b> paramList, int paramInt, SparseIntArray paramSparseIntArray1, SparseIntArray paramSparseIntArray2, SparseIntArray paramSparseIntArray3, SparseIntArray paramSparseIntArray4)
  {
    synchronized (c)
    {
      z.a("Cal:D:NearEventAppWidget", "buildUpdate");
      if (paramList.isEmpty()) {
        paramRemoteViews.setViewVisibility(2131363454, 0);
      } else {
        paramRemoteViews.setViewVisibility(2131363454, 8);
      }
      if (paramList.size() > 2)
      {
        paramRemoteViews.setViewVisibility(2131363455, 0);
        paramRemoteViews.setTextViewText(2131363455, paramContext.getResources().getQuantityString(2131755081, paramList.size() - 2, new Object[] { Integer.valueOf(paramList.size() - 2) }));
        Intent localIntent = new android/content/Intent;
        localIntent.<init>(paramContext, AllInOneActivity.class);
        paramRemoteViews.setOnClickPendingIntent(2131363455, PendingIntent.getActivity(paramContext, 0, localIntent, 67108864));
      }
      else
      {
        paramRemoteViews.setViewVisibility(2131363455, 4);
      }
      for (paramInt = 0; paramInt < paramList.size(); paramInt++) {
        s(paramContext, paramInt, paramRemoteViews, (a.b)paramList.get(paramInt), paramSparseIntArray1.get(paramInt), paramSparseIntArray4.get(paramInt), paramSparseIntArray2.get(paramInt), paramSparseIntArray3.get(paramInt), this.a);
      }
      for (paramInt = paramList.size(); paramInt < 2; paramInt++) {
        paramRemoteViews.setViewVisibility(paramSparseIntArray1.get(paramInt), 4);
      }
      return paramRemoteViews;
    }
  }
  
  public void w(Context paramContext, int paramInt)
  {
    AppWidgetManager localAppWidgetManager = AppWidgetManager.getInstance(paramContext);
    RemoteViews localRemoteViews = new RemoteViews(paramContext.getPackageName(), 2131558827);
    l(paramContext, localRemoteViews, this.a);
    v(paramContext, localRemoteViews);
    u(paramContext, localRemoteViews);
    if (Build.VERSION.SDK_INT >= 31) {
      q(localRemoteViews, paramContext, paramInt, localAppWidgetManager);
    } else {
      p(localRemoteViews, paramContext, paramInt, localAppWidgetManager);
    }
    SparseIntArray localSparseIntArray1 = new SparseIntArray();
    SparseIntArray localSparseIntArray2 = new SparseIntArray();
    SparseIntArray localSparseIntArray3 = new SparseIntArray();
    SparseIntArray localSparseIntArray4 = new SparseIntArray();
    localSparseIntArray1.append(0, 2131362861);
    localSparseIntArray1.append(1, 2131362862);
    localSparseIntArray2.append(0, 2131363475);
    localSparseIntArray2.append(1, 2131363476);
    localSparseIntArray3.append(0, 2131363471);
    localSparseIntArray3.append(1, 2131363472);
    localSparseIntArray4.append(0, 2131362190);
    localSparseIntArray4.append(1, 2131362191);
    paramContext = t(localRemoteViews, paramContext, r(paramContext, j.m(paramContext, Calendar.getInstance(), false), Utils.U(paramContext)).d, paramInt, localSparseIntArray1, localSparseIntArray2, localSparseIntArray3, localSparseIntArray4);
    z.a("Cal:D:NearEventAppWidget", "loadEvents end#1");
    localAppWidgetManager.updateAppWidget(paramInt, paramContext);
    z.a("Cal:D:NearEventAppWidget", "loadEvents end#2");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.widget.NearEventAppWidget
 * JD-Core Version:    0.7.0.1
 */