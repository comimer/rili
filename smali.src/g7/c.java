package g7;

import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.phonenum.bean.HttpError;
import f7.d;
import f7.d.b;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class c
  extends e
{
  private f7.c b;
  
  public c(f7.c paramc)
  {
    this.b = paramc;
  }
  
  private String c(String paramString)
    throws UnsupportedEncodingException
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    return Base64.encodeToString(paramString.getBytes("utf-8"), 10);
  }
  
  private f7.e d(int paramInt, d paramd, String paramString)
    throws IOException
  {
    return e(paramString, g(paramInt, paramd));
  }
  
  private f7.e e(String paramString, f7.e parame)
    throws IOException
  {
    HashMap localHashMap = new HashMap();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("");
    localStringBuilder.append(parame.f);
    localHashMap.put("requestTime", localStringBuilder.toString());
    localStringBuilder = new StringBuilder();
    localStringBuilder.append("");
    localStringBuilder.append(parame.a);
    localHashMap.put("code", localStringBuilder.toString());
    localHashMap.put("body", c(parame.b));
    localHashMap.put("headers", c(f(parame.c)));
    paramString = new d.b().h(paramString).d(localHashMap).b();
    return this.b.b().a(paramString);
  }
  
  private String f(Map<String, List<String>> paramMap)
  {
    if (paramMap == null) {
      return null;
    }
    try
    {
      paramMap = com.xiaomi.phonenum.utils.a.b(paramMap);
      if (paramMap != null)
      {
        paramMap = paramMap.toString().replace("\\", "");
        return paramMap;
      }
    }
    catch (JSONException paramMap)
    {
      b.h("HttpProxyParser", "joinToJson", paramMap);
    }
    return null;
  }
  
  private f7.e g(int paramInt, d paramd)
  {
    Object localObject = this.b.b();
    try
    {
      paramd = ((f7.a)localObject).a(paramd);
      localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      ((StringBuilder)localObject).append("response ");
      ((StringBuilder)localObject).append(paramd);
      b.g("HttpProxyParser", ((StringBuilder)localObject).toString());
    }
    catch (IOException paramd)
    {
      b.h("HttpProxyParser", "request ", paramd);
      paramd = HttpError.CELLULAR_NETWORK_IO_EXCEPTION.result();
    }
    return paramd;
  }
  
  private d h(JSONObject paramJSONObject)
    throws JSONException
  {
    String str = paramJSONObject.getString("url");
    int i = paramJSONObject.optInt("followRedirects");
    boolean bool = true;
    if (i != 1) {
      bool = false;
    }
    Map localMap = com.xiaomi.phonenum.utils.a.d(paramJSONObject.optJSONObject("headers"));
    paramJSONObject = com.xiaomi.phonenum.utils.a.d(paramJSONObject.optJSONObject("formBody"));
    return new d.b().h(str).e(localMap).d(paramJSONObject).c(bool).b();
  }
  
  public f7.e a(int paramInt, String paramString)
    throws IOException, JSONException
  {
    JSONObject localJSONObject = new JSONObject(paramString);
    if ("http".equals(localJSONObject.getString("result")))
    {
      localJSONObject = localJSONObject.getJSONObject("httpRequest");
      paramString = localJSONObject.getString("followup");
      return d(paramInt, h(localJSONObject.getJSONObject("request")), paramString);
    }
    e locale = this.a;
    if (locale != null) {
      return locale.a(paramInt, paramString);
    }
    paramString = new StringBuilder();
    paramString.append("result not support");
    paramString.append(localJSONObject);
    throw new JSONException(paramString.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g7.c
 * JD-Core Version:    0.7.0.1
 */