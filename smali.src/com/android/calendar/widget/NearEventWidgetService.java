package com.android.calendar.widget;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.BaseBundle;
import android.widget.RemoteViews;
import android.widget.RemoteViewsService;
import android.widget.RemoteViewsService.RemoteViewsFactory;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.z;
import f2.d;
import f2.k;
import f2.l;
import java.util.Calendar;
import java.util.Date;

public class NearEventWidgetService
  extends RemoteViewsService
{
  private final String a = "Cal:D:NearEventWidgetService";
  
  private static void b(RemoteViews paramRemoteViews, int paramInt1, int paramInt2)
  {
    paramRemoteViews.setInt(paramInt1, "setBackgroundResource", paramInt2);
  }
  
  public RemoteViewsService.RemoteViewsFactory onGetViewFactory(Intent paramIntent)
  {
    return new a(this, paramIntent);
  }
  
  class a
    implements RemoteViewsService.RemoteViewsFactory
  {
    private Context a;
    private int b;
    private Calendar c;
    private int d;
    private Calendar e;
    private int f;
    private boolean g;
    
    public a(Context paramContext, Intent paramIntent)
    {
      this.a = paramContext;
      if (paramIntent != null) {
        this.f = paramIntent.getIntExtra("appWidgetId", -1);
      }
      this$1 = new StringBuilder();
      NearEventWidgetService.this.append("NearEventFactory appWidgetId:");
      NearEventWidgetService.this.append(this.f);
      z.a("Cal:D:NearEventWidgetService", NearEventWidgetService.this.toString());
    }
    
    public int getCount()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("getCount() week count:");
      localStringBuilder.append(this.b);
      z.a("Cal:D:NearEventWidgetService", localStringBuilder.toString());
      return this.b * 7;
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public RemoteViews getLoadingView()
    {
      z.a("Cal:D:NearEventWidgetService", "getLoadingView()");
      return new RemoteViews(this.a.getPackageName(), 2131558789);
    }
    
    public RemoteViews getViewAt(int paramInt)
    {
      Object localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("===> getViewAt() pos : ");
      ((StringBuilder)localObject1).append(paramInt);
      z.a("Cal:D:NearEventWidgetService", ((StringBuilder)localObject1).toString());
      if ((paramInt >= 0) && (paramInt < this.b * 7))
      {
        Calendar localCalendar = Calendar.getInstance();
        localCalendar.setTimeInMillis(this.c.getTimeInMillis());
        localCalendar.add(6, paramInt);
        boolean bool = s0.u(localCalendar, Calendar.getInstance());
        localObject1 = Calendar.getInstance();
        int i = 0;
        ((Calendar)localObject1).add(2, 0);
        if (localCalendar.get(2) == ((Calendar)localObject1).get(2)) {
          paramInt = 1;
        } else {
          paramInt = 0;
        }
        if (paramInt == 0)
        {
          z.g("Cal:D:NearEventWidgetService", "is not current month, return null");
          return new RemoteViews(this.a.getPackageName(), 2131559014);
        }
        int j = localCalendar.get(7);
        if (bool) {
          localObject1 = new RemoteViews(this.a.getPackageName(), 2131559013);
        } else if ((j != 7) && (j != 1)) {
          localObject1 = new RemoteViews(this.a.getPackageName(), 2131559012);
        } else {
          localObject1 = new RemoteViews(this.a.getPackageName(), 2131559015);
        }
        String str = String.valueOf(localCalendar.get(5));
        if (!l.f(this.a))
        {
          k = this.b;
          if (k == 4) {
            paramInt = this.a.getResources().getDimensionPixelOffset(2131167573);
          }
          for (;;)
          {
            break;
            if (k == 5)
            {
              paramInt = this.a.getResources().getDimensionPixelOffset(2131167575);
            }
            else
            {
              paramInt = i;
              if (k == 6) {
                paramInt = this.a.getResources().getDimensionPixelOffset(2131167577);
              }
            }
          }
        }
        Context localContext = this.a;
        Object localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("preferences_key_widget_max_height");
        ((StringBuilder)localObject2).append(this.f);
        float f1 = k.a(localContext, ((StringBuilder)localObject2).toString(), 0);
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("oldMaxHeight : ");
        ((StringBuilder)localObject2).append(f1);
        ((StringBuilder)localObject2).append(" appWidgetId : ");
        ((StringBuilder)localObject2).append(this.f);
        z.a("Cal:D:NearEventWidgetService", ((StringBuilder)localObject2).toString());
        localObject2 = this.a;
        i = DeviceUtils.P((Context)localObject2, ((Context)localObject2).getResources().getDimensionPixelOffset(2131167469));
        localObject2 = this.a;
        int k = DeviceUtils.P((Context)localObject2, ((Context)localObject2).getResources().getDimensionPixelOffset(2131167543));
        float f2 = i * 2;
        paramInt = this.b;
        f1 = (f1 - f2 - 16.0F - k * paramInt) / paramInt;
        paramInt = DeviceUtils.e(this.a, Math.max(0.0F, f1));
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("padding:");
        ((StringBuilder)localObject2).append(paramInt);
        ((StringBuilder)localObject2).append(" paddingDp:");
        ((StringBuilder)localObject2).append(f1);
        ((StringBuilder)localObject2).append(" text size:");
        ((StringBuilder)localObject2).append(k);
        ((StringBuilder)localObject2).append(" topMargin:");
        ((StringBuilder)localObject2).append(i);
        z.a("Cal:D:NearEventWidgetService", ((StringBuilder)localObject2).toString());
        ((RemoteViews)localObject1).setViewPadding(2131362863, 0, paramInt, 0, 0);
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("dayString:");
        ((StringBuilder)localObject2).append(str);
        z.a("Cal:D:NearEventWidgetService", ((StringBuilder)localObject2).toString());
        ((RemoteViews)localObject1).setTextViewText(2131363436, str);
        if (bool) {
          ((RemoteViews)localObject1).setTextColor(2131363436, this.a.getColor(2131101060));
        } else if (!this.g) {
          if ((j != 7) && (j != 1)) {
            ((RemoteViews)localObject1).setTextColor(2131363436, this.a.getColor(2131101051));
          } else {
            ((RemoteViews)localObject1).setTextColor(2131363436, this.a.getColor(2131101058));
          }
        }
        if (bool) {
          NearEventWidgetService.a((RemoteViews)localObject1, 2131363436, 2131232527);
        } else {
          NearEventWidgetService.a((RemoteViews)localObject1, 2131363436, 2131232526);
        }
        ((RemoteViews)localObject1).setOnClickFillInIntent(2131362863, d.b(this.a, localCalendar.getTimeInMillis()));
        return localObject1;
      }
      return null;
    }
    
    public int getViewTypeCount()
    {
      return 6;
    }
    
    public boolean hasStableIds()
    {
      return true;
    }
    
    public void onCreate()
    {
      z.a("Cal:D:NearEventWidgetService", "onCreate()");
      this.g = l.f(this.a);
      Object localObject1 = AppWidgetManager.getInstance(this.a).getAppWidgetOptions(this.f);
      if (localObject1 != null)
      {
        int i = ((BaseBundle)localObject1).getInt("appWidgetMaxWidth");
        int j = ((BaseBundle)localObject1).getInt("appWidgetMinWidth");
        int k = ((BaseBundle)localObject1).getInt("appWidgetMaxHeight");
        int m = ((BaseBundle)localObject1).getInt("appWidgetMinHeight");
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("maxHeight:");
        ((StringBuilder)localObject1).append(k);
        ((StringBuilder)localObject1).append(" minWidth:");
        ((StringBuilder)localObject1).append(j);
        z.a("Cal:D:NearEventWidgetService", ((StringBuilder)localObject1).toString());
        Object localObject2 = this.a;
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("preferences_key_widget_max_width");
        ((StringBuilder)localObject1).append(this.f);
        k.e((Context)localObject2, ((StringBuilder)localObject1).toString(), i);
        localObject2 = this.a;
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("preferences_key_widget_min_width");
        ((StringBuilder)localObject1).append(this.f);
        k.e((Context)localObject2, ((StringBuilder)localObject1).toString(), j);
        localObject1 = this.a;
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("preferences_key_widget_max_height");
        ((StringBuilder)localObject2).append(this.f);
        k.e((Context)localObject1, ((StringBuilder)localObject2).toString(), k);
        localObject1 = this.a;
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("preferences_key_widget_min_height");
        ((StringBuilder)localObject2).append(this.f);
        k.e((Context)localObject1, ((StringBuilder)localObject2).toString(), m);
      }
    }
    
    public void onDataSetChanged()
    {
      Calendar localCalendar = Calendar.getInstance();
      Object localObject = new Date(localCalendar.getTimeInMillis());
      this.e = Calendar.getInstance();
      this.d = localCalendar.get(2);
      localCalendar = l.b(this.a, (Date)localObject);
      this.c = localCalendar;
      int i;
      if (localCalendar == null) {
        i = 5;
      } else {
        i = e0.u(this.a, (Date)localObject);
      }
      this.b = i;
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("onDataSetChanged current month days:");
      ((StringBuilder)localObject).append(this.e.get(5));
      z.g("Cal:D:NearEventWidgetService", ((StringBuilder)localObject).toString());
    }
    
    public void onDestroy()
    {
      z.a("Cal:D:NearEventWidgetService", "onDestroy()");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.widget.NearEventWidgetService
 * JD-Core Version:    0.7.0.1
 */