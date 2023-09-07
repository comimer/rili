package g7;

import java.io.IOException;
import org.json.JSONException;

public abstract class e
{
  protected e a;
  
  public abstract f7.e a(int paramInt, String paramString)
    throws IOException, JSONException;
  
  public void b(e parame)
  {
    e locale = this.a;
    if (locale == null) {
      this.a = parame;
    } else {
      locale.b(parame);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g7.e
 * JD-Core Version:    0.7.0.1
 */