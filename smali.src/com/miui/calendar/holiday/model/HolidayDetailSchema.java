package com.miui.calendar.holiday.model;

import androidx.annotation.Keep;
import com.android.calendar.common.ModuleSchema;
import com.miui.calendar.card.schema.CustomCardSchema;
import java.util.List;
import java.util.Map;

@Keep
public class HolidayDetailSchema
{
  public List<ModuleSchema> actionList;
  public List<CustomCardSchema> cardList;
  public String content;
  public HolidayDetailExtraSchema extra;
  public String image;
  public String name;
  public List<Map<String, String>> prop;
  
  @Keep
  public static class HolidayDetailExtraSchema
  {
    public ModuleSchema headerAction;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.holiday.model.HolidayDetailSchema
 * JD-Core Version:    0.7.0.1
 */