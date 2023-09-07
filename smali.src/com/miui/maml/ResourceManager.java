package com.miui.maml;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.graphics.NinePatch;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.os.AsyncTask;
import android.os.MemoryFile;
import android.text.TextUtils;
import android.util.Log;
import android.util.LruCache;
import android.util.MiuiDisplayMetrics;
import java.io.File;
import java.io.InputStream;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import n.b;
import org.w3c.dom.Element;

public class ResourceManager
{
  private static final int DEF_CACHE_SIZE = 268435456;
  private static final int DENSITY_HIGH_R = 240;
  private static final int DENSITY_XHIGH_R = 360;
  private static final int DENSITY_XXHIGH_R = 540;
  private static final int DENSITY_XXXHIGH = 640;
  private static final int DENSITY_XXXHIGH_R = 720;
  private static final String LOG_TAG = "ResourceManager";
  private static final String RESOURCE_DENSITY_DEVICE_FALLBACK_EXTRA_FOLDER;
  private static final int RESOURCE_FALLBACK_DENSITY = 480;
  private static final String RESOURCE_FALLBACK_EXTRA_FOLDER = "den480/";
  protected static LruCache<String, BitmapInfo> sBitmapsCache = new LruCache(268435456)
  {
    protected int sizeOf(String paramAnonymousString, ResourceManager.BitmapInfo paramAnonymousBitmapInfo)
    {
      if (paramAnonymousBitmapInfo != null)
      {
        paramAnonymousString = paramAnonymousBitmapInfo.mBitmap;
        if (paramAnonymousString != null) {
          return paramAnonymousString.getAllocationByteCount();
        }
      }
      return 0;
    }
  };
  private static final Object sLock;
  private static volatile int sRef;
  private static ConcurrentHashMap<String, WeakReference<BitmapInfo>> sWeakRefBitmapsCache = new ConcurrentHashMap();
  protected b<String> mBitmapKeys = new b();
  protected final Object mBitmapKeysLock = new Object();
  private int mDefaultResourceDensity;
  private int mExtraResourceDensity;
  private String mExtraResourceFolder;
  private final b<String> mLoadingBitmaps = new b();
  private ResourceLoader mResourceLoader;
  private int mTargetDensity;
  
