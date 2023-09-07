package com.xiaomi.onetrack;

import android.content.Context;
import com.xiaomi.onetrack.api.h;
import com.xiaomi.onetrack.f.a;
import com.xiaomi.onetrack.util.i;
import com.xiaomi.onetrack.util.p;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class OneTrack
{
  private static boolean a;
  private static boolean b;
  private h c;
  
  private OneTrack(Context paramContext, Configuration paramConfiguration)
  {
    a.a(paramContext.getApplicationContext());
    this.c = new h(paramContext, paramConfiguration);
    setEventHook(new DefaultEventHook());
  }
  
  private static void a(Context paramContext)
  {
    if (paramContext != null)
    {
      a.a(paramContext.getApplicationContext());
      return;
    }
    throw new IllegalStateException("context is null!");
  }
  
  public static OneTrack createInstance(Context paramContext, Configuration paramConfiguration)
  {
    return new OneTrack(paramContext, paramConfiguration);
  }
  
  public static boolean isDisable()
  {
    return a;
  }
  
  public static boolean isUseSystemNetTrafficOnly()
  {
    return b;
  }
  
  public static void registerCrashHook(Context paramContext)
  {
    CrashAnalysis.a(paramContext);
  }
  
  public static String sdkVersion()
  {
    return "2.0.3";
  }
  
  public static void setAccessNetworkEnable(Context paramContext, boolean paramBoolean)
  {
    a(paramContext);
    i.a(new OneTrack.1(paramBoolean));
  }
  
  public static void setDebugMode(boolean paramBoolean)
  {
    p.a(paramBoolean);
  }
  
  public static void setDisable(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public static void setTestMode(boolean paramBoolean)
  {
    p.b(paramBoolean);
  }
  
  public static void setUseSystemNetTrafficOnly()
  {
    b = true;
  }
  
  public void adTrack(String paramString, Map<String, Object> paramMap)
  {
    this.c.a(paramString, paramMap, null);
  }
  
  public void adTrack(String paramString, Map<String, Object> paramMap, List<String> paramList)
  {
    this.c.a(paramString, paramMap, paramList);
  }
  
  public void clearCommonProperty()
  {
    this.c.a();
  }
  
  public String getInstanceId()
    throws OnMainThreadException
  {
    return this.c.b();
  }
  
  public String getOAID(Context paramContext)
    throws OnMainThreadException
  {
    return this.c.a(paramContext);
  }
  
  public void login(String paramString, UserIdType paramUserIdType, Map<String, Object> paramMap)
  {
    login(paramString, paramUserIdType, paramMap, false);
  }
  
  public void login(String paramString, UserIdType paramUserIdType, Map<String, Object> paramMap, boolean paramBoolean)
  {
    this.c.a(paramString, paramUserIdType, paramMap, paramBoolean);
  }
  
  public void logout()
  {
    logout(null, false);
  }
  
  public void logout(Map<String, Object> paramMap, boolean paramBoolean)
  {
    this.c.a(paramMap, paramBoolean);
  }
  
  public void removeCommonProperty(String paramString)
  {
    this.c.b(paramString);
  }
  
  public void setBasicModeEnable(boolean paramBoolean)
  {
    this.c.c(paramBoolean);
  }
  
  public void setCommonProperty(Map<String, Object> paramMap)
  {
    this.c.c(paramMap);
  }
  
  public void setCustomPrivacyPolicyAccepted(boolean paramBoolean)
  {
    this.c.b(paramBoolean);
  }
  
  public void setDynamicCommonProperty(ICommonPropertyProvider paramICommonPropertyProvider)
  {
    this.c.a(paramICommonPropertyProvider);
  }
  
  public void setEventHook(IEventHook paramIEventHook)
  {
    this.c.a(paramIEventHook);
  }
  
  public void setInstanceId(String paramString)
  {
    this.c.c(paramString);
  }
  
  public void setUserProfile(String paramString, Object paramObject)
  {
    this.c.a(paramString, paramObject);
  }
  
  public void setUserProfile(Map<String, Object> paramMap)
  {
    this.c.a(paramMap);
  }
  
  public void track(String paramString, List<String> paramList, Map<String, Object> paramMap)
  {
    HashMap localHashMap = new HashMap();
    if (paramMap != null) {
      localHashMap.putAll(paramMap);
    }
    localHashMap.put("exp_id", String.join(",", paramList));
    this.c.a(paramString, localHashMap);
  }
  
  public void track(String paramString, Map<String, Object> paramMap)
  {
    this.c.a(paramString, paramMap);
  }
  
  public void trackEventFromH5(String paramString)
  {
    this.c.a(paramString);
  }
  
  public void trackPluginEvent(String paramString1, String paramString2, Map<String, Object> paramMap)
  {
    this.c.a(paramString1, paramString2, paramMap);
  }
  
  public void trackServiceQualityEvent(ServiceQualityEvent paramServiceQualityEvent)
  {
    this.c.a(paramServiceQualityEvent);
  }
  
  public void userProfileIncrement(String paramString, Number paramNumber)
  {
    this.c.a(paramString, paramNumber);
  }
  
  public void userProfileIncrement(Map<String, ? extends Number> paramMap)
  {
    this.c.b(paramMap);
  }
  
  public static class Event
  {
    public static final String ANCHOR_STATUS = "anchor_status";
    public static final String CART = "cart";
    public static final String CLICK = "click";
    public static final String COMMENT = "comment";
    public static final String DOWNLOAD = "download";
    public static final String EXPOSE = "expose";
    public static final String FAVORITE = "favorite";
    public static final String FOLLOW = "follow";
    public static final String GIFT_INTERACTION = "gift_interaction";
    public static final String LIKE = "like";
    public static final String LOGIN = "login";
    public static final String ORDER = "order";
    public static final String PLAY = "play";
    public static final String ROOM_SEATING = "room_seating";
    public static final String SEARCH = "search";
    public static final String SEND_MESSAGE = "send_message";
    public static final String UNLOCK = "unlock";
    public static final String VIEW = "view";
    public static final String VIEWER_STATUS = "viewer_status";
  }
  
  public static abstract interface ICommonPropertyProvider
  {
    public abstract Map<String, Object> getDynamicProperty(String paramString);
  }
  
  public static abstract interface IEventHook
  {
    public abstract boolean isCustomDauEvent(String paramString);
    
    public abstract boolean isRecommendEvent(String paramString);
  }
  
  public static enum Mode
  {
    private String a;
    
    static
    {
      Mode localMode1 = new Mode("APP", 0, "app");
      APP = localMode1;
      Mode localMode2 = new Mode("PLUGIN", 1, "plugin");
      PLUGIN = localMode2;
      Mode localMode3 = new Mode("SDK", 2, "sdk");
      SDK = localMode3;
      b = new Mode[] { localMode1, localMode2, localMode3 };
    }
    
    private Mode(String paramString)
    {
      this.a = paramString;
    }
    
    public String getType()
    {
      return this.a;
    }
  }
  
  public static enum NetType
  {
    private String a;
    
    static
    {
      NetType localNetType1 = new NetType("NOT_CONNECTED", 0, "NONE");
      NOT_CONNECTED = localNetType1;
      NetType localNetType2 = new NetType("MOBILE_2G", 1, "2G");
      MOBILE_2G = localNetType2;
      NetType localNetType3 = new NetType("MOBILE_3G", 2, "3G");
      MOBILE_3G = localNetType3;
      NetType localNetType4 = new NetType("MOBILE_4G", 3, "4G");
      MOBILE_4G = localNetType4;
      NetType localNetType5 = new NetType("MOBILE_5G", 4, "5G");
      MOBILE_5G = localNetType5;
      NetType localNetType6 = new NetType("WIFI", 5, "WIFI");
      WIFI = localNetType6;
      NetType localNetType7 = new NetType("ETHERNET", 6, "ETHERNET");
      ETHERNET = localNetType7;
      NetType localNetType8 = new NetType("UNKNOWN", 7, "UNKNOWN");
      UNKNOWN = localNetType8;
      b = new NetType[] { localNetType1, localNetType2, localNetType3, localNetType4, localNetType5, localNetType6, localNetType7, localNetType8 };
    }
    
    private NetType(String paramString)
    {
      this.a = paramString;
    }
    
    public String toString()
    {
      return this.a;
    }
  }
  
  public static class Param
  {
    public static final String ANCHOR_UID = "anchor_uid";
    public static final String ANDROID_ID = "android_id";
    public static final String APPID = "appid";
    public static final String APP_PLATFORM = "app_platform";
    public static final String APP_VER = "app_ver";
    public static final String ASSET_ID = "asset_id";
    public static final String ASSET_NAME = "asset_name";
    public static final String BIRTHDAY = "birthday";
    public static final String BUILD = "build";
    public static final String CHANNEL = "channel";
    public static final String CITY = "city";
    public static final String CLASS = "class";
    public static final String DEVICE_LANG = "device_lang";
    public static final String DURATION = "duration";
    public static final String ELEMENT_ID = "element_id";
    public static final String ELEMENT_NAME = "element_name";
    public static final String EXCEPTION = "exception";
    public static final String EXP_ID = "exp_id";
    public static final String E_TS = "e_ts";
    public static final String FIRST_LOGIN_TIME = "first_login_time";
    public static final String FIRST_OPEN = "first_open";
    public static final String FIRST_ORDER_TIME = "first_order_time";
    public static final String FIRST_VISIT_TIME = "first_visit_time";
    public static final String GENDER = "gender";
    public static final String GIFT_ID = "gift_id";
    public static final String GIFT_NUM = "gift_num";
    public static final String HOBBY = "hobby";
    public static final String IMEI_MD5 = "imei";
    public static final String INSTANCE_ID = "instance_id";
    public static final String JOB = "job";
    public static final String LINK = "link";
    public static final String LOGIN_METHOD = "login_method";
    public static final String LOGIN_RESULT = "login_result";
    public static final String LOGIN_TYPE = "login_type";
    public static final String MESSAGE = "message";
    public static final String MESSAGE_EMOJI = "message_emoji";
    public static final String MESSAGE_GIF = "message_gif";
    public static final String MESSAGE_PIC = "message_pic";
    public static final String MESSAGE_TEXT = "message_text";
    public static final String MESSAGE_VOICE = "message_voice";
    public static final String MFRS = "mfrs";
    public static final String MIUI = "miui";
    public static final String MODEL = "model";
    public static final String NAME = "name";
    public static final String NET = "net";
    public static final String OAID = "oaid";
    public static final String ORDER_ACT_TYPE = "order_act_type";
    public static final String ORDER_ID = "order_id";
    public static final String OS_VER = "os_ver";
    public static final String PHONE = "phone";
    public static final String PKG = "pkg";
    public static final String PLATFORM = "platform";
    public static final String PROVINCE = "province";
    public static final String REF_TIP = "ref_tip";
    public static final String REGION = "region";
    public static final String ROOM_ID = "room_id";
    public static final String SESSION_ID = "session_id";
    public static final String SKU_ID = "sku_id";
    public static final String SKU_NUM = "sku_num";
    public static final String TO_UID = "to_uid";
    public static final String TZ = "tz";
    public static final String UID = "uid";
    public static final String USER_ID = "user_id";
    public static final String UTM_CAMPAIGN = "utm_campaign";
    public static final String UTM_CONTENT = "utm_content";
    public static final String UTM_MEDIUM = "utm_medium";
    public static final String UTM_SOURCE = "utm_source";
    public static final String UTM_TERM = "utm_term";
    public static final String VIP_LEVEL = "vip_level";
  }
  
  public static enum UserIdType
  {
    private String a;
    
    static
    {
      UserIdType localUserIdType1 = new UserIdType("XIAOMI", 0, "xiaomi");
      XIAOMI = localUserIdType1;
      UserIdType localUserIdType2 = new UserIdType("PHONE_NUMBER", 1, "phone_number");
      PHONE_NUMBER = localUserIdType2;
      UserIdType localUserIdType3 = new UserIdType("WEIXIN", 2, "weixin");
      WEIXIN = localUserIdType3;
      UserIdType localUserIdType4 = new UserIdType("WEIBO", 3, "weibo");
      WEIBO = localUserIdType4;
      UserIdType localUserIdType5 = new UserIdType("QQ", 4, "qq");
      QQ = localUserIdType5;
      UserIdType localUserIdType6 = new UserIdType("OTHER", 5, "other");
      OTHER = localUserIdType6;
      b = new UserIdType[] { localUserIdType1, localUserIdType2, localUserIdType3, localUserIdType4, localUserIdType5, localUserIdType6 };
    }
    
    private UserIdType(String paramString)
    {
      this.a = paramString;
    }
    
    public String getUserIdType()
    {
      return this.a;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.OneTrack
 * JD-Core Version:    0.7.0.1
 */