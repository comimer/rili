package com.miui.calendar.insertevent;

import android.app.IntentService;
import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Handler;
import android.os.Looper;
import android.provider.CalendarContract.Events;
import android.text.TextUtils;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.common.event.schema.Reminder;
import com.android.calendar.common.event.schema.ThirdPartyEvent;
import com.android.calendar.event.e0;
import com.android.calendar.event.j;
import com.miui.calendar.ad.AdSchema;
import com.miui.calendar.ad.a.b;
import com.miui.calendar.util.f;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.TimeZone;

public class InsertEventService
  extends IntentService
{
  public InsertEventService()
  {
    super("InsertEventService");
  }
  
  private ContentValues a(ThirdPartyEvent paramThirdPartyEvent)
  {
    String str = TimeZone.getDefault().getID();
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("calendar_id", Integer.valueOf(e0.b(this)));
    localContentValues.put("title", paramThirdPartyEvent.getTitle());
    localContentValues.put("allDay", Integer.valueOf(paramThirdPartyEvent.isAllDay()));
    localContentValues.put("dtstart", Long.valueOf(paramThirdPartyEvent.getEx().getStart()));
    if (paramThirdPartyEvent.isAllDay())
    {
      localContentValues.put("dtend", Long.valueOf(paramThirdPartyEvent.getEx().getStart() + 86400000L));
      localContentValues.put("eventTimezone", "UTC");
    }
    else
    {
      localContentValues.put("dtend", Long.valueOf(paramThirdPartyEvent.getEx().getEnd()));
      localContentValues.put("eventTimezone", str);
    }
    localContentValues.put("eventLocation", paramThirdPartyEvent.getLocation());
    localContentValues.put("description", paramThirdPartyEvent.getDescription());
    localContentValues.put("hasAlarm", Integer.valueOf(1));
    localContentValues.put("eventStatus", Integer.valueOf(1));
    localContentValues.put("hasAttendeeData", Integer.valueOf(1));
    localContentValues.put("customAppPackage", "com.miui.calendar");
    localContentValues.put("sync_data1", paramThirdPartyEvent.getUrl());
    localContentValues.put("sync_data2", paramThirdPartyEvent.getUrlText());
    localContentValues.put("sync_data3", paramThirdPartyEvent.getPackageName());
    localContentValues.put("hasExtendedProperties", Integer.valueOf(6));
    return localContentValues;
  }
  
  private void b(Uri paramUri)
  {
    try
    {
      paramUri = c4.a.a(paramUri);
      c(paramUri);
      return;
    }
    catch (IllegalArgumentException paramUri)
    {
      z.f("Cal:D:InsertEventService", "insertEvent()", paramUri);
    }
  }
  
  private void c(ThirdPartyEvent paramThirdPartyEvent)
  {
    Object localObject1 = new ArrayList();
    Object localObject2 = a(paramThirdPartyEvent);
    ((ArrayList)localObject1).add(ContentProviderOperation.newInsert(CalendarContract.Events.CONTENT_URI.buildUpon().appendQueryParameter("caller_is_syncadapter", "1").appendQueryParameter("account_name", "account_name_local").appendQueryParameter("account_type", "LOCAL").build()).withValues((ContentValues)localObject2).build());
    localObject2 = new ArrayList();
    ((ArrayList)localObject2).add(Reminder.valueOf(0, 1));
    j.r((ArrayList)localObject1, 0, (ArrayList)localObject2, null, true);
    localObject2 = new HashMap();
    ((HashMap)localObject2).put("title", paramThirdPartyEvent.getTitle());
    try
    {
      getContentResolver().applyBatch("com.android.calendar", (ArrayList)localObject1);
      f.e(this);
      if (!TextUtils.isEmpty(paramThirdPartyEvent.getExtend()))
      {
        localObject1 = new com/miui/calendar/ad/AdSchema;
        ((AdSchema)localObject1).<init>();
        ((AdSchema)localObject1).ex = paramThirdPartyEvent.getExtend();
        paramThirdPartyEvent = new com/miui/calendar/ad/a$b;
        paramThirdPartyEvent.<init>("CLICK", (AdSchema)localObject1);
        com.miui.calendar.ad.a.a(this, paramThirdPartyEvent);
      }
      g0.e("third_party_insert_event_success", (Map)localObject2);
      d(getString(2131886750));
      z.h("Cal:D:InsertEventService", "saveEvent() success");
    }
    catch (Exception paramThirdPartyEvent)
    {
      z.f("Cal:D:InsertEventService", "saveEvent()", paramThirdPartyEvent);
      g0.e("third_party_insert_event_fail", (Map)localObject2);
    }
  }
  
  private void d(final String paramString)
  {
    new Handler(Looper.getMainLooper()).post(new a(paramString));
  }
  
  public static void e(Context paramContext, Uri paramUri)
  {
    Intent localIntent = new Intent(paramContext, InsertEventService.class);
    localIntent.setData(paramUri);
    paramContext.startService(localIntent);
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("onHandleIntent() intent is INVALID:");
      localStringBuilder.append(paramIntent);
      z.n("Cal:D:InsertEventService", localStringBuilder.toString());
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onHandleIntent() intent=");
    localStringBuilder.append(paramIntent);
    z.h("Cal:D:InsertEventService", localStringBuilder.toString());
    paramIntent = paramIntent.getData();
    if (paramIntent != null) {
      b(paramIntent);
    } else {
      z.n("Cal:D:InsertEventService", "onHandleIntent() invalid intent");
    }
  }
  
  class a
    implements Runnable
  {
    a(String paramString) {}
    
    public void run()
    {
      t0.c(InsertEventService.this.getApplicationContext(), paramString);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.insertevent.InsertEventService
 * JD-Core Version:    0.7.0.1
 */