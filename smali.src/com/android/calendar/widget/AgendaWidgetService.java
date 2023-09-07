package com.android.calendar.widget;

import android.app.AlarmManager;
import android.appwidget.AppWidgetManager;
import android.content.AsyncTaskLoader;
import android.content.BroadcastReceiver;
import android.content.BroadcastReceiver.PendingResult;
import android.content.Context;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.Loader;
import android.content.Loader.OnLoadCompleteListener;
import android.content.res.Resources;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.provider.CalendarContract.Instances;
import android.util.Log;
import android.widget.RemoteViews;
import android.widget.RemoteViewsService;
import android.widget.RemoteViewsService.RemoteViewsFactory;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.Utils;
import com.android.calendar.common.Utils.DisplayType;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicInteger;
import o1.b;

public class AgendaWidgetService
  extends RemoteViewsService
{
  static final String[] a = { "allDay", "begin", "end", "title", "eventLocation", "event_id", "startDay", "endDay", "displayColor", "selfAttendeeStatus", "calendar_displayName", "customAppPackage", "account_name", "account_type", "hasExtendedProperties" };
  
  static String a(long paramLong1, long paramLong2)
  {
    r0 localr0 = new r0();
    localr0.D(paramLong1);
    paramLong2 = paramLong1 - paramLong2;
    if (paramLong2 > 60000L)
    {
      paramLong2 /= 60000L;
      return String.format("[%d] %s (%+d mins)", new Object[] { Long.valueOf(paramLong1), localr0.e("HH:mm:ss"), Long.valueOf(paramLong2) });
    }
    paramLong2 /= 1000L;
    return String.format("[%d] %s (%+d secs)", new Object[] { Long.valueOf(paramLong1), localr0.e("HH:mm:ss"), Long.valueOf(paramLong2) });
  }
  
  public RemoteViewsService.RemoteViewsFactory onGetViewFactory(Intent paramIntent)
  {
    return new CalendarFactory(getApplicationContext(), paramIntent);
  }
  
  public static class CalendarFactory
    extends BroadcastReceiver
    implements RemoteViewsService.RemoteViewsFactory, Loader.OnLoadCompleteListener<Cursor>
  {
    private static long k = 21600000L;
    private static a l;
    private static volatile Integer m = new Integer(0);
    private static final AtomicInteger n = new AtomicInteger(0);
    private Context a;
    private Resources b;
    private int c;
    private CursorLoader d;
    private final Handler e = new Handler();
    private final ExecutorService f = Executors.newSingleThreadExecutor();
    private int g;
    private int h;
    private int i;
    private int j;
    
    public CalendarFactory() {}
    
    protected CalendarFactory(Context paramContext, Intent paramIntent)
    {
      this.a = paramContext;
      this.b = paramContext.getResources();
      this.g = paramIntent.getIntExtra("appWidgetId", 0);
      this.h = this.b.getColor(2131099719);
      this.i = this.b.getColor(2131099720);
      this.j = this.b.getColor(2131099718);
    }
    
    protected static a k(Context paramContext, Cursor paramCursor, String paramString)
    {
      paramContext = new a(paramContext, paramString);
      paramContext.a(paramCursor, paramString);
      return paramContext;
    }
    
    private long l(a parama, long paramLong, String paramString)
    {
      long l1 = o(paramString);
      paramString = parama.d.iterator();
      while (paramString.hasNext())
      {
        parama = (a.b)paramString.next();
        long l2 = parama.i;
        long l3 = parama.j;
        if (paramLong < l2) {
          l1 = Math.min(l1, l2);
        } else if (paramLong < l3) {
          l1 = Math.min(l1, l3);
        }
      }
      return l1;
    }
    
    private Uri m()
    {
      long l1 = System.currentTimeMillis();
      Uri localUri = CalendarContract.Instances.CONTENT_SEARCH_URI;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(Long.toString(l1 - 86400000L));
      localStringBuilder.append("/");
      localStringBuilder.append(l1 + 604800000L + 86400000L);
      localStringBuilder.append("/ ");
      return Uri.withAppendedPath(localUri, localStringBuilder.toString());
    }
    
    private Runnable n(final String paramString, final BroadcastReceiver.PendingResult paramPendingResult, final int paramInt)
    {
      return new a(paramInt, paramString, paramPendingResult);
    }
    
    private static long o(String paramString)
    {
      r0 localr0 = new r0();
      localr0.M();
      localr0.J(localr0.q() + 1);
      localr0.F(0);
      localr0.H(0);
      localr0.K(0);
      long l1 = localr0.y(true);
      localr0.L(paramString);
      localr0.M();
      localr0.J(localr0.q() + 1);
      localr0.F(0);
      localr0.H(0);
      localr0.K(0);
      return Math.min(l1, localr0.y(true));
    }
    
    private String r()
    {
      String str;
      if (Utils.E(this.a)) {
        str = "visible=1 AND selfAttendeeStatus!=2";
      } else {
        str = "visible=1";
      }
      return str;
    }
    
    static void s(RemoteViews paramRemoteViews, int paramInt1, int paramInt2, String paramString)
    {
      paramRemoteViews.setViewVisibility(paramInt1, paramInt2);
      if (paramInt2 == 0) {
        paramRemoteViews.setTextViewText(paramInt1, paramString);
      }
    }
    
    public int getCount()
    {
      a locala = l;
      if (locala == null) {
        return 1;
      }
      return Math.max(1, locala.c.size());
    }
    
    public long getItemId(int paramInt)
    {
      Object localObject = l;
      if ((localObject != null) && (!((a)localObject).c.isEmpty()) && (paramInt < getCount()))
      {
        localObject = (a.c)l.c.get(paramInt);
        if (((a.c)localObject).a == 0) {
          return ((a.c)localObject).b;
        }
        localObject = (a.b)l.d.get(((a.c)localObject).b);
        long l1 = ((a.b)localObject).h;
        long l2 = (int)(l1 ^ l1 >>> 32);
        l1 = ((a.b)localObject).i;
        return (l2 + 31L) * 31L + (int)(l1 ^ l1 >>> 32);
      }
      return 0L;
    }
    
    public RemoteViews getLoadingView()
    {
      return new RemoteViews(this.a.getPackageName(), 2131558467);
    }
    
    public RemoteViews getViewAt(int paramInt)
    {
      if ((paramInt >= 0) && (paramInt < getCount()))
      {
        Object localObject1 = l;
        if (localObject1 == null)
        {
          localObject1 = new RemoteViews(this.a.getPackageName(), 2131558467);
          ((RemoteViews)localObject1).setOnClickFillInIntent(2131361925, AgendaWidgetProvider.c(this.a, 0L, 0L, 0L, false));
          return localObject1;
        }
        if ((!((a)localObject1).d.isEmpty()) && (!l.c.isEmpty()))
        {
          Object localObject2 = (a.c)l.c.get(paramInt);
          if (((a.c)localObject2).a == 0)
          {
            localObject1 = new RemoteViews(this.a.getPackageName(), 2131558466);
            s((RemoteViews)localObject1, 2131362247, 0, ((a.a)l.e.get(((a.c)localObject2).b)).b);
            if ((((a.c)localObject2).b == 0) && (l.j)) {
              ((RemoteViews)localObject1).setInt(2131361924, "setBackgroundResource", 2131232496);
            } else {
              ((RemoteViews)localObject1).setInt(2131361924, "setBackgroundResource", 2131232495);
            }
            return localObject1;
          }
          a.b localb = (a.b)l.d.get(((a.c)localObject2).b);
          if (localb.k)
          {
            localObject1 = new RemoteViews(this.a.getPackageName(), 2131559004);
          }
          else
          {
            localObject1 = this.a.getPackageName();
            if ((localb.a == 0) && (localb.c == 0)) {
              paramInt = 2131559010;
            } else {
              paramInt = 2131559009;
            }
            localObject1 = new RemoteViews((String)localObject1, paramInt);
          }
          long l1 = System.currentTimeMillis();
          if ((!localb.k) && (localb.i <= l1) && (l1 <= localb.j)) {
            ((RemoteViews)localObject1).setInt(2131363578, "setBackgroundResource", 2131232494);
          } else {
            ((RemoteViews)localObject1).setInt(2131363578, "setBackgroundResource", 2131232493);
          }
          if (!localb.k)
          {
            s((RemoteViews)localObject1, 2131363558, localb.a, localb.b);
            s((RemoteViews)localObject1, 2131363568, localb.c, localb.d);
            if (((a.c)localObject2).c) {
              paramInt = 0;
            } else {
              paramInt = 8;
            }
            ((RemoteViews)localObject1).setViewVisibility(2131362368, paramInt);
          }
          s((RemoteViews)localObject1, 2131363373, localb.e, localb.f);
          ((RemoteViews)localObject1).setViewVisibility(2131361917, 0);
          paramInt = Utils.x(this.b, localb.n, localb.o, localb.m, localb.l);
          if (localb.k)
          {
            if (x0.s0(CalendarApplication.e())) {
              ((RemoteViews)localObject1).setInt(2131363578, "setBackgroundResource", 2131232493);
            } else {
              ((RemoteViews)localObject1).setImageViewBitmap(2131361917, x0.L(this.b.getDimensionPixelSize(2131167460), this.b.getDimensionPixelSize(2131167457), Utils.z(paramInt, Utils.DisplayType.BORDER), Utils.z(paramInt, Utils.DisplayType.FILL)));
            }
            ((RemoteViews)localObject1).setTextColor(2131363373, paramInt);
          }
          else
          {
            localObject2 = this.b;
            ((RemoteViews)localObject1).setImageViewBitmap(2131361917, x0.n((Resources)localObject2, paramInt, ((Resources)localObject2).getDimensionPixelSize(2131165728)));
          }
          long l2 = localb.i;
          long l3 = localb.j;
          long l4 = l2;
          l1 = l3;
          if (localb.k)
          {
            String str = Utils.U(this.a);
            localObject2 = new r0();
            l4 = Utils.e((r0)localObject2, l2, str);
            l1 = Utils.e((r0)localObject2, l3, str);
          }
          localObject2 = AgendaWidgetProvider.c(this.a, localb.h, l4, l1, localb.k);
          ((Intent)localObject2).putExtra("extra_key_event_type", localb.p);
          ((RemoteViews)localObject1).setOnClickFillInIntent(2131363578, (Intent)localObject2);
          return localObject1;
        }
        localObject1 = new RemoteViews(this.a.getPackageName(), 2131558468);
        ((RemoteViews)localObject1).setOnClickFillInIntent(2131361926, AgendaWidgetProvider.c(this.a, 0L, 0L, 0L, false));
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
      p(r());
    }
    
    public void onDataSetChanged() {}
    
    public void onDestroy()
    {
      CursorLoader localCursorLoader = this.d;
      if (localCursorLoader != null) {
        localCursorLoader.reset();
      }
    }
    
    public void onReceive(final Context paramContext, Intent paramIntent)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onReceive(): AgendaWidgetService received an intent. It was ");
      localStringBuilder.append(paramIntent.toString());
      z.a("Cal:D:CalendarWidget", localStringBuilder.toString());
      this.a = paramContext;
      paramContext = goAsync();
      this.f.submit(new b(paramContext));
    }
    
    public void p(String arg1)
    {
      if (!g4.a.c(this.a)) {
        return;
      }
      z.a("Cal:D:CalendarWidget", "initLoader(): Querying for widget events");
      Object localObject1 = m();
      ??? = new CursorLoader(this.a, (Uri)localObject1, AgendaWidgetService.a, ???, null, "startDay ASC, startMinute ASC, endDay ASC, endMinute ASC LIMIT 100");
      this.d = ???;
      ???.setUpdateThrottle(500L);
      synchronized (m)
      {
        localObject1 = Integer.valueOf(m.intValue() + 1);
        m = (Integer)localObject1;
        this.c = ((Integer)localObject1).intValue();
        this.d.registerListener(this.g, this);
        try
        {
          this.d.startLoading();
        }
        catch (RejectedExecutionException ???)
        {
          z.d("Cal:D:CalendarWidget", "initLoader", ???);
        }
        return;
      }
    }
    
    public void q(Loader<Cursor> arg1, Cursor paramCursor)
    {
      if (paramCursor == null) {
        return;
      }
      ??? = new StringBuilder();
      ???.append("onLoadComplete(): cursor.getCount():");
      ???.append(paramCursor.getCount());
      z.a("Cal:D:CalendarWidget", ???.toString());
      synchronized (m)
      {
        if (paramCursor.isClosed())
        {
          Log.wtf("Cal:D:CalendarWidget", "onLoadComplete(): Got a closed cursor from onLoadComplete");
          return;
        }
        if (this.c != m.intValue()) {
          return;
        }
        long l1 = System.currentTimeMillis();
        String str = Utils.U(this.a);
        Object localObject2 = Utils.Q0(paramCursor);
        try
        {
          l = k(this.a, (Cursor)localObject2, str);
          if (localObject2 != null) {
            ((AbstractCursor)localObject2).close();
          }
          paramCursor.close();
          long l2 = l(l, l1, str);
          long l3 = l2;
          if (l2 < l1)
          {
            paramCursor = new java/lang/StringBuilder;
            paramCursor.<init>();
            paramCursor.append("Encountered bad trigger time ");
            paramCursor.append(AgendaWidgetService.a(l2, l1));
            z.m("Cal:D:CalendarWidget", paramCursor.toString());
            l3 = 21600000L + l1;
          }
          localObject2 = (AlarmManager)this.a.getSystemService("alarm");
          paramCursor = AgendaWidgetProvider.f(this.a);
          ((AlarmManager)localObject2).cancel(paramCursor);
          if ((Build.VERSION.SDK_INT >= 31) && (!b.a((AlarmManager)localObject2))) {
            z.c("Cal:D:CalendarWidget", "Alarm can not schedule");
          } else {
            ((AlarmManager)localObject2).setExact(1, l3, paramCursor);
          }
          paramCursor = new com/miui/calendar/util/r0;
          paramCursor.<init>(Utils.U(this.a));
          paramCursor.M();
          if (paramCursor.y(true) != k)
          {
            localObject2 = new com/miui/calendar/util/r0;
            ((r0)localObject2).<init>(Utils.U(this.a));
            ((r0)localObject2).D(k);
            ((r0)localObject2).y(true);
            if ((paramCursor.v() != ((r0)localObject2).v()) || (paramCursor.w() != ((r0)localObject2).w()))
            {
              localObject2 = new android/content/Intent;
              ((Intent)localObject2).<init>(Utils.h0(this.a));
              ((Intent)localObject2).setPackage(this.a.getPackageName());
              this.a.sendBroadcast((Intent)localObject2);
            }
            k = paramCursor.P(true);
          }
          paramCursor = AppWidgetManager.getInstance(this.a);
          int i1 = this.g;
          if (i1 == -1) {
            paramCursor.notifyAppWidgetViewDataChanged(paramCursor.getAppWidgetIds(AgendaWidgetProvider.a(this.a)), 2131362433);
          } else {
            paramCursor.notifyAppWidgetViewDataChanged(i1, 2131362433);
          }
          return;
        }
        finally
        {
          localObject1 = finally;
          if (localObject2 != null) {
            ((AbstractCursor)localObject2).close();
          }
          paramCursor.close();
          throw localObject1;
        }
      }
    }
    
    class a
      implements Runnable
    {
      a(int paramInt, String paramString, BroadcastReceiver.PendingResult paramPendingResult) {}
      
      public void run()
      {
        if ((AgendaWidgetService.CalendarFactory.a(AgendaWidgetService.CalendarFactory.this) != null) && (paramInt >= AgendaWidgetService.CalendarFactory.b().get()))
        {
          Uri localUri = AgendaWidgetService.CalendarFactory.c(AgendaWidgetService.CalendarFactory.this);
          AgendaWidgetService.CalendarFactory.a(AgendaWidgetService.CalendarFactory.this).setUri(localUri);
          AgendaWidgetService.CalendarFactory.a(AgendaWidgetService.CalendarFactory.this).setSelection(paramString);
          synchronized (AgendaWidgetService.CalendarFactory.d())
          {
            AgendaWidgetService.CalendarFactory.f(AgendaWidgetService.CalendarFactory.this, AgendaWidgetService.CalendarFactory.e(Integer.valueOf(AgendaWidgetService.CalendarFactory.d().intValue() + 1)).intValue());
            AgendaWidgetService.CalendarFactory.a(AgendaWidgetService.CalendarFactory.this).forceLoad();
          }
        }
        paramPendingResult.finish();
      }
    }
    
    class b
      implements Runnable
    {
      b(BroadcastReceiver.PendingResult paramPendingResult) {}
      
      public void run()
      {
        final String str = AgendaWidgetService.CalendarFactory.g(AgendaWidgetService.CalendarFactory.this);
        if (AgendaWidgetService.CalendarFactory.a(AgendaWidgetService.CalendarFactory.this) == null)
        {
          AgendaWidgetService.CalendarFactory.h(AgendaWidgetService.CalendarFactory.this, -1);
          AgendaWidgetService.CalendarFactory.i(AgendaWidgetService.CalendarFactory.this).post(new a(str));
        }
        else
        {
          AgendaWidgetService.CalendarFactory.i(AgendaWidgetService.CalendarFactory.this).post(AgendaWidgetService.CalendarFactory.j(AgendaWidgetService.CalendarFactory.this, str, paramContext, AgendaWidgetService.CalendarFactory.b().incrementAndGet()));
        }
      }
      
      class a
        implements Runnable
      {
        a(String paramString) {}
        
        public void run()
        {
          AgendaWidgetService.CalendarFactory.this.p(str);
          AgendaWidgetService.CalendarFactory.b.this.a.finish();
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.widget.AgendaWidgetService
 * JD-Core Version:    0.7.0.1
 */