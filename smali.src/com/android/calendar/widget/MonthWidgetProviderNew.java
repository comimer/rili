package com.android.calendar.widget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.widget.RemoteViews;
import android.widget.RemoteViews.RemoteCollectionItems.Builder;
import com.android.calendar.common.Utils;
import com.android.calendar.widget.base.BaseWidgetProvider;
import com.miui.calendar.util.DaysOffUtils;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import e2.a;
import f2.c;
import f2.d;
import f2.k;
import f2.l;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import z3.b;

public class MonthWidgetProviderNew
  extends BaseWidgetProvider
{
  private Context c;
  private AppWidgetManager d;
  
  private int l(Calendar paramCalendar, Context paramContext)
  {
    Calendar localCalendar = Calendar.getInstance();
    int i = paramContext.getResources().getColor(2131101046);
    if (s0.u(localCalendar, paramCalendar)) {
      i = paramContext.getResources().getColor(2131101045);
    }
    return i;
  }
  
  private void m(Context paramContext, RemoteViews paramRemoteViews, boolean paramBoolean)
  {
    int i = l.c(paramContext);
    int j = 1;
    int k = i - 1;
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("firstDayOfWeek ");
    ((StringBuilder)localObject1).append(k);
    z.a("Cal:D:MonthWidgetProviderNew", ((StringBuilder)localObject1).toString());
    localObject1 = new String[14];
    if (y.a()) {
      i = 50;
    } else {
      i = 20;
    }
    int m;
    while (j <= 7)
    {
      m = j - 1;
      localObject2 = DateUtils.getDayOfWeekString(j, i).toUpperCase();
      localObject1[m] = localObject2;
      localObject1[(m + 7)] = localObject2;
      j++;
    }
    Object localObject2 = new int[7];
    Object tmp130_128 = localObject2;
    tmp130_128[0] = 2131362463;
    Object tmp135_130 = tmp130_128;
    tmp135_130[1] = 2131363127;
    Object tmp140_135 = tmp135_130;
    tmp140_135[2] = 2131363358;
    Object tmp145_140 = tmp140_135;
    tmp145_140[3] = 2131362480;
    Object tmp150_145 = tmp145_140;
    tmp150_145[4] = 2131362449;
    Object tmp155_150 = tmp150_145;
    tmp155_150[5] = 2131363168;
    Object tmp160_155 = tmp155_150;
    tmp160_155[6] = 2131363150;
    tmp160_155;
    for (i = 0; i < 7; i++)
    {
      m = i + k;
      j = m;
      if (m >= 14) {
        j = m - 14;
      }
      paramRemoteViews.setTextViewText(localObject2[i], localObject1[j]);
      if (!paramBoolean) {
        paramRemoteViews.setTextColor(localObject2[i], paramContext.getColor(2131101049));
      }
    }
  }
  
  private RemoteViews n(Context paramContext)
  {
    return new RemoteViews(paramContext.getPackageName(), 2131559014);
  }
  
  private RemoteViews o(Context paramContext, String paramString, boolean paramBoolean1, boolean paramBoolean2, int paramInt, Calendar paramCalendar, float paramFloat)
  {
    if (paramBoolean1) {
      paramInt = 2131558775;
    } else if (paramBoolean2) {
      paramInt = 2131558776;
    } else {
      paramInt = 2131558774;
    }
    RemoteViews localRemoteViews = new RemoteViews(this.c.getPackageName(), paramInt);
    localRemoteViews.setViewPadding(2131362807, 0, 0, 0, DeviceUtils.e(this.c, Math.max(0.0F, paramFloat)));
    localRemoteViews.setTextViewText(2131362279, paramString);
    int i = l(paramCalendar, paramContext);
    if (paramBoolean1) {
      localRemoteViews.setTextColor(2131362279, i);
    } else if (!this.a) {
      localRemoteViews.setTextColor(2131362279, i);
    }
    if (paramBoolean1) {
      localRemoteViews.setImageViewResource(2131363396, 2131232517);
    } else {
      localRemoteViews.setImageViewResource(2131363396, 2131232515);
    }
    if (y.t(this.c))
    {
      int j = DaysOffUtils.g(this.c).e(paramCalendar.get(1), paramCalendar.get(6));
      paramInt = 2131100680;
      if (j == 1)
      {
        paramString = paramContext.getResources();
        if (!paramBoolean1) {
          paramInt = 2131100690;
        }
        i = paramString.getColor(paramInt);
        paramString = paramContext.getResources();
        if (y.f(this.c)) {
          paramInt = 2131887398;
        } else {
          paramInt = 2131887397;
        }
        localRemoteViews.setTextViewText(2131363587, paramString.getString(paramInt));
        paramInt = i;
      }
      else if (j == 2)
      {
        paramString = paramContext.getResources();
        if (!paramBoolean1) {
          paramInt = 2131100698;
        }
        i = paramString.getColor(paramInt);
        paramString = paramContext.getResources();
        if (y.f(this.c)) {
          paramInt = 2131887854;
        } else {
          paramInt = 2131887853;
        }
        localRemoteViews.setTextViewText(2131363587, paramString.getString(paramInt));
        paramInt = i;
      }
      else
      {
        localRemoteViews.setTextViewText(2131363587, "");
        paramInt = i;
      }
      localRemoteViews.setTextColor(2131363587, paramInt);
    }
    else
    {
      localRemoteViews.setTextViewText(2131363587, "");
    }
    localRemoteViews.setViewVisibility(2131362420, 8);
    paramString = b.c(this.c, paramCalendar, paramContext.getResources());
    if ((paramString != null) && (paramString.size() > 0) && (!TextUtils.isEmpty((CharSequence)paramString.get(0))))
    {
      localRemoteViews.setTextViewText(2131362731, (CharSequence)paramString.get(0));
      if (paramBoolean1)
      {
        if (((String)paramString.get(0)).length() > 3) {
          localRemoteViews.setTextViewTextSize(2131362731, 0, paramContext.getResources().getDimensionPixelSize(2131167509));
        }
        localRemoteViews.setTextColor(2131362731, this.c.getResources().getColor(2131101045, null));
      }
      else if (paramBoolean2)
      {
        localRemoteViews.setTextColor(2131362731, this.c.getResources().getColor(2131101043, null));
      }
      else if (!this.a)
      {
        localRemoteViews.setTextColor(2131362731, this.c.getResources().getColor(2131101044, null));
      }
    }
    else
    {
      localRemoteViews.setTextViewText(2131362731, "");
    }
    localRemoteViews.setViewVisibility(2131363396, 0);
    localRemoteViews.setViewVisibility(2131362279, 0);
    localRemoteViews.setViewVisibility(2131362731, 0);
    localRemoteViews.setViewVisibility(2131363587, 0);
    localRemoteViews.setOnClickFillInIntent(2131362807, d.b(this.c, paramCalendar.getTimeInMillis()));
    return localRemoteViews;
  }
  
  private void p(Context paramContext, int paramInt)
  {
    long l1 = System.currentTimeMillis();
    Object localObject1 = new r0(Utils.U(paramContext));
    ((r0)localObject1).M();
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("appWidgetId : ");
    ((StringBuilder)localObject2).append(paramInt);
    z.a("Cal:D:MonthWidgetProviderNew", ((StringBuilder)localObject2).toString());
    AppWidgetManager localAppWidgetManager = AppWidgetManager.getInstance(paramContext);
    localObject2 = new RemoteViews(paramContext.getPackageName(), 2131558794);
    if (Build.VERSION.SDK_INT >= 31)
    {
      localObject2 = new RemoteViews(paramContext.getPackageName(), 2131558796);
      r((RemoteViews)localObject2, paramContext, paramInt, this.d);
    }
    else
    {
      localObject3 = new Intent(paramContext, MonthWidgetServiceNew.class);
      localObject4 = new StringBuilder();
      ((StringBuilder)localObject4).append("");
      ((StringBuilder)localObject4).append(paramInt);
      ((Intent)localObject3).setType(((StringBuilder)localObject4).toString());
      ((Intent)localObject3).putExtra("appWidgetId", paramInt);
      ((RemoteViews)localObject2).setRemoteAdapter(2131362820, (Intent)localObject3);
      localAppWidgetManager.notifyAppWidgetViewDataChanged(paramInt, 2131362820);
    }
    ((RemoteViews)localObject2).setViewVisibility(2131362703, 8);
    ((RemoteViews)localObject2).setViewVisibility(2131362213, 0);
    q((RemoteViews)localObject2, 2131362562, 2131231378);
    q((RemoteViews)localObject2, 2131362739, 2131232507);
    Object localObject3 = e0.o((r0)localObject1, 0);
    new r0().M();
    ((RemoteViews)localObject2).setOnClickPendingIntent(2131362562, d.g(paramContext));
    long l2 = ((r0)localObject3).P(true);
    if (y.a())
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(((r0)localObject3).p() + 1);
      ((StringBuilder)localObject1).append(this.c.getString(2131886977));
      localObject1 = ((StringBuilder)localObject1).toString();
    }
    else
    {
      localObject1 = Utils.p(paramContext, l2, l2, 65576);
    }
    Object localObject4 = String.valueOf(((r0)localObject3).v());
    localObject3 = localObject4;
    if (y.a())
    {
      localObject3 = new StringBuilder();
      ((StringBuilder)localObject3).append((String)localObject4);
      ((StringBuilder)localObject3).append(this.c.getString(2131887622));
      localObject3 = ((StringBuilder)localObject3).toString();
    }
    localObject4 = Calendar.getInstance();
    int i = ((Calendar)localObject4).getMinimalDaysInFirstWeek();
    ((Calendar)localObject4).setMinimalDaysInFirstWeek(4);
    int j = ((Calendar)localObject4).get(3);
    ((Calendar)localObject4).setMinimalDaysInFirstWeek(i);
    String str = paramContext.getResources().getQuantityString(2131755095, j, new Object[] { Integer.valueOf(j) }).toLowerCase().replaceAll(" ", "");
    localObject4 = new StringBuilder();
    ((StringBuilder)localObject4).append((String)localObject3);
    ((StringBuilder)localObject4).append((String)localObject1);
    ((RemoteViews)localObject2).setTextViewText(2131363392, ((StringBuilder)localObject4).toString());
    ((RemoteViews)localObject2).setTextViewText(2131363391, str);
    m(paramContext, (RemoteViews)localObject2, this.a);
    ((RemoteViews)localObject2).setPendingIntentTemplate(2131362820, d.e(paramContext));
    ((RemoteViews)localObject2).setOnClickPendingIntent(2131363392, PendingIntent.getActivity(paramContext, 0, d.c(paramContext), 201326592));
    if (!this.a)
    {
      s((RemoteViews)localObject2, 2131363392, 2131101048, paramContext);
      s((RemoteViews)localObject2, 2131363391, 2131101047, paramContext);
      c.f(paramContext, (RemoteViews)localObject2, 3);
    }
    localAppWidgetManager.updateAppWidget(paramInt, (RemoteViews)localObject2);
    l2 = System.currentTimeMillis();
    paramContext = new StringBuilder();
    paramContext.append("performUpdate() end, cost ");
    paramContext.append(l2 - l1);
    paramContext.append("ms");
    z.a("Cal:D:MonthWidgetProviderNew", paramContext.toString());
  }
  
  protected Class<? extends BaseWidgetProvider> e()
  {
    return MonthWidgetProviderNew.class;
  }
  
  protected void k(Context paramContext, int paramInt)
  {
    p(paramContext, paramInt);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Object localObject1 = paramIntent.getAction();
    this.c = paramContext;
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("onReceive(): action:");
    ((StringBuilder)localObject2).append((String)localObject1);
    z.a("Cal:D:MonthWidgetProviderNew", ((StringBuilder)localObject2).toString());
    long l1 = System.currentTimeMillis();
    localObject2 = AppWidgetManager.getInstance(paramContext);
    this.d = ((AppWidgetManager)localObject2);
    localObject2 = ((AppWidgetManager)localObject2).getAppWidgetIds(d(paramContext));
    if ("miui.intent.action.START_WEEK_DAY_CHANGED".equals(localObject1))
    {
      paramIntent = paramIntent.getStringExtra("key_widget_first_day_of_week");
      if (!TextUtils.isEmpty(paramIntent))
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("provider change firstWeek : ");
        ((StringBuilder)localObject1).append(paramIntent);
        z.a("Cal:D:MonthWidgetProviderNew", ((StringBuilder)localObject1).toString());
        k.f(paramContext, "preferences_key_widget_first_day_of_week", paramIntent);
      }
      onUpdate(paramContext, this.d, (int[])localObject2);
    }
    else
    {
      super.onReceive(paramContext, paramIntent);
    }
    long l2 = System.currentTimeMillis();
    paramContext = new StringBuilder();
    paramContext.append("onReceive() end, cost ");
    paramContext.append(l2 - l1);
    paramContext.append("ms");
    z.a("Cal:D:MonthWidgetProviderNew", paramContext.toString());
  }
  
  public void q(RemoteViews paramRemoteViews, int paramInt1, int paramInt2)
  {
    paramRemoteViews.setInt(paramInt1, "setBackgroundResource", paramInt2);
  }
  
  public void r(RemoteViews paramRemoteViews, Context paramContext, int paramInt, AppWidgetManager paramAppWidgetManager)
  {
    String str = "Cal:D:MonthWidgetProviderNew";
    z.a("Cal:D:MonthWidgetProviderNew", "updateMonthPanelAtLeastS");
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
    float f = (k.a(paramContext, ((StringBuilder)localObject).toString(), 0) - DeviceUtils.P(paramContext, paramContext.getResources().getDimensionPixelOffset(2131167520) + paramContext.getResources().getDimensionPixelOffset(2131167595) + paramContext.getResources().getDimensionPixelOffset(2131167526) + paramContext.getResources().getDimensionPixelOffset(2131167513) + paramContext.getResources().getDimensionPixelOffset(2131167514) + paramContext.getResources().getDimensionPixelOffset(2131167512) * 2) - DeviceUtils.P(paramContext, paramContext.getResources().getDimensionPixelOffset(2131167501)) * i) / (i - 1);
    localObject = new RemoteViews.RemoteCollectionItems.Builder();
    for (int j = 0; j < i * 7; j++)
    {
      Calendar localCalendar2 = Calendar.getInstance();
      localCalendar2.setTimeInMillis(localCalendar1.getTimeInMillis());
      localCalendar2.add(6, j);
      boolean bool1 = s0.u(localCalendar2, Calendar.getInstance());
      boolean bool2 = b.d(this.c, localCalendar2, paramContext.getResources());
      Calendar localCalendar3 = Calendar.getInstance();
      localCalendar3.add(2, 0);
      int k;
      if (localCalendar2.get(2) == localCalendar3.get(2)) {
        k = 1;
      } else {
        k = 0;
      }
      int m = localCalendar2.get(7);
      int n = localCalendar2.get(5);
      if (k == 0) {
        ((RemoteViews.RemoteCollectionItems.Builder)localObject).addItem(j, n(paramContext));
      } else {
        ((RemoteViews.RemoteCollectionItems.Builder)localObject).addItem(j, o(paramContext, String.valueOf(n), bool1, bool2, m, localCalendar2, f));
      }
    }
    a.a(paramRemoteViews, 2131362820, ((RemoteViews.RemoteCollectionItems.Builder)localObject).setHasStableIds(true).setViewTypeCount(9).build());
    paramAppWidgetManager.updateAppWidget(paramInt, paramRemoteViews);
    long l2 = System.currentTimeMillis();
    paramRemoteViews = new StringBuilder();
    paramRemoteViews.append("updateMonthPanelAtLeastS() end, cost ");
    paramRemoteViews.append(l2 - l1);
    paramRemoteViews.append("ms");
    z.a(str, paramRemoteViews.toString());
  }
  
  public void s(RemoteViews paramRemoteViews, int paramInt1, int paramInt2, Context paramContext)
  {
    paramRemoteViews.setTextColor(paramInt1, paramContext.getColor(paramInt2));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.widget.MonthWidgetProviderNew
 * JD-Core Version:    0.7.0.1
 */