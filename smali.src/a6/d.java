package a6;

import com.xiaomi.accountsdk.account.XMPassport;
import com.xiaomi.accountsdk.account.data.MetaLoginData;
import com.xiaomi.accountsdk.account.exception.InvalidUserNameException;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.InvalidResponseException;
import com.xiaomi.accountsdk.request.PassportRequestException;
import com.xiaomi.accountsdk.utils.EasyMap;
import com.xiaomi.accountsdk.utils.b;
import java.io.IOException;

public abstract class d
  extends e
{
  private final e a = e(paramf);
  
  public d(f paramf)
  {
    paramf = new StringBuilder();
    paramf.append("loginType:");
    paramf.append(c());
    b.g("PassportLoginRequest", paramf.toString());
  }
  
  public k.h a()
    throws IOException, PassportRequestException
  {
    try
    {
      k.h localh = this.a.a();
      return localh;
    }
    catch (IOException localIOException)
    {
      throw localIOException;
    }
    catch (PassportRequestException localPassportRequestException)
    {
      throw localPassportRequestException;
    }
  }
  
  protected abstract String c();
  
  public boolean d()
  {
    e locale = this.a;
    boolean bool;
    if (((locale instanceof c)) && (!((c)locale).c())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected abstract g e(f paramf);
  
  public static class a
    extends d
  {
    public a(f paramf)
    {
      super();
    }
    
    protected String c()
    {
      return "byPassToken";
    }
    
    protected g e(f paramf)
    {
      return new g.a(paramf);
    }
  }
  
  public static class b
    extends d
  {
    private final String b;
    private final String c;
    private final MetaLoginData d;
    
    public b(f paramf, String paramString1, String paramString2, MetaLoginData paramMetaLoginData)
    {
      super();
      this.b = paramString1;
      this.c = paramString2;
      this.d = paramMetaLoginData;
    }
    
    protected String c()
    {
      return "byPassword";
    }
    
    protected g e(f paramf)
    {
      return new a(paramf);
    }
    
    class a
      extends g.b
    {
      a(f paramf)
      {
        super();
      }
      
      public k.h a()
        throws IOException, PassportRequestException
      {
        MetaLoginData localMetaLoginData1 = d.b.f(d.b.this);
        MetaLoginData localMetaLoginData2 = localMetaLoginData1;
        if (localMetaLoginData1 == null) {
          try
          {
            localMetaLoginData2 = XMPassport.f(d.b.g(d.b.this), d.b.h(d.b.this));
            if (localMetaLoginData2 == null) {
              throw new PassportRequestException(new InvalidResponseException("Empty meta login data"));
            }
          }
          catch (InvalidUserNameException localInvalidUserNameException)
          {
            throw new PassportRequestException(localInvalidUserNameException);
          }
          catch (AuthenticationFailureException localAuthenticationFailureException)
          {
            throw new PassportRequestException(localAuthenticationFailureException);
          }
          catch (AccessDeniedException localAccessDeniedException)
          {
            throw new PassportRequestException(localAccessDeniedException);
          }
          catch (InvalidResponseException localInvalidResponseException)
          {
            throw new PassportRequestException(localInvalidResponseException);
          }
          catch (IOException localIOException)
          {
            throw localIOException;
          }
        }
        this.a.a.easyPut("_sign", localIOException.sign);
        this.a.a.easyPut("qs", localIOException.qs);
        this.a.a.easyPut("callback", localIOException.callback);
        return super.a();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a6.d
 * JD-Core Version:    0.7.0.1
 */