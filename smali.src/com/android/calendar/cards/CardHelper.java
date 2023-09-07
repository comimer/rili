package com.android.calendar.cards;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.android.calendar.common.ModuleSchema;
import com.google.gson.JsonElement;
import com.miui.calendar.account.mi.MiAccountSchema;
import com.miui.calendar.ad.b;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.q;
import com.miui.calendar.util.z;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;
import u1.b.a;

public class CardHelper
{
  protected static CustomCardExtraSchema a;
  public static List<CustomCardSchema> b;
  public static final ExecutorService c = ;
  public static final Handler d = new Handler(Looper.getMainLooper());
  
  protected static Class<CustomCardExtraSchema> e()
  {
    return CustomCardExtraSchema.class;
  }
  
  public static String f(int paramInt)
  {
    if (paramInt != 0)
    {
      if (paramInt != 1)
      {
        if (paramInt != 2)
        {
          if (paramInt != 3)
          {
            if (paramInt != 20)
            {
              if (paramInt != 28)
              {
                if (paramInt != 42)
                {
                  if (paramInt != 47)
                  {
                    if (paramInt != 100)
                    {
                      if (paramInt != 52)
                      {
                        if (paramInt != 53)
                        {
                          if (paramInt != 57)
                          {
                            if (paramInt != 58) {
                              return "unknown_card";
                            }
                            return "class_schedule_card";
                          }
                          return "menstruation_card";
                        }
                        return "shift_card";
                      }
                      return "limit_card";
                    }
                    return "footer_card";
                  }
                  return "history_card";
                }
                return "fortune_card";
              }
              return "horoscope_card";
            }
            return "advertisement_card";
          }
          return "todo_card";
        }
        return "holiday_card_v2";
      }
      return "summary_card";
    }
    return "agenda_group_card";
  }
  
  public static void g(Context paramContext, b paramb)
  {
    k3.d.g(new u(paramContext, paramb));
  }
  
  private static void k(Context paramContext, JSONObject paramJSONObject, b paramb, MiAccountSchema paramMiAccountSchema)
  {
    Handler localHandler = null;
    Object localObject1 = localHandler;
    try
    {
      int i = paramJSONObject.optInt("showManager");
      localObject1 = localHandler;
      Object localObject2 = paramJSONObject.optString("manager_card_title");
      localObject1 = localHandler;
      q.f(paramContext, "show_manager", String.valueOf(i));
      localObject1 = localHandler;
      q.f(paramContext, "manager_card_title", (String)localObject2);
      localObject1 = localHandler;
      paramContext = new java/lang/StringBuilder;
      localObject1 = localHandler;
      paramContext.<init>();
      localObject1 = localHandler;
      paramContext.append("ResponseListener() showManager=");
      localObject1 = localHandler;
      paramContext.append(i);
      localObject1 = localHandler;
      z.a("Cal:D:CardHelper", paramContext.toString());
      localObject1 = localHandler;
      paramContext = paramJSONObject.getString("data");
      localObject1 = paramContext;
      s4.d.d(paramContext);
      localObject1 = paramContext;
      if (!TextUtils.isEmpty(paramContext))
      {
        localObject1 = paramContext;
        localObject2 = (List)com.miui.calendar.util.x.b(paramContext, CustomCardSchema.getListType());
        localObject1 = paramContext;
        b = (List)localObject2;
        localObject1 = paramContext;
        b.e().b((List)localObject2);
        localObject1 = paramContext;
        localHandler = new android/os/Handler;
        localObject1 = paramContext;
        localHandler.<init>(Looper.getMainLooper());
        localObject1 = paramContext;
        paramJSONObject = new com/android/calendar/cards/w;
        localObject1 = paramContext;
        paramJSONObject.<init>(paramb, (List)localObject2, paramMiAccountSchema);
        localObject1 = paramContext;
        localHandler.post(paramJSONObject);
      }
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:CardHelper", "ParseDataTask:", paramContext);
      s4.d.a((String)localObject1, new Object[0]);
    }
  }
  
