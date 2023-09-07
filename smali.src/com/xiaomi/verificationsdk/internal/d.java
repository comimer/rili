package com.xiaomi.verificationsdk.internal;

public class d
{
  private String a;
  private String b;
  
  private d(b paramb)
  {
    this.a = b.a(paramb);
    this.b = b.b(paramb);
  }
  
  public String a()
  {
    return this.a;
  }
  
  public static class b
  {
    private String a;
    private String b;
    
    public d c()
    {
      return new d(this, null);
    }
    
    public b d(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public b e(String paramString)
    {
      this.a = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.verificationsdk.internal.d
 * JD-Core Version:    0.7.0.1
 */