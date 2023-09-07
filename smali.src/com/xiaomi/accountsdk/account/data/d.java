package com.xiaomi.accountsdk.account.data;

public class d
{
  public final String a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final String f;
  public final ActivatorPhoneInfo g;
  public final String h;
  public final String i;
  
  private d(b paramb)
  {
    this.a = b.a(paramb);
    this.b = b.b(paramb);
    this.c = b.c(paramb);
    this.d = b.d(paramb);
    this.f = b.e(paramb);
    this.e = b.f(paramb);
    this.g = b.g(paramb);
    this.h = b.h(paramb);
    this.i = b.i(paramb);
  }
  
  public static class b
  {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private ActivatorPhoneInfo g;
    private String h;
    private String i;
    
    public d j()
    {
      return new d(this, null);
    }
    
    public b k(ActivatorPhoneInfo paramActivatorPhoneInfo)
    {
      this.g = paramActivatorPhoneInfo;
      if (paramActivatorPhoneInfo != null)
      {
        this.e = paramActivatorPhoneInfo.phoneHash;
        this.f = paramActivatorPhoneInfo.activatorToken;
      }
      return this;
    }
    
    public b l(String paramString1, String paramString2)
    {
      this.a = paramString1;
      this.c = paramString2;
      return this;
    }
    
    public b m(String paramString)
    {
      this.h = paramString;
      return this;
    }
    
    public b n(String paramString)
    {
      this.i = paramString;
      return this;
    }
    
    public b o(String paramString)
    {
      this.d = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.data.d
 * JD-Core Version:    0.7.0.1
 */