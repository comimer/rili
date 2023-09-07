package com.android.calendar.event;

import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.RemoteException;
import android.provider.CalendarContract.Events;
import android.text.TextUtils;
import com.android.calendar.common.event.schema.Reminder;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.TimeZone;
import x3.a;

public class n
{
  private Context a;
  private ArrayList<ContentProviderOperation> b = new ArrayList();
  private String c;
  private long d = -1L;
  private long e = -1L;
  private long f;
  private String g = TimeZone.getDefault().getID();
  private String h;
  private String i;
  private boolean j;
  private String k;
  private String l;
  private long m;
  private int n = 0;
  private String o;
  private ArrayList<Reminder> p = new ArrayList();
  private HashMap<String, String> q = new HashMap();
  
  private void c()
  {
    if (this.c != null)
    {
      if (this.e != -1L) {
        return;
      }
      throw new IllegalArgumentException("NO dtstart");
    }
    throw new IllegalArgumentException("NO title");
  }
  
  public static n d(Context paramContext)
  {
    n localn = new n();
    localn.a = paramContext.getApplicationContext();
    return localn;
  }
  
  private void e()
  {
    ContentValues localContentValues = new ContentValues();
    long l1 = this.d;
    long l2 = l1;
    if (l1 == -1L) {
      l2 = e0.b(this.a);
    }
    localContentValues.put("calendar_id", Long.valueOf(l2));
    localContentValues.put("title", this.c);
    localContentValues.put("dtstart", Long.valueOf(this.e));
    if (!TextUtils.isEmpty(this.k))
    {
      this.j = true;
      localContentValues.put("rdate", this.k);
    }
    localContentValues.put("description", this.h);
    localContentValues.put("eventLocation", this.i);
    localContentValues.put("allDay", Integer.valueOf(this.j));
    if (this.j) {
      localContentValues.put("duration", "P1D");
    }
    if (this.j) {
      localObject1 = "UTC";
    } else {
      localObject1 = this.g;
    }
    localContentValues.put("eventTimezone", (String)localObject1);
    localContentValues.put("hasAlarm", Integer.valueOf(this.p.isEmpty() ^ true));
    localContentValues.put("eventStatus", Integer.valueOf(1));
    localContentValues.put("hasAttendeeData", Integer.valueOf(1));
    localContentValues.put("customAppPackage", this.o);
    localContentValues.put("hasExtendedProperties", Integer.valueOf(this.n));
    Object localObject1 = ContentProviderOperation.newInsert(CalendarContract.Events.CONTENT_URI.buildUpon().build()).withValues(localContentValues);
    this.b.add(((ContentProviderOperation.Builder)localObject1).build());
    localObject1 = this.p;
    if (localObject1 != null) {
      j.r(this.b, 0, (ArrayList)localObject1, null, true);
    }
    if (this.q != null)
    {
      localContentValues.clear();
      localObject1 = this.q.keySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = (String)((Iterator)localObject1).next();
        if ((!TextUtils.isEmpty((CharSequence)localObject2)) && (!TextUtils.isEmpty((CharSequence)this.q.get(localObject2))))
        {
          String str = (String)this.q.get(localObject2);
          localContentValues.put("name", (String)localObject2);
          localContentValues.put("value", str);
          localObject2 = ContentProviderOperation.newInsert(a.a).withValues(localContentValues);
          ((ContentProviderOperation.Builder)localObject2).withValueBackReference("event_id", 0);
          this.b.add(((ContentProviderOperation.Builder)localObject2).build());
        }
      }
    }
  }
  
  public n a(String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString2)) {
      this.q.put(paramString1, paramString2);
    }
    return this;
  }
  
  public n b(int paramInt)
  {
    Reminder localReminder = Reminder.valueOf(paramInt, 1);
    this.p.add(localReminder);
    return this;
  }
  
  public long f()
    throws RemoteException, OperationApplicationException
  {
    c();
    e();
    Object localObject = this.a.getContentResolver().applyBatch("com.android.calendar", this.b);
    if (localObject != null)
    {
      Uri localUri = localObject[0];
      if (localUri != null)
      {
        localUri = localUri.uri;
        if ((localUri != null) && (Integer.parseInt(localUri.getLastPathSegment()) != -1))
        {
          int i1 = Integer.parseInt(localObject[0].uri.getLastPathSegment());
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("save(): SUCCESS, eventId:");
          ((StringBuilder)localObject).append(i1);
          ((StringBuilder)localObject).append(", event:");
          ((StringBuilder)localObject).append(this);
          z.a("Cal:D:EventBuilder", ((StringBuilder)localObject).toString());
          return i1;
        }
      }
    }
    z.m("Cal:D:EventBuilder", "save(): FAIL");
    return -1L;
  }
  
  public n g(boolean paramBoolean)
  {
    String str;
    if (paramBoolean) {
      str = null;
    } else {
      str = "com.miui.calendar";
    }
    this.o = str;
    return this;
  }
  
  public n h(String paramString)
  {
    this.h = paramString;
    return this;
  }
  
  public n i(long paramLong)
  {
    this.e = paramLong;
    return this;
  }
  
  public n j(int paramInt)
  {
    this.n = paramInt;
    return this;
  }
  
  public n k(long paramLong)
  {
    this.m = paramLong;
    return this;
  }
  
  public n l(String paramString)
  {
    this.i = paramString;
    return this;
  }
  
  public n m(String paramString)
  {
    this.k = paramString;
    return this;
  }
  
  public n n(String paramString)
  {
    this.c = paramString;
    return this;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("EventBuilder{");
    localStringBuilder.append("mContext=");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", mOps=");
    localStringBuilder.append(this.b);
    localStringBuilder.append(", mTitle='");
    localStringBuilder.append(this.c);
    localStringBuilder.append('\'');
    localStringBuilder.append(", mCalendarId=");
    localStringBuilder.append(this.d);
    localStringBuilder.append(", mDtStart=");
    localStringBuilder.append(this.e);
    localStringBuilder.append(", mDtEnd=");
    localStringBuilder.append(this.f);
    localStringBuilder.append(", mTimeZone='");
    localStringBuilder.append(this.g);
    localStringBuilder.append('\'');
    localStringBuilder.append(", mDescription='");
    localStringBuilder.append(this.h);
    localStringBuilder.append('\'');
    localStringBuilder.append(", mLocation='");
    localStringBuilder.append(this.i);
    localStringBuilder.append('\'');
    localStringBuilder.append(", mAllday=");
    localStringBuilder.append(this.j);
    localStringBuilder.append(", mRDate='");
    localStringBuilder.append(this.k);
    localStringBuilder.append('\'');
    localStringBuilder.append(", mDuration='");
    localStringBuilder.append(this.l);
    localStringBuilder.append('\'');
    localStringBuilder.append(", mLastDate=");
    localStringBuilder.append(this.m);
    localStringBuilder.append(", mEventType=");
    localStringBuilder.append(this.n);
    localStringBuilder.append(", mCustomPackageApp='");
    localStringBuilder.append(this.o);
    localStringBuilder.append('\'');
    localStringBuilder.append(", mReminders=");
    localStringBuilder.append(this.p);
    localStringBuilder.append(", mEPMap=");
    localStringBuilder.append(this.q);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.n
 * JD-Core Version:    0.7.0.1
 */