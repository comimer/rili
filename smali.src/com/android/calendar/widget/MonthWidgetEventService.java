package com.android.calendar.widget;

import android.content.Context;
import android.content.Intent;
import android.widget.RemoteViews;
import android.widget.RemoteViewsService;
import android.widget.RemoteViewsService.RemoteViewsFactory;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.Event;
import com.miui.calendar.util.r0;
import e2.b;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import s1.e;

public class MonthWidgetEventService
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
    private ArrayList<Event> b = new ArrayList();
    private int c = -1;
    
    public a(Context paramContext, Intent paramIntent)
    {
      this.a = paramContext;
      if (paramIntent != null) {
        this.c = paramIntent.getIntExtra("appWidgetId", -1);
      }
    }
    
    public int getCount()
    {
      return this.b.size();
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public RemoteViews getLoadingView()
    {
      return null;
    }
    
    public RemoteViews getViewAt(int paramInt)
    {
      if (paramInt < 0) {
        return null;
      }
      RemoteViews localRemoteViews = new RemoteViews(this.a.getPackageName(), 2131558793);
      if (paramInt == 0) {
        localRemoteViews.setViewVisibility(2131362516, 0);
      } else {
        localRemoteViews.setViewVisibility(2131362516, 8);
      }
      int i = b.c(this.a, this.c);
      localRemoteViews.setTextColor(2131362516, i);
      localRemoteViews.setTextColor(2131362430, i);
      localRemoteViews.setTextColor(2131362429, i);
      if (paramInt < this.b.size())
      {
        Event localEvent = (Event)this.b.get(paramInt);
        localRemoteViews.setTextViewText(2131362430, com.android.calendar.event.e0.d(this.a, localEvent.getTitle()));
        localRemoteViews.setTextViewText(2131362429, com.miui.calendar.util.e0.e(this.a, localEvent, Utils.U(MonthWidgetEventService.this), Calendar.getInstance()));
        Intent localIntent = Utils.b0(this.a, localEvent);
        localIntent.putExtra("extra_key_event_type", localEvent.getEventType());
        localRemoteViews.setOnClickFillInIntent(2131362427, localIntent);
      }
      return localRemoteViews;
    }
    
    public int getViewTypeCount()
    {
      return 1;
    }
    
    public boolean hasStableIds()
    {
      return true;
    }
    
    public void onCreate() {}
    
    public void onDataSetChanged()
    {
      this.b.clear();
      r0 localr0 = new r0();
      localr0.M();
      Object localObject2 = e.d(this.a, r0.n(localr0.y(true), localr0.l()), 1);
      synchronized (this.b)
      {
        localObject2 = ((List)localObject2).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          Event localEvent = (Event)((Iterator)localObject2).next();
          if (localEvent.getEndTimeMillis() > localr0.P(true)) {
            this.b.add(localEvent);
          }
        }
        return;
      }
    }
    
    public void onDestroy() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.widget.MonthWidgetEventService
 * JD-Core Version:    0.7.0.1
 */