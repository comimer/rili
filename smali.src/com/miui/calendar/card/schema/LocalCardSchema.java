package com.miui.calendar.card.schema;

import androidx.annotation.Keep;
import com.android.calendar.common.ModuleSchema;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.miui.calendar.ad.AdSchema;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;

@Keep
public class LocalCardSchema
{
  public List<ModuleSchema> actionList;
  public List<AdSchema> ads;
  public String description;
  public JsonObject extra;
  public String icon;
  public long id;
  public String image;
  public List<Map<String, String>> params;
  public int sequence;
  public int showType;
  public String title;
  
  public static Type getListType()
  {
    return new a().getType();
  }
  
  class a
    extends TypeToken<List<LocalCardSchema>>
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.schema.LocalCardSchema
 * JD-Core Version:    0.7.0.1
 */