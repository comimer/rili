package com.miui.zeus.landingpage.sdk;

public class b
{
  public int a;
  public boolean b = true;
  public int c;
  
  public b(int paramInt1, int paramInt2)
  {
    this.c = paramInt1;
    this.a = paramInt2;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{\"downloadProgress\":");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", \"appInstalled\":");
    localStringBuilder.append(this.b);
    localStringBuilder.append(", \"downloadStatus\":");
    localStringBuilder.append(this.c);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.zeus.landingpage.sdk.b
 * JD-Core Version:    0.7.0.1
 */