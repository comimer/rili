package o7;

import java.io.IOException;
import java.io.OutputStream;
import javax.activation.UnsupportedDataTypeException;

class h
  implements c
{
  private g a;
  private a[] b = null;
  private c c;
  
  public h(c paramc, g paramg)
  {
    this.a = paramg;
    this.c = paramc;
  }
  
  public void a(Object paramObject, String paramString, OutputStream paramOutputStream)
    throws IOException
  {
    c localc = this.c;
    if (localc != null)
    {
      localc.a(paramObject, paramString, paramOutputStream);
      return;
    }
    paramObject = new StringBuilder();
    paramObject.append("no DCH for content type ");
    paramObject.append(this.a.a());
    throw new UnsupportedDataTypeException(paramObject.toString());
  }
  
  public Object b(g paramg)
    throws IOException
  {
    c localc = this.c;
    if (localc != null) {
      return localc.b(paramg);
    }
    return paramg.b();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o7.h
 * JD-Core Version:    0.7.0.1
 */