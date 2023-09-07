package com.miui.maml.data;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.Log;
import com.miui.maml.NotifierManager;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.util.Utils;
import miuix.pickerwidget.date.Calendar;

public class DateTimeVariableUpdater
  extends NotifierVariableUpdater
{
  private static final String LOG_TAG = "DateTimeVariableUpdater";
  private static final int TIME_DAY = 86400000;
  private static final int TIME_HOUR = 3600000;
  private static final int TIME_MINUTE = 60000;
  private static final int TIME_SECOND = 1000;
  public static final String USE_TAG = "DateTime";
  private static final int[] fields = { 22, 21, 20, 18, 9 };
  private static Calendar sCalendar;
  private IndexedVariable mAmPm;
  protected Calendar mCalendar = new Calendar();
  private long mCurrentTime;
  private IndexedVariable mDate;
  private IndexedVariable mDateLunar;
  private IndexedVariable mDayOfWeek;
  private volatile boolean mFinished;
  private IndexedVariable mHour12;
  private IndexedVariable mHour24;
  private long mLastUpdatedTime;
  private final Object mLock = new Object();
  private IndexedVariable mMinute;
  private IndexedVariable mMonth;
  private IndexedVariable mMonth1;
  private IndexedVariable mMonthLunar;
  private IndexedVariable mMonthLunarLeap;
  private IndexedVariable mNextAlarm;
  private long mNextUpdateTime;
  private IndexedVariable mSecond;
  private IndexedVariable mTime;
  private long mTimeAccuracy;
  private int mTimeAccuracyField;
  private int mTimeFormat = -1;
  private IndexedVariable mTimeFormatVar;
  private IndexedVariable mTimeSys;
  private Runnable mTimeUpdater;
  private IndexedVariable mYear;
  private IndexedVariable mYearLunar;
  private IndexedVariable mYearLunar1864;
  
  public DateTimeVariableUpdater(VariableUpdaterManager paramVariableUpdaterManager)
  {
    this(paramVariableUpdaterManager, Accuracy.Minute);
  }
  
  public DateTimeVariableUpdater(VariableUpdaterManager paramVariableUpdaterManager, Accuracy paramAccuracy)
  {
    super(paramVariableUpdaterManager, NotifierManager.TYPE_TIME_CHANGED);
    initInner(paramAccuracy);
  }
  
  public DateTimeVariableUpdater(VariableUpdaterManager paramVariableUpdaterManager, String paramString)
  {
    super(paramVariableUpdaterManager, NotifierManager.TYPE_TIME_CHANGED);
    this.mTimeUpdater = new TimeUpdater(this);
    boolean bool = TextUtils.isEmpty(paramString);
    paramVariableUpdaterManager = null;
    Object localObject = null;
    if (!bool)
    {
      Accuracy[] arrayOfAccuracy = Accuracy.values();
      int i = arrayOfAccuracy.length;
      for (int j = 0;; j++)
      {
        paramVariableUpdaterManager = (VariableUpdaterManager)localObject;
        if (j >= i) {
          break;
        }
        paramVariableUpdaterManager = arrayOfAccuracy[j];
        if (paramVariableUpdaterManager.name().equals(paramString)) {
          localObject = paramVariableUpdaterManager;
        }
      }
    }
    localObject = paramVariableUpdaterManager;
    if (paramVariableUpdaterManager == null)
    {
      localObject = Accuracy.Minute;
      paramVariableUpdaterManager = new StringBuilder();
      paramVariableUpdaterManager.append("invalid accuracy tag:");
      paramVariableUpdaterManager.append(paramString);
      Log.w("DateTimeVariableUpdater", paramVariableUpdaterManager.toString());
    }
    initInner((Accuracy)localObject);
  }
  
  public static String formatDate(CharSequence paramCharSequence, long paramLong)
  {
    if (sCalendar == null) {
      sCalendar = new Calendar();
    }
    sCalendar.setTimeInMillis(paramLong);
    return sCalendar.format(Utils.getAppContext(), paramCharSequence);
  }
  
  private void initInner(Accuracy paramAccuracy)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("init with accuracy:");
    ((StringBuilder)localObject).append(paramAccuracy.name());
    Log.i("DateTimeVariableUpdater", ((StringBuilder)localObject).toString());
    int i = 1.$SwitchMap$com$miui$maml$data$DateTimeVariableUpdater$Accuracy[paramAccuracy.ordinal()];
    if (i != 1)
    {
      if (i != 2)
      {
        if (i != 3)
        {
          if (i != 4)
          {
            this.mTimeAccuracy = 60000L;
            this.mTimeAccuracyField = 20;
          }
          else
          {
            this.mTimeAccuracy = 1000L;
            this.mTimeAccuracyField = 21;
          }
        }
        else
        {
          this.mTimeAccuracy = 60000L;
          this.mTimeAccuracyField = 20;
        }
      }
      else
      {
        this.mTimeAccuracy = 3600000L;
        this.mTimeAccuracyField = 18;
      }
    }
    else
    {
      this.mTimeAccuracy = 86400000L;
      this.mTimeAccuracyField = 9;
    }
    localObject = getContext().mVariables;
    this.mYear = new IndexedVariable("year", (Variables)localObject, true);
    this.mMonth = new IndexedVariable("month", (Variables)localObject, true);
    this.mMonth1 = new IndexedVariable("month1", (Variables)localObject, true);
    this.mDate = new IndexedVariable("date", (Variables)localObject, true);
    this.mYearLunar = new IndexedVariable("year_lunar", (Variables)localObject, true);
    this.mYearLunar1864 = new IndexedVariable("year_lunar1864", (Variables)localObject, true);
    this.mMonthLunar = new IndexedVariable("month_lunar", (Variables)localObject, true);
    this.mMonthLunarLeap = new IndexedVariable("month_lunar_leap", (Variables)localObject, true);
    this.mDateLunar = new IndexedVariable("date_lunar", (Variables)localObject, true);
    this.mDayOfWeek = new IndexedVariable("day_of_week", (Variables)localObject, true);
    this.mAmPm = new IndexedVariable("ampm", (Variables)localObject, true);
    this.mHour12 = new IndexedVariable("hour12", (Variables)localObject, true);
    this.mHour24 = new IndexedVariable("hour24", (Variables)localObject, true);
    this.mMinute = new IndexedVariable("minute", (Variables)localObject, true);
    this.mSecond = new IndexedVariable("second", (Variables)localObject, true);
    this.mTime = new IndexedVariable("time", (Variables)localObject, true);
    paramAccuracy = new IndexedVariable("time_sys", (Variables)localObject, true);
    this.mTimeSys = paramAccuracy;
    paramAccuracy.set(System.currentTimeMillis());
    this.mNextAlarm = new IndexedVariable("next_alarm_time", (Variables)localObject, false);
    this.mTimeFormatVar = new IndexedVariable("time_format", (Variables)localObject, true);
  }
  
  private void refreshAlarm()
  {
    String str = Settings.System.getString(getContext().mContext.getContentResolver(), "next_alarm_formatted");
    this.mNextAlarm.set(str);
  }
  
  private void updateTime()
  {
    long l1 = System.currentTimeMillis();
    this.mTimeSys.set(l1);
    long l2 = l1 / 1000L;
    if (l2 != this.mLastUpdatedTime)
    {
      this.mCalendar.setTimeInMillis(l1);
      int i = this.mCalendar.get(1);
      int j = this.mCalendar.get(5);
      int k = this.mCalendar.get(9);
      this.mAmPm.set(this.mCalendar.get(17));
      this.mHour24.set(this.mCalendar.get(18));
      int m = this.mCalendar.get(18) % 12;
      IndexedVariable localIndexedVariable = this.mHour12;
      double d;
      if (m == 0) {
        d = 12.0D;
      } else {
        d = m;
      }
      localIndexedVariable.set(d);
      this.mMinute.set(this.mCalendar.get(20));
      this.mYear.set(i);
      this.mMonth.set(j);
      this.mMonth1.set(j + 1);
      this.mDate.set(k);
      this.mDayOfWeek.set(this.mCalendar.get(14));
      this.mSecond.set(this.mCalendar.get(21));
      this.mYearLunar.set(this.mCalendar.get(2));
      this.mMonthLunar.set(this.mCalendar.get(6));
      this.mDateLunar.set(this.mCalendar.get(10));
      this.mYearLunar1864.set(this.mCalendar.get(4));
      this.mMonthLunarLeap.set(this.mCalendar.get(8));
      this.mLastUpdatedTime = l2;
    }
  }
  
  public void checkUpdateTime()
  {
    if (!this.mFinished) {
      synchronized (this.mLock)
      {
        if (this.mFinished) {
          return;
        }
        getContext().getHandler().removeCallbacks(this.mTimeUpdater);
        long l1 = System.currentTimeMillis();
        this.mCalendar.setTimeInMillis(l1);
        int[] arrayOfInt = fields;
        int i = arrayOfInt.length;
        int j = 0;
        for (int k = 0; k < i; k++)
        {
          int m = arrayOfInt[k];
          if (m == this.mTimeAccuracyField) {
            break;
          }
          this.mCalendar.set(m, 0);
        }
        k = j;
        if (DateFormat.is24HourFormat(getContext().mContext)) {
          k = 1;
        }
        long l2 = this.mCalendar.getTimeInMillis();
        if ((this.mCurrentTime != l2) || (this.mTimeFormat != k))
        {
          this.mCurrentTime = l2;
          this.mNextUpdateTime = (l2 + this.mTimeAccuracy);
          this.mTimeFormat = k;
          this.mTimeFormatVar.set(k);
          getRoot().requestUpdate();
        }
        getContext().getHandler().postDelayed(this.mTimeUpdater, this.mNextUpdateTime - l1);
      }
    }
  }
  
  public void finish()
  {
    synchronized (this.mLock)
    {
      super.finish();
      this.mFinished = true;
      this.mLastUpdatedTime = 0L;
      sCalendar = null;
      getContext().getHandler().removeCallbacks(this.mTimeUpdater);
      return;
    }
  }
  
  public void init()
  {
    super.init();
    refreshAlarm();
    updateTime();
    checkUpdateTime();
  }
  
  public void onNotify(Context paramContext, Intent paramIntent, Object paramObject)
  {
    resetCalendar();
    checkUpdateTime();
  }
  
  public void pause()
  {
    super.pause();
    getContext().getHandler().removeCallbacks(this.mTimeUpdater);
  }
  
  protected void resetCalendar()
  {
    this.mCalendar = new Calendar();
    if (sCalendar != null) {
      sCalendar = new Calendar();
    }
  }
  
  public void resume()
  {
    super.resume();
    refreshAlarm();
    resetCalendar();
    checkUpdateTime();
  }
  
  public void tick(long paramLong)
  {
    super.tick(paramLong);
    this.mTime.set(paramLong);
    updateTime();
  }
  
  public static enum Accuracy
  {
    static
    {
      Accuracy localAccuracy1 = new Accuracy("Day", 0);
      Day = localAccuracy1;
      Accuracy localAccuracy2 = new Accuracy("Hour", 1);
      Hour = localAccuracy2;
      Accuracy localAccuracy3 = new Accuracy("Minute", 2);
      Minute = localAccuracy3;
      Accuracy localAccuracy4 = new Accuracy("Second", 3);
      Second = localAccuracy4;
      $VALUES = new Accuracy[] { localAccuracy1, localAccuracy2, localAccuracy3, localAccuracy4 };
    }
    
    private Accuracy() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.DateTimeVariableUpdater
 * JD-Core Version:    0.7.0.1
 */