package com.android.calendar.common;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.Keep;
import com.miui.calendar.util.a;
import com.miui.calendar.util.b;
import com.miui.calendar.util.i;
import com.miui.calendar.util.x;
import com.miui.calendar.util.z;
import com.miui.calendar.web.d;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

@Keep
public class ActionSchema
  implements Comparable<ActionSchema>
{
  public static final String EXTRA_CLASS_NAME = "extra_class_name";
  public static final String EXTRA_DATA = "extra_data";
  public static final String EXTRA_PACKAGE_NAME = "extra_package_name";
  private static final String TAG = "Cal:D:ActionSchema";
  public static final String URL_TO_MARKET = "mimarket://details?back=true&ref=calendar&startDownload=%s&id=%s";
  public String actionName;
  public ParamsSchema actionParams;
  
  private void addMiuiAppExtras(Intent paramIntent)
  {
    if (paramIntent != null)
    {
      paramIntent.putExtra("extra_data", this.actionParams.data);
      paramIntent.putExtra("extra_package_name", this.actionParams.packageName);
      paramIntent.putExtra("extra_class_name", this.actionParams.packageClass);
    }
  }
  
  private static void addThirdAppDoubleExtras(Intent paramIntent, String paramString1, String paramString2)
  {
    if (paramString2.contains(","))
    {
      ArrayList localArrayList = new ArrayList();
      paramString2 = paramString2.split(",");
      int i = paramString2.length;
      for (int j = 0; j < i; j++) {
        localArrayList.add(Double.valueOf(paramString2[j]));
      }
      paramIntent.putExtra(paramString1, localArrayList);
    }
    else
    {
      paramIntent.putExtra(paramString1, Double.valueOf(paramString2));
    }
  }
  
  public static void addThirdAppExtras(Intent paramIntent, String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      String[] arrayOfString = paramString.split(";");
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
      {
        Object localObject = arrayOfString[j].split(":");
        if ((localObject != null) && (localObject.length >= 2))
        {
          String str1 = localObject[0].trim();
          String str2 = localObject[1].trim();
          if (localObject.length >= 3) {
            paramString = localObject[2].trim();
          } else {
            paramString = "string";
          }
          if (localObject.length >= 4) {
            localObject = localObject[3].trim();
          } else {
            localObject = "";
          }
          if (TextUtils.equals(paramString, "string")) {
            addThirdAppStringExtras(paramIntent, str1, str2);
          } else if (TextUtils.equals(paramString, "int")) {
            addThirdAppIntExtras(paramIntent, str1, str2);
          } else if (TextUtils.equals(paramString, "long")) {
            addThirdAppLongExtras(paramIntent, str1, str2);
          } else if (TextUtils.equals(paramString, "double")) {
            addThirdAppDoubleExtras(paramIntent, str1, str2);
          } else if (TextUtils.equals(paramString, "json")) {
            addThirdAppJsonExtras(paramIntent, str1, str2, (String)localObject);
          }
        }
      }
    }
  }
  
  private static void addThirdAppIntExtras(Intent paramIntent, String paramString1, String paramString2)
  {
    if (paramString2.contains(","))
    {
      ArrayList localArrayList = new ArrayList();
      paramString2 = paramString2.split(",");
      int i = paramString2.length;
      for (int j = 0; j < i; j++) {
        localArrayList.add(Integer.valueOf(paramString2[j]));
      }
      paramIntent.putExtra(paramString1, localArrayList);
    }
    else
    {
      paramIntent.putExtra(paramString1, Integer.valueOf(paramString2));
    }
  }
  
  private static void addThirdAppJsonExtras(Intent paramIntent, String paramString1, String paramString2, String paramString3)
  {
    String str = paramString2;
    if (TextUtils.equals(paramString3, "base64")) {
      str = new String(Base64.decode(paramString2.getBytes(), 0));
    }
    paramIntent.putExtra(paramString1, str);
  }
  
  private static void addThirdAppLongExtras(Intent paramIntent, String paramString1, String paramString2)
  {
    if (paramString2.contains(","))
    {
      ArrayList localArrayList = new ArrayList();
      paramString2 = paramString2.split(",");
      int i = paramString2.length;
      for (int j = 0; j < i; j++) {
        localArrayList.add(Long.valueOf(paramString2[j]));
      }
      paramIntent.putExtra(paramString1, localArrayList);
    }
    else
    {
      paramIntent.putExtra(paramString1, Long.valueOf(paramString2));
    }
  }
  
  private static void addThirdAppStringExtras(Intent paramIntent, String paramString1, String paramString2)
  {
    if (paramString2.contains(","))
    {
      ArrayList localArrayList = new ArrayList();
      paramString2 = paramString2.split(",");
      int i = paramString2.length;
      for (int j = 0; j < i; j++) {
        localArrayList.add(paramString2[j]);
      }
      paramIntent.putExtra(paramString1, localArrayList);
    }
    else
    {
      paramIntent.putExtra(paramString1, paramString2);
    }
  }
  
  private String appendWebUrlParams(String paramString, Map<String, String> paramMap)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    if (paramMap != null)
    {
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        paramString = (Map.Entry)paramMap.next();
        if (localStringBuilder.indexOf("?") == -1) {
          localStringBuilder.append('?');
        } else {
          localStringBuilder.append('&');
        }
        try
        {
          localStringBuilder.append((String)paramString.getKey());
          localStringBuilder.append('=');
          if (TextUtils.isEmpty((CharSequence)paramString.getValue())) {
            paramString = "";
          } else {
            paramString = URLEncoder.encode((String)paramString.getValue(), "utf-8");
          }
          localStringBuilder.append(paramString);
        }
        catch (UnsupportedEncodingException paramString)
        {
          localStringBuilder.deleteCharAt(localStringBuilder.length() - 1);
          z.d("Cal:D:ActionSchema", "appendWebUrlParams()", paramString);
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  public static Intent getIntentToMarket(String paramString, boolean paramBoolean)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("getIntentToMarket(): packageName:");
    ((StringBuilder)localObject).append(paramString);
    z.a("Cal:D:ActionSchema", ((StringBuilder)localObject).toString());
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    localObject = new Intent("android.intent.action.VIEW");
    ((Intent)localObject).setData(Uri.parse(String.format("mimarket://details?back=true&ref=calendar&startDownload=%s&id=%s", new Object[] { String.valueOf(paramBoolean), paramString })));
    return localObject;
  }
  
  public int compareTo(ActionSchema paramActionSchema)
  {
    HashMap localHashMap = b.a;
    if ((localHashMap.containsKey(paramActionSchema.actionName)) && (localHashMap.containsKey(this.actionName))) {
      return ((Integer)localHashMap.get(paramActionSchema.actionName)).intValue() - ((Integer)localHashMap.get(this.actionName)).intValue();
    }
    if (localHashMap.containsKey(this.actionName)) {
      return -1;
    }
    if (localHashMap.containsKey(paramActionSchema.actionName)) {
      return 1;
    }
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramObject != null)
    {
      bool2 = bool1;
      if ((paramObject instanceof ActionSchema))
      {
        paramObject = (ActionSchema)paramObject;
        bool2 = bool1;
        if (TextUtils.equals(paramObject.actionName, this.actionName))
        {
          paramObject = paramObject.actionParams;
          if (paramObject == null)
          {
            bool2 = bool1;
            if (this.actionParams != null) {}
          }
          else if (paramObject != null)
          {
            bool2 = bool1;
            if (this.actionParams == null) {}
          }
          else
          {
            ParamsSchema localParamsSchema = this.actionParams;
            if (paramObject != localParamsSchema)
            {
              bool2 = bool1;
              if (!paramObject.equals(localParamsSchema)) {}
            }
            else
            {
              bool2 = true;
            }
          }
        }
      }
    }
    return bool2;
  }
  
  public Intent getCallThirdResolvedIntent(Context paramContext, Map<String, String> paramMap)
  {
    Intent localIntent = new Intent();
    localIntent.setAction(this.actionParams.action);
    if ((!TextUtils.isEmpty(this.actionParams.packageName)) && (!TextUtils.isEmpty(this.actionParams.packageClass)))
    {
      ParamsSchema localParamsSchema = this.actionParams;
      localIntent.setComponent(new ComponentName(localParamsSchema.packageName, localParamsSchema.packageClass));
    }
    else if (!TextUtils.isEmpty(this.actionParams.packageName))
    {
      localIntent.setPackage(this.actionParams.packageName);
    }
    if (!TextUtils.isEmpty(this.actionParams.data)) {
      localIntent.setData(Uri.parse(appendWebUrlParams(this.actionParams.data, paramMap)));
    }
    addThirdAppExtras(localIntent, this.actionParams.extra);
    addMiuiAppExtras(localIntent);
    if ((!i.c(paramContext, localIntent)) && (!i.b(paramContext, localIntent))) {
      return null;
    }
    return localIntent;
  }
  
  public boolean sendIntent(Context paramContext)
  {
    Intent localIntent = toIntent(paramContext);
    if (localIntent == null) {
      return false;
    }
    new a(localIntent).a(paramContext);
    return true;
  }
  
  public boolean sendIntentForDeepLink(Context paramContext)
  {
    Object localObject = this.actionParams.packageName;
    if ((!TextUtils.isEmpty((CharSequence)localObject)) && (!Utils.i0(paramContext, (String)localObject))) {
      localObject = new a(getIntentToMarket((String)localObject, false));
    } else {
      localObject = new a(toIntent(paramContext));
    }
    if (((a)localObject).a == null) {
      return false;
    }
    ((a)localObject).a(paramContext);
    return true;
  }
  
  public Intent toIntent(Context paramContext)
  {
    return toIntent(paramContext, null);
  }
  
  public Intent toIntent(Context paramContext, Map<String, String> paramMap)
  {
    if ("callThirdApp".equals(this.actionName)) {
      return getCallThirdResolvedIntent(paramContext, paramMap);
    }
    if ("callWebView".equals(this.actionName))
    {
      paramMap = appendWebUrlParams(this.actionParams.url, paramMap);
      if (!TextUtils.isEmpty(paramMap)) {
        return d.d(paramContext, paramMap);
      }
    }
    paramContext = new StringBuilder();
    paramContext.append("actionParams: ");
    paramContext.append(x.c(this.actionParams));
    z.a("Cal:D:ActionSchema", paramContext.toString());
    return null;
  }
  
  @Keep
  public static class ParamsSchema
  {
    public String action;
    public String data;
    public String dotTag;
    public String downloadPackage;
    public String extra;
    public String packageClass;
    public String packageName;
    public String type;
    public String url;
    
    public boolean equals(Object paramObject)
    {
      boolean bool1 = false;
      boolean bool2 = bool1;
      if (paramObject != null)
      {
        bool2 = bool1;
        if ((paramObject instanceof ParamsSchema))
        {
          paramObject = (ParamsSchema)paramObject;
          bool2 = bool1;
          if (TextUtils.equals(paramObject.url, this.url))
          {
            bool2 = bool1;
            if (TextUtils.equals(paramObject.action, this.action))
            {
              bool2 = bool1;
              if (TextUtils.equals(paramObject.data, this.data))
              {
                bool2 = bool1;
                if (TextUtils.equals(paramObject.packageName, this.packageName))
                {
                  bool2 = bool1;
                  if (TextUtils.equals(paramObject.packageClass, this.packageClass))
                  {
                    bool2 = bool1;
                    if (TextUtils.equals(paramObject.type, this.type))
                    {
                      bool2 = bool1;
                      if (TextUtils.equals(paramObject.extra, this.extra))
                      {
                        bool2 = bool1;
                        if (TextUtils.equals(paramObject.downloadPackage, this.downloadPackage)) {
                          bool2 = true;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      return bool2;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.ActionSchema
 * JD-Core Version:    0.7.0.1
 */