package a6;

import com.xiaomi.accountsdk.utils.EasyMap;
import java.util.AbstractMap;
import java.util.Map;

public class f
{
  protected final EasyMap<String, String> a = new EasyMap();
  protected final EasyMap<String, String> b = new EasyMap();
  protected final EasyMap<String, String> c = new EasyMap();
  protected final EasyMap<String, String> d = new EasyMap();
  protected boolean e = true;
  protected String f = null;
  protected Integer g = null;
  
  public void a(Map<String, String> paramMap)
  {
    if (paramMap != null) {
      this.b.putAll(paramMap);
    }
  }
  
  public void b(Map<String, String> paramMap)
  {
    if (paramMap != null) {
      this.c.putAll(paramMap);
    }
  }
  
  public void c(Map<String, String> paramMap)
  {
    if (paramMap != null) {
      this.a.putAll(paramMap);
    }
  }
  
  public void d(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }
  
  public void e(String paramString)
  {
    this.f = paramString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a6.f
 * JD-Core Version:    0.7.0.1
 */