package a6;

import com.xiaomi.accountsdk.request.PassportRequestException;
import java.io.IOException;

public abstract class c
  extends e
{
  private final e a;
  private final e b;
  private boolean c;
  
  public k.h a()
    throws IOException, PassportRequestException
  {
    try
    {
      k.h localh = this.a.a();
      if (!f(localh))
      {
        e();
        return localh;
      }
    }
    catch (PassportRequestException localPassportRequestException)
    {
      if (!g(localPassportRequestException)) {
        throw localPassportRequestException;
      }
    }
    catch (IOException localIOException)
    {
      if (g(localIOException))
      {
        d();
        this.c = true;
        return this.b.a();
      }
      throw localIOException;
    }
  }
  
  public final boolean c()
  {
    return this.c;
  }
  
  protected abstract void d();
  
  protected abstract void e();
  
  protected abstract boolean f(k.h paramh);
  
  protected abstract boolean g(Exception paramException);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a6.c
 * JD-Core Version:    0.7.0.1
 */