  static
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("den");
    localStringBuilder.append(MiuiDisplayMetrics.DENSITY_DEVICE);
    localStringBuilder.append("/");
    RESOURCE_DENSITY_DEVICE_FALLBACK_EXTRA_FOLDER = localStringBuilder.toString();
    sLock = new Object();
  }
  
  public ResourceManager(ResourceLoader paramResourceLoader)
  {
    synchronized (sLock)
    {
      sRef += 1;
      this.mResourceLoader = paramResourceLoader;
      return;
    }
  }
  
  public static void clear()
  {
    sBitmapsCache.evictAll();
    sWeakRefBitmapsCache.clear();
  }
  
  private BitmapInfo getCache(String paramString)
  {
    ??? = new StringBuilder();
    ((StringBuilder)???).append(this.mResourceLoader.getID());
    ((StringBuilder)???).append(paramString);
    String str = ((StringBuilder)???).toString();
    ??? = (BitmapInfo)sBitmapsCache.get(str);
    WeakReference localWeakReference = (WeakReference)sWeakRefBitmapsCache.get(str);
    if (??? != null)
    {
      ((BitmapInfo)???).mLastVisitTime = System.currentTimeMillis();
      if (localWeakReference != null)
      {
        paramString = (String)???;
        if (localWeakReference.get() != null) {}
      }
      else
      {
        sWeakRefBitmapsCache.put(str, new WeakReference(???));
        paramString = (String)???;
      }
    }
    else
    {
      paramString = (String)???;
      if (localWeakReference != null)
      {
        paramString = (BitmapInfo)localWeakReference.get();
        if (paramString != null)
        {
          paramString.mLastVisitTime = System.currentTimeMillis();
          synchronized (this.mBitmapKeysLock)
          {
            this.mBitmapKeys.add(str);
            sBitmapsCache.put(str, paramString);
          }
        }
        sWeakRefBitmapsCache.remove(str);
      }
    }
    return paramString;
  }
  
  private BitmapInfo loadBitmap(String arg1)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    int i = 1;
    localOptions.inScaled = true;
    localOptions.inTargetDensity = this.mTargetDensity;
    if (this.mExtraResourceFolder != null)
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("try to load resource from extra resource: ");
      ((StringBuilder)localObject1).append(this.mExtraResourceFolder);
      ((StringBuilder)localObject1).append(" of ");
      ((StringBuilder)localObject1).append(???);
      Log.i("ResourceManager", ((StringBuilder)localObject1).toString());
      localOptions.inDensity = this.mExtraResourceDensity;
      if (TextUtils.isEmpty(this.mExtraResourceFolder))
      {
        localObject1 = ???;
      }
      else
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append(this.mExtraResourceFolder);
        ((StringBuilder)localObject1).append("/");
        ((StringBuilder)localObject1).append(???);
        localObject1 = ((StringBuilder)localObject1).toString();
      }
      localObject3 = this.mResourceLoader.getBitmapInfo((String)localObject1, localOptions);
      localObject1 = localObject3;
      if (localObject3 != null)
      {
        i = 0;
        localObject1 = localObject3;
      }
    }
    else
    {
      localObject1 = null;
    }
    Object localObject3 = localObject1;
    if (localObject1 == null)
    {
      localOptions.inDensity = this.mDefaultResourceDensity;
      localObject3 = this.mResourceLoader.getBitmapInfo(???, localOptions);
    }
    Object localObject1 = localObject3;
    if (localObject3 == null)
    {
      localOptions.inDensity = MiuiDisplayMetrics.DENSITY_DEVICE;
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(RESOURCE_DENSITY_DEVICE_FALLBACK_EXTRA_FOLDER);
      ((StringBuilder)localObject1).append(???);
      localObject1 = ((StringBuilder)localObject1).toString();
      localObject1 = this.mResourceLoader.getBitmapInfo((String)localObject1, localOptions);
    }
    localObject3 = localObject1;
    if (localObject1 == null)
    {
      localOptions.inDensity = 480;
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("den480/");
      ((StringBuilder)localObject1).append(???);
      localObject1 = ((StringBuilder)localObject1).toString();
      localObject3 = this.mResourceLoader.getBitmapInfo((String)localObject1, localOptions);
    }
    if (localObject3 != null)
    {
      if (i == 0)
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("load image from extra resource: ");
        ((StringBuilder)localObject1).append(this.mExtraResourceFolder);
        ((StringBuilder)localObject1).append(" of ");
        ((StringBuilder)localObject1).append(???);
        Log.i("ResourceManager", ((StringBuilder)localObject1).toString());
      }
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(this.mResourceLoader.getID());
      ((StringBuilder)localObject1).append(???);
      ((BitmapInfo)localObject3).mKey = ((StringBuilder)localObject1).toString();
      ((BitmapInfo)localObject3).mBitmap.setDensity(this.mTargetDensity);
      ((BitmapInfo)localObject3).mLastVisitTime = System.currentTimeMillis();
      synchronized (this.mBitmapKeysLock)
      {
        this.mBitmapKeys.add(((BitmapInfo)localObject3).mKey);
        sBitmapsCache.put(((BitmapInfo)localObject3).mKey, localObject3);
        sWeakRefBitmapsCache.put(((BitmapInfo)localObject3).mKey, new WeakReference(localObject3));
      }
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("fail to load image: ");
    localStringBuilder.append(???);
    Log.e("ResourceManager", localStringBuilder.toString());
    return localObject3;
  }
  
  public static int retranslateDensity(int paramInt)
  {
    if ((paramInt > 240) && (paramInt <= 360)) {
      return (int)((paramInt - 240) * 0.6666666666666666D) + 240;
    }
    if ((paramInt > 360) && (paramInt <= 540)) {
      return (int)((paramInt - 360) * 0.8888888888888888D) + 320;
    }
    int i = paramInt;
    if (paramInt > 540)
    {
      i = paramInt;
      if (paramInt <= 720) {
        i = (int)((paramInt - 540) * 0.8888888888888888D) + 480;
      }
    }
    return i;
  }
  
  public static int translateDensity(int paramInt)
  {
    if ((paramInt > 240) && (paramInt <= 320)) {
      return (int)((paramInt - 240) * 1.5D) + 240;
    }
    if ((paramInt > 320) && (paramInt <= 480)) {
      return (int)((paramInt - 320) * 1.125D) + 360;
    }
    int i = paramInt;
    if (paramInt > 480)
    {
      i = paramInt;
      if (paramInt <= 640) {
        i = (int)((paramInt - 480) * 1.125D) + 540;
      }
    }
    return i;
  }
  
  public void clear(String arg1)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(this.mResourceLoader.getID());
    ((StringBuilder)localObject1).append(???);
    localObject1 = ((StringBuilder)localObject1).toString();
    sBitmapsCache.remove(localObject1);
    synchronized (this.mBitmapKeysLock)
    {
      this.mBitmapKeys.remove(localObject1);
      return;
    }
  }
  
  public void clearByKeys()
  {
    synchronized (this.mBitmapKeysLock)
    {
      for (int i = this.mBitmapKeys.size() - 1; i >= 0; i--)
      {
        String str = (String)this.mBitmapKeys.n(i);
        sBitmapsCache.remove(str);
        sWeakRefBitmapsCache.remove(str);
        this.mBitmapKeys.m(i);
      }
      return;
    }
  }
  
  protected void finalize()
    throws Throwable
  {
    synchronized (sLock)
    {
      int i = sRef;
      boolean bool = true;
      sRef = i - 1;
      if (sRef <= 0) {
        bool = false;
      }
      finish(bool);
      super.finalize();
      return;
    }
  }
  
  public void finish(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      sBitmapsCache.evictAll();
      synchronized (this.mBitmapKeysLock)
      {
        this.mBitmapKeys.clear();
        sWeakRefBitmapsCache.clear();
      }
    }
    synchronized (this.mLoadingBitmaps)
    {
      this.mLoadingBitmaps.clear();
      this.mResourceLoader.finish();
      return;
    }
  }
  
  public Bitmap getBitmap(String paramString)
  {
    paramString = getBitmapInfo(paramString);
    if (paramString != null) {
      paramString = paramString.mBitmap;
    } else {
      paramString = null;
    }
    return paramString;
  }
  
  public BitmapInfo getBitmapInfo(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    Object localObject = getCache(paramString);
    if (localObject != null) {
      return localObject;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("load image ");
    ((StringBuilder)localObject).append(paramString);
    Log.i("ResourceManager", ((StringBuilder)localObject).toString());
    return loadBitmap(paramString);
  }
  
  public BitmapInfo getBitmapInfoAsync(String paramString, AsyncLoadListener paramAsyncLoadListener)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    ??? = getCache(paramString);
    if (??? != null) {
      return ???;
    }
    synchronized (this.mLoadingBitmaps)
    {
      if (!this.mLoadingBitmaps.contains(paramString))
      {
        Object localObject2 = getCache(paramString);
        if (localObject2 != null) {
          return localObject2;
        }
        this.mLoadingBitmaps.add(paramString);
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        ((StringBuilder)localObject2).append("load image async: ");
        ((StringBuilder)localObject2).append(paramString);
        Log.i("ResourceManager", ((StringBuilder)localObject2).toString());
        localObject2 = new com/miui/maml/ResourceManager$LoadBitmapAsyncTask;
        ((LoadBitmapAsyncTask)localObject2).<init>(this, paramAsyncLoadListener);
        ((AsyncTask)localObject2).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[] { paramString });
      }
      paramString = new BitmapInfo();
      paramString.mLoading = true;
      return paramString;
    }
  }
  
  public Element getConfigRoot()
  {
    return this.mResourceLoader.getConfigRoot();
  }
  
  public Drawable getDrawable(Resources paramResources, String paramString)
  {
    BitmapInfo localBitmapInfo = getBitmapInfo(paramString);
    if (localBitmapInfo != null)
    {
      Bitmap localBitmap = localBitmapInfo.mBitmap;
      if (localBitmap != null)
      {
        if (localBitmapInfo.mNinePatch != null)
        {
          paramResources = new NinePatchDrawable(paramResources, localBitmap, localBitmap.getNinePatchChunk(), localBitmapInfo.mPadding, paramString);
          paramResources.setTargetDensity(this.mTargetDensity);
          return paramResources;
        }
        paramResources = new BitmapDrawable(paramResources, localBitmap);
        paramResources.setTargetDensity(this.mTargetDensity);
        return paramResources;
      }
    }
    return null;
  }
  
  public File getExtraFile(String paramString)
  {
    return this.mResourceLoader.getExtraFile(paramString);
  }
  
  public MemoryFile getFile(String paramString)
  {
    return this.mResourceLoader.getFile(paramString);
  }
  
  public final InputStream getInputStream(String paramString)
  {
    return this.mResourceLoader.getInputStream(paramString);
  }
  
  public final InputStream getInputStream(String paramString, long[] paramArrayOfLong)
  {
    return this.mResourceLoader.getInputStream(paramString, paramArrayOfLong);
  }
  
  public Element getManifestRoot()
  {
    return this.mResourceLoader.getManifestRoot();
  }
  
  public NinePatch getNinePatch(String paramString)
  {
    paramString = getBitmapInfo(paramString);
    if (paramString != null) {
      paramString = paramString.mNinePatch;
    } else {
      paramString = null;
    }
    return paramString;
  }
  
  public String getPathForLanguage(String paramString)
  {
    return this.mResourceLoader.getPathForLanguage(paramString);
  }
  
  public void init()
  {
    this.mResourceLoader.init();
  }
  
  public void pause() {}
  
  public final boolean resourceExists(String paramString)
  {
    return this.mResourceLoader.resourceExists(paramString);
  }
  
  public void resume() {}
  
  public void setCacheSize(int paramInt)
  {
    sBitmapsCache.resize(paramInt);
  }
  
  public void setDefaultResourceDensity(int paramInt)
  {
    this.mDefaultResourceDensity = paramInt;
  }
  
  public void setExtraResource(String paramString)
  {
    this.mExtraResourceFolder = paramString;
  }
  
  public void setExtraResource(String paramString, int paramInt)
  {
    this.mExtraResourceFolder = paramString;
    this.mExtraResourceDensity = paramInt;
  }
  
  public void setExtraResourceDensity(int paramInt)
  {
    this.mExtraResourceDensity = paramInt;
  }
  
  public void setLocal(Locale paramLocale)
  {
    if (paramLocale == null) {
      return;
    }
    if (!paramLocale.equals(this.mResourceLoader.getLocale()))
    {
      this.mResourceLoader.setLocal(paramLocale);
      finish(false);
    }
  }
  
  public void setTargetDensity(int paramInt)
  {
    this.mTargetDensity = paramInt;
  }
  
  public static abstract interface AsyncLoadListener
  {
    public abstract void onLoadComplete(String paramString, ResourceManager.BitmapInfo paramBitmapInfo);
  }
  
  public static class BitmapInfo
  {
    public final Bitmap mBitmap;
    public String mKey;
    public long mLastVisitTime;
    public boolean mLoading;
    public final NinePatch mNinePatch;
    public final Rect mPadding;
    
    public BitmapInfo()
    {
      this.mBitmap = null;
      this.mPadding = null;
      this.mNinePatch = null;
    }
    
    public BitmapInfo(Bitmap paramBitmap, Rect paramRect)
    {
      this.mBitmap = paramBitmap;
      this.mPadding = paramRect;
      if ((paramBitmap != null) && (paramBitmap.getNinePatchChunk() != null)) {
        this.mNinePatch = new NinePatch(paramBitmap, paramBitmap.getNinePatchChunk(), null);
      } else {
        this.mNinePatch = null;
      }
      this.mLastVisitTime = System.currentTimeMillis();
    }
  }
  
  private class LoadBitmapAsyncTask
    extends AsyncTask<String, Object, ResourceManager.BitmapInfo>
  {
    private ResourceManager.AsyncLoadListener mLoadListener;
    private String mSrc;
    
    public LoadBitmapAsyncTask(ResourceManager.AsyncLoadListener paramAsyncLoadListener)
    {
      this.mLoadListener = paramAsyncLoadListener;
    }
    
    protected ResourceManager.BitmapInfo doInBackground(String... paramVarArgs)
    {
      paramVarArgs = paramVarArgs[0];
      this.mSrc = paramVarArgs;
      if (paramVarArgs != null) {
        return ResourceManager.this.loadBitmap(paramVarArgs);
      }
      return null;
    }
    
    protected void onPostExecute(ResourceManager.BitmapInfo paramBitmapInfo)
    {
      synchronized (ResourceManager.this.mLoadingBitmaps)
      {
        this.mLoadListener.onLoadComplete(this.mSrc, paramBitmapInfo);
        ResourceManager.this.mLoadingBitmaps.remove(this.mSrc);
        return;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.ResourceManager
 * JD-Core Version:    0.7.0.1
 */