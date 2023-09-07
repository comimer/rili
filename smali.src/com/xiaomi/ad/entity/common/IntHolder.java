package com.xiaomi.ad.entity.common;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.xiaomi.ad.entity.util.GsonUtils;
import d6.d;
import java.lang.reflect.Type;

public class IntHolder
{
  public int value;
  
  public static void init()
  {
    GsonUtils.registerJsonSerializer(IntHolder.class, new IntHolderSerializer());
    GsonUtils.registerJsonDeserializer(IntHolder.class, new IntHolderDeserializer());
  }
  
  static class IntHolderDeserializer
    implements JsonDeserializer<IntHolder>
  {
    private static final String TAG = "IntHolderDeserializer";
    
    public IntHolder deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    {
      paramType = new IntHolder();
      try
      {
        if (paramJsonElement.isJsonPrimitive())
        {
          paramType.value = paramJsonElement.getAsInt();
          paramJsonElement = new java/lang/StringBuilder;
          paramJsonElement.<init>();
          paramJsonElement.append("IntHolder JsonPrimitive: ");
          paramJsonElement.append(paramType.value);
          d.e("IntHolderDeserializer", paramJsonElement.toString());
        }
      }
      catch (Exception paramJsonElement)
      {
        d.d("IntHolderDeserializer", "IntHolder deserialize exception", paramJsonElement);
      }
      return paramType;
    }
  }
  
  static class IntHolderSerializer
    implements JsonSerializer<IntHolder>
  {
    private static final String TAG = "IntHolderSerializer";
    
    public JsonElement serialize(IntHolder paramIntHolder, Type paramType, JsonSerializationContext paramJsonSerializationContext)
    {
      paramType = new StringBuilder();
      paramType.append("IntHolder serialize: ");
      paramType.append(paramIntHolder.value);
      d.e("IntHolderSerializer", paramType.toString());
      return new JsonPrimitive(Integer.valueOf(paramIntHolder.value));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.entity.common.IntHolder
 * JD-Core Version:    0.7.0.1
 */