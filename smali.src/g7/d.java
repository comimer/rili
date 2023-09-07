package g7;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.xiaomi.phonenum.bean.Error;
import com.xiaomi.phonenum.data.AccountCertification;
import com.xiaomi.phonenum.data.AccountCertification.Source;
import com.xiaomi.phonenum.obtain.PhoneException;
import f7.d.b;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class d
{
  private static volatile d e;
  private final Context a;
  private final h7.b b;
  private final f7.c c;
  private final e d;
  
  private d(Context paramContext)
  {
    this.a = paramContext;
    this.b = h7.a.i(paramContext);
    b.a locala = new b.a(paramContext);
    this.c = locala;
    paramContext = new a(locala);
    this.d = paramContext;
    paramContext.b(new c(locala));
  }
  
  public static d a(Context paramContext)
  {
    if (e == null) {
      try
      {
        if (e == null)
        {
          d locald = new g7/d;
          locald.<init>(paramContext.getApplicationContext());
          e = locald;
        }
      }
      finally {}
    }
    return e;
  }
  
  private String b()
  {
    try
    {
      InetAddress localInetAddress;
      do
      {
        localObject1 = NetworkInterface.getNetworkInterfaces();
        Object localObject2;
        while (!((Enumeration)localObject2).hasMoreElements())
        {
          do
          {
            if (!((Enumeration)localObject1).hasMoreElements()) {
              break;
            }
            localObject2 = (NetworkInterface)((Enumeration)localObject1).nextElement();
          } while (((NetworkInterface)localObject2).getName().toLowerCase().contains("wlan"));
          localObject2 = ((NetworkInterface)localObject2).getInetAddresses();
        }
        localInetAddress = (InetAddress)((Enumeration)localObject2).nextElement();
      } while ((localInetAddress.isLoopbackAddress()) || (!(localInetAddress instanceof Inet4Address)));
      Object localObject1 = localInetAddress.getHostAddress();
      return localObject1;
    }
    catch (Exception localException)
    {
      com.xiaomi.accountsdk.utils.b.h("ObtainHandler", "get mobile ip failed", localException);
    }
    return "";
  }
  
  private String c(int paramInt, String paramString1, String paramString2, String paramString3)
    throws PhoneException, IOException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("PhoneNumberRequest#TraceId=");
    localStringBuilder.append(paramString1);
    com.xiaomi.accountsdk.utils.b.g("ObtainHandler", localStringBuilder.toString());
    paramString1 = i(paramInt, paramString1, "data", paramString2, paramString3);
    while (!d(paramString1)) {
      try
      {
        paramString1 = this.d.a(paramInt, paramString1.b);
      }
      catch (JSONException paramString1)
      {
        throw new PhoneException(Error.JSON, "getPhoneNumberConfig parse response failed", paramString1);
      }
    }
    if (!TextUtils.isEmpty(paramString1.b)) {
      return paramString1.b;
    }
    throw new PhoneException(Error.UNKNOW, "response with empty body");
  }
  
  private boolean d(f7.e parame)
    throws PhoneException, IOException
  {
    if ((parame != null) && (parame.a == 200) && (parame.b != null)) {
      try
      {
        localObject = new org/json/JSONObject;
        ((JSONObject)localObject).<init>(parame.b);
        int i = ((JSONObject)localObject).getInt("code");
        if (i == 0) {
          return "phoneNumber".equals(((JSONObject)localObject).getString("result"));
        }
        parame = new com/xiaomi/phonenum/obtain/PhoneException;
        parame.<init>(Error.codeToError(i), ((JSONObject)localObject).optString("desc"));
        throw parame;
      }
      catch (JSONException parame)
      {
        throw new PhoneException(Error.JSON, "isPhoneResponse parse failed", parame);
      }
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("getInNetTime ObtainStrategy response:");
    ((StringBuilder)localObject).append(parame);
    throw new IOException(((StringBuilder)localObject).toString());
  }
  
  private String e(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Android/");
    localStringBuilder.append(Build.VERSION.RELEASE);
    localStringBuilder.append(" SDK_INT/");
    localStringBuilder.append(Build.VERSION.SDK_INT);
    localStringBuilder.append(" BRAND/");
    localStringBuilder.append(Build.BRAND);
    localStringBuilder.append(" PRODUCT/");
    localStringBuilder.append(Build.PRODUCT);
    localStringBuilder.append(" MODEL/");
    localStringBuilder.append(Build.MODEL);
    localStringBuilder.append(" INCREMENTAL/");
    localStringBuilder.append(Build.VERSION.INCREMENTAL);
    localStringBuilder.append(" APP/");
    localStringBuilder.append(paramContext.getPackageName());
    return localStringBuilder.toString();
  }
  
  private AccountCertification g(String paramString, int paramInt)
    throws PhoneException
  {
    try
    {
      Object localObject1 = new org/json/JSONObject;
      ((JSONObject)localObject1).<init>(paramString);
      paramString = ((JSONObject)localObject1).getJSONObject("phoneNumber");
      String str1 = paramString.getString("numberHash");
      String str2 = paramString.getString("token");
      Object localObject2 = null;
      String str3 = ((JSONObject)localObject1).optString("operatorType", null);
      localObject1 = ((JSONObject)localObject1).optString("operatorLink", null);
      paramString = localObject2;
      if (!TextUtils.isEmpty(str3))
      {
        paramString = localObject2;
        if (!TextUtils.isEmpty((CharSequence)localObject1))
        {
          paramString = new com/xiaomi/phonenum/data/AccountCertification$Source;
          paramString.<init>(str3, (String)localObject1);
        }
      }
      paramString = new AccountCertification(paramInt, str1, str2, paramString);
      return paramString;
    }
    catch (JSONException paramString)
    {
      throw new PhoneException(Error.JSON, "parseAccountCertificationResult failed", paramString);
    }
  }
  
  private void h(Map<String, String> paramMap, String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null)) {
      paramMap.put(paramString1, paramString2);
    }
  }
  
  private f7.e i(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4)
    throws IOException
  {
    HashMap localHashMap = new HashMap();
    e7.a locala = this.b.d(paramInt);
    h(localHashMap, "iccid", locala.a);
    h(localHashMap, "imsi", locala.b);
    h(localHashMap, "simMccmnc", locala.c);
    h(localHashMap, "networkMccmnc", this.b.a(paramInt));
    h(localHashMap, "sid", paramString3);
    h(localHashMap, "imei", this.b.g());
    h(localHashMap, "deviceId", this.b.c());
    paramString3 = new StringBuilder();
    paramString3.append("");
    paramString3.append(this.b.b(paramInt));
    h(localHashMap, "phoneType", paramString3.toString());
    h(localHashMap, "traceId", paramString1);
    h(localHashMap, "versionCode", "6");
    h(localHashMap, "phoneLevel", paramString2);
    h(localHashMap, "pip", b());
    h(localHashMap, "packageName", paramString4);
    paramString3 = new d.b().h(d7.a.c).f(localHashMap).g(e(this.a)).b();
    paramString2 = new StringBuilder();
    paramString2.append("getCloudControl traceId=");
    paramString2.append(paramString1);
    com.xiaomi.accountsdk.utils.b.g("ObtainHandler", paramString2.toString());
    return this.c.b().a(paramString3);
  }
  
  public AccountCertification f(int paramInt, String paramString1, String paramString2)
    throws PhoneException, IOException
  {
    return g(c(paramInt, com.xiaomi.phonenum.utils.d.a(), paramString1, paramString2), paramInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g7.d
 * JD-Core Version:    0.7.0.1
 */