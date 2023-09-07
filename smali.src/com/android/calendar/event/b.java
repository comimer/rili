package com.android.calendar.event;

import android.app.Activity;
import android.app.Dialog;
import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentProviderResult;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.CalendarContract.Events;
import android.text.TextUtils;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import com.android.calendar.alerts.d;
import com.android.calendar.common.a;
import com.android.calendar.common.event.schema.AgendaEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.miui.calendar.util.c0;
import com.miui.calendar.util.calendarcommon2.EventRecurrence;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.s;
import com.miui.calendar.util.z;
import com.miui.calendar.view.g;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import miuix.appcompat.app.l;
import miuix.appcompat.app.l.b;
import o1.i;

public class b
{
  private final WeakReference<Activity> a;
  private Context b;
  private long c;
  private long d;
  private Event e;
  private boolean f;
  private Runnable g;
  private int h;
  private boolean i;
  private ArrayList<Integer> j;
  private l k;
  private DialogInterface.OnDismissListener l;
  private String m;
  private a<b> n;
  private e o = null;
  private g p = g.c(new a());
  private g q = g.c(new b());
  private g r = g.c(new c());
  private g s = g.c(new d());
  
  public b(Context paramContext, Activity paramActivity, boolean paramBoolean)
  {
    if ((paramBoolean) && (paramActivity == null)) {
      throw new IllegalArgumentException("parentActivity is required to exit when done");
    }
    this.b = paramContext;
    this.a = new WeakReference(paramActivity);
    this.n = new f(this.b, this);
    this.f = paramBoolean;
  }
  
