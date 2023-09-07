package com.android.calendar.common.event.schema;

import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.json.JSONObject;

@Metadata(d1={""}, d2={"Lcom/android/calendar/common/event/schema/AgendaEvent;", "Lcom/android/calendar/common/event/schema/Event;", "()V", "acceptedAttendees", "", "Lcom/android/calendar/common/event/schema/Attendee;", "getAcceptedAttendees", "()Ljava/util/List;", "setAcceptedAttendees", "(Ljava/util/List;)V", "actionEPJson", "Lorg/json/JSONObject;", "getActionEPJson", "()Lorg/json/JSONObject;", "setActionEPJson", "(Lorg/json/JSONObject;)V", "attendeeResponse", "", "getAttendeeResponse", "()I", "setAttendeeResponse", "(I)V", "calendarAllowedReminder", "", "getCalendarAllowedReminder", "()Ljava/lang/String;", "setCalendarAllowedReminder", "(Ljava/lang/String;)V", "calendarOwnerAttendeeId", "", "getCalendarOwnerAttendeeId", "()J", "setCalendarOwnerAttendeeId", "(J)V", "calendarPosition", "getCalendarPosition", "setCalendarPosition", "calendars", "Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;", "getCalendars", "setCalendars", "declinedAttendees", "getDeclinedAttendees", "setDeclinedAttendees", "emailExist", "", "getEmailExist", "()Z", "setEmailExist", "(Z)V", "emailMessageId", "getEmailMessageId", "setEmailMessageId", "emailMessageTimeStamp", "getEmailMessageTimeStamp", "setEmailMessageTimeStamp", "isBusyFreeCalendar", "noResponseAttendees", "getNoResponseAttendees", "setNoResponseAttendees", "packageName", "getPackageName", "setPackageName", "tentativeAttendees", "getTentativeAttendees", "setTentativeAttendees", "thirdPartyEPAction", "getThirdPartyEPAction", "setThirdPartyEPAction", "thirdPartyEPData", "getThirdPartyEPData", "setThirdPartyEPData", "thirdPartyEPData2", "getThirdPartyEPData2", "setThirdPartyEPData2", "thirdPartyEPPackageName", "getThirdPartyEPPackageName", "setThirdPartyEPPackageName", "thirdPartyEPText", "getThirdPartyEPText", "setThirdPartyEPText", "titleEPJson", "getTitleEPJson", "setTitleEPJson", "url", "getUrl", "setUrl", "urlText", "getUrlText", "setUrlText", "clone", "getEpName", "Calendar", "common_release"}, k=1, mv={1, 7, 1}, xi=48)
public final class AgendaEvent
  extends Event
{
  private List<? extends Attendee> acceptedAttendees;
  private JSONObject actionEPJson;
  private int attendeeResponse;
  private String calendarAllowedReminder;
  private long calendarOwnerAttendeeId = -1L;
  private int calendarPosition;
  private List<Calendar> calendars;
  private List<? extends Attendee> declinedAttendees;
  private boolean emailExist;
  private long emailMessageId;
  private long emailMessageTimeStamp;
  private List<? extends Attendee> noResponseAttendees;
  private String packageName;
  private List<? extends Attendee> tentativeAttendees;
  private String thirdPartyEPAction;
  private String thirdPartyEPData;
  private String thirdPartyEPData2;
  private String thirdPartyEPPackageName;
  private String thirdPartyEPText;
  private JSONObject titleEPJson;
  private String url;
  private String urlText;
  
  public AgendaEvent clone()
    throws CloneNotSupportedException
  {
    Object localObject = super.clone();
    r.d(localObject, "null cannot be cast to non-null type com.android.calendar.common.event.schema.AgendaEvent");
    return (AgendaEvent)localObject;
  }
  
  public final List<Attendee> getAcceptedAttendees()
  {
    return this.acceptedAttendees;
  }
  
  public final JSONObject getActionEPJson()
  {
    return this.actionEPJson;
  }
  
  public final int getAttendeeResponse()
  {
    return this.attendeeResponse;
  }
  
  public final String getCalendarAllowedReminder()
  {
    return this.calendarAllowedReminder;
  }
  
  public final long getCalendarOwnerAttendeeId()
  {
    return this.calendarOwnerAttendeeId;
  }
  
  public final int getCalendarPosition()
  {
    return this.calendarPosition;
  }
  
  public final List<Calendar> getCalendars()
  {
    return this.calendars;
  }
  
  public final List<Attendee> getDeclinedAttendees()
  {
    return this.declinedAttendees;
  }
  
  public final boolean getEmailExist()
  {
    return this.emailExist;
  }
  
  public final long getEmailMessageId()
  {
    return this.emailMessageId;
  }
  
  public final long getEmailMessageTimeStamp()
  {
    return this.emailMessageTimeStamp;
  }
  
  public String getEpName()
  {
    return "agenda_info";
  }
  
  public final List<Attendee> getNoResponseAttendees()
  {
    return this.noResponseAttendees;
  }
  
  public final String getPackageName()
  {
    return this.packageName;
  }
  
  public final List<Attendee> getTentativeAttendees()
  {
    return this.tentativeAttendees;
  }
  
  public final String getThirdPartyEPAction()
  {
    return this.thirdPartyEPAction;
  }
  
  public final String getThirdPartyEPData()
  {
    return this.thirdPartyEPData;
  }
  
  public final String getThirdPartyEPData2()
  {
    return this.thirdPartyEPData2;
  }
  
  public final String getThirdPartyEPPackageName()
  {
    return this.thirdPartyEPPackageName;
  }
  
  public final String getThirdPartyEPText()
  {
    return this.thirdPartyEPText;
  }
  
  public final JSONObject getTitleEPJson()
  {
    return this.titleEPJson;
  }
  
  public final String getUrl()
  {
    return this.url;
  }
  
  public final String getUrlText()
  {
    return this.urlText;
  }
  
  public final boolean isBusyFreeCalendar()
  {
    boolean bool;
    if (getEx().getCalendarAccessLevel() == 100) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public final void setAcceptedAttendees(List<? extends Attendee> paramList)
  {
    this.acceptedAttendees = paramList;
  }
  
  public final void setActionEPJson(JSONObject paramJSONObject)
  {
    this.actionEPJson = paramJSONObject;
  }
  
  public final void setAttendeeResponse(int paramInt)
  {
    this.attendeeResponse = paramInt;
  }
  
  public final void setCalendarAllowedReminder(String paramString)
  {
    this.calendarAllowedReminder = paramString;
  }
  
  public final void setCalendarOwnerAttendeeId(long paramLong)
  {
    this.calendarOwnerAttendeeId = paramLong;
  }
  
  public final void setCalendarPosition(int paramInt)
  {
    this.calendarPosition = paramInt;
  }
  
  public final void setCalendars(List<Calendar> paramList)
  {
    this.calendars = paramList;
  }
  
  public final void setDeclinedAttendees(List<? extends Attendee> paramList)
  {
    this.declinedAttendees = paramList;
  }
  
  public final void setEmailExist(boolean paramBoolean)
  {
    this.emailExist = paramBoolean;
  }
  
  public final void setEmailMessageId(long paramLong)
  {
    this.emailMessageId = paramLong;
  }
  
  public final void setEmailMessageTimeStamp(long paramLong)
  {
    this.emailMessageTimeStamp = paramLong;
  }
  
  public final void setNoResponseAttendees(List<? extends Attendee> paramList)
  {
    this.noResponseAttendees = paramList;
  }
  
  public final void setPackageName(String paramString)
  {
    this.packageName = paramString;
  }
  
  public final void setTentativeAttendees(List<? extends Attendee> paramList)
  {
    this.tentativeAttendees = paramList;
  }
  
  public final void setThirdPartyEPAction(String paramString)
  {
    this.thirdPartyEPAction = paramString;
  }
  
  public final void setThirdPartyEPData(String paramString)
  {
    this.thirdPartyEPData = paramString;
  }
  
  public final void setThirdPartyEPData2(String paramString)
  {
    this.thirdPartyEPData2 = paramString;
  }
  
  public final void setThirdPartyEPPackageName(String paramString)
  {
    this.thirdPartyEPPackageName = paramString;
  }
  
  public final void setThirdPartyEPText(String paramString)
  {
    this.thirdPartyEPText = paramString;
  }
  
  public final void setTitleEPJson(JSONObject paramJSONObject)
  {
    this.titleEPJson = paramJSONObject;
  }
  
  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }
  
  public final void setUrlText(String paramString)
  {
    this.urlText = paramString;
  }
  
  @Metadata(d1={""}, d2={"Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;", "Ljava/io/Serializable;", "calendarId", "", "ownerAccount", "", "ownerCanRespond", "", "syncAccountName", "displayName", "organizer", "accountName", "accountType", "(JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAccountName", "()Ljava/lang/String;", "getAccountType", "getCalendarId", "()J", "getDisplayName", "getOrganizer", "getOwnerAccount", "getOwnerCanRespond", "()Z", "getSyncAccountName", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "other", "", "hashCode", "", "toString", "common_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class Calendar
    implements Serializable
  {
    private final String accountName;
    private final String accountType;
    private final long calendarId;
    private final String displayName;
    private final String organizer;
    private final String ownerAccount;
    private final boolean ownerCanRespond;
    private final String syncAccountName;
    
    public Calendar(long paramLong, String paramString1, boolean paramBoolean, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
    {
      this.calendarId = paramLong;
      this.ownerAccount = paramString1;
      this.ownerCanRespond = paramBoolean;
      this.syncAccountName = paramString2;
      this.displayName = paramString3;
      this.organizer = paramString4;
      this.accountName = paramString5;
      this.accountType = paramString6;
    }
    
    public final long component1()
    {
      return this.calendarId;
    }
    
    public final String component2()
    {
      return this.ownerAccount;
    }
    
    public final boolean component3()
    {
      return this.ownerCanRespond;
    }
    
    public final String component4()
    {
      return this.syncAccountName;
    }
    
    public final String component5()
    {
      return this.displayName;
    }
    
    public final String component6()
    {
      return this.organizer;
    }
    
    public final String component7()
    {
      return this.accountName;
    }
    
    public final String component8()
    {
      return this.accountType;
    }
    
    public final Calendar copy(long paramLong, String paramString1, boolean paramBoolean, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
    {
      r.f(paramString1, "ownerAccount");
      r.f(paramString2, "syncAccountName");
      r.f(paramString3, "displayName");
      r.f(paramString4, "organizer");
      r.f(paramString5, "accountName");
      r.f(paramString6, "accountType");
      return new Calendar(paramLong, paramString1, paramBoolean, paramString2, paramString3, paramString4, paramString5, paramString6);
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if (!(paramObject instanceof Calendar)) {
        return false;
      }
      paramObject = (Calendar)paramObject;
      if (this.calendarId != paramObject.calendarId) {
        return false;
      }
      if (!r.a(this.ownerAccount, paramObject.ownerAccount)) {
        return false;
      }
      if (this.ownerCanRespond != paramObject.ownerCanRespond) {
        return false;
      }
      if (!r.a(this.syncAccountName, paramObject.syncAccountName)) {
        return false;
      }
      if (!r.a(this.displayName, paramObject.displayName)) {
        return false;
      }
      if (!r.a(this.organizer, paramObject.organizer)) {
        return false;
      }
      if (!r.a(this.accountName, paramObject.accountName)) {
        return false;
      }
      return r.a(this.accountType, paramObject.accountType);
    }
    
    public final String getAccountName()
    {
      return this.accountName;
    }
    
    public final String getAccountType()
    {
      return this.accountType;
    }
    
    public final long getCalendarId()
    {
      return this.calendarId;
    }
    
    public final String getDisplayName()
    {
      return this.displayName;
    }
    
    public final String getOrganizer()
    {
      return this.organizer;
    }
    
    public final String getOwnerAccount()
    {
      return this.ownerAccount;
    }
    
    public final boolean getOwnerCanRespond()
    {
      return this.ownerCanRespond;
    }
    
    public final String getSyncAccountName()
    {
      return this.syncAccountName;
    }
    
    public int hashCode()
    {
      int i = Long.hashCode(this.calendarId);
      int j = this.ownerAccount.hashCode();
      int k = this.ownerCanRespond;
      int m = k;
      if (k != 0) {
        m = 1;
      }
      return ((((((i * 31 + j) * 31 + m) * 31 + this.syncAccountName.hashCode()) * 31 + this.displayName.hashCode()) * 31 + this.organizer.hashCode()) * 31 + this.accountName.hashCode()) * 31 + this.accountType.hashCode();
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Calendar(calendarId=");
      localStringBuilder.append(this.calendarId);
      localStringBuilder.append(", ownerAccount=");
      localStringBuilder.append(this.ownerAccount);
      localStringBuilder.append(", ownerCanRespond=");
      localStringBuilder.append(this.ownerCanRespond);
      localStringBuilder.append(", syncAccountName=");
      localStringBuilder.append(this.syncAccountName);
      localStringBuilder.append(", displayName=");
      localStringBuilder.append(this.displayName);
      localStringBuilder.append(", organizer=");
      localStringBuilder.append(this.organizer);
      localStringBuilder.append(", accountName=");
      localStringBuilder.append(this.accountName);
      localStringBuilder.append(", accountType=");
      localStringBuilder.append(this.accountType);
      localStringBuilder.append(')');
      return localStringBuilder.toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.AgendaEvent
 * JD-Core Version:    0.7.0.1
 */