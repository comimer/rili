package com.android.calendar.widget;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.text.TextUtils;
import android.widget.RemoteViews;
import android.widget.RemoteViewsService;
import android.widget.RemoteViewsService.RemoteViewsFactory;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.miui.calendar.util.DaysOffUtils;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import s1.e;

public class MonthWidgetService
  extends RemoteViewsService
{
  public RemoteViewsService.RemoteViewsFactory onGetViewFactory(Intent paramIntent)
  {
    return new a(this, paramIntent);
  }
  
  class a
    implements RemoteViewsService.RemoteViewsFactory
  {
    private Context a;
    private Resources b;
    private int c;
    private Calendar d;
    private ArrayList<Event> e = new ArrayList();
    private int f = -1;
    
    public a(Context paramContext, Intent paramIntent)
    {
      this.a = paramContext;
      this.b = paramContext.getResources();
      if (paramIntent != null)
      {
        this.f = paramIntent.getIntExtra("appWidgetId", -1);
        this$1 = new StringBuilder();
        MonthWidgetService.this.append("MonthRemoteViewFactory widgetId : ");
        MonthWidgetService.this.append(this.f);
        z.a("Cal:D:MonthWidgetService", MonthWidgetService.this.toString());
      }
    }
    
    private boolean a(Calendar arg1)
    {
      ??? = b(???);
      int i = r0.n(???.P(true), ???.l());
      synchronized (this.e)
      {
        Iterator localIterator = this.e.iterator();
        while (localIterator.hasNext())
        {
          Event localEvent = (Event)localIterator.next();
          if ((localEvent.getEx().getStartJulianDay() <= i) && (i <= localEvent.getEx().getEndJulianDay())) {
            return true;
          }
        }
        return false;
      }
    }
    
    private r0 b(Calendar paramCalendar)
    {
      r0 localr0 = new r0();
      localr0.D(paramCalendar.getTimeInMillis());
      localr0.y(true);
      return localr0;
    }
    
    private int c(Calendar paramCalendar)
    {
      Calendar localCalendar = Calendar.getInstance();
      int i = e2.b.c(this.a, this.f);
      if (s0.u(localCalendar, paramCalendar)) {
        i = MonthWidgetService.this.getResources().getColor(2131100687);
      }
      return i;
    }
    
    public int getCount()
    {
      return this.c * 7;
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public RemoteViews getLoadingView()
    {
      return new RemoteViews(this.a.getPackageName(), 2131558789);
    }
    
    public RemoteViews getViewAt(int paramInt)
    {
      if ((paramInt >= 0) && (paramInt < this.c * 7))
      {
        localObject1 = Calendar.getInstance();
        ((Calendar)localObject1).setTimeInMillis(this.d.getTimeInMillis());
        ((Calendar)localObject1).add(6, paramInt);
        boolean bool = s0.u((Calendar)localObject1, Calendar.getInstance());
        Object localObject2 = Calendar.getInstance();
        ((Calendar)localObject2).add(2, MonthWidgetProvider.e);
        int i = ((Calendar)localObject1).get(2);
        paramInt = ((Calendar)localObject2).get(2);
        int j = 1;
        int k = 0;
        int m;
        if (i == paramInt) {
          m = 1;
        } else {
          m = 0;
        }
        if (m == 0)
        {
          z.c("Cal:D:MonthWidgetService", "is not current month, return null");
          return null;
        }
        paramInt = this.c;
        if (paramInt == 4) {
          paramInt = 2131558777;
        } else if (paramInt == 5) {
          paramInt = 2131558781;
        } else {
          paramInt = 2131558785;
        }
        localObject2 = new RemoteViews(this.a.getPackageName(), paramInt);
        i = c((Calendar)localObject1);
        paramInt = ((Calendar)localObject1).get(5);
        ((RemoteViews)localObject2).setTextColor(2131362279, i);
        ((RemoteViews)localObject2).setTextViewText(2131362279, String.valueOf(paramInt));
        if (bool) {
          ((RemoteViews)localObject2).setImageViewResource(2131363396, 2131232516);
        } else {
          ((RemoteViews)localObject2).setImageViewResource(2131363396, 2131232514);
        }
        Object localObject3;
        if ((!bool) && (y.t(this.a)))
        {
          paramInt = DaysOffUtils.g(this.a).e(((Calendar)localObject1).get(1), ((Calendar)localObject1).get(6));
          if (paramInt == 1)
          {
            localObject3 = this.b;
            if (bool) {
              paramInt = 2131100680;
            } else {
              paramInt = 2131100690;
            }
            i = ((Resources)localObject3).getColor(paramInt);
            localObject3 = this.b;
            if (y.f(this.a)) {
              paramInt = 2131887398;
            } else {
              paramInt = 2131887397;
            }
            ((RemoteViews)localObject2).setTextViewText(2131363587, ((Resources)localObject3).getString(paramInt));
            paramInt = j;
          }
          else if (paramInt == 2)
          {
            localObject3 = this.b;
            if (bool) {
              paramInt = 2131100680;
            } else {
              paramInt = 2131100698;
            }
            i = ((Resources)localObject3).getColor(paramInt);
            localObject3 = this.b;
            if (y.f(this.a)) {
              paramInt = 2131887854;
            } else {
              paramInt = 2131887853;
            }
            ((RemoteViews)localObject2).setTextViewText(2131363587, ((Resources)localObject3).getString(paramInt));
            paramInt = j;
          }
          else
          {
            ((RemoteViews)localObject2).setTextViewText(2131363587, "");
            paramInt = 0;
          }
          ((RemoteViews)localObject2).setTextColor(2131363587, i);
        }
        else
        {
          ((RemoteViews)localObject2).setTextViewText(2131363587, "");
          paramInt = 0;
        }
        if ((!bool) && (a((Calendar)localObject1)) && (paramInt == 0) && (m != 0))
        {
          ((RemoteViews)localObject2).setViewVisibility(2131362420, 0);
          localObject3 = this.b;
          if (bool) {
            paramInt = 2131100680;
          } else {
            paramInt = 2131100676;
          }
          ((RemoteViews)localObject2).setImageViewBitmap(2131362420, x0.o(((Resources)localObject3).getColor(paramInt), this.b.getDimensionPixelSize(2131166878) * 2));
        }
        else
        {
          ((RemoteViews)localObject2).setViewVisibility(2131362420, 8);
        }
        if ((!bool) && (y.q(this.a)))
        {
          localObject3 = new StringBuilder();
          ((StringBuilder)localObject3).append("mWidgetId : ");
          ((StringBuilder)localObject3).append(this.f);
          z.a("Cal:D:MonthWidgetService", ((StringBuilder)localObject3).toString());
          ((RemoteViews)localObject2).setTextColor(2131362731, e2.b.e(this.a, this.f));
          localObject3 = z3.b.c(this.a, (Calendar)localObject1, this.b);
          if ((localObject3 != null) && (((List)localObject3).size() > 0) && (!TextUtils.isEmpty((CharSequence)((List)localObject3).get(0)))) {
            ((RemoteViews)localObject2).setTextViewText(2131362731, (CharSequence)((List)localObject3).get(0));
          } else {
            ((RemoteViews)localObject2).setTextViewText(2131362731, "");
          }
        }
        else
        {
          ((RemoteViews)localObject2).setTextViewText(2131362731, "");
        }
        ((RemoteViews)localObject2).setOnClickFillInIntent(2131362807, AgendaWidgetProvider.b(this.a, ((Calendar)localObject1).getTimeInMillis()));
        if (m != 0) {
          paramInt = k;
        } else {
          paramInt = 4;
        }
        ((RemoteViews)localObject2).setViewVisibility(2131363396, paramInt);
        ((RemoteViews)localObject2).setViewVisibility(2131362279, paramInt);
        ((RemoteViews)localObject2).setViewVisibility(2131362731, paramInt);
        ((RemoteViews)localObject2).setViewVisibility(2131363587, paramInt);
        return localObject2;
      }
      Object localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("getViewAt(): position invalid: ");
      ((StringBuilder)localObject1).append(paramInt);
      z.c("Cal:D:MonthWidgetService", ((StringBuilder)localObject1).toString());
      return null;
    }
    
    public int getViewTypeCount()
    {
      return 3;
    }
    
    public boolean hasStableIds()
    {
      return true;
    }
    
    public void onCreate() {}
    
    public void onDataSetChanged()
    {
      z.a("Cal:D:MonthWidgetService", "onDataSetChanged()");
      ??? = Calendar.getInstance();
      ((Calendar)???).add(2, MonthWidgetProvider.e);
      Object localObject2 = new Date(((Calendar)???).getTimeInMillis());
      ??? = e0.b(this.a, (Date)localObject2);
      this.d = ((Calendar)???);
      int i;
      if (??? == null) {
        i = 5;
      } else {
        i = e0.u(this.a, (Date)localObject2);
      }
      this.c = i;
      localObject2 = b(this.d);
      Object localObject4 = e.d(this.a, r0.n(((r0)localObject2).P(true), ((r0)localObject2).l()), this.c * 7);
      synchronized (this.e)
      {
        this.e.clear();
        Iterator localIterator = ((List)localObject4).iterator();
        while (localIterator.hasNext())
        {
          localObject4 = (Event)localIterator.next();
          if (((Event)localObject4).getStartTimeMillis() > ((r0)localObject2).P(true)) {
            this.e.add(localObject4);
          }
        }
        return;
      }
    }
    
    public void onDestroy() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.widget.MonthWidgetService
 * JD-Core Version:    0.7.0.1
 */