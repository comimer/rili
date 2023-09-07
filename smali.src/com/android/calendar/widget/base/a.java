package com.android.calendar.widget.base;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.text.format.DateUtils;
import android.widget.RemoteViews;
import android.widget.RemoteViews.RemoteCollectionItems.Builder;
import com.android.calendar.widget.NearEventWidgetService;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import f2.d;
import f2.k;
import f2.l;
import java.util.Calendar;
import java.util.Date;

public class a
  extends BaseWidgetProvider
{
  private RemoteViews m(Context paramContext)
  {
    return new RemoteViews(paramContext.getPackageName(), 2131559014);
  }
  
  private RemoteViews n(Context paramContext, String paramString, boolean paramBoolean, int paramInt1, int paramInt2, Calendar paramCalendar)
  {
    RemoteViews localRemoteViews;
    if (paramBoolean) {
      localRemoteViews = new RemoteViews(paramContext.getPackageName(), 2131559013);
    } else if ((paramInt1 != 7) && (paramInt1 != 1)) {
      localRemoteViews = new RemoteViews(paramContext.getPackageName(), 2131559012);
    } else {
      localRemoteViews = new RemoteViews(paramContext.getPackageName(), 2131559015);
    }
    localRemoteViews.setTextViewText(2131363436, paramString);
    if (!x0.x0()) {
      localRemoteViews.setViewPadding(2131362863, 7, paramInt2, 0, 0);
    } else {
      localRemoteViews.setViewPadding(2131362863, 0, paramInt2, 7, 0);
    }
    if (paramBoolean) {
      localRemoteViews.setTextColor(2131363436, paramContext.getColor(2131101060));
    } else if (!this.a) {
      if ((paramInt1 != 7) && (paramInt1 != 1)) {
        localRemoteViews.setTextColor(2131363436, paramContext.getColor(2131101051));
      } else {
        localRemoteViews.setTextColor(2131363436, paramContext.getColor(2131101058));
      }
    }
    if (paramBoolean) {
      o(localRemoteViews, 2131363436, 2131232527);
    } else {
      o(localRemoteViews, 2131363436, 2131232526);
    }
    localRemoteViews.setOnClickFillInIntent(2131362863, d.b(paramContext, paramCalendar.getTimeInMillis()));
    return localRemoteViews;
  }
  
  private void o(RemoteViews paramRemoteViews, int paramInt1, int paramInt2)
  {
    paramRemoteViews.setInt(paramInt1, "setBackgroundResource", paramInt2);
  }
  
  protected Class<? extends BaseWidgetProvider> e()
  {
    return a.class;
  }
  
  protected void k(Context paramContext, int paramInt) {}
  
  protected void l(Context paramContext, RemoteViews paramRemoteViews, boolean paramBoolean)
  {
    int i = l.c(paramContext);
    int j = 1;
    int k = (int)paramContext.getResources().getDimension(2131165802);
    String[] arrayOfString = new String[14];
    int m;
    while (j <= 7)
    {
      m = j - 1;
      localObject = DateUtils.getDayOfWeekString(j, 50).toUpperCase();
      arrayOfString[m] = localObject;
      arrayOfString[(m + 7)] = localObject;
      j++;
    }
    Object localObject = new int[7];
    Object tmp84_82 = localObject;
    tmp84_82[0] = 2131362463;
    Object tmp89_84 = tmp84_82;
    tmp89_84[1] = 2131363127;
    Object tmp94_89 = tmp89_84;
    tmp94_89[2] = 2131363358;
    Object tmp99_94 = tmp94_89;
    tmp99_94[3] = 2131362480;
    Object tmp104_99 = tmp99_94;
    tmp104_99[4] = 2131362449;
    Object tmp109_104 = tmp104_99;
    tmp109_104[5] = 2131363168;
    Object tmp114_109 = tmp109_104;
    tmp114_109[6] = 2131363150;
    tmp114_109;
    for (j = 0; j < 7; j++)
    {
      int n = j + (i - 1);
      m = n;
      if (n >= 14) {
        m = n - 14;
      }
      paramRemoteViews.setTextViewText(localObject[j], arrayOfString[m]);
      paramRemoteViews.setTextViewTextSize(localObject[j], 0, k);
      if (!paramBoolean) {
        paramRemoteViews.setTextColor(localObject[j], paramContext.getColor(2131101057));
      }
    }
  }
  
  protected void p(RemoteViews paramRemoteViews, Context paramContext, int paramInt, AppWidgetManager paramAppWidgetManager)
  {
    z.a("Cal:D:NearEventAppWidget", "updateMonthPanel");
    paramContext = new Intent(paramContext, NearEventWidgetService.class);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("");
    localStringBuilder.append(paramInt);
    paramContext.setType(localStringBuilder.toString());
    paramContext.putExtra("appWidgetId", paramInt);
    paramRemoteViews.setRemoteAdapter(2131362514, paramContext);
    paramAppWidgetManager.notifyAppWidgetViewDataChanged(paramInt, 2131362514);
    paramAppWidgetManager.updateAppWidget(paramInt, paramRemoteViews);
  }
  
  protected void q(RemoteViews paramRemoteViews, Context paramContext, int paramInt, AppWidgetManager paramAppWidgetManager)
  {
    String str = "Cal:D:NearEventAppWidget";
    z.a("Cal:D:NearEventAppWidget", "updateMonthPanelAtLeastS");
    long l1 = System.currentTimeMillis();
    Object localObject = new Date(Calendar.getInstance().getTimeInMillis());
    Calendar localCalendar1 = l.b(paramContext, (Date)localObject);
    int i;
    if (localCalendar1 == null) {
      i = 5;
    } else {
      i = e0.u(paramContext, (Date)localObject);
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("preferences_key_widget_max_height");
    ((StringBuilder)localObject).append(paramInt);
    localObject = ((StringBuilder)localObject).toString();
    int j = 0;
    float f = k.a(paramContext, (String)localObject, 0);
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("oldMaxHeight : ");
    ((StringBuilder)localObject).append(f);
    ((StringBuilder)localObject).append(" appWidgetId : ");
    ((StringBuilder)localObject).append(paramInt);
    z.a("Cal:D:NearEventAppWidget", ((StringBuilder)localObject).toString());
    int k = DeviceUtils.P(paramContext, paramContext.getResources().getDimensionPixelOffset(2131167469));
    int m = DeviceUtils.P(paramContext, paramContext.getResources().getDimensionPixelOffset(2131167543));
    f = (f - k * 2 - 16.0F - m * i) / i;
    int n = DeviceUtils.e(paramContext, Math.max(0.0F, f));
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("padding:");
    ((StringBuilder)localObject).append(n);
    ((StringBuilder)localObject).append(" paddingDp:");
    ((StringBuilder)localObject).append(f);
    ((StringBuilder)localObject).append(" text size:");
    ((StringBuilder)localObject).append(m);
    ((StringBuilder)localObject).append(" topMargin:");
    ((StringBuilder)localObject).append(k);
    z.a("Cal:D:NearEventAppWidget", ((StringBuilder)localObject).toString());
    localObject = new RemoteViews.RemoteCollectionItems.Builder();
    m = 0;
    while (m < i * 7)
    {
      Calendar localCalendar2 = Calendar.getInstance();
      localCalendar2.setTimeInMillis(localCalendar1.getTimeInMillis());
      localCalendar2.add(6, m);
      boolean bool = s0.u(localCalendar2, Calendar.getInstance());
      Calendar localCalendar3 = Calendar.getInstance();
      localCalendar3.add(2, j);
      if (localCalendar2.get(2) == localCalendar3.get(2)) {
        j = 1;
      } else {
        j = 0;
      }
      int i1 = localCalendar2.get(7);
      k = localCalendar2.get(5);
      if (j == 0) {
        ((RemoteViews.RemoteCollectionItems.Builder)localObject).addItem(m, m(paramContext));
      } else {
        ((RemoteViews.RemoteCollectionItems.Builder)localObject).addItem(m, n(paramContext, String.valueOf(k), bool, i1, n, localCalendar2));
      }
      m++;
      j = 0;
    }
    e2.a.a(paramRemoteViews, 2131362514, ((RemoteViews.RemoteCollectionItems.Builder)localObject).setHasStableIds(true).setViewTypeCount(4).build());
    paramAppWidgetManager.updateAppWidget(paramInt, paramRemoteViews);
    long l2 = System.currentTimeMillis();
    paramRemoteViews = new StringBuilder();
    paramRemoteViews.append("updateMonthPanelAtLeastS() end, cost ");
    paramRemoteViews.append(l2 - l1);
    paramRemoteViews.append("ms");
    z.a(str, paramRemoteViews.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.widget.base.a
 * JD-Core Version:    0.7.0.1
 */