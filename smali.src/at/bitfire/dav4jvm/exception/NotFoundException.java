package at.bitfire.dav4jvm.exception;

import kotlin.Metadata;
import okhttp3.a0;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/dav4jvm/exception/NotFoundException;", "Lat/bitfire/dav4jvm/exception/HttpException;", "Lokhttp3/a0;", "response", "<init>", "(Lokhttp3/a0;)V", "", "message", "(Ljava/lang/String;)V", "build"}, k=1, mv={1, 4, 0})
public final class NotFoundException
  extends HttpException
{
  public NotFoundException(String paramString)
  {
    super(404, paramString);
  }
  
  public NotFoundException(a0 parama0)
  {
    super(parama0);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.exception.NotFoundException
 * JD-Core Version:    0.7.0.1
 */