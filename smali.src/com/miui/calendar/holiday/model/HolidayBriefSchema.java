package com.miui.calendar.holiday.model;

import androidx.annotation.Keep;
import com.android.calendar.common.ModuleSchema;
import com.miui.calendar.web.PageData.StyleData;
import java.util.List;

@Keep
public class HolidayBriefSchema
{
  public static final int CATEGORY_ID_TYPE_HOLIDAY_LIST = 0;
  public static final int CATEGORY_ID_TYPE_IMAGE = 1;
  public static final int CATEGORY_ID_TYPE_IMAGE_WITH_DES = 2;
  public int categoryId;
  public String content;
  public String description;
  public HolidayBriefExtraSchema extra;
  public String icon;
  public String name;
  public String picture;
  public int sequence;
  public PageData.StyleData style;
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("HolidayBriefSchema{");
    localStringBuilder.append("name='");
    localStringBuilder.append(this.name);
    localStringBuilder.append('\'');
    localStringBuilder.append(", description='");
    localStringBuilder.append(this.description);
    localStringBuilder.append('\'');
    localStringBuilder.append(", icon='");
    localStringBuilder.append(this.icon);
    localStringBuilder.append('\'');
    localStringBuilder.append(", picture='");
    localStringBuilder.append(this.picture);
    localStringBuilder.append('\'');
    localStringBuilder.append(", sequence=");
    localStringBuilder.append(this.sequence);
    localStringBuilder.append(", content='");
    localStringBuilder.append(this.content);
    localStringBuilder.append('\'');
    localStringBuilder.append(", categoryId=");
    localStringBuilder.append(this.categoryId);
    localStringBuilder.append(", extra=");
    localStringBuilder.append(this.extra);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  @Keep
  public static class HolidayBriefExtraSchema
  {
    public ModuleSchema action;
    public List<ModuleSchema> buttonActions;
    public String shareImage;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.holiday.model.HolidayBriefSchema
 * JD-Core Version:    0.7.0.1
 */