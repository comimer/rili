package com.xiaomi.passport.servicetoken;

import android.os.RemoteException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import y5.a;
import y5.a.c;

public class b
  extends a<ServiceTokenResult, ServiceTokenResult>
{
  public b(a.c<ServiceTokenResult> paramc)
  {
    super(paramc);
  }
  
  private ServiceTokenResult j(Long paramLong, TimeUnit paramTimeUnit)
  {
    if ((paramLong != null) && (paramTimeUnit != null)) {}
    try
    {
      return (ServiceTokenResult)super.get(paramLong.longValue(), paramTimeUnit);
    }
    catch (TimeoutException localTimeoutException)
    {
      ServiceTokenResult localServiceTokenResult;
      ServiceTokenResult.b localb = new ServiceTokenResult.b(null).q(ServiceTokenResult.ErrorCode.ERROR_TIME_OUT);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("time out after ");
      localStringBuilder.append(paramLong);
      localStringBuilder.append(" ");
      localStringBuilder.append(paramTimeUnit);
      return localb.r(localStringBuilder.toString()).o();
    }
    catch (ExecutionException paramTimeUnit)
    {
      if (!(paramTimeUnit.getCause() instanceof RemoteException)) {
        break label131;
      }
      return new ServiceTokenResult.b(null).q(ServiceTokenResult.ErrorCode.ERROR_REMOTE_EXCEPTION).r(paramTimeUnit.getMessage()).o();
      paramLong = paramTimeUnit;
      if (paramTimeUnit.getCause() == null) {
        break label145;
      }
      paramLong = paramTimeUnit.getCause();
      paramLong = paramLong.getMessage();
      return new ServiceTokenResult.b(null).q(ServiceTokenResult.ErrorCode.ERROR_UNKNOWN).r(paramLong).o();
    }
    catch (InterruptedException paramLong) {}
    localServiceTokenResult = (ServiceTokenResult)super.get();
    return localServiceTokenResult;
    label131:
    label145:
    return new ServiceTokenResult.b(null).q(ServiceTokenResult.ErrorCode.ERROR_CANCELLED).r(paramLong.getMessage()).o();
  }
  
  protected ServiceTokenResult g(ServiceTokenResult paramServiceTokenResult)
    throws Throwable
  {
    return paramServiceTokenResult;
  }
  
  public ServiceTokenResult h()
  {
    return j(null, null);
  }
  
  public ServiceTokenResult i(long paramLong, TimeUnit paramTimeUnit)
  {
    return j(Long.valueOf(paramLong), paramTimeUnit);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.servicetoken.b
 * JD-Core Version:    0.7.0.1
 */