  protected static void l(CustomCardSchema paramCustomCardSchema)
  {
    if (paramCustomCardSchema == null)
    {
      z.m("Cal:D:CardHelper", ":prepareExtraData() mCard is null");
      return;
    }
    try
    {
      a = (CustomCardExtraSchema)com.miui.calendar.util.x.a(paramCustomCardSchema.extra.toString(), e());
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("card = ");
      localStringBuilder.append(paramCustomCardSchema.title);
      localStringBuilder.append(":prepareExtraData()");
      z.d("Cal:D:CardHelper", localStringBuilder.toString(), localException);
    }
  }
  
  public static void m(String paramString1, int paramInt1, int paramInt2, String paramString2, CustomCardSchema paramCustomCardSchema)
  {
    n(paramString1, paramInt1, paramInt2, paramString2, null, paramCustomCardSchema);
  }
  
  protected static void n(String paramString1, int paramInt1, int paramInt2, String paramString2, Map<String, Object> paramMap, CustomCardSchema paramCustomCardSchema)
  {
    Object localObject = (CustomCardExtraSchema)com.miui.calendar.util.x.a(paramCustomCardSchema.extra.toString(), e());
    if ((localObject != null) && (!TextUtils.isEmpty(((CustomCardExtraSchema)localObject).suffix))) {
      localObject = ((CustomCardExtraSchema)localObject).suffix;
    } else {
      localObject = "";
    }
    p((String)localObject, paramString1, paramInt1, paramInt2, paramString2, paramMap, paramCustomCardSchema);
  }
  
  protected static void o(String paramString1, int paramInt1, int paramInt2, String paramString2, Map<String, Object> paramMap, String paramString3)
  {
    q(paramString3, paramString1, paramInt1, paramInt2, paramString2, paramMap);
  }
  
  protected static void p(String paramString1, String paramString2, int paramInt1, int paramInt2, String paramString3, Map<String, Object> paramMap, CustomCardSchema paramCustomCardSchema)
  {
    String str = paramCustomCardSchema.title;
    paramCustomCardSchema = str;
    if (!TextUtils.isEmpty(paramString1))
    {
      paramCustomCardSchema = new StringBuilder();
      paramCustomCardSchema.append(str);
      paramCustomCardSchema.append("_");
      paramCustomCardSchema.append(paramString1);
      paramCustomCardSchema = paramCustomCardSchema.toString();
    }
    q(paramCustomCardSchema, paramString2, paramInt1, paramInt2, paramString3, paramMap);
  }
  
  private static void q(String paramString1, String paramString2, int paramInt1, int paramInt2, String paramString3, Map<String, Object> paramMap)
  {
    Object localObject = paramMap;
    if (paramMap == null) {
      localObject = new HashMap();
    }
    if (!TextUtils.isEmpty(paramString1)) {
      ((Map)localObject).put("card_name", paramString1);
    }
    ((Map)localObject).put("card_position", String.valueOf(paramInt1 + 1));
    if (paramInt2 >= 0) {
      ((Map)localObject).put("item_position", String.valueOf(paramInt2 + 1));
    }
    if (!TextUtils.isEmpty(paramString3)) {
      ((Map)localObject).put("item_name", paramString3);
    }
    g0.e(paramString2, (Map)localObject);
  }
  
  @Keep
  public static class CustomCardExtraSchema
  {
    int changeData;
    String customTitle;
    int itemNumPerPage;
    String suffix;
  }
  
  @Keep
  public static class CustomItemExtraSchema
  {
    public ModuleSchema[] actions;
    ModuleSchema titleBanner;
  }
  
  class a
    implements b.a
  {
    a(CardHelper.b paramb, MiAccountSchema paramMiAccountSchema) {}
    
    public void a(JSONObject paramJSONObject)
    {
      CardHelper.c.execute(new x(CardHelper.this, paramJSONObject, this.b, this.c));
    }
    
    public void b(Exception paramException)
    {
      z.d("Cal:D:CardHelper", "onErrorResponse()", paramException);
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(List<CustomCardSchema> paramList, MiAccountSchema paramMiAccountSchema);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.CardHelper
 * JD-Core Version:    0.7.0.1
 */