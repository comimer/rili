package com.android.calendar.widget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.res.Resources;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.format.DateUtils;
import android.util.SparseIntArray;
import android.widget.RemoteViews;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.widget.base.BaseWidgetProvider;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import f2.c;
import f2.d;
import f2.j;
import f2.j.a;
import java.util.Calendar;
import java.util.List;

public class NormalAgendaWidgetProvider
  extends BaseWidgetProvider
{
  private static final Object c = new Object();
  private static final SparseIntArray d;
  
  static
  {
    SparseIntArray localSparseIntArray = new SparseIntArray();
    d = localSparseIntArray;
    localSparseIntArray.append(0, 2131362901);
    localSparseIntArray.append(1, 2131362902);
    localSparseIntArray.append(2, 2131362903);
    localSparseIntArray.append(3, 2131362904);
  }
  
  protected static a l(Context paramContext, List<Event> paramList, String paramString)
  {
    paramContext = new a(paramContext, paramString);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("events size#1 : ");
    localStringBuilder.append(paramList.size());
    z.a("Cal:D:NormalAgendaWidgetProvider", localStringBuilder.toString());
    paramContext.b(paramList, paramString, 201);
    return paramContext;
  }
  
  public static RemoteViews m(Context paramContext, int paramInt, a.b paramb, boolean paramBoolean)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("event all day : ");
    ((StringBuilder)localObject1).append(paramb.k);
    z.a("Cal:D:NormalAgendaWidgetProvider", ((StringBuilder)localObject1).toString());
    localObject1 = new RemoteViews(paramContext.getPackageName(), 2131558835);
    Object localObject2 = paramContext.getResources();
    long l1 = System.currentTimeMillis();
    if (!paramb.k)
    {
      if ((paramb.i <= l1) && (l1 <= paramb.j))
      {
        z.a("Cal:D:NormalAgendaWidgetProvider", "event all day#2");
        ((RemoteViews)localObject1).setViewVisibility(2131362892, 0);
        ((RemoteViews)localObject1).setInt(2131362892, "setBackgroundResource", 2131232555);
        ((RemoteViews)localObject1).setInt(2131362892, "setText", 2131886741);
        ((RemoteViews)localObject1).setInt(2131362892, "setTextColor", paramContext.getColor(2131101062));
      }
      l2 = paramb.i;
      if ((l2 > l1) && (l2 - l1 <= 900000L))
      {
        localObject1 = new RemoteViews(paramContext.getPackageName(), 2131558838);
        ((RemoteViews)localObject1).setViewVisibility(2131362892, 0);
        ((RemoteViews)localObject1).setInt(2131362892, "setBackgroundResource", 2131232556);
        int i = (int)((paramb.i - l1) / 1000L / 60L) + 1;
        ((RemoteViews)localObject1).setCharSequence(2131362892, "setText", paramContext.getResources().getQuantityString(2131755025, i, new Object[] { Integer.valueOf(i) }));
        ((RemoteViews)localObject1).setInt(2131362892, "setTextColor", paramContext.getColor(2131101068));
        bool = true;
        break label344;
      }
      if ((l2 > l1) && (l2 - l1 > 900000L)) {
        ((RemoteViews)localObject1).setViewVisibility(2131362892, 8);
      }
    }
    else
    {
      ((RemoteViews)localObject1).setInt(2131362892, "setBackgroundResource", 2131232554);
      ((RemoteViews)localObject1).setCharSequence(2131362892, "setText", "");
      ((RemoteViews)localObject1).setViewVisibility(2131362892, 8);
    }
    boolean bool = false;
    label344:
    Context localContext = paramContext;
    Object localObject3;
    if (!paramb.k)
    {
      if (paramb.b.contains("&"))
      {
        localObject3 = paramb.b.split("&");
        if ((localObject3 != null) && (localObject3.length == 2))
        {
          r((RemoteViews)localObject1, 2131363559, paramb.a, localObject3[0]);
          r((RemoteViews)localObject1, 2131363563, paramb.a, localObject3[1]);
        }
      }
    }
    else
    {
      r((RemoteViews)localObject1, 2131363559, paramb.a, paramb.b);
      r((RemoteViews)localObject1, 2131363563, 8, paramb.b);
    }
    r((RemoteViews)localObject1, 2131363569, paramb.c, paramb.d);
    r((RemoteViews)localObject1, 2131363379, paramb.e, paramb.f);
    ((RemoteViews)localObject1).setViewVisibility(2131361918, 0);
    ((RemoteViews)localObject1).setImageViewBitmap(2131361918, x0.n((Resources)localObject2, Utils.x((Resources)localObject2, paramb.n, paramb.o, paramb.m, paramb.l), ((Resources)localObject2).getDimensionPixelSize(2131165727)));
    long l3 = paramb.i;
    long l4 = paramb.j;
    long l2 = l3;
    l1 = l4;
    if (paramb.k)
    {
      localObject2 = Utils.U(paramContext);
      localObject3 = new r0();
      l2 = Utils.e((r0)localObject3, l3, (String)localObject2);
      l1 = Utils.e((r0)localObject3, l4, (String)localObject2);
    }
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("eventId : ");
    ((StringBuilder)localObject2).append(paramb.h);
    ((StringBuilder)localObject2).append(" eventType : ");
    ((StringBuilder)localObject2).append(paramb.p);
    z.a("Cal:D:NormalAgendaWidgetProvider", ((StringBuilder)localObject2).toString());
    ((RemoteViews)localObject1).setOnClickPendingIntent(2131363579, PendingIntent.getActivity(localContext, paramInt + 2001, d.a(paramContext, paramb.h, l2, l1, paramb.p), 201326592));
    if (!paramBoolean)
    {
      q((RemoteViews)localObject1, 2131363579, c.a(localContext, bool));
      if (!bool)
      {
        s((RemoteViews)localObject1, 2131363559, c.c(paramContext));
        s((RemoteViews)localObject1, 2131363563, c.d(paramContext));
        s((RemoteViews)localObject1, 2131363559, c.c(paramContext));
        s((RemoteViews)localObject1, 2131363379, c.b(paramContext));
        s((RemoteViews)localObject1, 2131363569, c.e(paramContext));
      }
    }
    return localObject1;
  }
  
  private void p(Context paramContext, int paramInt)
  {
    o(paramContext, paramInt);
  }
  
  private static void q(RemoteViews paramRemoteViews, int paramInt1, int paramInt2)
  {
    paramRemoteViews.setInt(paramInt1, "setBackgroundResource", paramInt2);
  }
  
  private static void r(RemoteViews paramRemoteViews, int paramInt1, int paramInt2, String paramString)
  {
    paramRemoteViews.setViewVisibility(paramInt1, paramInt2);
    if (paramInt2 == 0) {
      paramRemoteViews.setTextViewText(paramInt1, paramString);
    }
  }
  
  private static void s(RemoteViews paramRemoteViews, int paramInt1, int paramInt2)
  {
    paramRemoteViews.setTextColor(paramInt1, paramInt2);
  }
  
  protected Class<? extends BaseWidgetProvider> e()
  {
    return NormalAgendaWidgetProvider.class;
  }
  
  protected void k(Context paramContext, int paramInt)
  {
    p(paramContext, paramInt);
  }
  
  public RemoteViews n(Context paramContext, b paramb)
  {
    synchronized (c)
    {
      RemoteViews localRemoteViews = new android/widget/RemoteViews;
      localRemoteViews.<init>(paramContext.getPackageName(), 2131558832);
      Object localObject2 = new com/miui/calendar/util/r0;
      ((r0)localObject2).<init>(Utils.U(paramContext));
      ((r0)localObject2).M();
      long l = ((r0)localObject2).P(true);
      Object localObject3 = Calendar.getInstance();
      ((Calendar)localObject3).setTimeInMillis(l);
      localObject2 = DateUtils.getDayOfWeekString(((r0)localObject2).t() + 1, 20);
      Object localObject4 = Utils.p(paramContext, l, l, 1572888);
      int i = ((Calendar)localObject3).getMinimalDaysInFirstWeek();
      ((Calendar)localObject3).setMinimalDaysInFirstWeek(4);
      int j = ((Calendar)localObject3).get(3);
      ((Calendar)localObject3).setMinimalDaysInFirstWeek(i);
      localObject3 = paramContext.getResources();
      i = 0;
      String str = ((Resources)localObject3).getString(2131887845, new Object[] { Integer.valueOf(j) });
      localObject3 = new java/lang/StringBuilder;
      ((StringBuilder)localObject3).<init>();
      ((StringBuilder)localObject3).append((String)localObject4);
      ((StringBuilder)localObject3).append("·");
      ((StringBuilder)localObject3).append((String)localObject2);
      ((StringBuilder)localObject3).append("·");
      ((StringBuilder)localObject3).append(str);
      localRemoteViews.setTextViewText(2131363603, ((StringBuilder)localObject3).toString());
      localRemoteViews.setOnClickPendingIntent(2131363603, PendingIntent.getActivity(paramContext, 0, d.f(paramContext, 3, 0, false), 67108864));
      localRemoteViews.setOnClickPendingIntent(2131363409, PendingIntent.getActivity(paramContext, 0, d.f(paramContext, 4, 0, true), 201326592));
      localRemoteViews.setOnClickPendingIntent(2131362822, PendingIntent.getActivity(paramContext, 1, d.f(paramContext, 1, 0, false), 201326592));
      localRemoteViews.setOnClickPendingIntent(2131362873, d.g(paramContext));
      localRemoteViews.setTextViewText(2131363409, paramb.b.a);
      localObject2 = paramb.a;
      if ((localObject2 != null) && (!((a)localObject2).d.isEmpty())) {
        localRemoteViews.setViewVisibility(2131362895, 8);
      } else {
        localRemoteViews.setViewVisibility(2131362895, 0);
      }
      localRemoteViews.setOnClickPendingIntent(2131362895, PendingIntent.getActivity(paramContext, 0, d.c(paramContext), 201326592));
      l = System.currentTimeMillis();
      localObject2 = Utils.U(paramContext);
      f2.a.a(paramContext, paramb.a, l, (String)localObject2, NormalAgendaWidgetProvider.class);
      int k = Math.min(paramb.a.d.size(), 4);
      for (;;)
      {
        j = k;
        if (i >= k) {
          break;
        }
        localObject4 = (a.b)paramb.a.d.get(i);
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        ((StringBuilder)localObject2).append("event info title : ");
        ((StringBuilder)localObject2).append(((a.b)localObject4).f);
        z.a("Cal:D:NormalAgendaWidgetProvider", ((StringBuilder)localObject2).toString());
        localObject4 = m(paramContext, i, (a.b)localObject4, this.a);
        localObject2 = d;
        localRemoteViews.removeAllViews(((SparseIntArray)localObject2).get(i));
        localRemoteViews.addView(((SparseIntArray)localObject2).get(i), (RemoteViews)localObject4);
        i++;
      }
      while (j < 4)
      {
        localRemoteViews.removeAllViews(d.get(j));
        j++;
      }
      if (!this.a)
      {
        localRemoteViews.setTextColor(2131363603, paramContext.getColor(2131101077));
        localRemoteViews.setTextColor(2131362895, paramContext.getColor(2131101010));
        c.f(paramContext, localRemoteViews, 1);
      }
      return localRemoteViews;
    }
  }
  
  public void o(Context paramContext, int paramInt)
  {
    Object localObject1 = Calendar.getInstance();
    Object localObject2 = j.m(paramContext, (Calendar)localObject1, false);
    Object localObject3 = l(paramContext, (List)localObject2, Utils.U(paramContext));
    localObject1 = j.e(paramContext, (Calendar)localObject1, (List)localObject2);
    localObject2 = new b(null);
    ((b)localObject2).a = ((a)localObject3);
    ((b)localObject2).b = ((j.a)localObject1);
    localObject3 = n(paramContext, (b)localObject2);
    AppWidgetManager localAppWidgetManager = AppWidgetManager.getInstance(paramContext);
    if (this.a)
    {
      localObject1 = new Bundle();
      ((BaseBundle)localObject1).putString("miuiWidgetEventCode", ((b)localObject2).b.b);
      long l = System.currentTimeMillis();
      ((BaseBundle)localObject1).putString("miuiWidgetTimestamp", String.valueOf(l));
      paramContext = new StringBuilder();
      paramContext.append("pccode:");
      paramContext.append(((b)localObject2).b.b);
      paramContext.append(" time:");
      paramContext.append(l);
      z.a("Cal:D:NormalAgendaWidgetProvider", paramContext.toString());
      localAppWidgetManager.updateAppWidgetOptions(paramInt, (Bundle)localObject1);
    }
    localAppWidgetManager.updateAppWidget(paramInt, (RemoteViews)localObject3);
  }
  
  public void onDisabled(Context paramContext)
  {
    z.a("Cal:D:NormalAgendaWidgetProvider", "NormalAgendaWidgetProvider onDisabled()");
    f2.a.c(paramContext);
  }
  
  private static class b
  {
    a a;
    j.a b;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.widget.NormalAgendaWidgetProvider
 * JD-Core Version:    0.7.0.1
 */