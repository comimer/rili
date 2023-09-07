package at.bitfire.dav4jvm.exception;

import kotlin.Metadata;
import okhttp3.a0;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/dav4jvm/exception/HttpException;", "Lat/bitfire/dav4jvm/exception/DavException;", "", "code", "I", "getCode", "()I", "setCode", "(I)V", "Lokhttp3/a0;", "response", "<init>", "(Lokhttp3/a0;)V", "", "message", "(ILjava/lang/String;)V", "build"}, k=1, mv={1, 4, 0})
public class HttpException
  extends DavException
{
  private int code;
  
  public HttpException(int paramInt, String paramString)
  {
    super(localStringBuilder.toString(), null, null, 6, null);
    this.code = paramInt;
  }
  
  public HttpException(a0 parama0)
  {
    super(localStringBuilder.toString(), null, parama0, 2, null);
    this.code = parama0.m();
  }
  
  public final int getCode()
  {
    return this.code;
  }
  
  public final void setCode(int paramInt)
  {
    this.code = paramInt;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.exception.HttpException
 * JD-Core Version:    0.7.0.1
 */