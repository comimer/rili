package com.xiaomi.passport.uicontroller;

import android.text.TextUtils;
import b7.l;
import com.xiaomi.accountsdk.account.XMPassport;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.accountsdk.account.data.PasswordLoginParams;
import com.xiaomi.accountsdk.account.data.PhoneTicketLoginParams;
import com.xiaomi.accountsdk.account.data.PhoneTicketLoginParams.b;
import com.xiaomi.accountsdk.account.data.PhoneTokenRegisterParams;
import com.xiaomi.accountsdk.account.data.RegisterUserInfo;
import com.xiaomi.accountsdk.account.data.RegisterUserInfo.RegisterStatus;
import com.xiaomi.accountsdk.account.data.Step2LoginParams;
import com.xiaomi.accountsdk.account.data.Step2LoginParams.b;
import com.xiaomi.accountsdk.account.data.d;
import com.xiaomi.accountsdk.account.exception.AccountException;
import com.xiaomi.accountsdk.account.exception.HttpException;
import com.xiaomi.accountsdk.account.exception.InvalidCredentialException;
import com.xiaomi.accountsdk.account.exception.InvalidParameterException;
import com.xiaomi.accountsdk.account.exception.InvalidPhoneNumException;
import com.xiaomi.accountsdk.account.exception.InvalidTzSignException;
import com.xiaomi.accountsdk.account.exception.InvalidUserNameException;
import com.xiaomi.accountsdk.account.exception.InvalidVerifyCodeException;
import com.xiaomi.accountsdk.account.exception.NeedCaptchaException;
import com.xiaomi.accountsdk.account.exception.NeedNotificationException;
import com.xiaomi.accountsdk.account.exception.NeedVerificationException;
import com.xiaomi.accountsdk.account.exception.PassportIOException;
import com.xiaomi.accountsdk.account.exception.ReachLimitException;
import com.xiaomi.accountsdk.account.exception.TokenExpiredException;
import com.xiaomi.accountsdk.account.exception.UserRestrictedException;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.InvalidResponseException;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.passport.PassportUserEnvironment;
import com.xiaomi.passport.PassportUserEnvironment.b;
import com.xiaomi.passport.data.LoginPreference;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

public class PhoneLoginController
{
  private static final ExecutorService b = ;
  private q a = new q();
  
