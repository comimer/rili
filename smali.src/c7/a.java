package c7;

import a6.l;
import android.content.Context;
import com.xiaomi.accountsdk.account.XMPassport;
import com.xiaomi.accountsdk.account.d;
import com.xiaomi.accountsdk.account.data.ActivatorPhoneInfo;
import com.xiaomi.accountsdk.account.data.RegisterUserInfo;
import com.xiaomi.accountsdk.account.data.RegisterUserInfo.RegisterStatus;
import com.xiaomi.accountsdk.account.data.RegisterUserInfo.b;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.InvalidResponseException;
import com.xiaomi.accountsdk.utils.EasyMap;
import com.xiaomi.accountsdk.utils.b;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

public class a
{
  private static String a;
  
  static
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(d.d);
    localStringBuilder.append("/recyclePhoneCheck");
    a = localStringBuilder.toString();
  }
  
  private static int a(RegisterUserInfo paramRegisterUserInfo, a parama)
  {
    String str = a;
    EasyMap localEasyMap = new EasyMap().easyPut("_json", "true");
    paramRegisterUserInfo = new EasyMap().easyPutOpt("ticketToken", paramRegisterUserInfo.ticketToken);
    if (parama != null)
    {
      localEasyMap.easyPutOpt("user", parama.a).easyPutOpt("ticket", parama.b);
      parama = parama.c;
      if (parama != null)
      {
        localEasyMap.easyPutOpt("userHash", parama.phoneHash);
        paramRegisterUserInfo.easyPutOpt("activatorToken", parama.activatorToken);
      }
    }
    try
    {
      paramRegisterUserInfo = l.j(str, localEasyMap, paramRegisterUserInfo, true);
      if (paramRegisterUserInfo != null)
      {
        parama = XMPassport.A(paramRegisterUserInfo);
        paramRegisterUserInfo = new org/json/JSONObject;
        paramRegisterUserInfo.<init>(parama);
        int i = paramRegisterUserInfo.getInt("code");
        parama = new java/lang/StringBuilder;
        parama.<init>();
        parama.append("code: ");
        parama.append(i);
        parama.append(", desc: ");
        parama.append(paramRegisterUserInfo.optString("description"));
        parama = parama.toString();
        if (i == 0) {
          return paramRegisterUserInfo.getJSONObject("data").getInt("status");
        }
        paramRegisterUserInfo = new com/xiaomi/accountsdk/request/InvalidResponseException;
        paramRegisterUserInfo.<init>(parama);
        throw paramRegisterUserInfo;
      }
      paramRegisterUserInfo = new com/xiaomi/accountsdk/request/InvalidResponseException;
      paramRegisterUserInfo.<init>("result content is null");
      throw paramRegisterUserInfo;
    }
    catch (JSONException paramRegisterUserInfo)
    {
      b.h("InNetDateController", "queryStatusFromServer", paramRegisterUserInfo);
    }
    catch (InvalidResponseException paramRegisterUserInfo)
    {
      b.h("InNetDateController", "queryStatusFromServer", paramRegisterUserInfo);
    }
    catch (AuthenticationFailureException paramRegisterUserInfo)
    {
      b.h("InNetDateController", "queryStatusFromServer", paramRegisterUserInfo);
    }
    catch (AccessDeniedException paramRegisterUserInfo)
    {
      b.h("InNetDateController", "queryStatusFromServer", paramRegisterUserInfo);
    }
    catch (IOException paramRegisterUserInfo)
    {
      b.h("InNetDateController", "queryStatusFromServer", paramRegisterUserInfo);
    }
    return RegisterUserInfo.RegisterStatus.STATUS_USED_POSSIBLY_RECYCLED.value;
  }
  
  public static RegisterUserInfo b(Context paramContext, RegisterUserInfo paramRegisterUserInfo, a parama, boolean paramBoolean)
  {
    int i = a(paramRegisterUserInfo, parama);
    return RegisterUserInfo.copyFrom(paramRegisterUserInfo).w(i).p();
  }
  
  public static class a
  {
    public final String a;
    public final String b;
    public final ActivatorPhoneInfo c;
    
    public a(String paramString1, String paramString2, ActivatorPhoneInfo paramActivatorPhoneInfo)
    {
      this.a = paramString1;
      this.b = paramString2;
      this.c = paramActivatorPhoneInfo;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c7.a
 * JD-Core Version:    0.7.0.1
 */