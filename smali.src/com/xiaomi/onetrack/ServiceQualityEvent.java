package com.xiaomi.onetrack;

import android.text.TextUtils;
import java.util.Map;

public class ServiceQualityEvent
{
  private String a;
  private String b;
  private Integer c;
  private String d;
  private String e;
  private Integer f;
  private Integer g;
  private String h;
  private String i;
  private Integer j;
  private Long k;
  private Long l;
  private Long m;
  private Long n;
  private Long o;
  private Long p;
  private Long q;
  private Long r;
  private String s;
  private String t;
  private Map<String, Object> u;
  
  private ServiceQualityEvent(Builder paramBuilder)
  {
    this.a = Builder.a(paramBuilder);
    this.b = Builder.b(paramBuilder);
    this.c = Builder.c(paramBuilder);
    this.d = Builder.d(paramBuilder);
    this.e = Builder.e(paramBuilder);
    this.f = Builder.f(paramBuilder);
    this.g = Builder.g(paramBuilder);
    this.h = Builder.h(paramBuilder);
    Object localObject1 = Builder.i(paramBuilder);
    Object localObject2 = null;
    if (localObject1 != null) {
      localObject1 = Builder.i(paramBuilder).getResultType();
    } else {
      localObject1 = null;
    }
    this.i = ((String)localObject1);
    this.j = Builder.j(paramBuilder);
    this.k = Builder.k(paramBuilder);
    this.l = Builder.l(paramBuilder);
    this.m = Builder.m(paramBuilder);
    this.o = Builder.n(paramBuilder);
    this.p = Builder.o(paramBuilder);
    this.r = Builder.p(paramBuilder);
    localObject1 = localObject2;
    if (Builder.q(paramBuilder) != null) {
      localObject1 = Builder.q(paramBuilder).toString();
    }
    this.s = ((String)localObject1);
    this.n = Builder.r(paramBuilder);
    this.q = Builder.s(paramBuilder);
    this.t = Builder.t(paramBuilder);
    this.u = Builder.u(paramBuilder);
  }
  
  public Long getDnsLookupTime()
  {
    return this.k;
  }
  
  public Long getDuration()
  {
    return this.q;
  }
  
  public String getExceptionTag()
  {
    return this.h;
  }
  
  public Map<String, Object> getExtraParams()
  {
    return this.u;
  }
  
  public Long getHandshakeTime()
  {
    return this.m;
  }
  
  public String getHost()
  {
    return this.b;
  }
  
  public String getIps()
  {
    return this.e;
  }
  
  public String getNetSdkVersion()
  {
    return this.t;
  }
  
  public String getPath()
  {
    return this.d;
  }
  
  public Integer getPort()
  {
    return this.c;
  }
  
  public Long getReceiveAllByteTime()
  {
    return this.p;
  }
  
  public Long getReceiveFirstByteTime()
  {
    return this.o;
  }
  
  public Long getRequestDataSendTime()
  {
    return this.n;
  }
  
  public String getRequestNetType()
  {
    return this.s;
  }
  
  public Long getRequestTimestamp()
  {
    return this.r;
  }
  
  public Integer getResponseCode()
  {
    return this.f;
  }
  
  public String getResultType()
  {
    return this.i;
  }
  
  public Integer getRetryCount()
  {
    return this.j;
  }
  
  public String getScheme()
  {
    return this.a;
  }
  
  public Integer getStatusCode()
  {
    return this.g;
  }
  
  public Long getTcpConnectTime()
  {
    return this.l;
  }
  
  public static final class Builder
  {
    private String a;
    private String b;
    private Integer c;
    private String d;
    private String e;
    private Integer f;
    private Integer g;
    private String h;
    private ServiceQualityEvent.ResultType i;
    private Integer j;
    private Long k;
    private Long l;
    private Long m;
    private Long n;
    private Long o;
    private Long p;
    private Long q;
    private Long r;
    private OneTrack.NetType s;
    private String t;
    private Map<String, Object> u;
    
    public ServiceQualityEvent build()
    {
      return new ServiceQualityEvent(this, null);
    }
    
    public Builder setDnsLookupTime(Long paramLong)
    {
      this.k = paramLong;
      return this;
    }
    
    public Builder setDuration(Long paramLong)
    {
      this.q = paramLong;
      return this;
    }
    
    public Builder setExceptionTag(String paramString)
    {
      this.h = paramString;
      return this;
    }
    
    public Builder setExtraParams(Map<String, Object> paramMap)
    {
      this.u = paramMap;
      return this;
    }
    
    public Builder setHandshakeTime(Long paramLong)
    {
      this.m = paramLong;
      return this;
    }
    
    public Builder setHost(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public Builder setIps(String... paramVarArgs)
    {
      if (paramVarArgs != null) {
        this.e = TextUtils.join(",", paramVarArgs);
      }
      return this;
    }
    
    public Builder setNetSdkVersion(String paramString)
    {
      this.t = paramString;
      return this;
    }
    
    public Builder setPath(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public Builder setPort(Integer paramInteger)
    {
      this.c = paramInteger;
      return this;
    }
    
    public Builder setReceiveAllByteTime(Long paramLong)
    {
      this.p = paramLong;
      return this;
    }
    
    public Builder setReceiveFirstByteTime(Long paramLong)
    {
      this.o = paramLong;
      return this;
    }
    
    public Builder setRequestDataSendTime(Long paramLong)
    {
      this.n = paramLong;
      return this;
    }
    
    public Builder setRequestNetType(OneTrack.NetType paramNetType)
    {
      this.s = paramNetType;
      return this;
    }
    
    public Builder setRequestTimestamp(Long paramLong)
    {
      this.r = paramLong;
      return this;
    }
    
    public Builder setResponseCode(Integer paramInteger)
    {
      this.f = paramInteger;
      return this;
    }
    
    public Builder setResultType(ServiceQualityEvent.ResultType paramResultType)
    {
      this.i = paramResultType;
      return this;
    }
    
    public Builder setRetryCount(Integer paramInteger)
    {
      this.j = paramInteger;
      return this;
    }
    
    public Builder setScheme(String paramString)
    {
      this.a = paramString;
      return this;
    }
    
    public Builder setStatusCode(Integer paramInteger)
    {
      this.g = paramInteger;
      return this;
    }
    
    public Builder setTcpConnectTime(Long paramLong)
    {
      this.l = paramLong;
      return this;
    }
  }
  
  public static enum ResultType
  {
    private String a;
    
    static
    {
      ResultType localResultType1 = new ResultType("SUCCESS", 0, "ok");
      SUCCESS = localResultType1;
      ResultType localResultType2 = new ResultType("FAILED", 1, "failed");
      FAILED = localResultType2;
      ResultType localResultType3 = new ResultType("TIMEOUT", 2, "timeout");
      TIMEOUT = localResultType3;
      b = new ResultType[] { localResultType1, localResultType2, localResultType3 };
    }
    
    private ResultType(String paramString)
    {
      this.a = paramString;
    }
    
    public String getResultType()
    {
      return this.a;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.ServiceQualityEvent
 * JD-Core Version:    0.7.0.1
 */