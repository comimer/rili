package com.miui.maml.util;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.miui.maml.RendererCore;
import com.miui.maml.RendererCore.OnReleaseListener;
import com.miui.maml.ResourceLoader;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.ScreenElementRootFactory;
import com.miui.maml.ScreenElementRootFactory.Parameter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class RendererCoreCache
  implements RendererCore.OnReleaseListener
{
  private static final String LOG_TAG = "RendererCoreCache";
  public static final int TIME_DAY = 86400000;
  public static final int TIME_HOUR = 3600000;
  public static final int TIME_MIN = 60000;
  private HashMap<Object, RendererCoreInfo> mCaches = new HashMap();
  private Handler mHandler;
  
  public RendererCoreCache()
  {
    this.mHandler = new Handler();
  }
  
  public RendererCoreCache(Handler paramHandler)
  {
    this.mHandler = paramHandler;
  }
  
  private void checkCache(Object paramObject)
  {
    try
    {
      Object localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      ((StringBuilder)localObject).append("checkCache: ");
      ((StringBuilder)localObject).append(paramObject);
      Log.d("RendererCoreCache", ((StringBuilder)localObject).toString());
      localObject = (RendererCoreInfo)this.mCaches.get(paramObject);
      if (localObject == null)
      {
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        ((StringBuilder)localObject).append("checkCache: the key does not exist, ");
        ((StringBuilder)localObject).append(paramObject);
        Log.d("RendererCoreCache", ((StringBuilder)localObject).toString());
        return;
      }
      long l1 = ((RendererCoreInfo)localObject).accessTime;
      if (l1 == 9223372036854775807L) {
        return;
      }
      long l2 = System.currentTimeMillis() - ((RendererCoreInfo)localObject).accessTime;
      if (l2 >= ((RendererCoreInfo)localObject).cacheTime)
      {
        this.mCaches.remove(paramObject);
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        ((StringBuilder)localObject).append("checkCache removed: ");
        ((StringBuilder)localObject).append(paramObject);
        Log.d("RendererCoreCache", ((StringBuilder)localObject).toString());
      }
      else
      {
        l1 = l2;
        if (l2 < 0L)
        {
          ((RendererCoreInfo)localObject).accessTime = System.currentTimeMillis();
          l1 = 0L;
        }
        this.mHandler.postDelayed(((RendererCoreInfo)localObject).checkCache, ((RendererCoreInfo)localObject).cacheTime - l1);
        StringBuilder localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>();
        localStringBuilder.append("checkCache resheduled: ");
        localStringBuilder.append(paramObject);
        localStringBuilder.append(" after ");
        localStringBuilder.append(((RendererCoreInfo)localObject).cacheTime - l1);
        Log.d("RendererCoreCache", localStringBuilder.toString());
      }
      return;
    }
    finally {}
  }
  
  private RendererCoreInfo get(Object paramObject, Context paramContext, long paramLong, ResourceLoader paramResourceLoader, String paramString, OnCreateRootCallback paramOnCreateRootCallback)
  {
    RendererCoreInfo localRendererCoreInfo = get(paramObject, paramLong);
    if (localRendererCoreInfo != null) {
      return localRendererCoreInfo;
    }
    if (paramResourceLoader != null) {
      paramContext = ScreenElementRootFactory.create(new ScreenElementRootFactory.Parameter(paramContext, paramResourceLoader));
    } else {
      paramContext = ScreenElementRootFactory.create(new ScreenElementRootFactory.Parameter(paramContext, paramString));
    }
    paramResourceLoader = null;
    if (paramContext == null)
    {
      paramContext = new StringBuilder();
      paramContext.append("fail to get RendererCoreInfo");
      paramContext.append(paramObject);
      Log.e("RendererCoreCache", paramContext.toString());
      return null;
    }
    if (paramOnCreateRootCallback != null) {
      paramOnCreateRootCallback.onCreateRoot(paramContext);
    }
    paramContext.setDefaultFramerate(0.0F);
    if (paramContext.load()) {
      paramResourceLoader = new RendererCore(paramContext);
    }
    paramContext = new RendererCoreInfo(paramResourceLoader);
    paramContext.accessTime = 9223372036854775807L;
    paramContext.cacheTime = paramLong;
    if (paramResourceLoader != null)
    {
      paramResourceLoader.setOnReleaseListener(this);
      paramContext.checkCache = new CheckCacheRunnable(paramObject);
    }
    this.mCaches.put(paramObject, paramContext);
    return paramContext;
  }
  
  public boolean OnRendererCoreReleased(RendererCore paramRendererCore)
  {
    try
    {
      Object localObject1 = new java/lang/StringBuilder;
      ((StringBuilder)localObject1).<init>();
      ((StringBuilder)localObject1).append("OnRendererCoreReleased: ");
      ((StringBuilder)localObject1).append(paramRendererCore);
      Log.d("RendererCoreCache", ((StringBuilder)localObject1).toString());
      localObject1 = this.mCaches.keySet().iterator();
      boolean bool2;
      Object localObject2;
      RendererCoreInfo localRendererCoreInfo;
      do
      {
        boolean bool1 = ((Iterator)localObject1).hasNext();
        bool2 = false;
        if (!bool1) {
          break;
        }
        localObject2 = ((Iterator)localObject1).next();
        localRendererCoreInfo = (RendererCoreInfo)this.mCaches.get(localObject2);
      } while (localRendererCoreInfo.r != paramRendererCore);
      release(localObject2);
      long l = localRendererCoreInfo.cacheTime;
      if (l == 0L) {
        bool2 = true;
      }
      return bool2;
      return false;
    }
    finally {}
  }
  
  public void clear()
  {
    try
    {
      this.mCaches.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public RendererCoreInfo get(Object paramObject, long paramLong)
  {
    try
    {
      paramObject = (RendererCoreInfo)this.mCaches.get(paramObject);
      if (paramObject != null)
      {
        paramObject.accessTime = 9223372036854775807L;
        paramObject.cacheTime = paramLong;
        this.mHandler.removeCallbacks(paramObject.checkCache);
        return paramObject;
      }
      return null;
    }
    finally {}
  }
  
  public RendererCoreInfo get(Object paramObject, Context paramContext, long paramLong, ResourceLoader paramResourceLoader, OnCreateRootCallback paramOnCreateRootCallback)
  {
    try
    {
      paramObject = get(paramObject, paramContext, paramLong, paramResourceLoader, null, paramOnCreateRootCallback);
      return paramObject;
    }
    finally
    {
      paramObject = finally;
      throw paramObject;
    }
  }
  
  public RendererCoreInfo get(Object paramObject, Context paramContext, long paramLong, String paramString, OnCreateRootCallback paramOnCreateRootCallback)
  {
    try
    {
      paramObject = get(paramObject, paramContext, paramLong, null, paramString, paramOnCreateRootCallback);
      return paramObject;
    }
    finally
    {
      paramObject = finally;
      throw paramObject;
    }
  }
  
  public void release(Object paramObject)
  {
    try
    {
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("release: ");
      localStringBuilder.append(paramObject);
      Log.d("RendererCoreCache", localStringBuilder.toString());
      RendererCoreInfo localRendererCoreInfo = (RendererCoreInfo)this.mCaches.get(paramObject);
      if (localRendererCoreInfo != null)
      {
        localRendererCoreInfo.accessTime = System.currentTimeMillis();
        if (localRendererCoreInfo.cacheTime == 0L)
        {
          this.mCaches.remove(paramObject);
          localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          localStringBuilder.append("removed: ");
          localStringBuilder.append(paramObject);
          Log.d("RendererCoreCache", localStringBuilder.toString());
        }
        else
        {
          localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          localStringBuilder.append("scheduled release: ");
          localStringBuilder.append(paramObject);
          localStringBuilder.append(" after ");
          localStringBuilder.append(localRendererCoreInfo.cacheTime);
          Log.d("RendererCoreCache", localStringBuilder.toString());
          this.mHandler.removeCallbacks(localRendererCoreInfo.checkCache);
          this.mHandler.postDelayed(localRendererCoreInfo.checkCache, localRendererCoreInfo.cacheTime);
        }
      }
      return;
    }
    finally {}
  }
  
  protected class CheckCacheRunnable
    implements Runnable
  {
    private Object mKey;
    
    public CheckCacheRunnable(Object paramObject)
    {
      this.mKey = paramObject;
    }
    
    public void run()
    {
      RendererCoreCache.this.checkCache(this.mKey);
    }
  }
  
  public static abstract interface OnCreateRootCallback
  {
    public abstract void onCreateRoot(ScreenElementRoot paramScreenElementRoot);
  }
  
  public static class RendererCoreInfo
  {
    public long accessTime = 9223372036854775807L;
    public long cacheTime;
    public RendererCoreCache.CheckCacheRunnable checkCache;
    public RendererCore r;
    
    public RendererCoreInfo(RendererCore paramRendererCore)
    {
      this.r = paramRendererCore;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.RendererCoreCache
 * JD-Core Version:    0.7.0.1
 */