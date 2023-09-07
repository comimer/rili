package com.android.calendar.common.event.schema;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import t1.d;

public class EventEx
  implements Serializable
{
  protected String mAccountName;
  protected String mAccountType;
  protected LinkedHashMap<String, Attendee> mAttendeesList = new LinkedHashMap();
  protected int mCalendarAccessLevel = 500;
  protected int mCalendarColor;
  protected String mCalendarDisplayName = "";
  protected long mCalendarId = -1L;
  protected int mCalendarMaxReminders;
  protected String mCustomAppPackage;
  protected String mDuration;
  protected long mEmailMessageId;
  protected long mEmailMessageTimeStamp;
  protected long mEnd = -1L;
  protected int mEndJulianDay;
  protected int mEndMinute;
  protected HashMap<String, String> mEpMap = new HashMap();
  protected Event mEvent;
  protected int mEventStatus = 1;
  protected boolean mGuestsCanModify;
  protected boolean mHasAlarm;
  protected boolean mHasAttendeeData = true;
  protected int mHasExtendedProperties;
  protected boolean mIsFirstEventInSeries = true;
  protected boolean mIsOrganizer = true;
  protected boolean mIsSolarRepeating;
  protected String mMeetingStatus;
  protected boolean mModelUpdatedWithEventCursor;
  protected String mOrganizer;
  protected boolean mOrganizerCanRespond;
  protected String mOrganizerDisplayName;
  protected long mOriginalEnd = -1L;
  protected long mOriginalId = -1L;
  protected long mOriginalStart = -1L;
  protected String mOriginalSyncId;
  protected String mOwnerAccount;
  protected int mOwnerAttendeeId = -1;
  protected String mRdate;
  protected ArrayList<Reminder> mReminders = new ArrayList();
  protected String mRrule;
  protected int mSelfAttendeeStatus = -1;
  protected long mStart = -1L;
  protected int mStartJulianDay;
  protected int mStartMinute;
  protected String mSyncId;
  protected String mTimezone = d.a;
  protected String mUri;
  
  public EventEx(Event paramEvent)
  {
    this.mEvent = paramEvent;
  }
  
  public void addAttendee(Attendee paramAttendee)
  {
    this.mAttendeesList.put(paramAttendee.getEmail(), paramAttendee);
  }
  
  public void addEp(String paramString1, String paramString2)
  {
    this.mEpMap.put(paramString1, paramString2);
  }
  
  public void addReminder(Reminder paramReminder)
  {
    this.mReminders.add(paramReminder);
  }
  
  public boolean canAddReminders()
  {
    boolean bool;
    if (this.mCalendarAccessLevel >= 200) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean canModifyCalendar()
  {
    boolean bool;
    if ((this.mCalendarAccessLevel < 500) && (this.mCalendarId != -1L)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public boolean canModifyEvent()
  {
    boolean bool;
    if ((canModifyCalendar()) && ((this.mIsOrganizer) || (this.mGuestsCanModify))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean canRespond()
  {
    if (!canModifyCalendar()) {
      return false;
    }
    if (!this.mIsOrganizer) {
      return true;
    }
    if (!this.mOrganizerCanRespond) {
      return false;
    }
    return (!this.mHasAttendeeData) || (this.mAttendeesList.size() != 0);
  }
  
  protected boolean checkOriginalModelFields(EventEx paramEventEx)
  {
    if (getEvent().isAllDay() != paramEventEx.getEvent().isAllDay()) {
      return false;
    }
    Object localObject = this.mAttendeesList;
    if (localObject == null)
    {
      if (paramEventEx.mAttendeesList != null) {
        return false;
      }
    }
    else if (!localObject.equals(paramEventEx.mAttendeesList)) {
      return false;
    }
    if (this.mCalendarId != paramEventEx.mCalendarId) {
      return false;
    }
    if (this.mGuestsCanModify != paramEventEx.mGuestsCanModify) {
      return false;
    }
    if (this.mOrganizerCanRespond != paramEventEx.mOrganizerCanRespond) {
      return false;
    }
    if (this.mCalendarAccessLevel != paramEventEx.mCalendarAccessLevel) {
      return false;
    }
    if (this.mModelUpdatedWithEventCursor != paramEventEx.mModelUpdatedWithEventCursor) {
      return false;
    }
    if (this.mHasAlarm != paramEventEx.mHasAlarm) {
      return false;
    }
    if (this.mHasAttendeeData != paramEventEx.mHasAttendeeData) {
      return false;
    }
    if (getEvent().getId() != paramEventEx.getEvent().getId()) {
      return false;
    }
    if (this.mIsOrganizer != paramEventEx.mIsOrganizer) {
      return false;
    }
    localObject = this.mOrganizer;
    if (localObject == null)
    {
      if (paramEventEx.mOrganizer != null) {
        return false;
      }
    }
    else if (!((String)localObject).equals(paramEventEx.mOrganizer)) {
      return false;
    }
    localObject = this.mOwnerAccount;
    if (localObject == null)
    {
      if (paramEventEx.mOwnerAccount != null) {
        return false;
      }
    }
    else if (!((String)localObject).equals(paramEventEx.mOwnerAccount)) {
      return false;
    }
    localObject = this.mReminders;
    if (localObject == null)
    {
      if (paramEventEx.mReminders != null) {
        return false;
      }
    }
    else if (!localObject.equals(paramEventEx.mReminders)) {
      return false;
    }
    if (this.mSelfAttendeeStatus != paramEventEx.mSelfAttendeeStatus) {
      return false;
    }
    if (this.mOwnerAttendeeId != paramEventEx.mOwnerAttendeeId) {
      return false;
    }
    localObject = this.mSyncId;
    if (localObject == null)
    {
      if (paramEventEx.mSyncId != null) {
        return false;
      }
    }
    else if (!((String)localObject).equals(paramEventEx.mSyncId)) {
      return false;
    }
    localObject = this.mTimezone;
    if (localObject == null)
    {
      if (paramEventEx.mTimezone != null) {
        return false;
      }
    }
    else if (!((String)localObject).equals(paramEventEx.mTimezone)) {
      return false;
    }
    localObject = this.mUri;
    if (localObject == null)
    {
      if (paramEventEx.mUri != null) {
        return false;
      }
    }
    else if (!((String)localObject).equals(paramEventEx.mUri)) {
      return false;
    }
    return this.mEventStatus == paramEventEx.mEventStatus;
  }
  
  public String getAccountName()
  {
    return this.mAccountName;
  }
  
  public String getAccountType()
  {
    return this.mAccountType;
  }
  
  public LinkedHashMap<String, Attendee> getAttendeeList()
  {
    return this.mAttendeesList;
  }
  
  public String getAttendeesString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = this.mAttendeesList.values().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Attendee)localIterator.next();
      String str1 = ((Attendee)localObject).getName();
      String str2 = ((Attendee)localObject).getEmail();
      localObject = Integer.toString(((Attendee)localObject).getStatus());
      localStringBuilder.append("name:");
      localStringBuilder.append(str1);
      localStringBuilder.append(" email:");
      localStringBuilder.append(str2);
      localStringBuilder.append(" status:");
      localStringBuilder.append((String)localObject);
    }
    return localStringBuilder.toString();
  }
  
  public int getCalendarAccessLevel()
  {
    return this.mCalendarAccessLevel;
  }
  
  public int getCalendarColor()
  {
    return this.mCalendarColor;
  }
  
  public String getCalendarDisplayName()
  {
    return this.mCalendarDisplayName;
  }
  
  public long getCalendarId()
  {
    return this.mCalendarId;
  }
  
  public int getCalendarMaxReminders()
  {
    return this.mCalendarMaxReminders;
  }
  
  public String getCustomAppPackage()
  {
    return this.mCustomAppPackage;
  }
  
  public String getDuration()
  {
    return this.mDuration;
  }
  
  public long getEmailMessageId()
  {
    return this.mEmailMessageId;
  }
  
  public long getEmailMessageTimeStamp()
  {
    return this.mEmailMessageTimeStamp;
  }
  
  public long getEnd()
  {
    return this.mEnd;
  }
  
  public int getEndJulianDay()
  {
    return this.mEndJulianDay;
  }
  
  public int getEndMinute()
  {
    return this.mEndMinute;
  }
  
  public HashMap<String, String> getEpMap()
  {
    return this.mEpMap;
  }
  
  public Event getEvent()
  {
    return this.mEvent;
  }
  
  public int getEventStatus()
  {
    return this.mEventStatus;
  }
  
  public int getHasExtendedProperties()
  {
    return this.mHasExtendedProperties;
  }
  
  public String getMeetingStatus()
  {
    return this.mMeetingStatus;
  }
  
  public String getOrganizer()
  {
    return this.mOrganizer;
  }
  
  public String getOrganizerDisplayName()
  {
    return this.mOrganizerDisplayName;
  }
  
  public long getOriginalEnd()
  {
    return this.mOriginalEnd;
  }
  
  public long getOriginalId()
  {
    return this.mOriginalId;
  }
  
  public long getOriginalStart()
  {
    return this.mOriginalStart;
  }
  
  public String getOriginalSyncId()
  {
    return this.mOriginalSyncId;
  }
  
  public String getOwnerAccount()
  {
    return this.mOwnerAccount;
  }
  
  public int getOwnerAttendeeId()
  {
    return this.mOwnerAttendeeId;
  }
  
  public String getRdate()
  {
    return this.mRdate;
  }
  
  public ArrayList<Reminder> getReminders()
  {
    return this.mReminders;
  }
  
  public String getRrule()
  {
    return this.mRrule;
  }
  
  public int getSelfAttendeeStatus()
  {
    return this.mSelfAttendeeStatus;
  }
  
  public long getStart()
  {
    return this.mStart;
  }
  
  public int getStartJulianDay()
  {
    return this.mStartJulianDay;
  }
  
  public int getStartMinute()
  {
    return this.mStartMinute;
  }
  
  public String getSyncId()
  {
    return this.mSyncId;
  }
  
  public String getTimezone()
  {
    return this.mTimezone;
  }
  
  public String getUri()
  {
    return this.mUri;
  }
  
  public boolean hasAlarm()
  {
    return this.mHasAlarm;
  }
  
  public boolean hasAttendeeData()
  {
    return this.mHasAttendeeData;
  }
  
  public boolean isCanceledMeeting()
  {
    boolean bool;
    if ((!"7".equals(this.mMeetingStatus)) && (!"15".equals(this.mMeetingStatus)) && (!"5".equals(this.mMeetingStatus)) && (!"13".equals(this.mMeetingStatus))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public boolean isFirstEventInSeries()
  {
    return this.mIsFirstEventInSeries;
  }
  
  public boolean isGuestsCanModify()
  {
    return this.mGuestsCanModify;
  }
  
  public boolean isModelUpdatedWithEventCursor()
  {
    return this.mModelUpdatedWithEventCursor;
  }
  
  public boolean isOrganizer()
  {
    return this.mIsOrganizer;
  }
  
  public boolean isOrganizerCanRespond()
  {
    return this.mOrganizerCanRespond;
  }
  
  public boolean isRejectAgenda()
  {
    boolean bool;
    if (this.mSelfAttendeeStatus == 2) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean isSolarRepeating()
  {
    return this.mIsSolarRepeating;
  }
  
  public boolean isUnchanged(EventEx paramEventEx)
  {
    if (this == paramEventEx) {
      return true;
    }
    if (paramEventEx == null) {
      return false;
    }
    if (!checkOriginalModelFields(paramEventEx)) {
      return false;
    }
    if (TextUtils.isEmpty(this.mEvent.getLocation()))
    {
      if (!TextUtils.isEmpty(paramEventEx.mEvent.mLocation)) {
        return false;
      }
    }
    else if (!this.mEvent.mLocation.equals(paramEventEx.mEvent.mLocation)) {
      return false;
    }
    if (TextUtils.isEmpty(this.mEvent.mTitle))
    {
      if (!TextUtils.isEmpty(paramEventEx.mEvent.mTitle)) {
        return false;
      }
    }
    else if (!this.mEvent.mTitle.equals(paramEventEx.mEvent.mTitle)) {
      return false;
    }
    if (TextUtils.isEmpty(this.mEvent.mDescription))
    {
      if (!TextUtils.isEmpty(paramEventEx.mEvent.mDescription)) {
        return false;
      }
    }
    else if (!this.mEvent.mDescription.equals(paramEventEx.mEvent.mDescription)) {
      return false;
    }
    if (TextUtils.isEmpty(this.mDuration))
    {
      if (!TextUtils.isEmpty(paramEventEx.mDuration)) {
        return false;
      }
    }
    else if (!this.mDuration.equals(paramEventEx.mDuration)) {
      return false;
    }
    Object localObject = this.mEvent;
    if (((Event)localObject).mEndTimeMillis != this.mOriginalEnd) {
      return false;
    }
    if (((Event)localObject).mStartTimeMillis != this.mOriginalStart) {
      return false;
    }
    long l = this.mOriginalId;
    if ((l != paramEventEx.mOriginalId) && (l != paramEventEx.mEvent.mId)) {
      return false;
    }
    int i;
    int j;
    if (TextUtils.isEmpty(this.mRrule))
    {
      if (!TextUtils.isEmpty(paramEventEx.mRrule))
      {
        localObject = this.mOriginalSyncId;
        if ((localObject != null) && (((String)localObject).equals(paramEventEx.mSyncId))) {
          i = 0;
        } else {
          i = 1;
        }
        l = this.mOriginalId;
        if ((l != -1L) && (l == paramEventEx.mEvent.mId)) {
          j = 0;
        } else {
          j = 1;
        }
        if ((i != 0) && (j != 0)) {
          return false;
        }
      }
    }
    else if (!this.mRrule.equals(paramEventEx.mRrule)) {
      return false;
    }
    if (TextUtils.isEmpty(this.mRdate))
    {
      if (!TextUtils.isEmpty(paramEventEx.mRdate))
      {
        localObject = this.mOriginalSyncId;
        if ((localObject != null) && (((String)localObject).equals(paramEventEx.mSyncId))) {
          i = 0;
        } else {
          i = 1;
        }
        l = this.mOriginalId;
        if ((l != -1L) && (l == paramEventEx.mEvent.mId)) {
          j = 0;
        } else {
          j = 1;
        }
        if ((i != 0) && (j != 0)) {
          return false;
        }
      }
    }
    else if (!this.mRdate.equals(paramEventEx.mRdate)) {
      return false;
    }
    return this.mEvent.mNeedAlarm == paramEventEx.mEvent.mNeedAlarm;
  }
  
  public boolean isValid()
  {
    if (this.mCalendarId == -1L) {
      return false;
    }
    return !TextUtils.isEmpty(this.mOwnerAccount);
  }
  
  public boolean normalizeReminders()
  {
    if (this.mReminders.size() <= 1) {
      return true;
    }
    Collections.sort(this.mReminders);
    Object localObject = this.mReminders;
    localObject = (Reminder)((ArrayList)localObject).get(((ArrayList)localObject).size() - 1);
    int i = this.mReminders.size() - 2;
    while (i >= 0)
    {
      Reminder localReminder = (Reminder)this.mReminders.get(i);
      if (((Reminder)localObject).equals(localReminder)) {
        this.mReminders.remove(i + 1);
      }
      i--;
      localObject = localReminder;
    }
    return true;
  }
  
  public void setAccountName(String paramString)
  {
    this.mAccountName = paramString;
  }
  
  public void setAccountType(String paramString)
  {
    this.mAccountType = paramString;
  }
  
  public void setCalendarAccessLevel(int paramInt)
  {
    this.mCalendarAccessLevel = paramInt;
  }
  
  public void setCalendarColor(int paramInt)
  {
    this.mCalendarColor = paramInt;
  }
  
  public void setCalendarDisplayName(String paramString)
  {
    this.mCalendarDisplayName = paramString;
  }
  
  public void setCalendarId(long paramLong)
  {
    this.mCalendarId = paramLong;
  }
  
  public void setCalendarMaxReminders(int paramInt)
  {
    this.mCalendarMaxReminders = paramInt;
  }
  
  public void setCustomAppPackage(String paramString)
  {
    this.mCustomAppPackage = paramString;
  }
  
  public void setDuration(String paramString)
  {
    this.mDuration = paramString;
  }
  
  public void setEmailMessageId(long paramLong)
  {
    this.mEmailMessageId = paramLong;
  }
  
  public void setEmailMessageTimeStamp(long paramLong)
  {
    this.mEmailMessageTimeStamp = paramLong;
  }
  
  public void setEnd(long paramLong)
  {
    this.mEnd = paramLong;
  }
  
  public void setEndJulianDay(int paramInt)
  {
    this.mEndJulianDay = paramInt;
  }
  
  public void setEndMinute(int paramInt)
  {
    this.mEndMinute = paramInt;
  }
  
  public void setEpMap(HashMap<String, String> paramHashMap)
  {
    this.mEpMap = paramHashMap;
  }
  
  public void setEventStatus(int paramInt)
  {
    this.mEventStatus = paramInt;
  }
  
  public void setFirstEventInSeries(boolean paramBoolean)
  {
    this.mIsFirstEventInSeries = paramBoolean;
  }
  
  public void setGuestsCanModify(boolean paramBoolean)
  {
    this.mGuestsCanModify = paramBoolean;
  }
  
  public void setHasAlarm(boolean paramBoolean)
  {
    this.mHasAlarm = paramBoolean;
  }
  
  public void setHasAttendeeData(boolean paramBoolean)
  {
    this.mHasAttendeeData = paramBoolean;
  }
  
  public void setHasExtendedProperties(int paramInt)
  {
    this.mHasExtendedProperties = paramInt;
  }
  
  public void setIsOrganizer(boolean paramBoolean)
  {
    this.mIsOrganizer = paramBoolean;
  }
  
  public void setMeetingStatus(String paramString)
  {
    this.mMeetingStatus = paramString;
  }
  
  public void setModelUpdatedWithEventCursor(boolean paramBoolean)
  {
    this.mModelUpdatedWithEventCursor = paramBoolean;
  }
  
  public void setOrganizer(String paramString)
  {
    this.mOrganizer = paramString;
  }
  
  public void setOrganizerCanRespond(boolean paramBoolean)
  {
    this.mOrganizerCanRespond = paramBoolean;
  }
  
  public void setOrganizerDisplayName(String paramString)
  {
    this.mOrganizerDisplayName = paramString;
  }
  
  public void setOriginalEnd(long paramLong)
  {
    this.mOriginalEnd = paramLong;
  }
  
  public void setOriginalId(long paramLong)
  {
    this.mOriginalId = paramLong;
  }
  
  public void setOriginalStart(long paramLong)
  {
    this.mOriginalStart = paramLong;
  }
  
  public void setOriginalSyncId(String paramString)
  {
    this.mOriginalSyncId = paramString;
  }
  
  public void setOwnerAccount(String paramString)
  {
    this.mOwnerAccount = paramString;
  }
  
  public void setOwnerAttendeeId(int paramInt)
  {
    this.mOwnerAttendeeId = paramInt;
  }
  
  public void setRdate(String paramString)
  {
    this.mRdate = paramString;
  }
  
  public void setReminders(ArrayList<Reminder> paramArrayList)
  {
    this.mReminders = paramArrayList;
  }
  
  public void setRrule(String paramString)
  {
    this.mRrule = paramString;
  }
  
  public void setSelfAttendeeStatus(int paramInt)
  {
    this.mSelfAttendeeStatus = paramInt;
  }
  
  public void setSolarRepeating(boolean paramBoolean)
  {
    this.mIsSolarRepeating = paramBoolean;
  }
  
  public void setStart(long paramLong)
  {
    this.mStart = paramLong;
  }
  
  public void setStartJulianDay(int paramInt)
  {
    this.mStartJulianDay = paramInt;
  }
  
  public void setStartMinute(int paramInt)
  {
    this.mStartMinute = paramInt;
  }
  
  public void setSyncId(String paramString)
  {
    this.mSyncId = paramString;
  }
  
  public void setTimezone(String paramString)
  {
    this.mTimezone = paramString;
  }
  
  public void setUri(String paramString)
  {
    this.mUri = paramString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.EventEx
 * JD-Core Version:    0.7.0.1
 */