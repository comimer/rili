package com.xiaomi.ad.entity.util;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonSerializer;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.xiaomi.ad.entity.common.IntHolder;
import com.xiaomi.ad.entity.common.StringHolder;
import com.xiaomi.ad.entity.contract.IGsonEntity;
import d6.d;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class GsonUtils
{
  private static final String GSON_CONTENT_VERSION_FIELD_NAME = "GSON_CONTENT_VERSION";
  private static final Map<Class, JsonDeserializer> JSON_DESERIALIZERS;
  private static final Map<Class, JsonSerializer> JSON_SERIALIZERS = Collections.synchronizedMap(new HashMap());
  private static final String TAG = "GSU";
  
  static
  {
    JSON_DESERIALIZERS = Collections.synchronizedMap(new HashMap());
    StringHolder.init();
    IntHolder.init();
  }
  
  public static <T extends IGsonEntity> T fromJsonString(Class<T> paramClass, String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      return null;
    }
    try
    {
      paramClass = (IGsonEntity)getGson(paramClass, paramString2).fromJson(paramString1, paramClass);
      return paramClass;
    }
    catch (Exception paramClass)
    {
      String str = getTag(paramString2);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("exception json string : ");
      localStringBuilder.append(paramString1);
      d.c(str, localStringBuilder.toString());
      d.d(getTag(paramString2), "deserialize exception : ", paramClass);
    }
    return null;
  }
  
  public static <T extends IGsonEntity> T[] getArrayfromJsonString(Class<T> paramClass, T[] paramArrayOfT, String paramString1, String paramString2)
  {
    if ((!TextUtils.isEmpty(paramString1)) && (paramClass != null) && (paramArrayOfT != null)) {
      try
      {
        paramClass = (IGsonEntity[])getGson(paramClass, paramString2).fromJson(paramString1, paramArrayOfT.getClass());
        return paramClass;
      }
      catch (Exception paramClass)
      {
        paramString2 = getTag(paramString2);
        paramArrayOfT = new StringBuilder();
        paramArrayOfT.append("exception json array string : ");
        paramArrayOfT.append(paramString1);
        d.d(paramString2, paramArrayOfT.toString(), paramClass);
      }
    }
    return null;
  }
  
  private static Gson getGson(Class<? extends IGsonEntity> paramClass, String paramString)
  {
    GsonBuilder localGsonBuilder = new GsonBuilder().excludeFieldsWithoutExposeAnnotation();
    Object localObject1 = JSON_SERIALIZERS.entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Map.Entry)((Iterator)localObject1).next();
      localGsonBuilder.registerTypeAdapter((Type)((Map.Entry)localObject2).getKey(), ((Map.Entry)localObject2).getValue());
    }
    Object localObject2 = JSON_DESERIALIZERS.entrySet().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject1 = (Map.Entry)((Iterator)localObject2).next();
      localGsonBuilder.registerTypeAdapter((Type)((Map.Entry)localObject1).getKey(), ((Map.Entry)localObject1).getValue());
    }
    try
    {
      localObject1 = localGsonBuilder.setVersion(getGsonContentVersion(paramClass));
      localObject2 = new com/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;
      ((IgnoreStringToObjectTranslateAdapter)localObject2).<init>(paramString);
      ((GsonBuilder)localObject1).registerTypeAdapterFactory((TypeAdapterFactory)localObject2);
      return localGsonBuilder.create();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      paramString = getTag(paramString);
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("illegal access GSON_CONTENT_VERSION in ");
      ((StringBuilder)localObject1).append(paramClass.getCanonicalName());
      d.d(paramString, ((StringBuilder)localObject1).toString(), localIllegalAccessException);
      throw new RuntimeException(localIllegalAccessException);
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      paramString = getTag(paramString);
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("no GSON_CONTENT_VERSION in ");
      ((StringBuilder)localObject1).append(paramClass.getCanonicalName());
      d.d(paramString, ((StringBuilder)localObject1).toString(), localNoSuchFieldException);
      throw new RuntimeException(localNoSuchFieldException);
    }
  }
  
  private static <T extends IGsonEntity> double getGsonContentVersion(Class<T> paramClass)
  {
    paramClass = paramClass.getDeclaredField("GSON_CONTENT_VERSION");
    paramClass.setAccessible(true);
    return paramClass.getDouble(null);
  }
  
  private static String getTag(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append("-");
    localStringBuilder.append("GSU");
    return localStringBuilder.toString();
  }
  
  public static void registerJsonDeserializer(Class paramClass, JsonDeserializer paramJsonDeserializer)
  {
    JSON_DESERIALIZERS.put(paramClass, paramJsonDeserializer);
  }
  
  public static void registerJsonSerializer(Class paramClass, JsonSerializer paramJsonSerializer)
  {
    JSON_SERIALIZERS.put(paramClass, paramJsonSerializer);
  }
  
  public static String toJsonString(IGsonEntity paramIGsonEntity, String paramString)
  {
    if (paramIGsonEntity == null) {
      return null;
    }
    try
    {
      String str = getGson(paramIGsonEntity.getClass(), paramString).toJson(paramIGsonEntity);
      return str;
    }
    catch (Exception localException)
    {
      paramString = getTag(paramString);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("serialize exception, class: ");
      localStringBuilder.append(paramIGsonEntity.getClass().getCanonicalName());
      d.d(paramString, localStringBuilder.toString(), localException);
    }
    return null;
  }
  
  private static class IgnoreStringToObjectTranslateAdapter
    implements TypeAdapterFactory
  {
    private final String callerTag;
    
    public IgnoreStringToObjectTranslateAdapter(String paramString)
    {
      this.callerTag = paramString;
    }
    
    public <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
    {
      return new GsonUtils.IgnoreStringToObjectTranslateAdapter.1(this, paramGson.getDelegateAdapter(this, paramTypeToken), paramTypeToken);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.entity.util.GsonUtils
 * JD-Core Version:    0.7.0.1
 */