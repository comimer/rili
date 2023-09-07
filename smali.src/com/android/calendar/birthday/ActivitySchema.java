package com.android.calendar.birthday;

import androidx.annotation.Keep;
import com.android.calendar.common.ModuleSchema;
import com.miui.calendar.util.x;
import com.miui.calendar.util.z;
import java.util.List;

@Keep
public class ActivitySchema
{
  private static final String TAG = "Cal:D:ActivitySchema";
  public long activityId = 0L;
  public String content;
  public List<ModuleSchema> moduleList;
  public String title;
  
  public static ActivitySchema fromJsonString(String paramString)
  {
    return (ActivitySchema)x.a(paramString, ActivitySchema.class);
  }
  
  public void toLogString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("activityId:");
    localStringBuilder.append(this.activityId);
    localStringBuilder.append(", title");
    localStringBuilder.append(this.title);
    localStringBuilder.append(", content:");
    localStringBuilder.append(this.content);
    z.a("Cal:D:ActivitySchema", localStringBuilder.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.birthday.ActivitySchema
 * JD-Core Version:    0.7.0.1
 */