  private void r()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("cancelDeletedNotification(): cancel notification, id:");
    localStringBuilder.append(this.e.getId());
    z.a("Cal:D:DeleteEventHelper", localStringBuilder.toString());
    i.c(this.b, (int)this.e.getId());
  }
  
  private void w()
  {
    long l1 = this.e.getId();
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("eventStatus", Integer.valueOf(2));
    Uri localUri = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, l1);
    a locala = this.n;
    locala.q(locala.g(), null, localUri, localContentValues, null, null, 0L);
  }
  
  private void x(int paramInt)
  {
    Object localObject1 = this.e.getEx().getRrule();
    boolean bool = this.e.isAllDay();
    long l1 = this.e.getEx().getStart();
    long l2 = this.e.getId();
    Object localObject2;
    if (paramInt != 0)
    {
      if (paramInt != 1)
      {
        if (paramInt == 2)
        {
          localObject1 = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, l2);
          localObject2 = this.n;
          ((a)localObject2).n(((a)localObject2).g(), null, (Uri)localObject1, null, null, 0L);
        }
      }
      else if (l1 == this.c)
      {
        localObject1 = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, l2);
        localObject2 = this.n;
        ((a)localObject2).n(((a)localObject2).g(), null, (Uri)localObject1, null, null, 0L);
      }
      else
      {
        localObject2 = new EventRecurrence();
        ((EventRecurrence)localObject2).j((String)localObject1);
        localObject1 = new r0();
        if (bool) {
          ((r0)localObject1).L("UTC");
        }
        ((r0)localObject1).D(this.c);
        ((r0)localObject1).K(((r0)localObject1).r() - 1);
        ((r0)localObject1).y(false);
        ((r0)localObject1).O("UTC");
        ((EventRecurrence)localObject2).c = ((r0)localObject1).f();
        localObject1 = new ContentValues();
        ((ContentValues)localObject1).put("dtstart", Long.valueOf(l1));
        ((ContentValues)localObject1).put("rrule", ((EventRecurrence)localObject2).toString());
        localObject2 = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, l2);
        a locala = this.n;
        locala.q(locala.g(), null, (Uri)localObject2, (ContentValues)localObject1, null, null, 0L);
      }
    }
    else
    {
      l2 = this.c;
      localObject1 = z(this.e, l2, this.d);
      localObject2 = this.n;
      ((a)localObject2).o(((a)localObject2).g(), null, CalendarContract.Events.CONTENT_URI, (ContentValues)localObject1, 0L);
    }
    localObject1 = this.g;
    if (localObject1 != null) {
      ((Runnable)localObject1).run();
    }
    if (this.f)
    {
      localObject1 = (Activity)this.a.get();
      if (localObject1 != null) {
        ((Activity)localObject1).finish();
      }
    }
  }
  
  private void y()
  {
    e locale = this.o;
    if (locale != null) {
      locale.a(this.h);
    }
  }
  
  public static ContentValues z(Event paramEvent, long paramLong1, long paramLong2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("title", paramEvent.getTitle());
    localContentValues.put("eventTimezone", paramEvent.getEx().getTimezone());
    localContentValues.put("allDay", Integer.valueOf(paramEvent.isAllDay()));
    localContentValues.put("originalAllDay", Integer.valueOf(paramEvent.isAllDay()));
    localContentValues.put("calendar_id", Long.valueOf(paramEvent.getEx().getCalendarId()));
    localContentValues.put("dtstart", Long.valueOf(paramLong1));
    localContentValues.put("dtend", Long.valueOf(paramLong2));
    localContentValues.put("original_sync_id", paramEvent.getEx().getSyncId());
    localContentValues.put("original_id", Long.valueOf(paramEvent.getId()));
    localContentValues.put("originalInstanceTime", Long.valueOf(paramLong1));
    localContentValues.put("eventStatus", Integer.valueOf(2));
    return localContentValues;
  }
  
  public void A(e parame)
  {
    this.o = parame;
  }
  
  public void B(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    l locall = this.k;
    if (locall != null) {
      locall.setOnDismissListener(paramOnDismissListener);
    }
    this.l = paramOnDismissListener;
  }
  
  public void q(ArrayList<ContentProviderOperation> paramArrayList, long paramLong)
  {
    paramArrayList.add(ContentProviderOperation.newDelete(CalendarContract.Events.CONTENT_URI.buildUpon().appendPath(Long.toString(paramLong)).build()).build());
  }
  
  public void s(long paramLong1, long paramLong2, long paramLong3, int paramInt)
  {
    Uri localUri = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, paramLong3);
    a locala = this.n;
    locala.p(locala.g(), "s_del", localUri, j.e, null, null, null);
    this.c = paramLong1;
    this.d = paramLong2;
    this.h = paramInt;
  }
  
  public void t(long paramLong1, long paramLong2, long paramLong3, int paramInt, Runnable paramRunnable, boolean paramBoolean)
  {
    s(paramLong1, paramLong2, paramLong3, paramInt);
    this.i = paramBoolean;
    this.g = paramRunnable;
  }
  
  public void u(long paramLong1, long paramLong2, Event paramEvent, int paramInt)
  {
    int i1 = paramInt;
    if (paramEvent.getId() == -1L)
    {
      z.m("Cal:D:DeleteEventHelper", "delete(): EMPTY model, return");
      return;
    }
    Activity localActivity = (Activity)this.a.get();
    if ((localActivity != null) && (!localActivity.isFinishing()))
    {
      this.h = i1;
      this.c = paramLong1;
      this.d = paramLong2;
      this.e = paramEvent;
      this.m = paramEvent.getEx().getSyncId();
      Object localObject1 = paramEvent.getEx().getRrule();
      Object localObject2 = paramEvent.getEx().getOriginalSyncId();
      if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (!this.i))
      {
        localObject1 = this.b.getResources();
        localObject2 = new ArrayList(Arrays.asList(((Resources)localObject1).getStringArray(2130903068)));
        int[] arrayOfInt = ((Resources)localObject1).getIntArray(2130903069);
        localObject1 = new ArrayList();
        int i2 = arrayOfInt.length;
        for (int i3 = 0; i3 < i2; i3++) {
          ((ArrayList)localObject1).add(Integer.valueOf(arrayOfInt[i3]));
        }
        if (this.m == null)
        {
          ((ArrayList)localObject2).remove(0);
          ((ArrayList)localObject1).remove(0);
          if (!paramEvent.getEx().isOrganizer())
          {
            ((ArrayList)localObject2).remove(0);
            ((ArrayList)localObject1).remove(0);
          }
        }
        else if (!paramEvent.getEx().isOrganizer())
        {
          ((ArrayList)localObject2).remove(1);
          ((ArrayList)localObject1).remove(1);
        }
        i3 = i1;
        if (i1 != -1) {
          i3 = ((ArrayList)localObject1).indexOf(Integer.valueOf(paramInt));
        }
        this.j = ((ArrayList)localObject1);
        localObject2 = new ArrayAdapter(localActivity, 2131558734, (List)localObject2);
        paramInt = i3;
        if (i3 == -1) {
          paramInt = 0;
        }
        try
        {
          this.h = ((Integer)((ArrayList)localObject1).get(paramInt)).intValue();
          localObject1 = new miuix/appcompat/app/l$b;
          ((l.b)localObject1).<init>(localActivity);
          paramEvent = ((l.b)localObject1).G(this.b.getString(2131886440, new Object[] { paramEvent.getTitle() })).j(16843605).D((ListAdapter)localObject2, paramInt, this.r).z(17039370, this.s).r(17039360, null).J();
          paramEvent.setOnDismissListener(this.l);
          this.k = paramEvent;
        }
        catch (Exception paramEvent)
        {
          z.d("Cal:D:DeleteEventHelper", "delete()", paramEvent);
          return;
        }
      }
      else
      {
        paramEvent = new l.b(localActivity).F(2131886441).j(16843605).r(17039360, null).a();
        if (localObject2 == null) {
          paramEvent.l(-1, this.b.getText(17039370), this.p);
        } else {
          paramEvent.l(-1, this.b.getText(17039370), this.q);
        }
        paramEvent.setOnDismissListener(this.l);
      }
      try
      {
        paramEvent.show();
        this.k = paramEvent;
        return;
      }
      catch (Exception paramEvent)
      {
        z.d("Cal:D:DeleteEventHelper", "delete()", paramEvent);
        return;
      }
    }
    z.m("Cal:D:DeleteEventHelper", "delete(): activity is finished, return");
  }
  
  public void v(ArrayList<ContentProviderOperation> paramArrayList, Runnable paramRunnable)
  {
    if (this.n == null) {
      this.n = new f(this.b, this);
    }
    int i1 = this.n.g();
    this.g = paramRunnable;
    this.n.m(i1, null, "com.android.calendar", paramArrayList, 0L);
  }
  
  class a
    implements DialogInterface.OnClickListener
  {
    a() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      b.k(b.this);
      b.l(b.this);
      long l = b.m(b.this).getId();
      paramDialogInterface = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, l);
      b.n(b.this).n(b.n(b.this).g(), null, paramDialogInterface, null, null, 0L);
      if (b.j(b.this) != null) {
        b.j(b.this).run();
      }
      if (b.m(b.this) != null) {
        d.c(b.o(b.this), (int)b.m(b.this).getId());
      }
      if (b.p(b.this))
      {
        paramDialogInterface = (Activity)b.c(b.this).get();
        if (paramDialogInterface != null) {
          paramDialogInterface.finish();
        }
      }
      s.e(b.o(b.this));
    }
  }
  
  class b
    implements DialogInterface.OnClickListener
  {
    b() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      b.k(b.this);
      b.l(b.this);
      b.d(b.this);
      if (b.j(b.this) != null) {
        b.j(b.this).run();
      }
      if (b.m(b.this) != null) {
        d.c(b.o(b.this), (int)b.m(b.this).getId());
      }
      if (b.p(b.this))
      {
        paramDialogInterface = (Activity)b.c(b.this).get();
        if (paramDialogInterface != null) {
          paramDialogInterface.finish();
        }
      }
      s.e(b.o(b.this));
    }
  }
  
  class c
    implements DialogInterface.OnClickListener
  {
    c() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      paramDialogInterface = b.this;
      b.i(paramDialogInterface, ((Integer)b.e(paramDialogInterface).get(paramInt)).intValue());
      b.f(b.this).e(-1).setEnabled(true);
    }
  }
  
  class d
    implements DialogInterface.OnClickListener
  {
    d() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      b.k(b.this);
      b.l(b.this);
      if (b.h(b.this) != -1)
      {
        paramDialogInterface = b.this;
        b.g(paramDialogInterface, b.h(paramDialogInterface));
      }
      s.e(b.o(b.this));
    }
  }
  
  public static abstract interface e
  {
    public abstract void a(int paramInt);
  }
  
  private static class f
    extends a<b>
  {
    f(Context paramContext, b paramb)
    {
      super(paramb);
    }
    
    protected void h(int paramInt, Object paramObject, ContentProviderResult[] paramArrayOfContentProviderResult)
    {
      super.h(paramInt, paramObject, paramArrayOfContentProviderResult);
      paramObject = (b)b();
      if (paramObject != null)
      {
        paramObject = b.j(paramObject);
        if (paramObject != null) {
          paramObject.run();
        }
      }
    }
    
    protected void k(int paramInt, Object paramObject, Cursor paramCursor)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("onQueryComplete cookie:");
      ((StringBuilder)localObject).append(paramObject);
      z.a("Cal:D:DeleteEventHelper", ((StringBuilder)localObject).toString());
      if (paramCursor == null) {
        return;
      }
      localObject = (b)c();
      if (localObject != null)
      {
        paramCursor.moveToFirst();
        paramObject = new AgendaEvent();
        j.t(paramObject, paramCursor);
        paramCursor.close();
        ((b)localObject).u(b.a((b)localObject), b.b((b)localObject), paramObject, b.h((b)localObject));
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.b
 * JD-Core Version:    0.7.0.1
 */