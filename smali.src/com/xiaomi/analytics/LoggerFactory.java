package com.xiaomi.analytics;

import android.text.TextUtils;
import android.util.Log;
import f6.a;
import java.lang.reflect.Constructor;
import java.util.concurrent.ConcurrentHashMap;

class LoggerFactory<T extends BaseLogger>
{
  public ConcurrentHashMap<String, T> mMap = new ConcurrentHashMap();
  
  public T getLogger(Class<T> paramClass, String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (paramClass != null))
    {
      BaseLogger localBaseLogger = (BaseLogger)this.mMap.get(paramString);
      if (localBaseLogger == null) {
        try
        {
          paramClass = (BaseLogger)paramClass.getDeclaredConstructor(new Class[] { String.class }).newInstance(new Object[] { paramString });
          this.mMap.put(paramString, paramClass);
          return paramClass;
        }
        catch (Exception paramClass)
        {
          Log.e(a.a("LoggerFactory"), "getLogger e", paramClass);
          paramClass = new StringBuilder();
          paramClass.append("Can not instantiate logger. configKey:");
          paramClass.append(paramString);
          throw new IllegalStateException(paramClass.toString());
        }
      }
      return localBaseLogger;
    }
    paramClass = new StringBuilder();
    paramClass.append("Clazz is null or configKey is empty. configKey:");
    paramClass.append(paramString);
    throw new IllegalArgumentException(paramClass.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.analytics.LoggerFactory
 * JD-Core Version:    0.7.0.1
 */