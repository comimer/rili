package com.miui.calendar.card.schema;

import androidx.annotation.Keep;
import com.android.calendar.common.ModuleSchema;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.miui.calendar.ad.AdSchema;
import java.lang.reflect.Type;
import java.util.List;

@Keep
public class CustomCardSchema
{
  public ModuleSchema action;
  public String actionText;
  public AdSchema ads;
  public List<AdSchema> adsArr;
  public int adsType;
  public String closeable;
  public String description;
  public JsonObject extra;
  public ModuleSchema extraAction;
  public int hide;
  public int hideDefault;
  public String icon;
  public long id;
  public String image;
  public ModuleSchema imageAction;
  public List<CustomCardItemSchema> itemList;
  public int sequence;
  public int showChange;
  public int showType;
  public String title;
  public int userHide;
  
  public static Type getListType()
  {
    return new a().getType();
  }
  
  class a
    extends TypeToken<List<CustomCardSchema>>
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.schema.CustomCardSchema
 * JD-Core Version:    0.7.0.1
 */