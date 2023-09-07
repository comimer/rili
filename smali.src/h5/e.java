package h5;

import com.sun.mail.imap.protocol.b;
import java.util.ArrayList;
import java.util.List;
import javax.mail.internet.f;
import javax.mail.internet.g;

public class e
  extends g
{
  private List<a> b;
  
  protected e(f paramf, b[] paramArrayOfb, String paramString, d paramd)
  {
    super(paramf);
    this.b = new ArrayList(paramArrayOfb.length);
    for (int i = 0; i < paramArrayOfb.length; i++)
    {
      List localList = this.b;
      b localb = paramArrayOfb[i];
      if (paramString == null)
      {
        paramf = Integer.toString(i + 1);
      }
      else
      {
        paramf = new StringBuilder();
        paramf.append(paramString);
        paramf.append(".");
        paramf.append(Integer.toString(i + 1));
        paramf = paramf.toString();
      }
      localList.add(new a(localb, paramf, paramd));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h5.e
 * JD-Core Version:    0.7.0.1
 */