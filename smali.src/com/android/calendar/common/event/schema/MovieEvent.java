package com.android.calendar.common.event.schema;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class MovieEvent
  extends SmsEvent
{
  public static final String JSON_KEY_CINEMA = "cinema";
  public static final String JSON_KEY_CODE_NAME_1 = "codeName1";
  public static final String JSON_KEY_CODE_NAME_2 = "codeName2";
  public static final String JSON_KEY_CODE_NUMBER_1 = "codeNumber1";
  public static final String JSON_KEY_CODE_NUMBER_2 = "codeNumber2";
  public static final String JSON_KEY_MOVIE_NAME = "movieName";
  public static final String JSON_KEY_PLATFORM = "platform";
  public static final String JSON_KEY_SCREENINGS = "screenings";
  public static final String JSON_KEY_SEAT = "seat";
  public static final String JSON_KEY_START_TIME_MILLIS = "startTimeMillis";
  private static final String TAG = "Cal:D:MovieEvent";
  protected String mCinema;
  protected String mCodeName1;
  protected String mCodeName2;
  protected String mCodeNumber1;
  protected String mCodeNumber2;
  protected String mMovieName;
  protected String mPlatform;
  protected String mScreenings;
  protected String mSeat;
  protected long mStartTime;
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramObject != null)
    {
      bool2 = bool1;
      if ((paramObject instanceof MovieEvent))
      {
        paramObject = (MovieEvent)paramObject;
        bool2 = bool1;
        if (TextUtils.equals(this.mPlatform, paramObject.getPlatform()))
        {
          bool2 = bool1;
          if (TextUtils.equals(this.mCodeName1, paramObject.getCodeName1()))
          {
            bool2 = bool1;
            if (TextUtils.equals(this.mCodeNumber1, paramObject.getCodeNumber1()))
            {
              bool2 = bool1;
              if (TextUtils.equals(this.mCodeName2, paramObject.getCodeName2()))
              {
                bool2 = bool1;
                if (TextUtils.equals(this.mCodeNumber2, paramObject.getCodeNumber2()))
                {
                  bool2 = bool1;
                  if (TextUtils.equals(this.mMovieName, paramObject.getMovieName()))
                  {
                    bool2 = bool1;
                    if (TextUtils.equals(this.mCinema, paramObject.getCinema()))
                    {
                      bool2 = bool1;
                      if (TextUtils.equals(this.mSeat, paramObject.getSeat()))
                      {
                        bool2 = bool1;
                        if (this.mStartTime == paramObject.getStartTime()) {
                          bool2 = true;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    return bool2;
  }
  
  public void fillEpInfoFromJSONObject(JSONObject paramJSONObject)
  {
    super.fillEpInfoFromJSONObject(paramJSONObject);
    this.mPlatform = paramJSONObject.optString("platform");
    this.mCodeName1 = paramJSONObject.optString("codeName1");
    this.mCodeNumber1 = paramJSONObject.optString("codeNumber1");
    this.mCodeName2 = paramJSONObject.optString("codeName2");
    this.mCodeNumber2 = paramJSONObject.optString("codeNumber2");
    this.mMovieName = paramJSONObject.optString("movieName");
    this.mCinema = paramJSONObject.optString("cinema");
    this.mScreenings = paramJSONObject.optString("screenings");
    this.mSeat = paramJSONObject.optString("seat");
    this.mStartTime = paramJSONObject.optLong("startTimeMillis");
  }
  
  void fillJSONObject(JSONObject paramJSONObject)
    throws JSONException
  {
    super.fillJSONObject(paramJSONObject);
    paramJSONObject.put("platform", this.mPlatform);
    paramJSONObject.put("codeName1", this.mCodeName1);
    paramJSONObject.put("codeNumber1", this.mCodeNumber1);
    paramJSONObject.put("codeName2", this.mCodeName2);
    paramJSONObject.put("codeNumber2", this.mCodeNumber2);
    paramJSONObject.put("movieName", this.mMovieName);
    paramJSONObject.put("cinema", this.mCinema);
    paramJSONObject.put("screenings", this.mScreenings);
    paramJSONObject.put("seat", this.mSeat);
    paramJSONObject.put("startTimeMillis", this.mStartTime);
  }
  
  public String getCinema()
  {
    return this.mCinema;
  }
  
  public String getCodeName1()
  {
    return this.mCodeName1;
  }
  
  public String getCodeName2()
  {
    return this.mCodeName2;
  }
  
  public String getCodeNumber1()
  {
    return this.mCodeNumber1;
  }
  
  public String getCodeNumber2()
  {
    return this.mCodeNumber2;
  }
  
  public String getEpName()
  {
    return "movie_info";
  }
  
  public int getEventType()
  {
    return 17;
  }
  
  public String getMovieName()
  {
    return this.mMovieName;
  }
  
  public String getPlatform()
  {
    return this.mPlatform;
  }
  
  public String getScreenings()
  {
    return this.mScreenings;
  }
  
  public String getSeat()
  {
    return this.mSeat;
  }
  
  public long getStartTime()
  {
    return this.mStartTime;
  }
  
  public void setCinema(String paramString)
  {
    this.mCinema = paramString;
  }
  
  public void setCodeName1(String paramString)
  {
    this.mCodeName1 = paramString;
  }
  
  public void setCodeName2(String paramString)
  {
    this.mCodeName2 = paramString;
  }
  
  public void setCodeNumber1(String paramString)
  {
    this.mCodeNumber1 = paramString;
  }
  
  public void setCodeNumber2(String paramString)
  {
    this.mCodeNumber2 = paramString;
  }
  
  public void setMovieName(String paramString)
  {
    this.mMovieName = paramString;
  }
  
  public void setPlatform(String paramString)
  {
    this.mPlatform = paramString;
  }
  
  public void setScreenings(String paramString)
  {
    this.mScreenings = paramString;
  }
  
  public void setSeat(String paramString)
  {
    this.mSeat = paramString;
  }
  
  public void setStartTime(long paramLong)
  {
    this.mStartTime = paramLong;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.MovieEvent
 * JD-Core Version:    0.7.0.1
 */