package com.xiaomi.passport;

import android.app.Application;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.account.privacy_data.master.PrivacyDataType;
import com.xiaomi.accountsdk.utils.CloudCoder;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.phonenum.utils.c;
import java.io.UnsupportedEncodingException;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class PassportUserEnvironment
{
  private String a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = Base64.encodeToString(paramString.getBytes("utf-8"), 10);
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      b.h("PassportUserEnvironment", "base64 failed: ", paramString);
    }
    return null;
  }
  
  private List<String> b(List<String> paramList)
  {
    if (paramList == null) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localArrayList.add(a((String)paramList.next()));
    }
    return localArrayList;
  }
  
  private LinkedList<Object> c(Application paramApplication)
  {
    String str1 = t(m());
    String str2 = t(e(paramApplication));
    List localList1 = v(g(50));
    String str3 = a(String.valueOf(k(paramApplication)));
    String str4 = a(Build.MODEL);
    String str5 = a(Build.SERIAL);
    String str6 = t(d(paramApplication));
    List localList2 = v(i(paramApplication));
    String str7 = t(f(paramApplication));
    String str8 = t("02:00:00:00:00:00");
    List localList3 = b(q(paramApplication));
    List localList4 = b(p(paramApplication));
    List localList5 = b(l(paramApplication));
    List localList6 = b(o(paramApplication));
    List localList7 = v(n());
    String str9 = a(s(paramApplication));
    paramApplication = new LinkedList();
    paramApplication.add(str1);
    paramApplication.add(str2);
    paramApplication.add(localList1);
    paramApplication.add(str3);
    paramApplication.add(str4);
    paramApplication.add(str5);
    paramApplication.add(str6);
    paramApplication.add(localList2);
    paramApplication.add(str7);
    paramApplication.add(str8);
    paramApplication.add(localList3);
    paramApplication.add(localList4);
    paramApplication.add(localList5);
    paramApplication.add(localList6);
    paramApplication.add(localList7);
    paramApplication.add(str9);
    return paramApplication;
  }
  
  private String d(Application paramApplication)
  {
    if (paramApplication == null) {
      return null;
    }
    return p5.a.c(paramApplication, PrivacyDataType.ANDROID_ID, new String[0]);
  }
  
  private String e(Application paramApplication)
  {
    if (paramApplication == null) {
      return null;
    }
    return p5.a.a(paramApplication, PrivacyDataType.BSSID, new String[0]);
  }
  
  private String f(Application paramApplication)
  {
    return z5.e.a(paramApplication);
  }
  
  private int k(Application paramApplication)
  {
    if (paramApplication == null) {
      return -1;
    }
    try
    {
      paramApplication = ((ConnectivityManager)paramApplication.getSystemService("connectivity")).getActiveNetworkInfo();
      if ((paramApplication != null) && (paramApplication.isConnected()))
      {
        int i = paramApplication.getType();
        return i;
      }
    }
    catch (SecurityException paramApplication)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("failed to getNetWorkType with SecurityException ");
      localStringBuilder.append(paramApplication.getMessage());
      b.g("PassportUserEnvironment", localStringBuilder.toString());
    }
    return -1;
  }
  
  private List<String> r(Application paramApplication, TelePhonyInfo paramTelePhonyInfo)
  {
    if (paramApplication == null) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    if (paramTelePhonyInfo == TelePhonyInfo.DEVICE_ID_LIST)
    {
      paramApplication = p5.a.c(paramApplication, PrivacyDataType.DEVICE_ID, new String[0]);
      if (paramApplication != null) {
        localArrayList.add(paramApplication);
      }
    }
    else
    {
      int i = h7.a.i(paramApplication).f();
      for (int j = 0; j < i; j++)
      {
        int k = c.a(paramApplication, j);
        if (k != -1)
        {
          int m = a.a[paramTelePhonyInfo.ordinal()];
          String str;
          if (m != 1)
          {
            if (m != 2)
            {
              if (m == 3) {
                str = p5.a.a(paramApplication, PrivacyDataType.IMSI, new String[] { String.valueOf(k) });
              } else {
                throw new IllegalStateException("not here");
              }
            }
            else {
              str = p5.a.a(paramApplication, PrivacyDataType.ICCID, new String[] { String.valueOf(k) });
            }
          }
          else {
            str = p5.a.a(paramApplication, PrivacyDataType.MCCMNC, new String[] { String.valueOf(k) });
          }
          if (str != null) {
            localArrayList.add(str);
          }
        }
      }
    }
    if (localArrayList.size() > 0) {
      return localArrayList;
    }
    return null;
  }
  
  private String t(String paramString)
  {
    return u(paramString, 6);
  }
  
  private String u(String paramString, int paramInt)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
    String str = CloudCoder.f(paramString);
    paramString = str;
    if (paramInt > 0) {
      if (paramInt > str.length()) {
        paramString = str;
      } else {
        paramString = str.substring(0, paramInt);
      }
    }
    return paramString;
  }
  
  private List<String> v(List<String> paramList)
  {
    if (paramList == null) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localArrayList.add(t((String)paramList.next()));
    }
    return localArrayList;
  }
  
  private static String w(List paramList)
  {
    if ((paramList != null) && (paramList.size() != 0)) {
      return TextUtils.join("#", paramList);
    }
    return "";
  }
  
  public List<String> g(int paramInt)
  {
    List localList1 = h();
    List localList2 = localList1;
    if (localList1 != null)
    {
      localList2 = localList1;
      if (localList1.size() > paramInt) {
        localList2 = localList1.subList(0, paramInt);
      }
    }
    return localList2;
  }
  
  public List<String> h()
  {
    Object localObject = com.xiaomi.accountsdk.account.e.b();
    if (localObject == null) {
      return null;
    }
    localObject = p5.a.a((Context)localObject, PrivacyDataType.CONFIGURED_SSIDS, new String[0]);
    if (TextUtils.isEmpty((CharSequence)localObject)) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    Collections.addAll(localArrayList, ((String)localObject).split("\n"));
    return localArrayList;
  }
  
  protected List<String> i(Application paramApplication)
  {
    return r(paramApplication, TelePhonyInfo.DEVICE_ID_LIST);
  }
  
  public String[] j(Application paramApplication)
  {
    paramApplication = c(paramApplication);
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramApplication.iterator();
    while (localIterator.hasNext())
    {
      paramApplication = localIterator.next();
      if (paramApplication == null)
      {
        paramApplication = "";
      }
      else if ((paramApplication instanceof List))
      {
        paramApplication = w((List)paramApplication);
      }
      else
      {
        if (!(paramApplication instanceof String)) {
          break label85;
        }
        paramApplication = (String)paramApplication;
      }
      localArrayList.add(paramApplication);
      continue;
      label85:
      throw new IllegalStateException("not here");
    }
    return (String[])localArrayList.toArray(new String[localArrayList.size()]);
  }
  
  protected List<String> l(Application paramApplication)
  {
    return null;
  }
  
  public String m()
  {
    Application localApplication = com.xiaomi.accountsdk.account.e.b();
    if (localApplication == null) {
      return null;
    }
    return p5.a.a(localApplication, PrivacyDataType.SSID, new String[0]);
  }
  
  public List<String> n()
  {
    return null;
  }
  
  protected List<String> o(Application paramApplication)
  {
    return r(paramApplication, TelePhonyInfo.OPERATOR);
  }
  
  protected List<String> p(Application paramApplication)
  {
    return r(paramApplication, TelePhonyInfo.SERIAL_NUMBER);
  }
  
  protected List<String> q(Application paramApplication)
  {
    return r(paramApplication, TelePhonyInfo.SUBSCRIBE_ID);
  }
  
  protected String s(Application paramApplication)
  {
    return p5.a.a(paramApplication, PrivacyDataType.BLUETOOTH_NAME, new String[0]);
  }
  
  public static enum TelePhonyInfo
  {
    String methodToGetValue;
    
    static
    {
      TelePhonyInfo localTelePhonyInfo1 = new TelePhonyInfo("SUBSCRIBE_ID", 0, "getSubscriberIdForSlot");
      SUBSCRIBE_ID = localTelePhonyInfo1;
      TelePhonyInfo localTelePhonyInfo2 = new TelePhonyInfo("SERIAL_NUMBER", 1, "getSimSerialNumberForSlot");
      SERIAL_NUMBER = localTelePhonyInfo2;
      TelePhonyInfo localTelePhonyInfo3 = new TelePhonyInfo("OPERATOR", 2, "getSimOperatorForSlot");
      OPERATOR = localTelePhonyInfo3;
      TelePhonyInfo localTelePhonyInfo4 = new TelePhonyInfo("DEVICE_ID_LIST", 3, "getDeviceIdList");
      DEVICE_ID_LIST = localTelePhonyInfo4;
      $VALUES = new TelePhonyInfo[] { localTelePhonyInfo1, localTelePhonyInfo2, localTelePhonyInfo3, localTelePhonyInfo4 };
    }
    
    private TelePhonyInfo(String paramString)
    {
      this.methodToGetValue = paramString;
    }
  }
  
  public static class b
  {
    private static final PassportUserEnvironment a;
    private static PassportUserEnvironment b;
    
    static
    {
      PassportUserEnvironment localPassportUserEnvironment = new PassportUserEnvironment();
      a = localPassportUserEnvironment;
      b = localPassportUserEnvironment;
    }
    
    public static PassportUserEnvironment a()
    {
      return b;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.PassportUserEnvironment
 * JD-Core Version:    0.7.0.1
 */