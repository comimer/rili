package f7;

import android.text.TextUtils;
import com.xiaomi.phonenum.utils.a;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

public class d
{
  public final String a;
  public final URI b;
  public final Map<String, String> c;
  public final Map<String, String> d;
  public final boolean e;
  
  private d(b paramb)
  {
    URI localURI = paramb.a;
    this.b = localURI;
    this.a = localURI.toString();
    this.c = paramb.b;
    this.d = paramb.c;
    this.e = paramb.d;
  }
  
  public static class b
  {
    URI a;
    Map<String, String> b;
    Map<String, String> c;
    boolean d = true;
    
    public b a(String paramString)
    {
      if (TextUtils.isEmpty(paramString)) {
        return this;
      }
      URI localURI = this.a;
      String str = localURI.getQuery();
      Object localObject;
      if (str == null)
      {
        str = paramString;
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append(str);
        ((StringBuilder)localObject).append("&");
        ((StringBuilder)localObject).append(paramString);
        str = ((StringBuilder)localObject).toString();
      }
      try
      {
        localObject = new java/net/URI;
        ((URI)localObject).<init>(localURI.getScheme(), localURI.getAuthority(), localURI.getPath(), str, localURI.getFragment());
        this.a = ((URI)localObject);
        return this;
      }
      catch (URISyntaxException localURISyntaxException)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("unexpected newQuery: ");
        localStringBuilder.append(paramString);
        throw new IllegalArgumentException(localStringBuilder.toString());
      }
    }
    
    public d b()
    {
      return new d(this, null);
    }
    
    public b c(boolean paramBoolean)
    {
      this.d = paramBoolean;
      return this;
    }
    
    public b d(Map<String, String> paramMap)
    {
      this.c = paramMap;
      return this;
    }
    
    public b e(Map<String, String> paramMap)
    {
      this.b = paramMap;
      return this;
    }
    
    public b f(Map<String, String> paramMap)
    {
      a(a.c(paramMap));
      return this;
    }
    
    public b g(String paramString)
    {
      if (this.b == null) {
        this.b = new HashMap();
      }
      this.b.put("User-Agent", paramString);
      return this;
    }
    
    public b h(String paramString)
    {
      try
      {
        URI localURI = new java/net/URI;
        localURI.<init>(paramString);
        this.a = localURI;
        return this;
      }
      catch (URISyntaxException localURISyntaxException)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("unexpected url: ");
        localStringBuilder.append(paramString);
        throw new IllegalArgumentException(localStringBuilder.toString());
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f7.d
 * JD-Core Version:    0.7.0.1
 */