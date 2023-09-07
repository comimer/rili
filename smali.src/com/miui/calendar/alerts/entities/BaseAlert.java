package com.miui.calendar.alerts.entities;

import android.app.PendingIntent;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.CalendarContract.CalendarAlerts;
import android.provider.CalendarContract.Events;
import android.text.TextUtils;
import android.text.format.DateFormat;
import com.android.calendar.alerts.AlertActivity;
import com.android.calendar.alerts.DismissAlarmsService;
import com.android.calendar.alerts.NotificationMiddleActivity;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.Event;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.z;
import java.util.Locale;
import java.util.TimeZone;
import n3.c;
import org.json.JSONObject;
import s1.d;

public abstract class BaseAlert<T extends Event>
  implements Parcelable
{
  public static final String EXTRA_KEY_ALERT = "extra_key_alert";
  private static final long ID_MASK = 255L;
  private static final String KEY_ACCOUNT_NAME = "KEY_ALERT_ACCOUNT_NAME";
  private static final String KEY_ACCOUNT_TYPE = "KEY_ALERT_ACCOUNT_TYPE";
  private static final String KEY_ALERT_AT = "KEY_ALERT_ALERT_AT";
  private static final String KEY_ALERT_ID = "KEY_ALERT_ALERT_ID";
  private static final String KEY_BEGIN_AT = "KEY_ALERT_BEGIN_AT";
  private static final String KEY_CALENDAR_DISPLAY_NAME = "KEY_ALERT_CALENDAR_DISPLAY_NAME";
  private static final String KEY_COLOR = "KEY_ALERT_COLOR";
  private static final String KEY_CUSTOM_APP_PACKAGE = "KEY_ALERT_CUSTOM_APP_PACKAGE";
  private static final String KEY_END_AT = "KEY_ALERT_END_AT";
  private static final String KEY_EVENT_DESCRIPTION = "KEY_ALERT_EVENT_DESCRIPTION";
  private static final String KEY_EVENT_ID = "KEY_ALERT_EVENT_ID";
  private static final String KEY_EVENT_LOCATION = "KEY_ALERT_EVENT_LOCATION";
  private static final String KEY_EVENT_STATE = "KEY_ALERT_EVENT_STATE";
  private static final String KEY_EVENT_TITLE = "KEY_ALERT_EVENT_TITLE";
  private static final String KEY_EVENT_TYPE = "KEY_ALERT_EVENT_TYPE";
  private static final String KEY_HAS_ALARM = "KEY_HAS_ALARM";
  private static final String KEY_IS_ALL_DAY = "KEY_ALERT_IS_ALL_DAY";
  private static final String KEY_REMIND_MINUTES = "KEY_ALERT_REMIND_MINUTES";
  private static final String KEY_RRULE = "KEY_ALERT_RRULE";
  private static final String KEY_SELF_ATTENDEE_STATUS = "KEY_ALERT_SELF_ATTENDEE_STATUS";
  private static final String TAG = "Cal:D:BaseAlert";
  public static final String TYPE_AGENDA_DEFAULT = "agenda_default";
  public static final String TYPE_AGENDA_DEFAULT_FULLDAY = "agenda_default_fullday";
  public static final String TYPE_AGENDA_MAIL = "agenda_email";
  public static final String TYPE_AGENDA_OTHER = "agenda_non_email";
  public static final String TYPE_ANNIVERSARY = "anniversary";
  public static final String TYPE_BIRTHDAY_CONTACTS = "birthday_contacts";
  public static final String TYPE_BIRTHDAY_MANUAL = "birthday_manual";
  public static final String TYPE_COUNTDOWN = "countdown";
  public static final String TYPE_SMS_CREDIT = "sms_credit";
  public static final String TYPE_SMS_ELECTRICITY = "sms_electricity";
  public static final String TYPE_SMS_FLIGHT = "sms_flight";
  public static final String TYPE_SMS_GAS = "sms_gas";
  public static final String TYPE_SMS_HOTEL = "sms_hotel";
  public static final String TYPE_SMS_LOAN = "sms_loan";
  public static final String TYPE_SMS_MOVIE = "sms_movie";
  public static final String TYPE_SMS_TRAIN = "sms_train";
  private String mAccountName;
  private String mAccountType;
  private long mAlertAt;
  private int mAlertId = -1;
  private long mBeginAt;
  private String mCalendarDisplayName;
  private int mColor;
  private String mCustomAppPackage;
  private long mEndAt;
  protected T mEvent;
  private String mEventDescription;
  private long mEventId = -1L;
  private String mEventLocation;
  private int mEventState;
  private String mEventTitle;
  private int mEventType;
  private boolean mHasAlarm;
  private boolean mIsAllDay;
  private Boolean mNeedAlarm = null;
  private int mRemindMinutes;
  private String mRrule;
  private int mSelfAttendeeStatus;
  
  public BaseAlert() {}
  
  protected BaseAlert(Parcel paramParcel)
  {
    this.mAlertId = paramParcel.readInt();
    this.mEventId = paramParcel.readLong();
    this.mEventLocation = paramParcel.readString();
    this.mEventTitle = paramParcel.readString();
    this.mEventDescription = paramParcel.readString();
    this.mEventType = paramParcel.readInt();
    int i = paramParcel.readInt();
    boolean bool1 = true;
    boolean bool2;
    if (i != 0) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    this.mIsAllDay = bool2;
    this.mBeginAt = paramParcel.readLong();
    this.mEndAt = paramParcel.readLong();
    this.mAccountName = paramParcel.readString();
    this.mAccountType = paramParcel.readString();
    this.mCalendarDisplayName = paramParcel.readString();
    this.mColor = paramParcel.readInt();
    this.mRrule = paramParcel.readString();
    this.mCustomAppPackage = paramParcel.readString();
    this.mSelfAttendeeStatus = paramParcel.readInt();
    this.mEventState = paramParcel.readInt();
    this.mRemindMinutes = paramParcel.readInt();
    this.mAlertAt = paramParcel.readLong();
    if (paramParcel.readInt() != 0) {
      bool2 = bool1;
    } else {
      bool2 = false;
    }
    this.mHasAlarm = bool2;
  }
  
  public static BaseAlert fromBundle(Bundle paramBundle)
  {
    try
    {
      int i = paramBundle.getInt("KEY_ALERT_EVENT_TYPE");
      Object localObject;
      if (i != 7)
      {
        if (i != 8)
        {
          if (i != 9)
          {
            localObject = new com/miui/calendar/alerts/entities/AgendaAlert;
            ((AgendaAlert)localObject).<init>();
          }
          else
          {
            localObject = new AnniversaryAlert();
          }
        }
        else {
          localObject = new AnniversaryAlert();
        }
      }
      else {
        localObject = new BirthdayAlert();
      }
      ((BaseAlert)localObject).mAlertId = paramBundle.getInt("KEY_ALERT_ALERT_ID");
      ((BaseAlert)localObject).mEventId = paramBundle.getLong("KEY_ALERT_EVENT_ID");
      ((BaseAlert)localObject).mEventLocation = paramBundle.getString("KEY_ALERT_EVENT_LOCATION");
      ((BaseAlert)localObject).mEventTitle = paramBundle.getString("KEY_ALERT_EVENT_TITLE");
      ((BaseAlert)localObject).mEventDescription = paramBundle.getString("KEY_ALERT_EVENT_DESCRIPTION");
      ((BaseAlert)localObject).mEventType = paramBundle.getInt("KEY_ALERT_EVENT_TYPE");
      i = paramBundle.getInt("KEY_ALERT_IS_ALL_DAY");
      boolean bool1 = true;
      boolean bool2;
      if (i != 0) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      ((BaseAlert)localObject).mIsAllDay = bool2;
      ((BaseAlert)localObject).mBeginAt = paramBundle.getLong("KEY_ALERT_BEGIN_AT");
      ((BaseAlert)localObject).mEndAt = paramBundle.getLong("KEY_ALERT_END_AT");
      ((BaseAlert)localObject).mAccountName = paramBundle.getString("KEY_ALERT_ACCOUNT_NAME");
      ((BaseAlert)localObject).mAccountType = paramBundle.getString("KEY_ALERT_ACCOUNT_TYPE");
      ((BaseAlert)localObject).mCalendarDisplayName = paramBundle.getString("KEY_ALERT_CALENDAR_DISPLAY_NAME");
      ((BaseAlert)localObject).mColor = paramBundle.getInt("KEY_ALERT_COLOR");
      ((BaseAlert)localObject).mRrule = paramBundle.getString("KEY_ALERT_RRULE");
      ((BaseAlert)localObject).mCustomAppPackage = paramBundle.getString("KEY_ALERT_CUSTOM_APP_PACKAGE");
      ((BaseAlert)localObject).mSelfAttendeeStatus = paramBundle.getInt("KEY_ALERT_SELF_ATTENDEE_STATUS");
      ((BaseAlert)localObject).mEventState = paramBundle.getInt("KEY_ALERT_EVENT_STATE");
      ((BaseAlert)localObject).mRemindMinutes = paramBundle.getInt("KEY_ALERT_REMIND_MINUTES");
      ((BaseAlert)localObject).mAlertAt = paramBundle.getLong("KEY_ALERT_ALERT_AT");
      if (paramBundle.getInt("KEY_HAS_ALARM") != 0) {
        bool2 = bool1;
      } else {
        bool2 = false;
      }
      ((BaseAlert)localObject).mHasAlarm = bool2;
      return localObject;
    }
    catch (Exception paramBundle)
    {
      z.d("Cal:D:BaseAlert", "fromBundle error", paramBundle);
    }
    return null;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public b edit()
  {
    return new b(this, null);
  }
  
  public String getAccountName()
  {
    return this.mAccountName;
  }
  
  public String getAccountType()
  {
    return this.mAccountType;
  }
  
  public abstract c getAdapter(Context paramContext, int paramInt);
  
  public long getAlertAt()
  {
    return this.mAlertAt;
  }
  
  public int getAlertId()
  {
    return this.mAlertId;
  }
  
  public long getBeginAt()
  {
    return this.mBeginAt;
  }
  
  public String getCalendarDisplayName()
  {
    return this.mCalendarDisplayName;
  }
  
  public int getColor()
  {
    return this.mColor;
  }
  
  public PendingIntent getContentIntent(Context paramContext, boolean paramBoolean)
  {
    z.a("Cal:D:BaseAlert", "getContentIntent");
    Intent localIntent = new Intent();
    localIntent.setClass(paramContext, NotificationMiddleActivity.class);
    localIntent.putExtra("eventid", this.mEventId);
    localIntent.putExtra("eventstart", this.mBeginAt);
    localIntent.putExtra("eventend", this.mEndAt);
    localIntent.putExtra("showevent", true);
    localIntent.putExtra("hasEP", this.mEventType);
    localIntent.putExtra("notificationid", getNotificationId());
    localIntent.putExtra("dismissevent", paramBoolean);
    localIntent.putExtra("updatealertnotification", false);
    localIntent.putExtra("extra_key_alert", this);
    Object localObject = CalendarContract.Events.CONTENT_URI.buildUpon();
    ContentUris.appendId((Uri.Builder)localObject, this.mEventId);
    ContentUris.appendId((Uri.Builder)localObject, this.mBeginAt);
    localIntent.setData(((Uri.Builder)localObject).build());
    localIntent.setAction("com.android.calendar.CLICK");
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("createDismissAlarmsIntent(): intent:");
    ((StringBuilder)localObject).append(localIntent);
    z.a("Cal:D:BaseAlert", ((StringBuilder)localObject).toString());
    return PendingIntent.getActivity(paramContext, 0, localIntent, 201326592);
  }
  
  public String getCustomAppPackage()
  {
    return this.mCustomAppPackage;
  }
  
  public PendingIntent getDeleteIntent(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    z.a("Cal:D:BaseAlert", "getDeleteIntent");
    Intent localIntent = new Intent();
    localIntent.setClass(paramContext, DismissAlarmsService.class);
    localIntent.putExtra("eventid", this.mEventId);
    localIntent.putExtra("eventstart", this.mBeginAt);
    localIntent.putExtra("eventend", this.mEndAt);
    localIntent.putExtra("showevent", false);
    localIntent.putExtra("hasEP", this.mEventType);
    localIntent.putExtra("notificationid", getNotificationId());
    localIntent.putExtra("dismissevent", paramBoolean1);
    localIntent.putExtra("updatealertnotification", paramBoolean2);
    localIntent.putExtra("extra_key_alert", this);
    Object localObject = CalendarContract.Events.CONTENT_URI.buildUpon();
    ContentUris.appendId((Uri.Builder)localObject, this.mEventId);
    ContentUris.appendId((Uri.Builder)localObject, this.mBeginAt);
    localIntent.setData(((Uri.Builder)localObject).build());
    localIntent.setAction("com.android.calendar.DELETE");
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("createDismissAlarmsIntent(): intent:");
    ((StringBuilder)localObject).append(localIntent);
    z.a("Cal:D:BaseAlert", ((StringBuilder)localObject).toString());
    return PendingIntent.getService(paramContext, 0, localIntent, 201326592);
  }
  
  public long getEndAt()
  {
    return this.mEndAt;
  }
  
  public String getEventDescription()
  {
    return this.mEventDescription;
  }
  
  public long getEventId()
  {
    return this.mEventId;
  }
  
  public String getEventLocation()
  {
    return this.mEventLocation;
  }
  
  public int getEventState()
  {
    return this.mEventState;
  }
  
  public String getEventTitle()
  {
    return this.mEventTitle;
  }
  
  public int getEventType()
  {
    return this.mEventType;
  }
  
  public PendingIntent getFullscreenIntent(Context paramContext)
  {
    z.a("Cal:D:BaseAlert", "getFullscreenIntent");
    Intent localIntent = new Intent();
    localIntent.setClass(paramContext, AlertActivity.class);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("calendar://");
    localStringBuilder.append(getNotificationId());
    localIntent.setData(Uri.parse(localStringBuilder.toString()));
    boolean bool = isNeedAlarm(paramContext);
    localIntent.putExtra("miui.intent.extra_calendar_reminder_alarm_alert", bool);
    localIntent.putExtra("miui.intent.extra_calendar_reminder_screen_on", bool);
    localIntent.addFlags(268435456);
    localIntent.putExtra("extra_key_alert", this);
    return PendingIntent.getActivity(paramContext, 0, localIntent, 1275068416);
  }
  
  public int getNotificationId()
  {
    long l1 = getEventId();
    long l2 = l1;
    if (l1 >= 2147483647L) {
      l2 = l1 & 0xFF;
    }
    return (int)l2;
  }
  
  public int getRemindMinutes()
  {
    return this.mRemindMinutes;
  }
  
  public abstract int getRemindType();
  
  public String getRrule()
  {
    return this.mRrule;
  }
  
  public int getSelfAttendeeStatus()
  {
    return this.mSelfAttendeeStatus;
  }
  
  public String getSummaryText(Context paramContext)
  {
    String str = Utils.U(paramContext);
    r0 localr0 = new r0(str);
    localr0.M();
    int i = r0.n(localr0.P(false), localr0.l());
    localr0.D(this.mBeginAt);
    int j = r0.n(localr0.P(false), localr0.l());
    int k;
    if (!this.mIsAllDay)
    {
      k = 524289;
      if (DateFormat.is24HourFormat(paramContext)) {
        k = 524417;
      }
    }
    else
    {
      k = 532480;
    }
    int m;
    if (j >= i)
    {
      m = k;
      if (j <= i + 1) {}
    }
    else
    {
      m = k | 0x10;
    }
    long l = this.mBeginAt;
    StringBuilder localStringBuilder = new StringBuilder(Utils.p(paramContext, l, l, m));
    if ((!this.mIsAllDay) && (!TextUtils.equals(str, r0.j())))
    {
      localr0.D(this.mBeginAt);
      boolean bool;
      if (localr0.k() != 0) {
        bool = true;
      } else {
        bool = false;
      }
      localStringBuilder.append(" ");
      localStringBuilder.append(TimeZone.getTimeZone(str).getDisplayName(bool, 0, Locale.getDefault()));
    }
    if (j == i + 1)
    {
      localStringBuilder.append(", ");
      localStringBuilder.append(paramContext.getString(2131887723));
    }
    paramContext = this.mEventLocation;
    if (paramContext != null)
    {
      paramContext = paramContext.trim();
      if (!TextUtils.isEmpty(paramContext))
      {
        localStringBuilder.append(", ");
        localStringBuilder.append(paramContext);
      }
    }
    return localStringBuilder.toString();
  }
  
  public boolean hasAlarm()
  {
    return this.mHasAlarm;
  }
  
  public boolean hasChanged(Context paramContext)
  {
    paramContext = loadAnotherOne(paramContext);
    if (paramContext == null) {
      return false;
    }
    if (paramContext == this) {
      return true;
    }
    if (paramContext.mAlertId != this.mAlertId) {
      return false;
    }
    if (paramContext.mEventId != this.mEventId) {
      return false;
    }
    String str = paramContext.mEventTitle;
    if (str == null)
    {
      if (this.mEventTitle != null) {
        return false;
      }
    }
    else if (!str.equals(this.mEventTitle)) {
      return false;
    }
    str = paramContext.mEventLocation;
    if (str == null)
    {
      if (this.mEventLocation != null) {
        return false;
      }
    }
    else if (!str.equals(this.mEventLocation)) {
      return false;
    }
    str = paramContext.mEventDescription;
    if (str == null)
    {
      if (this.mEventDescription != null) {
        return false;
      }
    }
    else if (!str.equals(this.mEventDescription)) {
      return false;
    }
    if (paramContext.mBeginAt != this.mBeginAt) {
      return false;
    }
    if (paramContext.mEndAt != this.mEndAt) {
      return false;
    }
    if (paramContext.mIsAllDay != this.mIsAllDay) {
      return false;
    }
    str = paramContext.mAccountName;
    if (str == null)
    {
      if (this.mAccountName != null) {
        return false;
      }
    }
    else if (!str.equals(this.mAccountName)) {
      return false;
    }
    str = paramContext.mAccountType;
    if (str == null)
    {
      if (this.mAccountType != null) {
        return false;
      }
    }
    else if (!str.equals(this.mAccountType)) {
      return false;
    }
    str = paramContext.mCalendarDisplayName;
    if (str == null)
    {
      if (this.mCalendarDisplayName != null) {
        return false;
      }
    }
    else if (!str.equals(this.mCalendarDisplayName)) {
      return false;
    }
    str = paramContext.mRrule;
    if (str == null)
    {
      if (this.mRrule != null) {
        return false;
      }
    }
    else if (!str.equals(this.mRrule)) {
      return false;
    }
    str = paramContext.mCustomAppPackage;
    if (str == null)
    {
      if (this.mCustomAppPackage != null) {
        return false;
      }
    }
    else if (!str.equals(this.mCustomAppPackage)) {
      return false;
    }
    if (paramContext.mEventType != this.mEventType) {
      return false;
    }
    if (paramContext.mRemindMinutes != this.mRemindMinutes) {
      return false;
    }
    if (paramContext.mAlertAt != this.mAlertAt) {
      return false;
    }
    return paramContext.mHasAlarm == this.mHasAlarm;
  }
  
  public boolean hasFired()
  {
    int i = this.mEventState;
    boolean bool = true;
    if (i != 1) {
      bool = false;
    }
    return bool;
  }
  
  public boolean isAllDay()
  {
    return this.mIsAllDay;
  }
  
  public boolean isAvailable(Context paramContext)
  {
    return true;
  }
  
  public boolean isDeclined()
  {
    boolean bool;
    if (this.mSelfAttendeeStatus == 2) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean isNeedAlarm(Context paramContext)
  {
    if (this.mNeedAlarm == null) {
      try
      {
        String str = d.h(paramContext, this.mEventId, d.b(this.mEventType));
        paramContext = new org/json/JSONObject;
        paramContext.<init>(str);
        this.mNeedAlarm = Boolean.valueOf(paramContext.getBoolean("need_alarm"));
      }
      catch (Exception paramContext)
      {
        z.d("Cal:D:BaseAlert", "isNeedAlarm error", paramContext);
        this.mNeedAlarm = Boolean.FALSE;
      }
    }
    return this.mNeedAlarm.booleanValue();
  }
  
  public boolean isNew()
  {
    boolean bool;
    if (this.mEventState == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public abstract BaseAlert<T> loadAnotherOne(Context paramContext);
  
  public abstract boolean needPopup(Context paramContext);
  
  public void setAccountName(String paramString)
  {
    this.mAccountName = paramString;
  }
  
  public void setAccountType(String paramString)
  {
    this.mAccountType = paramString;
  }
  
  public void setAlertAt(long paramLong)
  {
    this.mAlertAt = paramLong;
  }
  
  public void setAlertId(int paramInt)
  {
    this.mAlertId = paramInt;
  }
  
  public void setAllDay(boolean paramBoolean)
  {
    this.mIsAllDay = paramBoolean;
  }
  
  public void setBeginAt(long paramLong)
  {
    this.mBeginAt = paramLong;
  }
  
  public void setCalendarDisplayName(String paramString)
  {
    this.mCalendarDisplayName = paramString;
  }
  
  public void setColor(int paramInt)
  {
    this.mColor = paramInt;
  }
  
  public void setCustomAppPackage(String paramString)
  {
    this.mCustomAppPackage = paramString;
  }
  
  public void setEndAt(long paramLong)
  {
    this.mEndAt = paramLong;
  }
  
  public void setEvent(T paramT)
  {
    this.mEvent = paramT;
    this.mEventId = paramT.getId();
    this.mEventType = paramT.getEventType();
  }
  
  public void setEventDescription(String paramString)
  {
    this.mEventDescription = paramString;
  }
  
  public void setEventId(long paramLong)
  {
    this.mEventId = paramLong;
  }
  
  public void setEventLocation(String paramString)
  {
    this.mEventLocation = paramString;
  }
  
  public void setEventState(int paramInt)
  {
    this.mEventState = paramInt;
  }
  
  public void setEventTitle(String paramString)
  {
    this.mEventTitle = paramString;
  }
  
  public void setEventType(int paramInt)
  {
    this.mEventType = paramInt;
  }
  
  public void setHasAlarm(boolean paramBoolean)
  {
    this.mHasAlarm = paramBoolean;
  }
  
  public void setNew()
  {
    this.mEventState = 0;
  }
  
  public void setRemindMinutes(int paramInt)
  {
    this.mRemindMinutes = paramInt;
  }
  
  public void setRrule(String paramString)
  {
    this.mRrule = paramString;
  }
  
  public void setSelfAttendeeStatus(int paramInt)
  {
    this.mSelfAttendeeStatus = paramInt;
  }
  
  public Bundle toBundle()
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("KEY_ALERT_ALERT_ID", this.mAlertId);
    localBundle.putLong("KEY_ALERT_EVENT_ID", this.mEventId);
    localBundle.putString("KEY_ALERT_EVENT_LOCATION", this.mEventLocation);
    localBundle.putString("KEY_ALERT_EVENT_TITLE", this.mEventTitle);
    localBundle.putString("KEY_ALERT_EVENT_DESCRIPTION", this.mEventDescription);
    localBundle.putInt("KEY_ALERT_EVENT_TYPE", this.mEventType);
    localBundle.putInt("KEY_ALERT_IS_ALL_DAY", this.mIsAllDay);
    localBundle.putLong("KEY_ALERT_BEGIN_AT", this.mBeginAt);
    localBundle.putLong("KEY_ALERT_END_AT", this.mEndAt);
    localBundle.putString("KEY_ALERT_ACCOUNT_NAME", this.mAccountName);
    localBundle.putString("KEY_ALERT_ACCOUNT_TYPE", this.mAccountType);
    localBundle.putString("KEY_ALERT_CALENDAR_DISPLAY_NAME", this.mCalendarDisplayName);
    localBundle.putInt("KEY_ALERT_COLOR", this.mColor);
    localBundle.putString("KEY_ALERT_RRULE", this.mRrule);
    localBundle.putString("KEY_ALERT_CUSTOM_APP_PACKAGE", this.mCustomAppPackage);
    localBundle.putInt("KEY_ALERT_SELF_ATTENDEE_STATUS", this.mSelfAttendeeStatus);
    localBundle.putInt("KEY_ALERT_EVENT_STATE", this.mEventState);
    localBundle.putInt("KEY_ALERT_REMIND_MINUTES", this.mRemindMinutes);
    localBundle.putLong("KEY_ALERT_ALERT_AT", this.mAlertAt);
    localBundle.putInt("KEY_HAS_ALARM", this.mHasAlarm);
    return localBundle;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.mAlertId);
    paramParcel.writeLong(this.mEventId);
    paramParcel.writeString(this.mEventLocation);
    paramParcel.writeString(this.mEventTitle);
    paramParcel.writeString(this.mEventDescription);
    paramParcel.writeInt(this.mEventType);
    paramParcel.writeInt(this.mIsAllDay);
    paramParcel.writeLong(this.mBeginAt);
    paramParcel.writeLong(this.mEndAt);
    paramParcel.writeString(this.mAccountName);
    paramParcel.writeString(this.mAccountType);
    paramParcel.writeString(this.mCalendarDisplayName);
    paramParcel.writeInt(this.mColor);
    paramParcel.writeString(this.mRrule);
    paramParcel.writeString(this.mCustomAppPackage);
    paramParcel.writeInt(this.mSelfAttendeeStatus);
    paramParcel.writeInt(this.mEventState);
    paramParcel.writeInt(this.mRemindMinutes);
    paramParcel.writeLong(this.mAlertAt);
    paramParcel.writeInt(this.mHasAlarm);
  }
  
  public static class b
  {
    private ContentValues a;
    private Uri b;
    private BaseAlert<? extends Event> c;
    
    private b(BaseAlert<? extends Event> paramBaseAlert)
    {
      this.b = ContentUris.withAppendedId(CalendarContract.CalendarAlerts.CONTENT_URI, paramBaseAlert.getAlertId());
      this.a = new ContentValues();
      this.c = paramBaseAlert;
    }
    
    private void f()
    {
      if (this.a.containsKey("state"))
      {
        int i = this.a.getAsInteger("state").intValue();
        this.c.setEventState(i);
      }
    }
    
    public b b()
    {
      this.a.put("state", Integer.valueOf(2));
      return this;
    }
    
    public b c()
    {
      long l = System.currentTimeMillis();
      this.a.put("state", Integer.valueOf(1));
      this.a.put("notifyTime", Long.valueOf(l));
      this.a.put("receivedTime", Long.valueOf(l));
      return this;
    }
    
    public void e(Context paramContext)
    {
      if ((paramContext != null) && (this.a.size() > 0))
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("processQuery(): update CalendarAlerts table,uri:");
        localStringBuilder.append(this.b);
        localStringBuilder.append(", values:");
        localStringBuilder.append(this.a);
        z.h("Cal:D:BaseAlert", localStringBuilder.toString());
        new Thread(new a(this, paramContext)).start();
        f();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.alerts.entities.BaseAlert
 * JD-Core Version:    0.7.0.1
 */