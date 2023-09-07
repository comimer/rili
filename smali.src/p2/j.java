package p2;

import androidx.core.util.e;
import f3.g;
import f3.k;
import g3.a;
import g3.a.d;
import g3.a.f;
import g3.c;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import n2.b;

public class j
{
  private final g<b, String> a = new g(1000L);
  private final e<b> b = a.d(10, new a());
  
  private String a(b paramb)
  {
    b localb = (b)f3.j.d(this.b.b());
    try
    {
      paramb.a(localb.a);
      paramb = k.w(localb.a.digest());
      return paramb;
    }
    finally
    {
      this.b.a(localb);
    }
  }
  
  public String b(b paramb)
  {
    synchronized (this.a)
    {
      ??? = (String)this.a.g(paramb);
      ??? = ???;
      if (??? == null) {
        ??? = a(paramb);
      }
      synchronized (this.a)
      {
        this.a.k(paramb, ???);
        return ???;
      }
    }
  }
  
  class a
    implements a.d<j.b>
  {
    a() {}
    
    public j.b a()
    {
      try
      {
        j.b localb = new j.b(MessageDigest.getInstance("SHA-256"));
        return localb;
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        throw new RuntimeException(localNoSuchAlgorithmException);
      }
    }
  }
  
  private static final class b
    implements a.f
  {
    final MessageDigest a;
    private final c b = c.a();
    
    b(MessageDigest paramMessageDigest)
    {
      this.a = paramMessageDigest;
    }
    
    public c h()
    {
      return this.b;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     p2.j
 * JD-Core Version:    0.7.0.1
 */