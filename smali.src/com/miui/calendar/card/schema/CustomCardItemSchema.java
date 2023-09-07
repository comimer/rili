package com.miui.calendar.card.schema;

import androidx.annotation.Keep;
import com.android.calendar.common.ModuleSchema;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.List;

@Keep
public class CustomCardItemSchema
{
  public ModuleSchema action;
  public String author;
  public long cardId;
  public String description;
  public long endTime;
  public JsonObject extra;
  public long id;
  public String image;
  public long startTime;
  public String title;
  
  public static Type getListType()
  {
    return new a().getType();
  }
  
  class a
    extends TypeToken<List<CustomCardItemSchema>>
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.schema.CustomCardItemSchema
 * JD-Core Version:    0.7.0.1
 */