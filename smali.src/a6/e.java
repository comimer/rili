package a6;

import com.xiaomi.account.exception.PassportCAException;
import com.xiaomi.accountsdk.account.exception.InvalidCredentialException;
import com.xiaomi.accountsdk.account.exception.InvalidUserNameException;
import com.xiaomi.accountsdk.account.exception.NeedCaptchaException;
import com.xiaomi.accountsdk.account.exception.NeedNotificationException;
import com.xiaomi.accountsdk.account.exception.NeedVerificationException;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.InvalidResponseException;
import com.xiaomi.accountsdk.request.PassportRequestException;
import java.io.IOException;

public abstract class e
{
  public abstract k.h a()
    throws IOException, PassportRequestException;
  
  public final k.h b()
    throws PassportCAException, InvalidResponseException, InvalidCredentialException, InvalidUserNameException, NeedVerificationException, NeedCaptchaException, IOException, AccessDeniedException, AuthenticationFailureException, NeedNotificationException
  {
    try
    {
      k.h localh = a();
      return localh;
    }
    catch (PassportRequestException localPassportRequestException)
    {
      Throwable localThrowable = localPassportRequestException.getCause();
      if (!(localThrowable instanceof InvalidResponseException))
      {
        if (!(localThrowable instanceof InvalidCredentialException))
        {
          if (!(localThrowable instanceof InvalidUserNameException))
          {
            if (!(localThrowable instanceof NeedVerificationException))
            {
              if (!(localThrowable instanceof NeedCaptchaException))
              {
                if (!(localThrowable instanceof IOException))
                {
                  if (!(localThrowable instanceof AccessDeniedException))
                  {
                    if (!(localThrowable instanceof AuthenticationFailureException))
                    {
                      if (!(localThrowable instanceof NeedNotificationException))
                      {
                        if ((localThrowable instanceof PassportCAException)) {
                          throw ((PassportCAException)localThrowable);
                        }
                        throw new IllegalStateException("");
                      }
                      throw ((NeedNotificationException)localThrowable);
                    }
                    throw ((AuthenticationFailureException)localThrowable);
                  }
                  throw ((AccessDeniedException)localThrowable);
                }
                throw ((IOException)localThrowable);
              }
              throw ((NeedCaptchaException)localThrowable);
            }
            throw ((NeedVerificationException)localThrowable);
          }
          throw ((InvalidUserNameException)localThrowable);
        }
        throw ((InvalidCredentialException)localThrowable);
      }
      throw ((InvalidResponseException)localThrowable);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a6.e
 * JD-Core Version:    0.7.0.1
 */