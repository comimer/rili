package s6;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.passport.f;
import com.xiaomi.passport.snscorelib.internal.entity.SNSBindParameter;
import com.xiaomi.passport.snscorelib.internal.entity.SNSLoginParameter.b;
import com.xiaomi.passport.snscorelib.internal.request.SNSRequest;
import com.xiaomi.passport.ui.data.PhoneAccount;
import com.xiaomi.phonenum.data.AccountCertification;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class p
  extends c
{
  public static volatile SNSBindParameter d;
  public static volatile o e;
  private String c;
  
  public p(String paramString)
  {
    super(paramString);
  }
  
  private String g(Context paramContext)
  {
    JSONObject localJSONObject = new JSONObject();
    if (!f.b())
    {
      paramContext = w6.b.a(paramContext, this.c, i7.b.c(new int[] { 0 }));
      if ((paramContext != null) && (!paramContext.isEmpty()))
      {
        paramContext = paramContext.iterator();
        while (paramContext.hasNext())
        {
          Object localObject = (PhoneAccount)paramContext.next();
          try
          {
            localObject = ((PhoneAccount)localObject).accountCertification;
            localJSONObject.putOpt(((AccountCertification)localObject).hashedPhoneNumber, ((AccountCertification)localObject).activatorToken);
          }
          catch (JSONException paramContext)
          {
            throw new IllegalStateException(paramContext);
          }
        }
      }
    }
    return localJSONObject.toString();
  }
  
  public static void i()
  {
    e = null;
  }
  
  public static void j()
  {
    d = null;
  }
  
  public static boolean k()
  {
    boolean bool;
    if (d != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private AccountInfo m(Context paramContext, q paramq)
    throws Throwable
  {
    return SNSRequest.e(new SNSLoginParameter.b().r(g(paramContext)).q(paramq.d).s(paramq.b).o(paramq.c).p());
  }
  
  private AccountInfo n(Context paramContext, r paramr)
    throws Throwable
  {
    return SNSRequest.d(new SNSLoginParameter.b().r(g(paramContext)).t(paramr.d).s(paramr.b).o(paramr.c).p());
  }
  
  protected AccountInfo d(Context paramContext, b paramb)
    throws Throwable
  {
    if ((paramb instanceof q)) {
      return m(paramContext, (q)paramb);
    }
    if ((paramb instanceof r)) {
      return n(paramContext, (r)paramb);
    }
    throw new IllegalStateException("not support originAuthCredential:$credential");
  }
  
  public abstract String f(Context paramContext);
  
  public int h()
  {
    return -100;
  }
  
  public void l(Activity paramActivity, int paramInt1, int paramInt2, Intent paramIntent) {}
  
  public abstract void o(Activity paramActivity);
  
  public void p(Activity paramActivity, String paramString1, String paramString2)
  {
    this.c = paramString1;
    o(paramActivity);
  }
  
  protected void q(Context paramContext, String paramString)
  {
    e = new q(this.b, f(paramContext), paramString, this.c);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s6.p
 * JD-Core Version:    0.7.0.1
 */