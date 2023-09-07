package a6;

import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.PassportRequestException;
import java.io.IOException;

public abstract class g
  extends e
{
  protected final f a;
  
  protected g(f paramf)
  {
    if (paramf != null)
    {
      this.a = paramf;
      return;
    }
    throw new IllegalArgumentException("arguments can't be null");
  }
  
  public static class a
    extends g
  {
    public a(f paramf)
    {
      super();
    }
    
    public k.h a()
      throws IOException, PassportRequestException
    {
      try
      {
        Object localObject = this.a;
        localObject = l.g(((f)localObject).f, ((f)localObject).a, ((f)localObject).c, ((f)localObject).b, ((f)localObject).e, ((f)localObject).g);
        return localObject;
      }
      catch (AuthenticationFailureException localAuthenticationFailureException)
      {
        throw new PassportRequestException(localAuthenticationFailureException);
      }
      catch (AccessDeniedException localAccessDeniedException)
      {
        throw new PassportRequestException(localAccessDeniedException);
      }
    }
  }
  
  public static class b
    extends g
  {
    public b(f paramf)
    {
      super();
    }
    
    public k.h a()
      throws IOException, PassportRequestException
    {
      try
      {
        Object localObject = this.a;
        localObject = l.i(((f)localObject).f, ((f)localObject).a, ((f)localObject).b, ((f)localObject).c, ((f)localObject).d, ((f)localObject).e, ((f)localObject).g);
        return localObject;
      }
      catch (AuthenticationFailureException localAuthenticationFailureException)
      {
        throw new PassportRequestException(localAuthenticationFailureException);
      }
      catch (AccessDeniedException localAccessDeniedException)
      {
        throw new PassportRequestException(localAccessDeniedException);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a6.g
 * JD-Core Version:    0.7.0.1
 */