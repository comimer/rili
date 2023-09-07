package o7;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import javax.activation.UnsupportedDataTypeException;

class k
  implements c
{
  private a[] a = null;
  private Object b;
  private String c;
  private c d;
  
  public k(c paramc, Object paramObject, String paramString)
  {
    this.b = paramObject;
    this.c = paramString;
    this.d = paramc;
  }
  
  public void a(Object paramObject, String paramString, OutputStream paramOutputStream)
    throws IOException
  {
    c localc = this.d;
    if (localc != null)
    {
      localc.a(paramObject, paramString, paramOutputStream);
    }
    else if ((paramObject instanceof byte[]))
    {
      paramOutputStream.write((byte[])paramObject);
    }
    else
    {
      if (!(paramObject instanceof String)) {
        break label71;
      }
      paramString = new OutputStreamWriter(paramOutputStream);
      paramString.write((String)paramObject);
      paramString.flush();
    }
    return;
    label71:
    paramObject = new StringBuilder();
    paramObject.append("no object DCH for MIME type ");
    paramObject.append(this.c);
    throw new UnsupportedDataTypeException(paramObject.toString());
  }
  
  public Object b(g paramg)
  {
    return this.b;
  }
  
  public c c()
  {
    return this.d;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o7.k
 * JD-Core Version:    0.7.0.1
 */