package com.xiaomi.onetrack;

import android.text.TextUtils;

public class Configuration
{
  private String a;
  private String b;
  private String c;
  private boolean d;
  private String e;
  private OneTrack.Mode f = OneTrack.Mode.APP;
  private boolean g = true;
  private boolean h = true;
  private boolean i = true;
  private boolean j;
  private boolean k = true;
  private boolean l = false;
  private String m;
  private boolean n = false;
  private String o;
  private OneTrack.IEventHook p;
  
  private Configuration(Builder paramBuilder)
  {
    this.a = Builder.a(paramBuilder);
    this.b = Builder.b(paramBuilder);
    this.c = Builder.c(paramBuilder);
    this.d = Builder.d(paramBuilder);
    this.e = Builder.e(paramBuilder);
    this.f = Builder.f(paramBuilder);
    this.g = Builder.g(paramBuilder);
    this.i = Builder.h(paramBuilder);
    this.h = Builder.i(paramBuilder);
    this.j = Builder.j(paramBuilder);
    this.k = Builder.k(paramBuilder);
    this.l = Builder.l(paramBuilder);
    this.m = Builder.m(paramBuilder);
    this.n = Builder.n(paramBuilder);
    this.o = Builder.o(paramBuilder);
  }
  
  private String a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i1;
    if ((!TextUtils.isEmpty(paramString)) && (paramString.length() > 4)) {
      i1 = 0;
    }
    while (i1 < paramString.length())
    {
      if ((i1 != 0) && (i1 != 1) && (i1 != paramString.length() - 2) && (i1 != paramString.length() - 1)) {
        localStringBuilder.append("*");
      } else {
        localStringBuilder.append(paramString.charAt(i1));
      }
      i1++;
      continue;
      localStringBuilder.append(paramString);
    }
    return localStringBuilder.toString();
  }
  
  public String getAdEventAppId()
  {
    return this.o;
  }
  
  public String getAppId()
  {
    return this.a;
  }
  
  public String getChannel()
  {
    return this.c;
  }
  
  public String getInstanceId()
  {
    return this.m;
  }
  
  public OneTrack.Mode getMode()
  {
    return this.f;
  }
  
  public String getPluginId()
  {
    return this.b;
  }
  
  public String getRegion()
  {
    return this.e;
  }
  
  public boolean isAutoTrackActivityAction()
  {
    return this.k;
  }
  
  public boolean isExceptionCatcherEnable()
  {
    return this.j;
  }
  
  @Deprecated
  public boolean isGAIDEnable()
  {
    return this.g;
  }
  
  public boolean isIMEIEnable()
  {
    return this.i;
  }
  
  public boolean isIMSIEnable()
  {
    return this.h;
  }
  
  public boolean isInternational()
  {
    return this.d;
  }
  
  public boolean isOverrideMiuiRegionSetting()
  {
    return this.l;
  }
  
  public boolean isUseCustomPrivacyPolicy()
  {
    return this.n;
  }
  
  public String toString()
  {
    try
    {
      Object localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      ((StringBuilder)localObject).append("Configuration{appId='");
      ((StringBuilder)localObject).append(a(this.a));
      ((StringBuilder)localObject).append('\'');
      ((StringBuilder)localObject).append(", pluginId='");
      ((StringBuilder)localObject).append(a(this.b));
      ((StringBuilder)localObject).append('\'');
      ((StringBuilder)localObject).append(", channel='");
      ((StringBuilder)localObject).append(this.c);
      ((StringBuilder)localObject).append('\'');
      ((StringBuilder)localObject).append(", international=");
      ((StringBuilder)localObject).append(this.d);
      ((StringBuilder)localObject).append(", region='");
      ((StringBuilder)localObject).append(this.e);
      ((StringBuilder)localObject).append('\'');
      ((StringBuilder)localObject).append(", overrideMiuiRegionSetting=");
      ((StringBuilder)localObject).append(this.l);
      ((StringBuilder)localObject).append(", mode=");
      ((StringBuilder)localObject).append(this.f);
      ((StringBuilder)localObject).append(", GAIDEnable=");
      ((StringBuilder)localObject).append(this.g);
      ((StringBuilder)localObject).append(", IMSIEnable=");
      ((StringBuilder)localObject).append(this.h);
      ((StringBuilder)localObject).append(", IMEIEnable=");
      ((StringBuilder)localObject).append(this.i);
      ((StringBuilder)localObject).append(", ExceptionCatcherEnable=");
      ((StringBuilder)localObject).append(this.j);
      ((StringBuilder)localObject).append(", instanceId=");
      ((StringBuilder)localObject).append(a(this.m));
      ((StringBuilder)localObject).append('}');
      localObject = ((StringBuilder)localObject).toString();
      return localObject;
    }
    catch (Exception localException) {}
    return "";
  }
  
  public static class Builder
  {
    private String a;
    private String b;
    private String c;
    private boolean d;
    private String e;
    private OneTrack.Mode f = OneTrack.Mode.APP;
    private boolean g = true;
    private boolean h = true;
    private boolean i = true;
    private boolean j = false;
    private boolean k = true;
    private boolean l = false;
    private String m;
    private boolean n = false;
    private String o;
    
    public Configuration build()
    {
      return new Configuration(this, null);
    }
    
    public Builder setAdEventAppId(String paramString)
    {
      this.o = paramString;
      return this;
    }
    
    public Builder setAppId(String paramString)
    {
      this.a = paramString;
      return this;
    }
    
    public Builder setAutoTrackActivityAction(boolean paramBoolean)
    {
      this.k = paramBoolean;
      return this;
    }
    
    public Builder setChannel(String paramString)
    {
      this.c = paramString;
      return this;
    }
    
    public Builder setExceptionCatcherEnable(boolean paramBoolean)
    {
      this.j = paramBoolean;
      return this;
    }
    
    @Deprecated
    public Builder setGAIDEnable(boolean paramBoolean)
    {
      this.g = paramBoolean;
      return this;
    }
    
    public Builder setImeiEnable(boolean paramBoolean)
    {
      this.i = paramBoolean;
      return this;
    }
    
    public Builder setImsiEnable(boolean paramBoolean)
    {
      this.h = paramBoolean;
      return this;
    }
    
    public Builder setInstanceId(String paramString)
    {
      this.m = paramString;
      return this;
    }
    
    public Builder setInternational(boolean paramBoolean)
    {
      this.d = paramBoolean;
      return this;
    }
    
    public Builder setMode(OneTrack.Mode paramMode)
    {
      this.f = paramMode;
      return this;
    }
    
    public Builder setOverrideMiuiRegionSetting(boolean paramBoolean)
    {
      this.l = paramBoolean;
      return this;
    }
    
    public Builder setPluginId(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public Builder setRegion(String paramString)
    {
      this.e = paramString;
      return this;
    }
    
    public Builder setUseCustomPrivacyPolicy(boolean paramBoolean)
    {
      this.n = paramBoolean;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.Configuration
 * JD-Core Version:    0.7.0.1
 */