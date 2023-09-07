package com.android.calendar.widget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.android.calendar.common.Utils;
import com.android.calendar.widget.base.BaseWidgetProvider;
import com.android.calendar.widget.base.a;
import com.miui.calendar.holiday.model.HolidaySchema;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import f2.c;
import f2.k;
import java.util.Calendar;
import java.util.List;

public class DateWidgetProvider
  extends a
{
  private void r(Context paramContext, int paramInt)
  {
    AppWidgetManager localAppWidgetManager = AppWidgetManager.getInstance(paramContext);
    RemoteViews localRemoteViews = new RemoteViews(paramContext.getPackageName(), 2131559007);
    l(paramContext, localRemoteViews, this.a);
    if (Build.VERSION.SDK_INT >= 31) {
      q(localRemoteViews, paramContext, paramInt, localAppWidgetManager);
    } else {
      p(localRemoteViews, paramContext, paramInt, localAppWidgetManager);
    }
    Calendar localCalendar = Calendar.getInstance();
    int i = localCalendar.get(5);
    Object localObject = new r0(Utils.U(paramContext));
    ((r0)localObject).M();
    long l = ((r0)localObject).P(true);
    localRemoteViews.setTextViewText(2131363483, Utils.p(paramContext, l, l, 524324));
    localRemoteViews.setTextViewText(2131363440, String.valueOf(i));
    if (y.a())
    {
      String str = a4.d.g(localCalendar);
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(paramContext.getString(2131886851));
      ((StringBuilder)localObject).append(str);
      localRemoteViews.setTextViewText(2131363450, ((StringBuilder)localObject).toString());
      localRemoteViews.setTextViewText(2131363451, a4.d.q(localCalendar));
    }
    else
    {
      localRemoteViews.setViewVisibility(2131363450, 4);
      localRemoteViews.setViewVisibility(2131363451, 4);
    }
    localObject = null;
    if (y.d(paramContext, z3.d.i()))
    {
      z.a("Cal:D:DateWidgetProvider", "isSameLanguage");
      localObject = z3.d.h(paramContext).g(localCalendar.getTimeInMillis() + localCalendar.get(15));
    }
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      localRemoteViews.setViewVisibility(2131363444, 0);
      localRemoteViews.setTextViewText(2131363444, ((HolidaySchema)((List)localObject).get(0)).name);
    }
    else
    {
      localRemoteViews.setViewVisibility(2131363444, 4);
    }
    localRemoteViews.setOnClickPendingIntent(2131362272, PendingIntent.getActivity(paramContext, 0, f2.d.c(paramContext), 201326592));
    localRemoteViews.setPendingIntentTemplate(2131362514, f2.d.e(paramContext));
    if (!this.a)
    {
      localRemoteViews.setTextColor(2131363483, paramContext.getColor(2131101016));
      localRemoteViews.setTextColor(2131363440, paramContext.getColor(2131101015));
      localRemoteViews.setTextColor(2131363450, paramContext.getColor(2131101016));
      localRemoteViews.setTextColor(2131363451, paramContext.getColor(2131101016));
      localRemoteViews.setTextColor(2131363444, paramContext.getColor(2131101016));
      c.f(paramContext, localRemoteViews, 5);
    }
    localAppWidgetManager.updateAppWidget(paramInt, localRemoteViews);
  }
  
  protected Class<? extends BaseWidgetProvider> e()
  {
    return DateWidgetProvider.class;
  }
  
  protected void k(Context paramContext, int paramInt)
  {
    r(paramContext, paramInt);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    AppWidgetManager localAppWidgetManager = AppWidgetManager.getInstance(paramContext);
    int[] arrayOfInt = localAppWidgetManager.getAppWidgetIds(d(paramContext));
    Object localObject = paramIntent.getAction();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onReceive action: ");
    localStringBuilder.append((String)localObject);
    z.g("Cal:D:DateWidgetProvider", localStringBuilder.toString());
    if ("miui.intent.action.START_WEEK_DAY_CHANGED".equals(localObject))
    {
      paramIntent = paramIntent.getStringExtra("key_widget_first_day_of_week");
      if (!TextUtils.isEmpty(paramIntent))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("provider change firstWeek : ");
        ((StringBuilder)localObject).append(paramIntent);
        z.a("Cal:D:DateWidgetProvider", ((StringBuilder)localObject).toString());
        k.f(paramContext, "preferences_key_widget_first_day_of_week", paramIntent);
      }
      onUpdate(paramContext, localAppWidgetManager, arrayOfInt);
    }
    else
    {
      super.onReceive(paramContext, paramIntent);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.widget.DateWidgetProvider
 * JD-Core Version:    0.7.0.1
 */