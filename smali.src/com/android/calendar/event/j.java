package com.android.calendar.event;

import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentProviderResult;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.CalendarContract.Attendees;
import android.provider.CalendarContract.Events;
import android.provider.CalendarContract.Reminders;
import android.text.TextUtils;
import android.text.util.Rfc822Token;
import android.text.util.Rfc822Tokenizer;
import android.util.Log;
import com.android.calendar.alerts.d;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.AgendaEvent;
import com.android.calendar.common.event.schema.AnniversaryEvent;
import com.android.calendar.common.event.schema.Attendee;
import com.android.calendar.common.event.schema.BirthdayEvent;
import com.android.calendar.common.event.schema.CountdownEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.common.event.schema.Reminder;
import com.android.calendar.common.event.schema.TrainEvent;
import com.miui.calendar.repeats.RepeatEndSchema;
import com.miui.calendar.repeats.RepeatSchema;
import com.miui.calendar.util.c0;
import com.miui.calendar.util.calendarcommon2.DateException;
import com.miui.calendar.util.calendarcommon2.EventRecurrence;
import com.miui.calendar.util.calendarcommon2.c;
import com.miui.calendar.util.p0.b;
import com.miui.calendar.util.p0.c;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.z;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TimeZone;
import org.json.JSONObject;

public class j
{
  public static final String[] e = { "_id", "title", "description", "eventLocation", "allDay", "hasAlarm", "calendar_id", "dtstart", "dtend", "duration", "eventTimezone", "rrule", "_sync_id", "availability", "accessLevel", "ownerAccount", "hasAttendeeData", "original_sync_id", "organizer", "guestsCanModify", "original_id", "eventStatus", "account_type", "account_name", "rdate", "hasExtendedProperties" };
  public static final String[] f = { "_id", "minutes", "method" };
  public static final int[] g = { 0, 1, 4, 2 };
  public static final String[] h = { "_id", "calendar_displayName", "ownerAccount", "calendar_color", "canOrganizerRespond", "calendar_access_level", "maxReminders", "allowedReminders", "allowedAttendeeTypes", "account_type", "account_name", "visible" };
  public static final Class[] i = { Integer.class, String.class, String.class, Integer.class, Integer.class, Integer.class, Integer.class, String.class, String.class, String.class, String.class, Integer.class };
  static final String[] j = { "_id", "attendeeName", "attendeeEmail", "attendeeRelationship", "attendeeStatus" };
  private Context a;
  private com.android.calendar.common.a<j> b;
  protected boolean c = true;
  private HashMap<Integer, Runnable> d = new HashMap();
  
  public j(Context paramContext)
  {
    this.a = paramContext;
  }
  
  static void A(EventRecurrence paramEventRecurrence, Event paramEvent, int paramInt)
  {
    paramEventRecurrence.f = EventRecurrence.g(paramInt);
    paramEvent.getEx().setRrule(paramEventRecurrence.toString());
  }
  
  public static void e(int paramInt, String paramString1, String paramString2, boolean paramBoolean, Uri paramUri, List<ContentProviderOperation> paramList, ContentValues paramContentValues)
  {
    if (paramString2 != null)
    {
      paramContentValues.clear();
      paramContentValues.put("name", paramString1);
      paramContentValues.put("value", paramString2);
      if (paramBoolean)
      {
        z.a("Cal:D:EditEventHelper", "saveEvent() insert into ExtendedProperties");
        paramList.add(ContentProviderOperation.newInsert(x3.a.a).withValues(paramContentValues).withValueBackReference("event_id", paramInt).build());
      }
      else if (paramUri != null)
      {
        z.a("Cal:D:EditEventHelper", "saveEvent() update ExtendedProperties");
        long l = ContentUris.parseId(paramUri);
        paramString2 = Long.toString(l);
        paramString1 = x3.a.a;
        paramList.add(ContentProviderOperation.newDelete(paramString1).withSelection("event_id=?", new String[] { paramString2 }).build());
        paramContentValues.put("event_id", Long.valueOf(l));
        paramList.add(ContentProviderOperation.newInsert(paramString1).withValues(paramContentValues).build());
      }
    }
  }
  
  public static boolean f(Event paramEvent)
  {
    boolean bool;
    if ((paramEvent != null) && (paramEvent.getEx().getCalendarAccessLevel() >= 500) && (paramEvent.getEx().isOrganizer())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static long h(long paramLong)
  {
    return paramLong + 3600000L;
  }
  
  public static LinkedHashSet<Rfc822Token> i(String paramString, g2.b paramb)
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    Rfc822Tokenizer.tokenize(paramString, localLinkedHashSet);
    if (paramb == null) {
      return localLinkedHashSet;
    }
    paramString = localLinkedHashSet.iterator();
    while (paramString.hasNext())
    {
      Rfc822Token localRfc822Token = (Rfc822Token)paramString.next();
      if (!paramb.isValid(localRfc822Token.getAddress()))
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Dropping invalid attendee email address: ");
        localStringBuilder.append(localRfc822Token.getAddress());
        Log.v("Cal:D:EditEventHelper", localStringBuilder.toString());
        paramString.remove();
      }
    }
    return localLinkedHashSet;
  }
  
