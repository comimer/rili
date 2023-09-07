package com.miui.calendar.thirdparty;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.android.calendar.common.Utils;
import com.google.gson.reflect.TypeToken;
import com.miui.calendar.util.c;
import com.miui.calendar.util.s;
import com.miui.calendar.util.x;
import com.miui.calendar.util.z;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
import s4.d;

@Keep
public class ThirdPartyConfigSchema
{
  public static final int DEFAULT_DAY_LIMIT = 5;
  public static final int DEFAULT_REPEAT_LIMIT = 1;
  public static final String TAG = "Cal:D:ThirdPartyConfigSchema";
  public static final String THIRD_PARTY_CONFIG_FILE_NAME = "third_party_config.json";
  public String SHA1;
  public boolean allowInsert;
  public boolean allowInsertDirectly;
  public int dayLimit;
  public String packageName;
  public int repeatLimit;
  
  public static ArrayList<ThirdPartyConfigSchema> getCachedServerConfigList(Context paramContext)
  {
    try
    {
      paramContext = s.c(paramContext, "third_party_config.json");
      d.c(paramContext);
      if (TextUtils.isEmpty(paramContext)) {
        return new ArrayList();
      }
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>(paramContext);
      paramContext = (ArrayList)x.b(localJSONObject.getString("whiteList"), getListType());
      return paramContext;
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:ThirdPartyConfigSchema", "getCachedServerConfigList()", paramContext);
    }
    return new ArrayList();
  }
  
  public static ThirdPartyConfigSchema getConfig(Context paramContext, String paramString)
  {
    Object localObject1 = getCachedServerConfigList(paramContext);
    Object localObject2;
    if (localObject1 != null)
    {
      localObject2 = ((ArrayList)localObject1).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject1 = (ThirdPartyConfigSchema)((Iterator)localObject2).next();
        if (TextUtils.equals(paramString, ((ThirdPartyConfigSchema)localObject1).packageName))
        {
          z.a("Cal:D:ThirdPartyConfigSchema", "getConfig(): match server config");
          return localObject1;
        }
      }
    }
    localObject1 = getLocalConfigList(paramContext);
    if (localObject1 != null)
    {
      localObject1 = ((ArrayList)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (ThirdPartyConfigSchema)((Iterator)localObject1).next();
        if (TextUtils.equals(paramString, ((ThirdPartyConfigSchema)localObject2).packageName))
        {
          z.a("Cal:D:ThirdPartyConfigSchema", "getConfig(): match local config");
          return localObject2;
        }
      }
    }
    return getDefaultConfig(paramContext, paramString);
  }
  
  public static ThirdPartyConfigSchema getDefaultConfig(Context paramContext, String paramString)
  {
    ThirdPartyConfigSchema localThirdPartyConfigSchema = new ThirdPartyConfigSchema();
    localThirdPartyConfigSchema.allowInsertDirectly = false;
    localThirdPartyConfigSchema.repeatLimit = 1;
    if (c.c(paramContext, paramString)) {
      localThirdPartyConfigSchema.allowInsert = true;
    }
    paramContext = new StringBuilder();
    paramContext.append("getDefaultConfig(): config:");
    paramContext.append(localThirdPartyConfigSchema);
    z.a("Cal:D:ThirdPartyConfigSchema", paramContext.toString());
    return localThirdPartyConfigSchema;
  }
  
  public static Type getListType()
  {
    return new a().getType();
  }
  
  public static ArrayList<ThirdPartyConfigSchema> getLocalConfigList(Context paramContext)
  {
    try
    {
      String str = Utils.S(paramContext, 2131820549);
      d.c(str);
      paramContext = new org/json/JSONObject;
      paramContext.<init>(str);
      paramContext = (ArrayList)x.b(paramContext.getString("whiteList"), getListType());
      return paramContext;
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:ThirdPartyConfigSchema", "getLocalConfigList()", paramContext);
    }
    return new ArrayList();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("ThirdPartyConfigSchema{");
    localStringBuilder.append("packageName='");
    localStringBuilder.append(this.packageName);
    localStringBuilder.append('\'');
    localStringBuilder.append(", allowInsert=");
    localStringBuilder.append(this.allowInsert);
    localStringBuilder.append(", allowInsertDirectly=");
    localStringBuilder.append(this.allowInsertDirectly);
    localStringBuilder.append(", repeatLimit=");
    localStringBuilder.append(this.repeatLimit);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  class a
    extends TypeToken<List<ThirdPartyConfigSchema>>
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.thirdparty.ThirdPartyConfigSchema
 * JD-Core Version:    0.7.0.1
 */