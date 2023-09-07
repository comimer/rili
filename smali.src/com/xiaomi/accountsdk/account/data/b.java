package com.xiaomi.accountsdk.account.data;

public class b
{
  public final String a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final String f;
  public final boolean g;
  public final boolean h;
  public final String i;
  
  private b(b paramb)
  {
    this.a = b.a(paramb);
    this.b = b.b(paramb);
    this.c = b.c(paramb);
    this.d = b.d(paramb);
    this.e = b.e(paramb);
    this.f = b.f(paramb);
    this.g = b.g(paramb);
    this.h = b.h(paramb);
    this.i = b.i(paramb);
  }
  
  public static b a(b paramb)
  {
    return new b().s(paramb.a).p(paramb.b).q(paramb.c).n(paramb.d).k(paramb.e).r(paramb.f).m(paramb.g).l(paramb.h).o(paramb.i);
  }
  
  public static class b
  {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private boolean g = false;
    private boolean h = false;
    private String i;
    
    public b j()
    {
      return new b(this, null);
    }
    
    public b k(String paramString)
    {
      this.e = paramString;
      return this;
    }
    
    public b l(boolean paramBoolean)
    {
      this.h = paramBoolean;
      return this;
    }
    
    public b m(boolean paramBoolean)
    {
      this.g = paramBoolean;
      return this;
    }
    
    public b n(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public b o(String paramString)
    {
      this.i = paramString;
      return this;
    }
    
    public b p(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public b q(String paramString)
    {
      this.c = paramString;
      return this;
    }
    
    public b r(String paramString)
    {
      this.f = paramString;
      return this;
    }
    
    public b s(String paramString)
    {
      this.a = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.data.b
 * JD-Core Version:    0.7.0.1
 */