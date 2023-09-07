package b7;

import com.xiaomi.accountsdk.account.XMPassport;
import com.xiaomi.accountsdk.account.exception.InvalidPhoneNumException;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.InvalidResponseException;
import com.xiaomi.accountsdk.utils.EasyMap;
import com.xiaomi.accountsdk.utils.XMPassportUtil;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.passport.data.LoginPreference;
import com.xiaomi.passport.data.LoginPreference.PhoneLoginType;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

public class l
{
  public static LoginPreference a(String paramString1, String paramString2, String paramString3, String paramString4)
    throws AccessDeniedException, AuthenticationFailureException, IOException, InvalidResponseException, InvalidPhoneNumException
  {
    paramString1 = new EasyMap().easyPut("processType", paramString3).easyPut("sid", paramString4).easyPut("phone", paramString1).easyPutOpt("region", paramString2);
    paramString1 = a6.l.j(XMPassportUtil.a(n.a), paramString1, null, true);
    if (paramString1 != null)
    {
      paramString1 = XMPassport.A(paramString1);
      try
      {
        paramString4 = new org/json/JSONObject;
        paramString4.<init>(paramString1);
        int i = paramString4.getInt("code");
        paramString2 = paramString4.getString("description");
        paramString3 = new com/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;
        paramString3.<init>(paramString4);
        if (i != 0)
        {
          if (i != 70008)
          {
            paramString4 = new com/xiaomi/accountsdk/request/InvalidResponseException;
            paramString4.<init>(i, paramString2, paramString3);
            throw paramString4;
          }
          paramString3 = new com/xiaomi/accountsdk/account/exception/InvalidPhoneNumException;
          paramString3.<init>(paramString2);
          throw paramString3;
        }
        paramString2 = paramString4.getJSONObject("data");
        paramString2 = new LoginPreference(paramString2.optString("idcZone"), paramString2.optString("userRegion"), LoginPreference.PhoneLoginType.valueOf(paramString2.getString("type")));
        return paramString2;
      }
      catch (JSONException paramString2)
      {
        b.h("PhoneLoginPreferenceConfig", "realBody", paramString2);
        throw new InvalidResponseException(paramString1);
      }
    }
    throw new InvalidResponseException("result content is null");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b7.l
 * JD-Core Version:    0.7.0.1
 */