package com.xiaomi.ad.entity.common;

import android.text.TextUtils;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.xiaomi.ad.entity.util.GsonUtils;
import d6.d;
import java.lang.reflect.Type;

public class StringHolder
{
  public String value;
  
  public static void init()
  {
    GsonUtils.registerJsonSerializer(StringHolder.class, new StringHolderSerializer());
    GsonUtils.registerJsonDeserializer(StringHolder.class, new StringHolderDeserializer());
  }
  
  static class StringHolderDeserializer
    implements JsonDeserializer<StringHolder>
  {
    private static final String TAG = "ExtraHolderDeserializer";
    
    public StringHolder deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    {
      paramType = new StringHolder();
      try
      {
        if (paramJsonElement.isJsonObject())
        {
          paramType.value = paramJsonElement.getAsJsonObject().toString();
          paramJsonElement = new java/lang/StringBuilder;
          paramJsonElement.<init>();
          paramJsonElement.append("JsonObject: ");
          paramJsonElement.append(paramType.value);
          d.e("ExtraHolderDeserializer", paramJsonElement.toString());
        }
        else if (paramJsonElement.isJsonArray())
        {
          paramType.value = paramJsonElement.getAsJsonArray().toString();
          paramJsonElement = new java/lang/StringBuilder;
          paramJsonElement.<init>();
          paramJsonElement.append("JsonArray: ");
          paramJsonElement.append(paramType.value);
          d.e("ExtraHolderDeserializer", paramJsonElement.toString());
        }
        else if (paramJsonElement.isJsonPrimitive())
        {
          paramType.value = paramJsonElement.getAsString();
          paramJsonElement = new java/lang/StringBuilder;
          paramJsonElement.<init>();
          paramJsonElement.append("JsonPrimitive: ");
          paramJsonElement.append(paramType.value);
          d.e("ExtraHolderDeserializer", paramJsonElement.toString());
        }
      }
      catch (Exception paramJsonElement)
      {
        d.d("ExtraHolderDeserializer", "deserialize exception", paramJsonElement);
      }
      return paramType;
    }
  }
  
  static class StringHolderSerializer
    implements JsonSerializer<StringHolder>
  {
    private static final String TAG = "ExtraHolderDeserializer";
    
    public JsonElement serialize(StringHolder paramStringHolder, Type paramType, JsonSerializationContext paramJsonSerializationContext)
    {
      if ((paramStringHolder != null) && (!TextUtils.isEmpty(paramStringHolder.value)))
      {
        paramType = new StringBuilder();
        paramType.append("serialize: ");
        paramType.append(paramStringHolder.value);
        d.c("ExtraHolderDeserializer", paramType.toString());
        return new JsonPrimitive(paramStringHolder.value);
      }
      return null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.entity.common.StringHolder
 * JD-Core Version:    0.7.0.1
 */