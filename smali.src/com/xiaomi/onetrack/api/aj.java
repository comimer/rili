package com.xiaomi.onetrack.api;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.onetrack.Configuration;
import com.xiaomi.onetrack.OneTrack;
import com.xiaomi.onetrack.b.h;
import com.xiaomi.onetrack.f.d;
import com.xiaomi.onetrack.f.g;
import com.xiaomi.onetrack.util.i;
import com.xiaomi.onetrack.util.p;
import com.xiaomi.onetrack.util.v;
import com.xiaomi.onetrack.util.z;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;

public class aj
  implements e
{
  private static final String a = "OneTrackLocalImp";
  private static final int b = 102400;
  private static final int c = 2;
  private Configuration d;
  private v e;
  
  public aj(Context paramContext, Configuration paramConfiguration, v paramv)
  {
    g.a(paramContext);
    this.d = paramConfiguration;
    this.e = paramv;
  }
  
  private void a(String paramString, JSONObject paramJSONObject1, JSONObject paramJSONObject2, JSONObject paramJSONObject3, boolean paramBoolean)
  {
    String str1 = "";
    String str2 = this.d.getAppId();
    if (paramBoolean) {
      str2 = this.d.getAdEventAppId();
    }
    if (a(str2))
    {
      p.a("OneTrackLocalImp", "This app disabled tracking data, skip it.");
      return;
    }
    try
    {
      String str3 = h.a().a(str2, paramString, "needIds", "");
      if (paramJSONObject3 == null) {
        localObject = "";
      } else {
        localObject = paramJSONObject3.optString("tip");
      }
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("tip: ");
      localStringBuilder.append((String)localObject);
      localStringBuilder.append(", needIds: ");
      localStringBuilder.append(str3);
      p.a("OneTrackLocalImp", localStringBuilder.toString());
      if (c((String)localObject, str3))
      {
        if (d(str2, paramString))
        {
          p.a("OneTrackLocalImp", " This event disabled tracking data , skip it.");
          return;
        }
        if (e(str2, paramString))
        {
          p.a("OneTrackLocalImp", " This event should not upload by sampling , skip it.");
          return;
        }
        str1 = h.a().a(str2, paramString, "bannedParams", "");
      }
      str3 = h.a().c(str2);
      Object localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      ((StringBuilder)localObject).append("bannedParamsForApp: ");
      ((StringBuilder)localObject).append(str3);
      ((StringBuilder)localObject).append(", bannedParamsForEvent: ");
      ((StringBuilder)localObject).append(str1);
      p.a("OneTrackLocalImp", ((StringBuilder)localObject).toString());
      localObject = z.a(str3, str1, ",");
      a(paramJSONObject2, (Set)localObject);
      a(paramJSONObject3, (Set)localObject);
      if (paramBoolean) {
        d.b(str2, com.xiaomi.onetrack.f.a.e(), paramString, paramJSONObject1.toString());
      } else {
        d.a(str2, com.xiaomi.onetrack.f.a.e(), paramString, paramJSONObject1.toString());
      }
    }
    finally
    {
      paramString = new StringBuilder();
      paramString.append("checkCloudControl error：");
      paramString.append(paramJSONObject1.toString());
      p.b("OneTrackLocalImp", paramString.toString());
    }
  }
  
  private void a(JSONObject paramJSONObject, Set<String> paramSet)
  {
    if ((paramJSONObject != null) && (paramSet != null) && (paramSet.size() != 0))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("jsonObject: ");
      localStringBuilder.append(paramJSONObject.toString());
      localStringBuilder.append(", bannedParams: ");
      localStringBuilder.append(paramSet.toString());
      p.a("OneTrackLocalImp", localStringBuilder.toString());
      try
      {
        paramJSONObject = paramJSONObject.keys();
        while (paramJSONObject.hasNext()) {
          if (paramSet.contains((String)paramJSONObject.next())) {
            paramJSONObject.remove();
          }
        }
        return;
      }
      catch (Exception paramSet)
      {
        paramJSONObject = new StringBuilder();
        paramJSONObject.append("filterParams error：");
        paramJSONObject.append(paramSet.toString());
        p.b("OneTrackLocalImp", paramJSONObject.toString());
      }
    }
    p.a("OneTrackLocalImp", "jsonObject is null or bannedParams is empty");
  }
  
  private boolean a(String paramString)
  {
    boolean bool;
    try
    {
      bool = h.a().a(paramString, "disable_log");
    }
    catch (Exception paramString)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("isDisableTrackForApp error: ");
      localStringBuilder.append(paramString.toString());
      p.b("OneTrackLocalImp", localStringBuilder.toString());
      bool = false;
    }
    return bool;
  }
  
  /* Error */
  private boolean a(JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_1
    //   3: getstatic 190	com/xiaomi/onetrack/f/b$b:F	Ljava/lang/String;
    //   6: iconst_0
    //   7: invokevirtual 194	org/json/JSONObject:optBoolean	(Ljava/lang/String;Z)Z
    //   10: istore_3
    //   11: iload_3
    //   12: istore_2
    //   13: goto +11 -> 24
    //   16: astore_1
    //   17: ldc 10
    //   19: ldc 37
    //   21: invokestatic 56	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   24: iload_2
    //   25: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	26	0	this	aj
    //   0	26	1	paramJSONObject	JSONObject
    //   1	24	2	bool1	boolean
    //   10	2	3	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   2	11	16	finally
  }
  
  private boolean c(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString2)) {
      return true;
    }
    if (TextUtils.isEmpty(paramString1)) {
      return false;
    }
    try
    {
      paramString1 = paramString1.split("\\.");
      if ((paramString1 != null) && (paramString1.length >= 5))
      {
        paramString2 = z.a(paramString2, ",");
        if (paramString2 != null)
        {
          boolean bool = paramString2.contains(paramString1[4]);
          if (bool) {
            return true;
          }
        }
      }
    }
    catch (Exception paramString2)
    {
      paramString1 = new StringBuilder();
      paramString1.append("isMatchId error：");
      paramString1.append(paramString2.toString());
      p.b("OneTrackLocalImp", paramString1.toString());
    }
    return false;
  }
  
  private boolean d(String paramString1, String paramString2)
  {
    boolean bool1 = false;
    try
    {
      boolean bool2 = h.a().a(paramString1, paramString2, "disable_log", false);
      bool1 = bool2;
    }
    catch (Exception paramString2)
    {
      paramString1 = new StringBuilder();
      paramString1.append("isDisableTrackForEvent error: ");
      paramString1.append(paramString2.toString());
      p.b("OneTrackLocalImp", paramString1.toString());
    }
    return bool1;
  }
  
  private boolean e(String paramString1, String paramString2)
  {
    long l1 = h.a().b(paramString1, paramString2);
    paramString1 = com.xiaomi.onetrack.f.a.b();
    long l2 = Math.abs(com.xiaomi.onetrack.util.oaid.a.a().a(paramString1).hashCode()) % 100;
    boolean bool;
    if (l1 > l2) {
      bool = true;
    } else {
      bool = false;
    }
    paramString1 = new StringBuilder();
    paramString1.append("shouldUploadBySampling ");
    paramString1.append(paramString2);
    paramString1.append(",  shouldUpload=");
    paramString1.append(bool);
    paramString1.append(", sample=");
    paramString1.append(l1);
    paramString1.append(", val=");
    paramString1.append(l2);
    p.a("OneTrackLocalImp", paramString1.toString());
    return bool ^ true;
  }
  
  public void a(int paramInt)
  {
    i.a(new ak(this, paramInt));
  }
  
  /* Error */
  public void a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 70	org/json/JSONObject
    //   5: astore 4
    //   7: aload 4
    //   9: aload_2
    //   10: invokespecial 272	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   13: aload 4
    //   15: ldc_w 274
    //   18: invokevirtual 278	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   21: astore 5
    //   23: aload 4
    //   25: ldc_w 280
    //   28: invokevirtual 278	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   31: astore 6
    //   33: goto +67 -> 100
    //   36: astore 6
    //   38: goto +20 -> 58
    //   41: astore 6
    //   43: aconst_null
    //   44: astore 5
    //   46: goto +12 -> 58
    //   49: astore 6
    //   51: aconst_null
    //   52: astore 4
    //   54: aload 4
    //   56: astore 5
    //   58: new 76	java/lang/StringBuilder
    //   61: dup
    //   62: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   65: astore 7
    //   67: aload 7
    //   69: ldc_w 282
    //   72: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: pop
    //   76: aload 7
    //   78: aload 6
    //   80: invokevirtual 285	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   83: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: pop
    //   87: ldc 10
    //   89: aload 7
    //   91: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   94: invokestatic 56	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   97: aload_3
    //   98: astore 6
    //   100: aload_0
    //   101: aload 5
    //   103: invokespecial 287	com/xiaomi/onetrack/api/aj:a	(Lorg/json/JSONObject;)Z
    //   106: istore 8
    //   108: aload_0
    //   109: getfield 33	com/xiaomi/onetrack/api/aj:e	Lcom/xiaomi/onetrack/util/v;
    //   112: astore_3
    //   113: aload_3
    //   114: ifnull +25 -> 139
    //   117: aload_3
    //   118: aload_1
    //   119: invokevirtual 290	com/xiaomi/onetrack/util/v:a	(Ljava/lang/String;)Z
    //   122: ifne +17 -> 139
    //   125: iload 8
    //   127: ifne +12 -> 139
    //   130: ldc 10
    //   132: ldc_w 292
    //   135: invokestatic 56	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   138: return
    //   139: aload_0
    //   140: aload_1
    //   141: aload_2
    //   142: invokevirtual 294	com/xiaomi/onetrack/api/aj:b	(Ljava/lang/String;Ljava/lang/String;)Z
    //   145: ifne +4 -> 149
    //   148: return
    //   149: invokestatic 298	com/xiaomi/onetrack/c/i:b	()Z
    //   152: ifne +9 -> 161
    //   155: aload_1
    //   156: aload_2
    //   157: invokestatic 299	com/xiaomi/onetrack/c/i:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   160: return
    //   161: aload_0
    //   162: invokestatic 302	com/xiaomi/onetrack/c/i:a	(Lcom/xiaomi/onetrack/api/e;)V
    //   165: getstatic 305	com/xiaomi/onetrack/util/p:a	Z
    //   168: ifeq +44 -> 212
    //   171: aload_1
    //   172: ldc_w 307
    //   175: invokevirtual 310	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   178: ifne +34 -> 212
    //   181: new 76	java/lang/StringBuilder
    //   184: dup
    //   185: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   188: astore_3
    //   189: aload_3
    //   190: ldc_w 312
    //   193: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: pop
    //   197: aload_3
    //   198: aload_2
    //   199: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: pop
    //   203: ldc 10
    //   205: aload_3
    //   206: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   209: invokestatic 56	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   212: iload 8
    //   214: ifeq +13 -> 227
    //   217: aload_0
    //   218: getfield 31	com/xiaomi/onetrack/api/aj:d	Lcom/xiaomi/onetrack/Configuration;
    //   221: invokevirtual 46	com/xiaomi/onetrack/Configuration:getAdEventAppId	()Ljava/lang/String;
    //   224: invokestatic 316	com/xiaomi/onetrack/b/a:a	(Ljava/lang/String;)V
    //   227: aload_0
    //   228: getfield 31	com/xiaomi/onetrack/api/aj:d	Lcom/xiaomi/onetrack/Configuration;
    //   231: invokevirtual 43	com/xiaomi/onetrack/Configuration:getAppId	()Ljava/lang/String;
    //   234: invokestatic 316	com/xiaomi/onetrack/b/a:a	(Ljava/lang/String;)V
    //   237: aload_0
    //   238: aload_1
    //   239: aload 4
    //   241: aload 5
    //   243: aload 6
    //   245: iload 8
    //   247: invokespecial 318	com/xiaomi/onetrack/api/aj:a	(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    //   250: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	251	0	this	aj
    //   0	251	1	paramString1	String
    //   0	251	2	paramString2	String
    //   1	205	3	localObject1	Object
    //   5	235	4	localJSONObject1	JSONObject
    //   21	221	5	localJSONObject2	JSONObject
    //   31	1	6	localJSONObject3	JSONObject
    //   36	1	6	localJSONException1	org.json.JSONException
    //   41	1	6	localJSONException2	org.json.JSONException
    //   49	30	6	localJSONException3	org.json.JSONException
    //   98	146	6	localObject2	Object
    //   65	25	7	localStringBuilder	StringBuilder
    //   106	140	8	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   23	33	36	org/json/JSONException
    //   13	23	41	org/json/JSONException
    //   2	13	49	org/json/JSONException
  }
  
  public boolean b(String paramString1, String paramString2)
  {
    if ((!OneTrack.isDisable()) && (!OneTrack.isUseSystemNetTrafficOnly()))
    {
      int i;
      if ((paramString1 != null) && (paramString1.equals("onetrack_bug_report"))) {
        i = 1;
      } else {
        i = 0;
      }
      if ((i == 0) && (paramString2 != null) && (paramString2.length() * 2 > 102400))
      {
        p.a("OneTrackLocalImp", "Event size exceed limitation!");
        return false;
      }
      return true;
    }
    p.a("OneTrackLocalImp", "Tracking data is disabled or onetrack use system net traffic only, skip it.");
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.aj
 * JD-Core Version:    0.7.0.1
 */