  private boolean d(Throwable paramThrowable)
  {
    boolean bool;
    if ((paramThrowable instanceof AccountException)) {
      bool = ((AccountException)paramThrowable).isStsUrlRequestError;
    } else if ((paramThrowable instanceof HttpException)) {
      bool = ((HttpException)paramThrowable).isStsUrlRequestError;
    } else if ((paramThrowable instanceof PassportIOException)) {
      bool = ((PassportIOException)paramThrowable).isStsUrlRequestError;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static ErrorCode e(Throwable paramThrowable)
  {
    if ((paramThrowable instanceof InvalidResponseException)) {
      paramThrowable = ErrorCode.ERROR_SERVER;
    } else if ((paramThrowable instanceof IOException)) {
      paramThrowable = ErrorCode.ERROR_NETWORK;
    } else if ((paramThrowable instanceof AuthenticationFailureException)) {
      paramThrowable = ErrorCode.ERROR_AUTH_FAIL;
    } else if ((paramThrowable instanceof AccessDeniedException)) {
      paramThrowable = ErrorCode.ERROR_ACCESS_DENIED;
    } else if ((paramThrowable instanceof InvalidParameterException)) {
      paramThrowable = ErrorCode.ERROR_INVALID_PARAM;
    } else if ((paramThrowable instanceof InvalidUserNameException)) {
      paramThrowable = ErrorCode.ERROR_NON_EXIST_USER;
    } else if ((paramThrowable instanceof InvalidCredentialException)) {
      paramThrowable = ErrorCode.ERROR_PASSWORD;
    } else {
      paramThrowable = ErrorCode.ERROR_UNKNOWN;
    }
    return paramThrowable;
  }
  
  public static a<LoginPreference> f(String paramString1, final String paramString2, final String paramString3, final String paramString4, n paramn)
  {
    if (paramn == null) {
      paramn = null;
    } else {
      paramn = new c(paramn);
    }
    paramString1 = new a(new d(paramString2, paramString3, paramString4), paramn);
    b.submit(paramString1);
    return paramString1;
  }
  
  public a<AccountInfo> g(final PasswordLoginParams paramPasswordLoginParams, final m paramm)
  {
    if (paramm != null)
    {
      paramm = new k(paramm, paramPasswordLoginParams);
      paramPasswordLoginParams = new a(new l(paramPasswordLoginParams), paramm);
      b.submit(paramPasswordLoginParams);
      return paramPasswordLoginParams;
    }
    throw new IllegalArgumentException("should implements login callback");
  }
  
  public a<RegisterUserInfo> h(final d paramd, final p paramp)
  {
    if (paramp != null)
    {
      paramp = new g(paramp);
      paramd = new a(new h(paramd), paramp);
      b.submit(paramd);
      return paramd;
    }
    throw new IllegalArgumentException("should implements phone user info callback");
  }
  
  public a<AccountInfo> i(final PhoneTokenRegisterParams paramPhoneTokenRegisterParams, final o paramo)
  {
    if (paramo != null)
    {
      paramo = new a(paramo);
      paramPhoneTokenRegisterParams = new a(new b(paramPhoneTokenRegisterParams), paramo);
      b.submit(paramPhoneTokenRegisterParams);
      return paramPhoneTokenRegisterParams;
    }
    throw new IllegalArgumentException("should implements register callback");
  }
  
  public a<Integer> j(final com.xiaomi.accountsdk.account.data.e parame, final r paramr)
  {
    if (paramr != null)
    {
      paramr = new e(paramr);
      parame = new a(new f(parame), paramr);
      b.submit(parame);
      return parame;
    }
    throw new IllegalArgumentException("should implements login callback");
  }
  
  public void k(q paramq)
  {
    this.a = paramq;
  }
  
  public a<AccountInfo> l(final PhoneTicketLoginParams paramPhoneTicketLoginParams, final s params)
  {
    if (params != null)
    {
      params = new i(params, paramPhoneTicketLoginParams);
      paramPhoneTicketLoginParams = new a(new j(paramPhoneTicketLoginParams), params);
      b.submit(paramPhoneTicketLoginParams);
      return paramPhoneTicketLoginParams;
    }
    throw new IllegalArgumentException("should implements login callback");
  }
  
  public static enum ErrorCode
  {
    static
    {
      ErrorCode localErrorCode1 = new ErrorCode("NONE", 0);
      NONE = localErrorCode1;
      ErrorCode localErrorCode2 = new ErrorCode("ERROR_UNKNOWN", 1);
      ERROR_UNKNOWN = localErrorCode2;
      ErrorCode localErrorCode3 = new ErrorCode("ERROR_AUTH_FAIL", 2);
      ERROR_AUTH_FAIL = localErrorCode3;
      ErrorCode localErrorCode4 = new ErrorCode("ERROR_NETWORK", 3);
      ERROR_NETWORK = localErrorCode4;
      ErrorCode localErrorCode5 = new ErrorCode("ERROR_SERVER", 4);
      ERROR_SERVER = localErrorCode5;
      ErrorCode localErrorCode6 = new ErrorCode("ERROR_ACCESS_DENIED", 5);
      ERROR_ACCESS_DENIED = localErrorCode6;
      ErrorCode localErrorCode7 = new ErrorCode("ERROR_INVALID_PARAM", 6);
      ERROR_INVALID_PARAM = localErrorCode7;
      ErrorCode localErrorCode8 = new ErrorCode("ERROR_USER_ACTION_OVER_LIMIT", 7);
      ERROR_USER_ACTION_OVER_LIMIT = localErrorCode8;
      ErrorCode localErrorCode9 = new ErrorCode("ERROR_PASSWORD", 8);
      ERROR_PASSWORD = localErrorCode9;
      ErrorCode localErrorCode10 = new ErrorCode("ERROR_NON_EXIST_USER", 9);
      ERROR_NON_EXIST_USER = localErrorCode10;
      ErrorCode localErrorCode11 = new ErrorCode("ERROR_NO_PHONE", 10);
      ERROR_NO_PHONE = localErrorCode11;
      $VALUES = new ErrorCode[] { localErrorCode1, localErrorCode2, localErrorCode3, localErrorCode4, localErrorCode5, localErrorCode6, localErrorCode7, localErrorCode8, localErrorCode9, localErrorCode10, localErrorCode11 };
    }
    
    private ErrorCode() {}
  }
  
  class a
    extends a.b<AccountInfo>
  {
    a(PhoneLoginController.o paramo) {}
    
    public void a(a<AccountInfo> parama)
    {
      try
      {
        parama = (AccountInfo)parama.get();
        paramo.e(parama);
      }
      catch (ExecutionException parama)
      {
        b.h("PhoneLoginController", "registerByPhone", parama);
        Object localObject = parama.getCause();
        if ((localObject instanceof UserRestrictedException))
        {
          paramo.c();
        }
        else if ((localObject instanceof TokenExpiredException))
        {
          paramo.a();
        }
        else if ((localObject instanceof ReachLimitException))
        {
          paramo.d(PhoneLoginController.ErrorCode.ERROR_USER_ACTION_OVER_LIMIT, parama.getMessage());
        }
        else
        {
          PhoneLoginController.ErrorCode localErrorCode;
          if ((localObject instanceof InvalidResponseException))
          {
            b.h("PhoneLoginController", "invalid response", parama);
            localErrorCode = PhoneLoginController.a((Throwable)localObject);
            localObject = ((InvalidResponseException)localObject).getServerError();
            if (localObject != null) {
              paramo.b(localErrorCode, (PassThroughErrorInfo)localObject);
            } else {
              paramo.d(localErrorCode, parama.getMessage());
            }
          }
          else
          {
            localErrorCode = PhoneLoginController.a((Throwable)localObject);
            paramo.d(localErrorCode, parama.getMessage());
          }
        }
      }
      catch (InterruptedException parama)
      {
        b.h("PhoneLoginController", "registerByPhone", parama);
        paramo.d(PhoneLoginController.ErrorCode.ERROR_UNKNOWN, parama.getMessage());
      }
    }
  }
  
  class b
    implements Callable<AccountInfo>
  {
    b(PhoneTokenRegisterParams paramPhoneTokenRegisterParams) {}
    
    public AccountInfo a()
      throws Exception
    {
      return XMPassport.z(paramPhoneTokenRegisterParams);
    }
  }
  
  class c
    extends a.b<LoginPreference>
  {
    c() {}
    
    public void a(a<LoginPreference> parama)
    {
      try
      {
        parama = (LoginPreference)parama.get();
        PhoneLoginController.this.c(parama);
      }
      catch (ExecutionException localExecutionException)
      {
        b.h("PhoneLoginController", "getPhoneLoginConfigOnLine", localExecutionException);
        Object localObject = localExecutionException.getCause();
        if ((localObject instanceof InvalidPhoneNumException))
        {
          PhoneLoginController.this.a();
        }
        else
        {
          parama = PhoneLoginController.a((Throwable)localObject);
          if ((localObject instanceof InvalidResponseException))
          {
            localObject = ((InvalidResponseException)localObject).getServerError();
            if (localObject != null) {
              PhoneLoginController.this.b(parama, localExecutionException.getMessage(), (PassThroughErrorInfo)localObject);
            } else {
              PhoneLoginController.this.d(parama, localExecutionException.getMessage());
            }
          }
          else
          {
            PhoneLoginController.this.d(parama, localExecutionException.getMessage());
          }
        }
      }
      catch (InterruptedException parama)
      {
        b.h("PhoneLoginController", "getPhoneLoginConfigOnLine", parama);
        PhoneLoginController.this.d(PhoneLoginController.ErrorCode.ERROR_UNKNOWN, parama.getMessage());
      }
    }
  }
  
  class d
    implements Callable<LoginPreference>
  {
    d(String paramString1, String paramString2, String paramString3) {}
    
    public LoginPreference a()
      throws Exception
    {
      return l.a(PhoneLoginController.this, paramString2, paramString3, paramString4);
    }
  }
  
  class e
    extends a.b<Integer>
  {
    e(PhoneLoginController.r paramr) {}
    
    public void a(a<Integer> parama)
    {
      try
      {
        parama = (Integer)parama.get();
        paramr.g(parama.intValue());
      }
      catch (ExecutionException parama)
      {
        b.h("PhoneLoginController", "sendPhoneLoginTicket", parama);
        Object localObject = parama.getCause();
        if ((localObject instanceof NeedCaptchaException))
        {
          parama = (NeedCaptchaException)localObject;
          paramr.e(parama.getCaptchaUrl(), parama.getCaptchaType());
        }
        else if ((localObject instanceof TokenExpiredException))
        {
          paramr.c();
        }
        else if ((localObject instanceof ReachLimitException))
        {
          paramr.f();
        }
        else if ((localObject instanceof InvalidPhoneNumException))
        {
          paramr.a();
        }
        else
        {
          PhoneLoginController.ErrorCode localErrorCode = PhoneLoginController.a((Throwable)localObject);
          if ((localObject instanceof InvalidResponseException))
          {
            localObject = ((InvalidResponseException)localObject).getServerError();
            if (localObject != null) {
              paramr.b(localErrorCode, parama.getMessage(), (PassThroughErrorInfo)localObject);
            } else {
              paramr.d(localErrorCode, null);
            }
          }
          else
          {
            paramr.d(localErrorCode, null);
          }
        }
      }
      catch (InterruptedException parama)
      {
        b.h("PhoneLoginController", "sendPhoneLoginTicket", parama);
        paramr.d(PhoneLoginController.ErrorCode.ERROR_UNKNOWN, parama.getMessage());
      }
    }
  }
  
  class f
    implements Callable<Integer>
  {
    f(com.xiaomi.accountsdk.account.data.e parame) {}
    
    public Integer a()
      throws Exception
    {
      return Integer.valueOf(XMPassport.D(parame));
    }
  }
  
  class g
    extends a.b<RegisterUserInfo>
  {
    g(PhoneLoginController.p paramp) {}
    
    public void a(a<RegisterUserInfo> parama)
    {
      try
      {
        localObject1 = (RegisterUserInfo)parama.get();
        parama = ((RegisterUserInfo)localObject1).status;
        if (parama == RegisterUserInfo.RegisterStatus.STATUS_NOT_REGISTERED) {
          paramp.f((RegisterUserInfo)localObject1);
        } else if (parama == RegisterUserInfo.RegisterStatus.STATUS_REGISTERED_NOT_RECYCLED) {
          paramp.i((RegisterUserInfo)localObject1);
        } else {
          paramp.h((RegisterUserInfo)localObject1);
        }
      }
      catch (ExecutionException parama)
      {
        Object localObject1;
        b.h("PhoneLoginController", "query user phone info", parama);
        Object localObject2 = parama.getCause();
        if ((localObject2 instanceof InvalidVerifyCodeException))
        {
          paramp.e();
        }
        else if ((localObject2 instanceof InvalidPhoneNumException))
        {
          paramp.a();
        }
        else if ((localObject2 instanceof InvalidResponseException))
        {
          localObject1 = PhoneLoginController.a((Throwable)localObject2);
          localObject2 = ((InvalidResponseException)localObject2).getServerError();
          if (localObject2 != null) {
            paramp.b((PhoneLoginController.ErrorCode)localObject1, (PassThroughErrorInfo)localObject2);
          } else {
            paramp.g((PhoneLoginController.ErrorCode)localObject1, parama.getMessage());
          }
        }
        else
        {
          localObject1 = PhoneLoginController.a((Throwable)localObject2);
          paramp.g((PhoneLoginController.ErrorCode)localObject1, parama.getMessage());
        }
      }
      catch (InterruptedException parama)
      {
        b.h("PhoneLoginController", "query user phone info", parama);
        paramp.g(PhoneLoginController.ErrorCode.ERROR_UNKNOWN, parama.getMessage());
      }
    }
  }
  
  class h
    implements Callable<RegisterUserInfo>
  {
    h(d paramd) {}
    
    public RegisterUserInfo a()
      throws Exception
    {
      return PhoneLoginController.b(PhoneLoginController.this).a(paramd);
    }
  }
  
  class i
    extends a.b<AccountInfo>
  {
    i(PhoneLoginController.s params, PhoneTicketLoginParams paramPhoneTicketLoginParams) {}
    
    public void a(a<AccountInfo> parama)
    {
      try
      {
        parama = (AccountInfo)parama.get();
        params.d(parama);
      }
      catch (ExecutionException parama)
      {
        b.h("PhoneLoginController", "loginByPhoneTicket", parama);
        Object localObject = parama.getCause();
        if ((localObject instanceof NeedNotificationException))
        {
          params.c(paramPhoneTicketLoginParams.serviceId, ((NeedNotificationException)localObject).getNotificationUrl());
        }
        else if ((localObject instanceof InvalidPhoneNumException))
        {
          params.a();
        }
        else if ((localObject instanceof InvalidVerifyCodeException))
        {
          params.e();
        }
        else if ((localObject instanceof InvalidTzSignException))
        {
          params.g();
        }
        else
        {
          PhoneLoginController.ErrorCode localErrorCode;
          boolean bool;
          if ((localObject instanceof InvalidResponseException))
          {
            b.h("PhoneLoginController", "invalid response", parama);
            localErrorCode = PhoneLoginController.a((Throwable)localObject);
            InvalidResponseException localInvalidResponseException = (InvalidResponseException)localObject;
            localObject = localInvalidResponseException.getServerError();
            if (localObject != null)
            {
              params.b(localErrorCode, (PassThroughErrorInfo)localObject);
            }
            else
            {
              bool = localInvalidResponseException.isStsUrlRequestError;
              params.f(localErrorCode, parama.getMessage(), bool);
            }
          }
          else
          {
            localErrorCode = PhoneLoginController.a((Throwable)localObject);
            bool = PhoneLoginController.c(PhoneLoginController.this, (Throwable)localObject);
            params.f(localErrorCode, parama.getMessage(), bool);
          }
        }
      }
      catch (InterruptedException parama)
      {
        b.h("PhoneLoginController", "loginByPhoneTicket", parama);
        params.f(PhoneLoginController.ErrorCode.ERROR_UNKNOWN, parama.getMessage(), false);
      }
    }
  }
  
  class j
    implements Callable<AccountInfo>
  {
    j(PhoneTicketLoginParams paramPhoneTicketLoginParams) {}
    
    public AccountInfo a()
      throws Exception
    {
      PhoneTicketLoginParams localPhoneTicketLoginParams1 = paramPhoneTicketLoginParams;
      PhoneTicketLoginParams localPhoneTicketLoginParams2 = localPhoneTicketLoginParams1;
      if (localPhoneTicketLoginParams1.hashedEnvFactors == null) {
        localPhoneTicketLoginParams2 = PhoneTicketLoginParams.copyFrom(localPhoneTicketLoginParams1).l(PassportUserEnvironment.b.a().j(com.xiaomi.accountsdk.account.e.b())).j();
      }
      return XMPassport.r(localPhoneTicketLoginParams2);
    }
  }
  
  class k
    extends a.b<AccountInfo>
  {
    k(PhoneLoginController.m paramm, PasswordLoginParams paramPasswordLoginParams) {}
    
    public void a(a<AccountInfo> parama)
    {
      try
      {
        parama = (AccountInfo)parama.get();
        paramm.d(parama);
      }
      catch (ExecutionException parama)
      {
        b.h("PhoneLoginController", "passwordLogin", parama);
        Object localObject1 = parama.getCause();
        if ((localObject1 instanceof NeedNotificationException))
        {
          paramm.c(paramPasswordLoginParams.serviceId, ((NeedNotificationException)localObject1).getNotificationUrl());
        }
        else if ((localObject1 instanceof NeedVerificationException))
        {
          parama = (NeedVerificationException)localObject1;
          parama = new Step2LoginParams.b().m(parama.getUserId()).j(parama.getMetaLoginData()).k(paramPasswordLoginParams.serviceId).l(parama.getStep1Token()).i();
          paramm.g(parama);
        }
        else if ((localObject1 instanceof NeedCaptchaException))
        {
          paramm.e(false, ((NeedCaptchaException)localObject1).getCaptchaUrl());
        }
        else
        {
          Object localObject2;
          if ((localObject1 instanceof InvalidCredentialException))
          {
            localObject2 = (InvalidCredentialException)localObject1;
            if (!TextUtils.isEmpty(((InvalidCredentialException)localObject2).getCaptchaUrl())) {
              paramm.e(true, ((InvalidCredentialException)localObject2).getCaptchaUrl());
            } else {
              paramm.f(PhoneLoginController.ErrorCode.ERROR_PASSWORD, parama.getMessage(), false);
            }
          }
          else
          {
            boolean bool;
            if ((localObject1 instanceof InvalidResponseException))
            {
              b.h("PhoneLoginController", "invalid response", parama);
              localObject2 = PhoneLoginController.a((Throwable)localObject1);
              InvalidResponseException localInvalidResponseException = (InvalidResponseException)localObject1;
              localObject1 = localInvalidResponseException.getServerError();
              if (localObject1 != null)
              {
                paramm.b((PhoneLoginController.ErrorCode)localObject2, (PassThroughErrorInfo)localObject1);
              }
              else
              {
                bool = localInvalidResponseException.isStsUrlRequestError;
                paramm.f((PhoneLoginController.ErrorCode)localObject2, parama.getMessage(), bool);
              }
            }
            else
            {
              localObject2 = PhoneLoginController.a((Throwable)localObject1);
              bool = PhoneLoginController.c(PhoneLoginController.this, (Throwable)localObject1);
              paramm.f((PhoneLoginController.ErrorCode)localObject2, parama.getMessage(), bool);
            }
          }
        }
      }
      catch (InterruptedException parama)
      {
        b.h("PhoneLoginController", "passwordLogin", parama);
        paramm.f(PhoneLoginController.ErrorCode.ERROR_UNKNOWN, parama.getMessage(), false);
      }
    }
  }
  
  class l
    implements Callable<AccountInfo>
  {
    l(PasswordLoginParams paramPasswordLoginParams) {}
    
    public AccountInfo a()
      throws Exception
    {
      return XMPassport.o(paramPasswordLoginParams);
    }
  }
  
  public static abstract interface m
  {
    public abstract void b(PhoneLoginController.ErrorCode paramErrorCode, PassThroughErrorInfo paramPassThroughErrorInfo);
    
    public abstract void c(String paramString1, String paramString2);
    
    public abstract void d(AccountInfo paramAccountInfo);
    
    public abstract void e(boolean paramBoolean, String paramString);
    
    public abstract void f(PhoneLoginController.ErrorCode paramErrorCode, String paramString, boolean paramBoolean);
    
    public abstract void g(Step2LoginParams paramStep2LoginParams);
  }
  
  public static abstract interface n
  {
    public abstract void a();
    
    public abstract void b(PhoneLoginController.ErrorCode paramErrorCode, String paramString, PassThroughErrorInfo paramPassThroughErrorInfo);
    
    public abstract void c(LoginPreference paramLoginPreference);
    
    public abstract void d(PhoneLoginController.ErrorCode paramErrorCode, String paramString);
  }
  
  public static abstract interface o
  {
    public abstract void a();
    
    public abstract void b(PhoneLoginController.ErrorCode paramErrorCode, PassThroughErrorInfo paramPassThroughErrorInfo);
    
    public abstract void c();
    
    public abstract void d(PhoneLoginController.ErrorCode paramErrorCode, String paramString);
    
    public abstract void e(AccountInfo paramAccountInfo);
  }
  
  public static abstract interface p
  {
    public abstract void a();
    
    public abstract void b(PhoneLoginController.ErrorCode paramErrorCode, PassThroughErrorInfo paramPassThroughErrorInfo);
    
    public abstract void e();
    
    public abstract void f(RegisterUserInfo paramRegisterUserInfo);
    
    public abstract void g(PhoneLoginController.ErrorCode paramErrorCode, String paramString);
    
    public abstract void h(RegisterUserInfo paramRegisterUserInfo);
    
    public abstract void i(RegisterUserInfo paramRegisterUserInfo);
  }
  
  public static class q
  {
    public RegisterUserInfo a(d paramd)
      throws Exception
    {
      return XMPassport.y(paramd);
    }
  }
  
  public static abstract interface r
  {
    public abstract void a();
    
    public abstract void b(PhoneLoginController.ErrorCode paramErrorCode, String paramString, PassThroughErrorInfo paramPassThroughErrorInfo);
    
    public abstract void c();
    
    public abstract void d(PhoneLoginController.ErrorCode paramErrorCode, String paramString);
    
    public abstract void e(String paramString1, String paramString2);
    
    public abstract void f();
    
    public abstract void g(int paramInt);
  }
  
  public static abstract interface s
  {
    public abstract void a();
    
    public abstract void b(PhoneLoginController.ErrorCode paramErrorCode, PassThroughErrorInfo paramPassThroughErrorInfo);
    
    public abstract void c(String paramString1, String paramString2);
    
    public abstract void d(AccountInfo paramAccountInfo);
    
    public abstract void e();
    
    public abstract void f(PhoneLoginController.ErrorCode paramErrorCode, String paramString, boolean paramBoolean);
    
    public abstract void g();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.uicontroller.PhoneLoginController
 * JD-Core Version:    0.7.0.1
 */