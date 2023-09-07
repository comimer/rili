package com.miui.calendar.limit;

import android.content.Context;
import androidx.annotation.Keep;
import com.android.calendar.common.Utils;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

@Keep
public class LimitSchema
{
  private static final String PREFERENCES_LIMIT_HAS_NOTIFY_PREFIX = "preferences_limit_has_notify";
  public String day;
  public String desc;
  public String number;
  public String remark;
  
  public static Type getListType()
  {
    return new a().getType();
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (this == paramObject) {
      return true;
    }
    if ((paramObject != null) && (getClass() == paramObject.getClass()))
    {
      paramObject = (LimitSchema)paramObject;
      String str = this.day;
      if (str != null ? !str.equals(paramObject.day) : paramObject.day != null) {
        return false;
      }
      str = this.number;
      if (str != null ? !str.equals(paramObject.number) : paramObject.number != null) {
        return false;
      }
      str = this.desc;
      if (str != null ? !str.equals(paramObject.desc) : paramObject.desc != null) {
        return false;
      }
      str = this.remark;
      paramObject = paramObject.remark;
      if (str != null) {
        bool = str.equals(paramObject);
      } else if (paramObject != null) {
        bool = false;
      }
      return bool;
    }
    return false;
  }
  
  public long getDayInMillis()
  {
    return Utils.h(this.day, "yyyy-MM-dd", TimeZone.getDefault());
  }
  
  public boolean getHasNotify(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("preferences_limit_has_notify_");
    localStringBuilder.append(getKey());
    return b2.a.d(paramContext, localStringBuilder.toString(), false);
  }
  
  public String getKey()
  {
    return this.day;
  }
  
  public String getNotificationText(Context paramContext)
  {
    String str = new SimpleDateFormat(paramContext.getString(2131886818)).format(new Date(getReminderMillis(paramContext)));
    return paramContext.getString(2131886819, new Object[] { a.i(paramContext), str, this.desc });
  }
  
  public long getReminderMillis(Context paramContext)
  {
    return getDayInMillis() + b2.a.a(paramContext, "preferences_limit_reminder_minute", 480) * 60000L;
  }
  
  public int hashCode()
  {
    return getKey().hashCode();
  }
  
  public void setHasNotify(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("preferences_limit_has_notify_");
    localStringBuilder.append(getKey());
    b2.a.l(paramContext, localStringBuilder.toString(), true);
  }
  
  class a
    extends TypeToken<List<LimitSchema>>
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.limit.LimitSchema
 * JD-Core Version:    0.7.0.1
 */