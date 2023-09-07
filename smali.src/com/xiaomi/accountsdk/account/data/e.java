package com.xiaomi.accountsdk.account.data;

public class e
{
  public final String a;
  public final String b;
  public final String c;
  public final ActivatorPhoneInfo d;
  public final String e;
  public final String f;
  public final String g;
  public final String h;
  public final String i;
  public final String j;
  public final String k;
  public final String l;
  public final String m;
  
  private e(b paramb)
  {
    this.a = b.a(paramb);
    ActivatorPhoneInfo localActivatorPhoneInfo = b.b(paramb);
    this.d = localActivatorPhoneInfo;
    Object localObject1 = null;
    if (localActivatorPhoneInfo != null) {
      localObject2 = localActivatorPhoneInfo.phoneHash;
    } else {
      localObject2 = null;
    }
    this.b = ((String)localObject2);
    Object localObject2 = localObject1;
    if (localActivatorPhoneInfo != null) {
      localObject2 = localActivatorPhoneInfo.activatorToken;
    }
    this.c = ((String)localObject2);
    this.e = b.d(paramb);
    this.f = b.e(paramb);
    this.g = b.f(paramb);
    this.h = b.g(paramb);
    this.i = b.h(paramb);
    this.j = b.i(paramb);
    this.k = b.j(paramb);
    this.l = b.k(paramb);
    this.m = b.c(paramb);
  }
  
  public static class b
  {
    private String a;
    private ActivatorPhoneInfo b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    
    public b l(String paramString)
    {
      this.j = paramString;
      return this;
    }
    
    public e m()
    {
      return new e(this, null);
    }
    
    public b n(String paramString1, String paramString2)
    {
      this.f = paramString1;
      this.g = paramString2;
      return this;
    }
    
    public b o(String paramString)
    {
      this.a = paramString;
      return this;
    }
    
    public b p(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public b q(String paramString)
    {
      this.k = paramString;
      return this;
    }
    
    public b r(String paramString)
    {
      this.i = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.data.e
 * JD-Core Version:    0.7.0.1
 */