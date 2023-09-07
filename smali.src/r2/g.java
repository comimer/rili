package r2;

import android.net.Uri;
import android.text.TextUtils;
import f3.j;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;
import n2.b;

public class g
  implements b
{
  private final h b;
  private final URL c;
  private final String d;
  private String e;
  private URL f;
  private volatile byte[] g;
  private int h;
  
  public g(String paramString)
  {
    this(paramString, h.b);
  }
  
  public g(String paramString, h paramh)
  {
    this.c = null;
    this.d = j.b(paramString);
    this.b = ((h)j.d(paramh));
  }
  
  public g(URL paramURL)
  {
    this(paramURL, h.b);
  }
  
  public g(URL paramURL, h paramh)
  {
    this.c = ((URL)j.d(paramURL));
    this.d = null;
    this.b = ((h)j.d(paramh));
  }
  
  private byte[] d()
  {
    if (this.g == null) {
      this.g = c().getBytes(b.a);
    }
    return this.g;
  }
  
  private String f()
  {
    if (TextUtils.isEmpty(this.e))
    {
      String str1 = this.d;
      String str2 = str1;
      if (TextUtils.isEmpty(str1)) {
        str2 = ((URL)j.d(this.c)).toString();
      }
      this.e = Uri.encode(str2, "@#&=*+-_.,:!?()/~'%;$");
    }
    return this.e;
  }
  
  private URL g()
    throws MalformedURLException
  {
    if (this.f == null) {
      this.f = new URL(f());
    }
    return this.f;
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(d());
  }
  
  public String c()
  {
    String str = this.d;
    if (str == null) {
      str = ((URL)j.d(this.c)).toString();
    }
    return str;
  }
  
  public Map<String, String> e()
  {
    return this.b.a();
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof g;
    boolean bool2 = false;
    boolean bool3 = bool2;
    if (bool1)
    {
      paramObject = (g)paramObject;
      bool3 = bool2;
      if (c().equals(paramObject.c()))
      {
        bool3 = bool2;
        if (this.b.equals(paramObject.b)) {
          bool3 = true;
        }
      }
    }
    return bool3;
  }
  
  public URL h()
    throws MalformedURLException
  {
    return g();
  }
  
  public int hashCode()
  {
    if (this.h == 0)
    {
      int i = c().hashCode();
      this.h = i;
      this.h = (i * 31 + this.b.hashCode());
    }
    return this.h;
  }
  
  public String toString()
  {
    return c();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r2.g
 * JD-Core Version:    0.7.0.1
 */