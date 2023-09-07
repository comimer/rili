package com.android.calendar.widget;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.text.TextUtils;
import android.widget.RemoteViews;
import android.widget.RemoteViewsService;
import android.widget.RemoteViewsService.RemoteViewsFactory;
import com.miui.calendar.util.DaysOffUtils;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import f2.d;
import f2.l;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import z3.b;

public class MonthWidgetServiceNew
  extends RemoteViewsService
{
  public RemoteViewsService.RemoteViewsFactory onGetViewFactory(Intent paramIntent)
  {
    return new a(this, paramIntent);
  }
  
  class a
    implements RemoteViewsService.RemoteViewsFactory
  {
    private final Context a;
    private final Resources b;
    private int c;
    private Calendar d;
    private int e = -1;
    private boolean f;
    
    public a(Context paramContext, Intent paramIntent)
    {
      this.a = paramContext;
      this.b = paramContext.getResources();
      if (paramIntent != null) {
        this.e = paramIntent.getIntExtra("appWidgetId", -1);
      }
    }
    
    private int a(Calendar paramCalendar)
    {
      Calendar localCalendar = Calendar.getInstance();
      int i = MonthWidgetServiceNew.this.getResources().getColor(2131101046);
      if (s0.u(localCalendar, paramCalendar)) {
        i = MonthWidgetServiceNew.this.getResources().getColor(2131101045);
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
      Object localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("getViewAt(): position : ");
      ((StringBuilder)localObject1).append(paramInt);
      z.g("Cal:D:MonthWidgetServiceNew", ((StringBuilder)localObject1).toString());
      if ((paramInt >= 0) && (paramInt < this.c * 7))
      {
        localObject1 = Calendar.getInstance();
        ((Calendar)localObject1).setTimeInMillis(this.d.getTimeInMillis());
        ((Calendar)localObject1).add(6, paramInt);
        boolean bool1 = s0.u((Calendar)localObject1, Calendar.getInstance());
        boolean bool2 = b.d(this.a, (Calendar)localObject1, MonthWidgetServiceNew.this.getResources());
        Object localObject2 = Calendar.getInstance();
        int i = 0;
        ((Calendar)localObject2).add(2, 0);
        int j;
        if (((Calendar)localObject1).get(2) == ((Calendar)localObject2).get(2)) {
          j = 1;
        } else {
          j = 0;
        }
        if (j == 0)
        {
          z.c("Cal:D:MonthWidgetServiceNew", "is not current month, return null");
          return null;
        }
        paramInt = this.c;
        if (paramInt == 4)
        {
          if (bool1) {
            paramInt = 2131558779;
          } else if (bool2) {
            paramInt = 2131558780;
          } else {
            paramInt = 2131558778;
          }
        }
        else if (paramInt == 5)
        {
          if (bool1) {
            paramInt = 2131558783;
          } else if (bool2) {
            paramInt = 2131558784;
          } else {
            paramInt = 2131558782;
          }
        }
        else if (bool1) {
          paramInt = 2131558787;
        } else if (bool2) {
          paramInt = 2131558788;
        } else {
          paramInt = 2131558786;
        }
        localObject2 = new RemoteViews(this.a.getPackageName(), paramInt);
        int k = a((Calendar)localObject1);
        if (bool1) {
          ((RemoteViews)localObject2).setTextColor(2131362279, k);
        } else if (!this.f) {
          ((RemoteViews)localObject2).setTextColor(2131362279, k);
        }
        ((RemoteViews)localObject2).setTextViewText(2131362279, String.valueOf(((Calendar)localObject1).get(5)));
        if (bool1) {
          ((RemoteViews)localObject2).setImageViewResource(2131363396, 2131232517);
        } else {
          ((RemoteViews)localObject2).setImageViewResource(2131363396, 2131232515);
        }
        if (y.t(this.a))
        {
          int m = DaysOffUtils.g(this.a).e(((Calendar)localObject1).get(1), ((Calendar)localObject1).get(6));
          paramInt = 2131100680;
          if (m == 1)
          {
            localObject3 = this.b;
            if (!bool1) {
              paramInt = 2131100690;
            }
            k = ((Resources)localObject3).getColor(paramInt);
            localObject3 = this.b;
            if (y.f(this.a)) {
              paramInt = 2131887398;
            } else {
              paramInt = 2131887397;
            }
            ((RemoteViews)localObject2).setTextViewText(2131363587, ((Resources)localObject3).getString(paramInt));
            paramInt = k;
          }
          else if (m == 2)
          {
            localObject3 = this.b;
            if (!bool1) {
              paramInt = 2131100698;
            }
            k = ((Resources)localObject3).getColor(paramInt);
            localObject3 = this.b;
            if (y.f(this.a)) {
              paramInt = 2131887854;
            } else {
              paramInt = 2131887853;
            }
            ((RemoteViews)localObject2).setTextViewText(2131363587, ((Resources)localObject3).getString(paramInt));
            paramInt = k;
          }
          else
          {
            ((RemoteViews)localObject2).setTextViewText(2131363587, "");
            paramInt = k;
          }
          ((RemoteViews)localObject2).setTextColor(2131363587, paramInt);
        }
        else
        {
          ((RemoteViews)localObject2).setTextViewText(2131363587, "");
        }
        ((RemoteViews)localObject2).setViewVisibility(2131362420, 8);
        Object localObject3 = b.c(this.a, (Calendar)localObject1, this.b);
        if ((localObject3 != null) && (((List)localObject3).size() > 0) && (!TextUtils.isEmpty((CharSequence)((List)localObject3).get(0))))
        {
          ((RemoteViews)localObject2).setTextViewText(2131362731, (CharSequence)((List)localObject3).get(0));
          if (bool1) {
            ((RemoteViews)localObject2).setTextColor(2131362731, this.a.getResources().getColor(2131101045, null));
          } else if (bool2) {
            ((RemoteViews)localObject2).setTextColor(2131362731, this.a.getResources().getColor(2131101043, null));
          } else if (!this.f) {
            ((RemoteViews)localObject2).setTextColor(2131362731, this.a.getResources().getColor(2131101044, null));
          }
        }
        else
        {
          ((RemoteViews)localObject2).setTextViewText(2131362731, "");
        }
        ((RemoteViews)localObject2).setOnClickFillInIntent(2131362807, d.b(this.a, ((Calendar)localObject1).getTimeInMillis()));
        if (j != 0) {
          paramInt = i;
        } else {
          paramInt = 4;
        }
        ((RemoteViews)localObject2).setViewVisibility(2131363396, paramInt);
        ((RemoteViews)localObject2).setViewVisibility(2131362279, paramInt);
        ((RemoteViews)localObject2).setViewVisibility(2131362731, paramInt);
        ((RemoteViews)localObject2).setViewVisibility(2131363587, paramInt);
        return localObject2;
      }
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("getViewAt(): position invalid: ");
      ((StringBuilder)localObject1).append(paramInt);
      z.c("Cal:D:MonthWidgetServiceNew", ((StringBuilder)localObject1).toString());
      return null;
    }
    
    public int getViewTypeCount()
    {
      return 9;
    }
    
    public boolean hasStableIds()
    {
      return true;
    }
    
    public void onCreate()
    {
      this.f = l.f(this.a);
    }
    
    public void onDataSetChanged()
    {
      z.a("Cal:D:MonthWidgetServiceNew", "onDataSetChanged()");
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.add(2, 0);
      Date localDate = new Date(localCalendar.getTimeInMillis());
      localCalendar = l.b(this.a, localDate);
      this.d = localCalendar;
      int i;
      if (localCalendar == null) {
        i = 5;
      } else {
        i = e0.u(this.a, localDate);
      }
      this.c = i;
    }
    
    public void onDestroy() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.widget.MonthWidgetServiceNew
 * JD-Core Version:    0.7.0.1
 */