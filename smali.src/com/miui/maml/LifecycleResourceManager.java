package com.miui.maml;

import android.util.Log;
import android.util.LruCache;
import java.util.ArrayList;
import java.util.Iterator;
import n.b;

public class LifecycleResourceManager
  extends ResourceManager
{
  private static final String LOG_TAG = "LifecycleResourceManager";
  public static final int TIME_DAY = 86400000;
  public static final int TIME_HOUR = 3600000;
  private static long mLastCheckCacheTime;
  private long mCheckTime;
  private long mInactiveTime;
  
  public LifecycleResourceManager(ResourceLoader paramResourceLoader, long paramLong1, long paramLong2)
  {
    super(paramResourceLoader);
    this.mInactiveTime = paramLong1;
    this.mCheckTime = paramLong2;
  }
  
  public void checkCache()
  {
    long l = System.currentTimeMillis();
    if (l - mLastCheckCacheTime < this.mCheckTime) {
      return;
    }
    Log.d("LifecycleResourceManager", "begin check cache... ");
    Object localObject1 = new ArrayList();
    synchronized (this.mBitmapKeysLock)
    {
      Iterator localIterator = this.mBitmapKeys.iterator();
      Object localObject4;
      Object localObject5;
      while (localIterator.hasNext())
      {
        localObject4 = (String)localIterator.next();
        localObject5 = (ResourceManager.BitmapInfo)ResourceManager.sBitmapsCache.get(localObject4);
        if ((localObject5 != null) && (l - ((ResourceManager.BitmapInfo)localObject5).mLastVisitTime > this.mInactiveTime)) {
          ((ArrayList)localObject1).add(localObject4);
        }
      }
      localObject1 = ((ArrayList)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject5 = (String)((Iterator)localObject1).next();
        localObject4 = new java/lang/StringBuilder;
        ((StringBuilder)localObject4).<init>();
        ((StringBuilder)localObject4).append("remove cache: ");
        ((StringBuilder)localObject4).append((String)localObject5);
        Log.d("LifecycleResourceManager", ((StringBuilder)localObject4).toString());
        ResourceManager.sBitmapsCache.remove(localObject5);
        this.mBitmapKeys.remove(localObject5);
      }
      mLastCheckCacheTime = l;
      return;
    }
  }
  
  public void finish(boolean paramBoolean)
  {
    if (paramBoolean) {
      checkCache();
    }
    super.finish(paramBoolean);
  }
  
  public void pause()
  {
    checkCache();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.LifecycleResourceManager
 * JD-Core Version:    0.7.0.1
 */