  static boolean k(Event paramEvent1, Event paramEvent2)
  {
    boolean bool;
    if (paramEvent1.getEx().getOriginalStart() == paramEvent2.getEx().getStart()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean l(Event paramEvent1, Event paramEvent2)
  {
    if (paramEvent2 == null) {
      return true;
    }
    if (paramEvent1.getEx().getCalendarId() != paramEvent2.getEx().getCalendarId()) {
      return false;
    }
    return paramEvent1.getId() == paramEvent2.getId();
  }
  
  public static void m(Context paramContext, Event paramEvent, boolean paramBoolean)
  {
    n(paramContext, paramEvent, paramBoolean, false, -1);
  }
  
  public static void n(Context paramContext, Event paramEvent, boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    paramEvent.getEx().getReminders().clear();
    SharedPreferences localSharedPreferences = b2.a.f(paramContext);
    if (paramInt != -1)
    {
      paramInt = -paramInt;
    }
    else
    {
      if (paramBoolean1) {}
      try
      {
        paramInt = -b2.a.a(paramContext, "preferences_default_allday_reminder_minute", 480);
      }
      catch (Exception paramContext)
      {
        int k;
        z.d("Cal:D:EditEventHelper", "CalendarEventModel()", paramContext);
        paramInt = -1;
      }
      k = Integer.parseInt(localSharedPreferences.getString("preferences_default_reminder", "-2"));
      paramInt = k;
      if ("-2".equals(String.valueOf(k))) {
        paramInt = Integer.parseInt(CalendarApplication.e().getResources().getString(2131887280));
      }
    }
    if (paramInt != -1)
    {
      paramEvent.getEx().setHasAlarm(true);
      paramEvent.getEx().addReminder(Reminder.valueOf(paramInt, 1));
      if (paramBoolean2) {
        paramEvent.getEx().addReminder(Reminder.valueOf(paramInt + 4320, 1));
      }
    }
    else
    {
      paramEvent.getEx().setHasAlarm(false);
    }
  }
  
  public static boolean q(ArrayList<ContentProviderOperation> paramArrayList, long paramLong, ArrayList<Reminder> paramArrayList1, ArrayList<Reminder> paramArrayList2, boolean paramBoolean)
  {
    boolean bool = paramArrayList1.equals(paramArrayList2);
    int k = 0;
    if ((bool) && (!paramBoolean)) {
      return false;
    }
    Object localObject = Long.toString(paramLong);
    paramArrayList2 = ContentProviderOperation.newDelete(CalendarContract.Reminders.CONTENT_URI);
    paramArrayList2.withSelection("event_id=?", new String[] { localObject });
    paramArrayList.add(paramArrayList2.build());
    paramArrayList2 = new ContentValues();
    int m = paramArrayList1.size();
    while (k < m)
    {
      localObject = (Reminder)paramArrayList1.get(k);
      paramArrayList2.clear();
      paramArrayList2.put("minutes", Integer.valueOf(((Reminder)localObject).getMinutes()));
      paramArrayList2.put("method", Integer.valueOf(((Reminder)localObject).getMethod()));
      paramArrayList2.put("event_id", Long.valueOf(paramLong));
      paramArrayList.add(ContentProviderOperation.newInsert(CalendarContract.Reminders.CONTENT_URI).withValues(paramArrayList2).build());
      k++;
    }
    return true;
  }
  
  public static boolean r(ArrayList<ContentProviderOperation> paramArrayList, int paramInt, ArrayList<Reminder> paramArrayList1, ArrayList<Reminder> paramArrayList2, boolean paramBoolean)
  {
    boolean bool = paramArrayList1.equals(paramArrayList2);
    int k = 0;
    if ((bool) && (!paramBoolean)) {
      return false;
    }
    paramArrayList2 = ContentProviderOperation.newDelete(CalendarContract.Reminders.CONTENT_URI);
    paramArrayList2.withSelection("event_id=?", new String[1]);
    paramArrayList2.withSelectionBackReference(0, paramInt);
    paramArrayList.add(paramArrayList2.build());
    paramArrayList2 = new ContentValues();
    int m = paramArrayList1.size();
    while (k < m)
    {
      Object localObject = (Reminder)paramArrayList1.get(k);
      paramArrayList2.clear();
      paramArrayList2.put("minutes", Integer.valueOf(((Reminder)localObject).getMinutes()));
      paramArrayList2.put("method", Integer.valueOf(((Reminder)localObject).getMethod()));
      localObject = ContentProviderOperation.newInsert(CalendarContract.Reminders.CONTENT_URI).withValues(paramArrayList2);
      ((ContentProviderOperation.Builder)localObject).withValueBackReference("event_id", paramInt);
      paramArrayList.add(((ContentProviderOperation.Builder)localObject).build());
      k++;
    }
    return true;
  }
  
  public static boolean s(Event paramEvent, Cursor paramCursor)
  {
    boolean bool = false;
    if ((paramEvent != null) && (paramCursor != null))
    {
      if (paramEvent.getEx().getCalendarId() == -1L) {
        return false;
      }
      if (!paramEvent.getEx().isModelUpdatedWithEventCursor())
      {
        Log.wtf("Cal:D:EditEventHelper", "Can't update model with a Calendar cursor until it has seen an Event cursor.");
        return false;
      }
      paramCursor.moveToPosition(-1);
      while (paramCursor.moveToNext()) {
        if (paramEvent.getEx().getCalendarId() == paramCursor.getInt(0))
        {
          EventEx localEventEx = paramEvent.getEx();
          if (paramCursor.getInt(4) != 0) {
            bool = true;
          }
          localEventEx.setOrganizerCanRespond(bool);
          paramEvent.getEx().setCalendarAccessLevel(paramCursor.getInt(5));
          paramEvent.getEx().setCalendarDisplayName(paramCursor.getString(1));
          paramEvent.getEx().setCalendarColor(paramCursor.getInt(3));
          paramEvent.getEx().setCalendarMaxReminders(paramCursor.getInt(6));
          return true;
        }
      }
      return false;
    }
    Log.wtf("Cal:D:EditEventHelper", "setModelFromCalendarCursor(): Attempted to build non-existent model or from an incorrect query.");
    return false;
  }
  
  public static void t(Event paramEvent, Cursor paramCursor)
  {
    if ((paramEvent != null) && (paramCursor != null) && (paramCursor.getCount() == 1))
    {
      paramEvent.resetEx();
      paramCursor.moveToFirst();
      boolean bool1 = false;
      paramEvent.setId(paramCursor.getLong(0));
      paramEvent.setTitle(paramCursor.getString(1));
      paramEvent.setDescription(paramCursor.getString(2));
      paramEvent.setLocation(paramCursor.getString(3));
      if (paramCursor.getInt(4) != 0) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      paramEvent.setAllDay(bool2);
      paramEvent = paramEvent.getEx();
      paramEvent.setStart(paramCursor.getLong(7));
      paramEvent.setAccountType(paramCursor.getString(22));
      paramEvent.setAccountName(paramCursor.getString(23));
      if (paramCursor.getInt(5) != 0) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      paramEvent.setHasAlarm(bool2);
      paramEvent.setCalendarId(paramCursor.getInt(6));
      String str = paramCursor.getString(10);
      if (!TextUtils.isEmpty(str)) {
        paramEvent.setTimezone(str);
      }
      str = paramCursor.getString(11);
      paramEvent.setRrule(str);
      paramEvent.setRdate(paramCursor.getString(24));
      paramEvent.setSyncId(paramCursor.getString(12));
      paramEvent.setOwnerAccount(paramCursor.getString(15));
      if (paramCursor.getInt(16) != 0) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      paramEvent.setHasAttendeeData(bool2);
      paramEvent.setOriginalSyncId(paramCursor.getString(17));
      paramEvent.setOriginalId(paramCursor.getLong(20));
      paramEvent.setOrganizer(paramCursor.getString(18));
      if (paramEvent.getOwnerAccount() != null) {
        paramEvent.setIsOrganizer(paramEvent.getOwnerAccount().equalsIgnoreCase(paramEvent.getOrganizer()));
      }
      boolean bool2 = bool1;
      if (paramCursor.getInt(19) != 0) {
        bool2 = true;
      }
      paramEvent.setGuestsCanModify(bool2);
      paramEvent.setHasExtendedProperties(paramCursor.getInt(25));
      paramEvent.setEventStatus(paramCursor.getInt(21));
      if ((TextUtils.isEmpty(str) ^ true)) {
        paramEvent.setDuration(paramCursor.getString(9));
      } else {
        paramEvent.setEnd(paramCursor.getLong(8));
      }
      paramEvent.setModelUpdatedWithEventCursor(true);
      return;
    }
    Log.wtf("Cal:D:EditEventHelper", "setModelFromEventCursor(): Attempted to build non-existent model or from an incorrect query.");
  }
  
  private int w(List<ContentProviderOperation> paramList, Uri paramUri, ContentValues paramContentValues)
  {
    paramList.add(ContentProviderOperation.newDelete(paramUri).build());
    paramUri = Integer.valueOf(1);
    paramContentValues.put("hasAttendeeData", paramUri);
    paramContentValues.put("eventStatus", paramUri);
    int k = paramList.size();
    paramList.add(ContentProviderOperation.newInsert(CalendarContract.Events.CONTENT_URI).withValues(paramContentValues).build());
    return k;
  }
  
  static void y(int paramInt1, Event paramEvent, int paramInt2)
  {
    EventRecurrence localEventRecurrence = new EventRecurrence();
    if (paramInt1 == 0)
    {
      paramEvent.getEx().setRrule(null);
      return;
    }
    if (paramInt1 == 7) {
      return;
    }
    if (paramInt1 == 1)
    {
      localEventRecurrence.b = 4;
    }
    else
    {
      Object localObject;
      if (paramInt1 == 2)
      {
        localEventRecurrence.b = 5;
        localObject = new int[5];
        for (paramInt1 = 0; paramInt1 < 5; paramInt1++) {
          localObject[paramInt1] = 0;
        }
        localEventRecurrence.m = new int[] { 131072, 262144, 524288, 1048576, 2097152 };
        localEventRecurrence.n = ((int[])localObject);
        localEventRecurrence.o = 5;
      }
      else if (paramInt1 == 3)
      {
        localEventRecurrence.b = 5;
        localObject = new r0(paramEvent.getEx().getTimezone());
        ((r0)localObject).D(paramEvent.getEx().getStart());
        localEventRecurrence.m = new int[] { EventRecurrence.n(((r0)localObject).t()) };
        localEventRecurrence.n = new int[] { 0 };
        localEventRecurrence.o = 1;
      }
      else if (paramInt1 == 5)
      {
        localEventRecurrence.b = 6;
        localEventRecurrence.o = 0;
        localEventRecurrence.q = 1;
        localObject = new r0(paramEvent.getEx().getTimezone());
        ((r0)localObject).D(paramEvent.getEx().getStart());
        localEventRecurrence.p = new int[] { ((r0)localObject).q() };
      }
      else if (paramInt1 == 4)
      {
        localEventRecurrence.b = 6;
        localEventRecurrence.o = 1;
        localEventRecurrence.q = 0;
        localObject = new r0(paramEvent.getEx().getTimezone());
        ((r0)localObject).D(paramEvent.getEx().getStart());
        int k = (((r0)localObject).q() - 1) / 7 + 1;
        paramInt1 = k;
        if (k == 5) {
          paramInt1 = -1;
        }
        localEventRecurrence.m = new int[] { EventRecurrence.n(((r0)localObject).t()) };
        localEventRecurrence.n = new int[] { paramInt1 };
      }
      else if (paramInt1 == 6)
      {
        localEventRecurrence.b = 7;
      }
    }
    A(localEventRecurrence, paramEvent, paramInt2);
  }
  
  public static void z(int paramInt1, Event paramEvent, int paramInt2, RepeatSchema paramRepeatSchema, RepeatEndSchema paramRepeatEndSchema)
  {
    if ((7 == paramInt1) && (paramRepeatSchema != null))
    {
      EventRecurrence localEventRecurrence = new EventRecurrence();
      paramRepeatSchema.updateRecurrence(localEventRecurrence, paramEvent);
      A(localEventRecurrence, paramEvent, paramInt2);
    }
    else
    {
      if ((8 == paramInt1) || (9 == paramInt1)) {
        break label107;
      }
      y(paramInt1, paramEvent, paramInt2);
    }
    if ((paramRepeatEndSchema != null) && (!TextUtils.isEmpty(paramEvent.getEx().getRrule())))
    {
      paramRepeatSchema = new EventRecurrence();
      paramRepeatSchema.j(paramEvent.getEx().getRrule());
      paramRepeatEndSchema.updateRecurrenceEnd(paramRepeatSchema);
      A(paramRepeatSchema, paramEvent, paramInt2);
    }
    return;
    label107:
    paramEvent.getEx().setRrule(null);
  }
  
  void b(ContentValues paramContentValues, Event paramEvent)
  {
    String str1 = paramEvent.getEx().getRrule();
    String str2 = paramEvent.getEx().getRdate();
    if (!TextUtils.isEmpty(str1)) {
      paramContentValues.put("rrule", str1);
    } else if (!TextUtils.isEmpty(str2)) {
      paramContentValues.put("rdate", str2);
    }
    long l1 = paramEvent.getEx().getEnd();
    long l2 = paramEvent.getEx().getStart();
    str1 = paramEvent.getEx().getDuration();
    boolean bool = paramEvent.isAllDay();
    if (l1 > l2)
    {
      if (bool)
      {
        l2 = (l1 - l2 + 86400000L - 1L) / 86400000L;
        paramEvent = new StringBuilder();
        paramEvent.append("P");
        paramEvent.append(l2);
        paramEvent.append("D");
        paramEvent = paramEvent.toString();
      }
      else
      {
        l2 = (l1 - l2) / 1000L;
        paramEvent = new StringBuilder();
        paramEvent.append("P");
        paramEvent.append(l2);
        paramEvent.append("S");
        paramEvent = paramEvent.toString();
      }
    }
    else
    {
      paramEvent = str1;
      if (TextUtils.isEmpty(str1)) {
        if (bool) {
          paramEvent = "P1D";
        } else {
          paramEvent = "P3600S";
        }
      }
    }
    paramContentValues.put("duration", paramEvent);
    paramContentValues.put("dtend", null);
  }
  
  public void c(ArrayList<ContentProviderOperation> paramArrayList, long paramLong)
  {
    paramArrayList.add(ContentProviderOperation.newDelete(CalendarContract.Events.CONTENT_URI.buildUpon().appendPath(Long.toString(paramLong)).build()).build());
  }
  
  public boolean d(ArrayList<ContentProviderOperation> paramArrayList, Event paramEvent1, Event paramEvent2, int paramInt, boolean paramBoolean, p0.b paramb)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("Saving event model: ");
    ((StringBuilder)localObject1).append(paramEvent1);
    Log.d("Cal:D:EditEventHelper", ((StringBuilder)localObject1).toString());
    if (!this.c)
    {
      Log.w("Cal:D:EditEventHelper", "Event no longer exists. Event was not saved.");
      return false;
    }
    if (paramEvent1 == null)
    {
      Log.e("Cal:D:EditEventHelper", "Attempted to save null model.");
      return false;
    }
    EventEx localEventEx = paramEvent1.getEx();
    long l = localEventEx.getCalendarId();
    boolean bool1 = true;
    if ((l == -1L) && (paramb != null)) {
      if (!paramb.isEmpty())
      {
        paramb = paramb.k();
        localObject1 = paramb.c(2);
        localEventEx.setOwnerAccount((String)localObject1);
        localEventEx.setOrganizer((String)localObject1);
        localEventEx.setCalendarId(paramb.e(0).intValue());
        localEventEx.setAccountName(paramb.c(10));
        localEventEx.setAccountType(paramb.c(9));
        localEventEx.setCalendarDisplayName(paramb.c(1));
      }
      else
      {
        z.m("Cal:D:EditEventHelper", "buildSaveEventOps(): calendarResult is empty.");
        return false;
      }
    }
    if (!localEventEx.isValid())
    {
      Log.e("Cal:D:EditEventHelper", "Attempted to save invalid model.");
      return false;
    }
    if ((paramEvent2 != null) && (!paramBoolean) && (!l(paramEvent1, paramEvent2)))
    {
      Log.e("Cal:D:EditEventHelper", "Attempted to update existing event but models didn't refer to the same event.");
      return false;
    }
    if ((paramEvent2 != null) && (localEventEx.isUnchanged(paramEvent2.getEx()))) {
      return false;
    }
    localObject1 = j(paramEvent1);
    if ((localEventEx.getUri() != null) && (paramEvent2 == null))
    {
      Log.e("Cal:D:EditEventHelper", "Existing event but no originalModel provided. Aborting save.");
      return false;
    }
    paramb = null;
    if (localEventEx.getUri() != null) {
      paramb = Uri.parse(localEventEx.getUri());
    }
    Object localObject2 = localEventEx.getReminders();
    int k;
    if (((ArrayList)localObject2).size() > 0) {
      k = 1;
    } else {
      k = 0;
    }
    ((ContentValues)localObject1).put("hasAlarm", Integer.valueOf(k));
    Object localObject3;
    Object localObject4;
    label533:
    label544:
    label550:
    Object localObject5;
    if (paramb == null)
    {
      ((ContentValues)localObject1).put("hasAttendeeData", Integer.valueOf(1));
      ((ContentValues)localObject1).put("eventStatus", Integer.valueOf(1));
      paramInt = paramArrayList.size();
      paramArrayList.add(ContentProviderOperation.newInsert(CalendarContract.Events.CONTENT_URI).withValues((ContentValues)localObject1).build());
    }
    else
    {
      if ((TextUtils.isEmpty(localEventEx.getRrule())) && (TextUtils.isEmpty(paramEvent2.getEx().getRrule())))
      {
        g(paramEvent2, paramEvent1, (ContentValues)localObject1, paramInt, paramBoolean);
        if (!paramBoolean)
        {
          paramArrayList.add(ContentProviderOperation.newUpdate(paramb).withValues((ContentValues)localObject1).build());
        }
        else
        {
          paramInt = w(paramArrayList, paramb, (ContentValues)localObject1);
          break label544;
        }
      }
      else
      {
        localObject3 = localObject1;
        localObject4 = paramb;
        if (!TextUtils.isEmpty(paramEvent2.getEx().getRrule())) {
          break label550;
        }
        if (paramBoolean) {
          break label533;
        }
        paramArrayList.add(ContentProviderOperation.newUpdate((Uri)localObject4).withValues((ContentValues)localObject3).build());
      }
      localObject3 = localObject1;
      break label1163;
      paramInt = w(paramArrayList, (Uri)localObject4, (ContentValues)localObject3);
      for (;;)
      {
        bool1 = false;
        break label1173;
        if (paramInt != 1) {
          break;
        }
        if (!paramBoolean)
        {
          ((ContentValues)localObject3).put("original_sync_id", paramEvent2.getEx().getSyncId());
          ((ContentValues)localObject3).put("originalInstanceTime", Long.valueOf(localEventEx.getOriginalStart()));
          ((ContentValues)localObject3).put("originalAllDay", Integer.valueOf(paramEvent2.isAllDay()));
          ((ContentValues)localObject3).put("eventStatus", Integer.valueOf(paramEvent2.getEx().getEventStatus()));
          paramInt = paramArrayList.size();
          paramArrayList.add(ContentProviderOperation.newInsert(CalendarContract.Events.CONTENT_URI).withValues((ContentValues)localObject3).build());
          paramb = (p0.b)localObject4;
          localObject1 = localObject3;
          bool1 = true;
          break label1173;
        }
        paramInt = paramArrayList.size();
        paramArrayList.add(ContentProviderOperation.newInsert(CalendarContract.Events.CONTENT_URI).withValues((ContentValues)localObject3).build());
        ((ContentValues)localObject3).put("original_sync_id", paramEvent2.getEx().getSyncId());
        ((ContentValues)localObject3).put("originalInstanceTime", Long.valueOf(localEventEx.getOriginalStart()));
        ((ContentValues)localObject3).put("originalAllDay", Integer.valueOf(paramEvent2.isAllDay()));
        ((ContentValues)localObject3).put("eventStatus", Integer.valueOf(paramEvent2.getEx().getEventStatus()));
        localObject1 = b.z(paramEvent2, ((ContentValues)localObject3).getAsLong("dtstart").longValue(), ((ContentValues)localObject3).getAsLong("dtend").longValue());
        paramArrayList.add(ContentProviderOperation.newInsert(CalendarContract.Events.CONTENT_URI).withValues((ContentValues)localObject1).build());
        paramb = (p0.b)localObject4;
      }
      if (paramInt == 2)
      {
        if (TextUtils.isEmpty(localEventEx.getRrule()))
        {
          if (k(paramEvent1, paramEvent2)) {
            paramArrayList.add(ContentProviderOperation.newDelete((Uri)localObject4).build());
          } else {
            x(paramArrayList, paramEvent2, localEventEx.getOriginalStart());
          }
          paramInt = paramArrayList.size();
          ((ContentValues)localObject3).put("eventStatus", Integer.valueOf(paramEvent2.getEx().getEventStatus()));
          paramArrayList.add(ContentProviderOperation.newInsert(CalendarContract.Events.CONTENT_URI).withValues((ContentValues)localObject3).build());
        }
        else if (k(paramEvent1, paramEvent2))
        {
          g(paramEvent2, paramEvent1, (ContentValues)localObject3, paramInt, paramBoolean);
          paramArrayList.add(ContentProviderOperation.newUpdate((Uri)localObject4).withValues((ContentValues)localObject3).build());
          paramInt = -1;
        }
        else
        {
          localObject4 = x(paramArrayList, paramEvent2, localEventEx.getOriginalStart());
          if (localEventEx.getRrule().equals(paramEvent2.getEx().getRrule())) {
            ((ContentValues)localObject3).put("rrule", (String)localObject4);
          }
          paramInt = paramArrayList.size();
          ((ContentValues)localObject3).put("eventStatus", Integer.valueOf(paramEvent2.getEx().getEventStatus()));
          paramArrayList.add(ContentProviderOperation.newInsert(CalendarContract.Events.CONTENT_URI).withValues((ContentValues)localObject3).build());
        }
        bool1 = true;
      }
      else
      {
        localObject5 = localObject4;
        localObject4 = localObject3;
        localObject3 = localObject4;
        if (paramInt == 3)
        {
          if (TextUtils.isEmpty(localEventEx.getRrule()))
          {
            paramArrayList.add(ContentProviderOperation.newDelete((Uri)localObject5).build());
            paramInt = paramArrayList.size();
            paramArrayList.add(ContentProviderOperation.newInsert(CalendarContract.Events.CONTENT_URI).withValues((ContentValues)localObject4).build());
          }
          for (bool1 = true;; bool1 = false)
          {
            break;
            g(paramEvent2, paramEvent1, (ContentValues)localObject4, paramInt, paramBoolean);
            if (!paramBoolean)
            {
              paramArrayList.add(ContentProviderOperation.newUpdate((Uri)localObject5).withValues((ContentValues)localObject4).build());
              localObject3 = localObject4;
              break label1163;
            }
            paramInt = w(paramArrayList, (Uri)localObject5, (ContentValues)localObject4);
          }
        }
        label1163:
        localObject1 = localObject3;
        bool1 = false;
        paramInt = -1;
      }
    }
    label1173:
    boolean bool2;
    if (paramInt != -1) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    if (paramEvent2 != null) {
      localObject3 = paramEvent2.getEx().getReminders();
    } else {
      localObject3 = new ArrayList();
    }
    if (bool2)
    {
      if (paramBoolean) {
        bool1 = true;
      }
      r(paramArrayList, paramInt, (ArrayList)localObject2, (ArrayList)localObject3, bool1);
    }
    else if (paramb != null)
    {
      q(paramArrayList, ContentUris.parseId(paramb), (ArrayList)localObject2, (ArrayList)localObject3, bool1);
    }
    paramBoolean = localEventEx.hasAttendeeData();
    if ((paramBoolean) && (localEventEx.getOwnerAttendeeId() == -1))
    {
      localObject3 = localEventEx.getOwnerAccount();
      if ((localEventEx.getAttendeeList().size() != 0) && (Utils.u0((String)localObject3)))
      {
        ((ContentValues)localObject1).clear();
        ((ContentValues)localObject1).put("attendeeEmail", (String)localObject3);
        ((ContentValues)localObject1).put("attendeeRelationship", Integer.valueOf(2));
        ((ContentValues)localObject1).put("attendeeType", Integer.valueOf(1));
        ((ContentValues)localObject1).put("attendeeStatus", Integer.valueOf(1));
        if (bool2)
        {
          localObject3 = ContentProviderOperation.newInsert(CalendarContract.Attendees.CONTENT_URI).withValues((ContentValues)localObject1);
          ((ContentProviderOperation.Builder)localObject3).withValueBackReference("event_id", paramInt);
        }
        else
        {
          ((ContentValues)localObject1).put("event_id", Long.valueOf(paramEvent1.getId()));
          localObject3 = ContentProviderOperation.newInsert(CalendarContract.Attendees.CONTENT_URI).withValues((ContentValues)localObject1);
        }
        paramArrayList.add(((ContentProviderOperation.Builder)localObject3).build());
      }
    }
    else if ((paramBoolean) && (localEventEx.getSelfAttendeeStatus() != paramEvent2.getEx().getSelfAttendeeStatus()) && (localEventEx.getOwnerAttendeeId() != -1))
    {
      localObject3 = new StringBuilder();
      ((StringBuilder)localObject3).append("Setting attendee status to ");
      ((StringBuilder)localObject3).append(localEventEx.getSelfAttendeeStatus());
      Log.d("Cal:D:EditEventHelper", ((StringBuilder)localObject3).toString());
      localObject3 = ContentUris.withAppendedId(CalendarContract.Attendees.CONTENT_URI, localEventEx.getOwnerAttendeeId());
      ((ContentValues)localObject1).clear();
      ((ContentValues)localObject1).put("attendeeStatus", Integer.valueOf(localEventEx.getSelfAttendeeStatus()));
      ((ContentValues)localObject1).put("event_id", Long.valueOf(paramEvent1.getId()));
      paramArrayList.add(ContentProviderOperation.newUpdate((Uri)localObject3).withValues((ContentValues)localObject1).build());
    }
    if ((paramBoolean) && ((bool2) || (paramb != null)))
    {
      localObject4 = localEventEx.getAttendeesString();
      if (paramEvent2 != null) {
        localObject3 = paramEvent2.getEx().getAttendeesString();
      } else {
        localObject3 = "";
      }
      if ((bool2) || (!TextUtils.equals((CharSequence)localObject3, (CharSequence)localObject4)))
      {
        localObject3 = localEventEx.getAttendeeList();
        Object localObject6 = new LinkedList();
        if (paramb != null) {
          l = ContentUris.parseId(paramb);
        } else {
          l = -1L;
        }
        if (!bool2)
        {
          ((LinkedList)localObject6).clear();
          paramEvent2 = paramEvent2.getEx().getAttendeeList().keySet().iterator();
          while (paramEvent2.hasNext())
          {
            localObject4 = (String)paramEvent2.next();
            if (((HashMap)localObject3).containsKey(localObject4)) {
              ((HashMap)localObject3).remove(localObject4);
            } else {
              ((LinkedList)localObject6).add(localObject4);
            }
          }
          if (((LinkedList)localObject6).size() > 0)
          {
            localObject5 = ContentProviderOperation.newDelete(CalendarContract.Attendees.CONTENT_URI);
            localObject4 = new String[((LinkedList)localObject6).size() + 1];
            localObject4[0] = Long.toString(l);
            localObject2 = new StringBuilder("event_id=? AND attendeeEmail IN (");
            paramEvent2 = ((AbstractCollection)localObject6).iterator();
            for (k = 1; paramEvent2.hasNext(); k++)
            {
              localObject6 = (String)paramEvent2.next();
              if (k > 1) {
                ((StringBuilder)localObject2).append(",");
              }
              ((StringBuilder)localObject2).append("?");
              localObject4[k] = localObject6;
            }
            ((StringBuilder)localObject2).append(")");
            ((ContentProviderOperation.Builder)localObject5).withSelection(((StringBuilder)localObject2).toString(), (String[])localObject4);
            paramArrayList.add(((ContentProviderOperation.Builder)localObject5).build());
          }
        }
        if (((HashMap)localObject3).size() > 0)
        {
          localObject3 = ((HashMap)localObject3).values().iterator();
          while (((Iterator)localObject3).hasNext())
          {
            paramEvent2 = (Attendee)((Iterator)localObject3).next();
            ((ContentValues)localObject1).clear();
            ((ContentValues)localObject1).put("attendeeName", paramEvent2.getName());
            ((ContentValues)localObject1).put("attendeeEmail", paramEvent2.getEmail());
            ((ContentValues)localObject1).put("attendeeRelationship", Integer.valueOf(1));
            ((ContentValues)localObject1).put("attendeeType", Integer.valueOf(1));
            ((ContentValues)localObject1).put("attendeeStatus", Integer.valueOf(0));
            if (bool2)
            {
              paramEvent2 = ContentProviderOperation.newInsert(CalendarContract.Attendees.CONTENT_URI).withValues((ContentValues)localObject1);
              paramEvent2.withValueBackReference("event_id", paramInt);
            }
            else
            {
              ((ContentValues)localObject1).put("event_id", Long.valueOf(l));
              paramEvent2 = ContentProviderOperation.newInsert(CalendarContract.Attendees.CONTENT_URI).withValues((ContentValues)localObject1);
            }
            paramArrayList.add(paramEvent2.build());
          }
        }
      }
    }
    boolean bool3 = true;
    paramBoolean = true;
    bool1 = bool3;
    paramEvent2 = (Event)localObject1;
    if (localEventEx.getEpMap() != null)
    {
      bool1 = bool3;
      paramEvent2 = (Event)localObject1;
      if (localEventEx.getEpMap().size() > 0)
      {
        localObject3 = localEventEx.getEpMap().entrySet().iterator();
        for (;;)
        {
          bool1 = paramBoolean;
          paramEvent2 = (Event)localObject1;
          if (!((Iterator)localObject3).hasNext()) {
            break;
          }
          paramEvent2 = (Map.Entry)((Iterator)localObject3).next();
          e(paramInt, (String)paramEvent2.getKey(), (String)paramEvent2.getValue(), bool2, paramb, paramArrayList, (ContentValues)localObject1);
        }
      }
    }
    if ((localEventEx.getEmailMessageId() != 0L) && (localEventEx.getEmailMessageTimeStamp() != 0L))
    {
      localObject1 = new JSONObject();
      try
      {
        ((JSONObject)localObject1).put("emailMessageId", localEventEx.getEmailMessageId());
        ((JSONObject)localObject1).put("emailMessageTimeStamp", localEventEx.getEmailMessageTimeStamp());
      }
      catch (Exception localException)
      {
        localObject4 = new StringBuilder();
        ((StringBuilder)localObject4).append("saveEvent(): build JSONObject error: ");
        ((StringBuilder)localObject4).append(localException);
        z.a("Cal:D:EditEventHelper", ((StringBuilder)localObject4).toString());
      }
      e(paramInt, "email_info", ((JSONObject)localObject1).toString(), bool2, paramb, paramArrayList, paramEvent2);
    }
    if ((paramEvent1 instanceof AgendaEvent)) {
      e(paramInt, "agenda_info", paramEvent1.toJson(), bool2, paramb, paramArrayList, paramEvent2);
    } else if ((paramEvent1 instanceof BirthdayEvent)) {
      e(paramInt, "key_birthday_info", ((BirthdayEvent)paramEvent1).toJson(), bool2, paramb, paramArrayList, paramEvent2);
    } else if ((paramEvent1 instanceof AnniversaryEvent)) {
      e(paramInt, "key_anniversary_info", ((AnniversaryEvent)paramEvent1).toJson(), bool2, paramb, paramArrayList, paramEvent2);
    } else if ((paramEvent1 instanceof CountdownEvent)) {
      e(paramInt, "key_countdown_info", ((CountdownEvent)paramEvent1).toJson(), bool2, paramb, paramArrayList, paramEvent2);
    } else if ((paramEvent1 instanceof TrainEvent)) {
      e(paramInt, "travel_info", ((TrainEvent)paramEvent1).toJson(), bool2, paramb, paramArrayList, paramEvent2);
    }
    return bool1;
  }
  
  void g(Event paramEvent1, Event paramEvent2, ContentValues paramContentValues, int paramInt, boolean paramBoolean)
  {
    long l1 = paramEvent2.getEx().getOriginalStart();
    long l2 = paramEvent2.getEx().getOriginalEnd();
    boolean bool1 = paramEvent1.isAllDay();
    String str1 = paramEvent1.getEx().getRrule();
    String str2 = paramEvent1.getEx().getRdate();
    String str3 = paramEvent1.getEx().getTimezone();
    long l3 = paramEvent2.getEx().getStart();
    long l4 = paramEvent2.getEx().getEnd();
    boolean bool2 = paramEvent2.isAllDay();
    String str4 = paramEvent2.getEx().getRrule();
    String str5 = paramEvent2.getEx().getRdate();
    paramEvent2 = paramEvent2.getEx().getTimezone();
    if ((!paramBoolean) && (l1 == l3) && (l2 == l4) && (bool1 == bool2) && (TextUtils.equals(str1, str4)) && (TextUtils.equals(str2, str5)) && (TextUtils.equals(str3, paramEvent2)))
    {
      paramContentValues.remove("dtstart");
      paramContentValues.remove("dtend");
      paramContentValues.remove("duration");
      paramContentValues.remove("allDay");
      paramContentValues.remove("rrule");
      paramContentValues.remove("eventTimezone");
      return;
    }
    if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str4)) && (paramInt == 3))
    {
      l4 = paramEvent1.getEx().getStart();
      l2 = l4;
      if (l1 != l3) {
        l2 = l4 + (l3 - l1);
      }
      l4 = l2;
      if (bool2)
      {
        paramEvent1 = new r0("UTC");
        paramEvent1.D(l2);
        paramEvent1.F(0);
        paramEvent1.H(0);
        paramEvent1.K(0);
        l4 = paramEvent1.P(false);
      }
      paramContentValues.put("dtstart", Long.valueOf(l4));
    }
  }
  
  ContentValues j(Event paramEvent)
  {
    String str1 = paramEvent.getTitle();
    int k = paramEvent.isAllDay();
    String str2 = paramEvent.getEx().getRrule();
    String str3 = paramEvent.getEx().getRdate();
    String str4 = paramEvent.getEx().getTimezone();
    String str5 = str4;
    if (str4 == null) {
      str5 = TimeZone.getDefault().getID();
    }
    r0 localr01 = new r0(str5);
    r0 localr02 = new r0(str5);
    localr01.D(paramEvent.getEx().getStart());
    localr02.D(paramEvent.getEx().getEnd());
    ContentValues localContentValues = new ContentValues();
    long l1 = paramEvent.getEx().getCalendarId();
    long l5;
    long l6;
    if (k != 0)
    {
      str4 = "UTC";
      localr01.F(0);
      localr01.H(0);
      localr01.K(0);
      localr01.L("UTC");
      long l2 = localr01.y(true);
      localr02.F(0);
      localr02.H(0);
      localr02.K(0);
      localr02.L("UTC");
      long l3 = localr02.y(true);
      long l4 = 86400000L + l2;
      str5 = str4;
      l5 = l3;
      l6 = l2;
      if (l3 < l4)
      {
        l5 = l4;
        str5 = str4;
        l6 = l2;
      }
    }
    else
    {
      localr01.K(0);
      localr02.K(0);
      l6 = localr01.P(true);
      l5 = localr02.P(true);
    }
    localContentValues.put("calendar_id", Long.valueOf(l1));
    localContentValues.put("organizer", paramEvent.getEx().getOrganizer());
    localContentValues.put("eventTimezone", str5);
    localContentValues.put("title", str1);
    localContentValues.put("allDay", Integer.valueOf(k));
    localContentValues.put("dtstart", Long.valueOf(l6));
    localContentValues.put("rrule", str2);
    localContentValues.put("rdate", str3);
    if ((TextUtils.isEmpty(str2)) && (TextUtils.isEmpty(str3)))
    {
      localContentValues.put("duration", null);
      localContentValues.put("dtend", Long.valueOf(l5));
    }
    else
    {
      b(localContentValues, paramEvent);
    }
    if (paramEvent.getDescription() != null) {
      localContentValues.put("description", paramEvent.getDescription().trim());
    } else {
      localContentValues.put("description", null);
    }
    if (paramEvent.getLocation() != null) {
      localContentValues.put("eventLocation", paramEvent.getLocation().trim());
    } else {
      localContentValues.put("eventLocation", null);
    }
    localContentValues.put("hasAttendeeData", Integer.valueOf(paramEvent.getEx().hasAttendeeData()));
    localContentValues.put("eventStatus", Integer.valueOf(paramEvent.getEx().getEventStatus()));
    localContentValues.put("hasExtendedProperties", Integer.valueOf(paramEvent.getEx().getHasExtendedProperties()));
    if (!TextUtils.isEmpty(paramEvent.getEx().getCustomAppPackage())) {
      localContentValues.put("customAppPackage", paramEvent.getEx().getCustomAppPackage());
    }
    return localContentValues;
  }
  
  public boolean o(Event paramEvent1, Event paramEvent2, int paramInt, boolean paramBoolean)
  {
    return p(paramEvent1, paramEvent2, paramInt, paramBoolean, null);
  }
  
  public boolean p(Event paramEvent1, Event paramEvent2, int paramInt, boolean paramBoolean, Runnable paramRunnable)
  {
    ArrayList localArrayList = new ArrayList();
    if (d(localArrayList, paramEvent1, paramEvent2, paramInt, paramBoolean, e0.c(this.a)))
    {
      v(localArrayList, paramRunnable);
      if (paramEvent2 != null) {
        d.c(this.a, (int)paramEvent2.getId());
      }
      return true;
    }
    return false;
  }
  
  public void u(ArrayList<ContentProviderOperation> paramArrayList)
  {
    v(paramArrayList, null);
  }
  
  public void v(ArrayList<ContentProviderOperation> paramArrayList, Runnable paramRunnable)
  {
    if (this.b == null) {
      this.b = new a(this.a, this);
    }
    int k = this.b.g();
    if (paramRunnable != null) {
      this.d.put(Integer.valueOf(k), paramRunnable);
    }
    this.b.m(k, null, "com.android.calendar", paramArrayList, 0L);
  }
  
  public String x(ArrayList<ContentProviderOperation> paramArrayList, Event paramEvent, long paramLong)
  {
    boolean bool = paramEvent.isAllDay();
    String str = paramEvent.getEx().getRrule();
    EventRecurrence localEventRecurrence = new EventRecurrence();
    localEventRecurrence.j(str);
    long l = paramEvent.getEx().getStart();
    r0 localr0 = new r0();
    localr0.L(paramEvent.getEx().getTimezone());
    localr0.D(l);
    ContentValues localContentValues = new ContentValues();
    Object localObject2;
    if (localEventRecurrence.d > 0)
    {
      Object localObject1 = new c(paramEvent.getEx().getRrule(), null, null, null);
      localObject2 = new com.miui.calendar.util.calendarcommon2.b();
      try
      {
        localObject2 = ((com.miui.calendar.util.calendarcommon2.b)localObject2).b(localr0, (c)localObject1, l, paramLong);
        if (localObject2.length == 0)
        {
          z.c("Cal:D:EditEventHelper", "can't use this method on first instance");
          return null;
        }
        localObject1 = new EventRecurrence();
        ((EventRecurrence)localObject1).j(str);
        ((EventRecurrence)localObject1).d -= localObject2.length;
        str = ((EventRecurrence)localObject1).toString();
        localEventRecurrence.d = localObject2.length;
      }
      catch (DateException paramArrayList)
      {
        throw new RuntimeException(paramArrayList);
      }
    }
    else
    {
      localObject2 = new r0();
      ((r0)localObject2).L("UTC");
      ((r0)localObject2).D(paramLong - 1000L);
      if (bool)
      {
        ((r0)localObject2).b = true;
        ((r0)localObject2).F(0);
        ((r0)localObject2).H(0);
        ((r0)localObject2).K(0);
        ((r0)localObject2).y(false);
        localr0.b = true;
        localr0.F(0);
        localr0.H(0);
        localr0.K(0);
        localr0.L("UTC");
      }
      localEventRecurrence.c = ((r0)localObject2).f();
    }
    localContentValues.put("rrule", localEventRecurrence.toString());
    localContentValues.put("dtstart", Long.valueOf(localr0.y(true)));
    paramArrayList.add(ContentProviderOperation.newUpdate(Uri.parse(paramEvent.getEx().getUri())).withValues(localContentValues).build());
    return str;
  }
  
  private static class a
    extends com.android.calendar.common.a<j>
  {
    a(Context paramContext, j paramj)
    {
      super(paramj);
    }
    
    protected void h(int paramInt, Object paramObject, ContentProviderResult[] paramArrayOfContentProviderResult)
    {
      super.h(paramInt, paramObject, paramArrayOfContentProviderResult);
      paramObject = (j)c();
      if (paramObject != null)
      {
        paramObject = (Runnable)j.a(paramObject).get(Integer.valueOf(paramInt));
        if (paramObject != null) {
          paramObject.run();
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.j
 * JD-Core Version:    0.7.0.1
 */