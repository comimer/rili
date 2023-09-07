package com.xiaomi.passport.ui.settings;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.xiaomi.accountsdk.account.XMPassport;
import com.xiaomi.accountsdk.account.data.Gender;
import com.xiaomi.accountsdk.account.data.c;
import com.xiaomi.accountsdk.account.data.f;
import com.xiaomi.accountsdk.account.exception.InvalidParameterException;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.CipherException;
import com.xiaomi.accountsdk.request.InvalidResponseException;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import n5.g;

public class e
  extends AsyncTask<Void, Void, c>
{
  private String a;
  private Gender b;
  private b c;
  private WeakReference<Activity> d;
  
  public e(Activity paramActivity, String paramString, Gender paramGender, b paramb)
  {
    this.a = paramString;
    this.b = paramGender;
    this.c = paramb;
    this.d = new WeakReference(paramActivity);
  }
  
  protected c a(Void... paramVarArgs)
  {
    paramVarArgs = (Activity)this.d.get();
    int i = 5;
    Object localObject = Integer.valueOf(5);
    if (paramVarArgs == null)
    {
      com.xiaomi.accountsdk.utils.b.g("UploadMiUserProfileTask", "context is null");
      return new c(null, (Integer)localObject, null);
    }
    paramVarArgs = paramVarArgs.getApplicationContext();
    com.xiaomi.passport.data.a locala = com.xiaomi.passport.data.a.h(paramVarArgs, "passportapi");
    if (locala == null)
    {
      com.xiaomi.accountsdk.utils.b.g("UploadMiUserProfileTask", "null passportInfo");
      return new c(null, (Integer)localObject, null);
    }
    int j = 0;
    int k = 0;
    for (;;)
    {
      if (k < 2) {
        try
        {
          localObject = new com/xiaomi/accountsdk/account/data/f;
          ((f)localObject).<init>(locala.e(), this.a, null, this.b);
          XMPassport.G(locala, (f)localObject);
          i = j;
        }
        catch (InvalidParameterException paramVarArgs)
        {
          com.xiaomi.accountsdk.utils.b.h("UploadMiUserProfileTask", "UploadUserInfoTask error", paramVarArgs);
          i = 16;
        }
        catch (CipherException paramVarArgs)
        {
          com.xiaomi.accountsdk.utils.b.h("UploadMiUserProfileTask", "UploadUserInfoTask error", paramVarArgs);
          i = 3;
        }
        catch (InvalidResponseException paramVarArgs)
        {
          do
          {
            com.xiaomi.accountsdk.utils.b.h("UploadMiUserProfileTask", "UploadUserInfoTask error", paramVarArgs);
            paramVarArgs = paramVarArgs.getServerError();
          } while (paramVarArgs == null);
          return new c(paramVarArgs, Integer.valueOf(3), null);
        }
        catch (AccessDeniedException paramVarArgs)
        {
          com.xiaomi.accountsdk.utils.b.h("UploadMiUserProfileTask", "UploadUserInfoTask error", paramVarArgs);
          i = 4;
        }
        catch (AuthenticationFailureException localAuthenticationFailureException)
        {
          com.xiaomi.accountsdk.utils.b.h("UploadMiUserProfileTask", "UploadUserInfoTask error", localAuthenticationFailureException);
          locala.i(paramVarArgs);
          k++;
          i = 1;
        }
        catch (IOException paramVarArgs)
        {
          com.xiaomi.accountsdk.utils.b.h("UploadMiUserProfileTask", "UploadUserInfoTask error", paramVarArgs);
          i = 2;
        }
      }
    }
    return new c(null, Integer.valueOf(i), null);
  }
  
  protected void b(c paramc)
  {
    super.onPostExecute(paramc);
    Object localObject = new a(c.a(paramc).intValue());
    if (((a)localObject).b())
    {
      int i;
      if ((c.a(paramc).intValue() == 16) && (!TextUtils.isEmpty(this.a))) {
        i = g.j;
      } else {
        i = ((a)localObject).a();
      }
      localObject = (Activity)this.d.get();
      if ((localObject != null) && (!((Activity)localObject).isFinishing()))
      {
        paramc = paramc.a;
        if (paramc != null)
        {
          paramc = a7.b.d((Context)localObject, paramc);
          if (paramc != null) {
            paramc.show();
          }
        }
        else
        {
          z6.a.b((Context)localObject, i, 0);
        }
      }
    }
    else
    {
      this.c.a(this.a, this.b);
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(String paramString, Gender paramGender);
  }
  
  class c
  {
    public PassThroughErrorInfo a;
    private Integer b;
    
    private c(PassThroughErrorInfo paramPassThroughErrorInfo, Integer paramInteger)
    {
      this.a = paramPassThroughErrorInfo;
      this.b = paramInteger;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.settings.e
 * JD-Core Version:    0.7.0.1
 */