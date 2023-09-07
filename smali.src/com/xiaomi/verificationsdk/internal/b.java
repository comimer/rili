package com.xiaomi.verificationsdk.internal;

public class b
{
  private int a;
  private String b;
  private int c;
  
  public b(a parama)
  {
    this.a = a.a(parama);
    this.b = a.b(parama);
    this.c = a.c(parama);
  }
  
  public int a()
  {
    return this.a;
  }
  
  public int b()
  {
    return this.c;
  }
  
  public static class a
  {
    private int a;
    private String b;
    private int c;
    
    public b d()
    {
      return new b(this);
    }
    
    public a e(int paramInt)
    {
      this.a = paramInt;
      return this;
    }
    
    public a f(int paramInt)
    {
      this.c = paramInt;
      return this;
    }
    
    public a g(String paramString)
    {
      this.b = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.verificationsdk.internal.b
 * JD-Core Version:    0.7.0.1
 */