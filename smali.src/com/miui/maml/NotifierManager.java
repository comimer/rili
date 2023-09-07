package com.miui.maml;

import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.provider.MiuiSettings.System;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.util.HideSdkDependencyUtils;
import com.miui.maml.util.MobileDataUtils;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public final class NotifierManager
{
  private static boolean DBG = true;
  private static final String LOG_TAG = "NotifierManager";
  public static String TYPE_DARK_MODE = "DarkMode";
  public static String TYPE_MOBILE_DATA = "MobileData";
  public static String TYPE_TIME_CHANGED = "TimeChanged";
  public static String TYPE_WIFI_STATE = "WifiState";
  private static NotifierManager sInstance;
  private Context mContext;
  private HashMap<String, BaseNotifier> mNotifiers = new HashMap();
  
  private NotifierManager(Context paramContext)
  {
    this.mContext = paramContext;
  }
  
  private static BaseNotifier createNotifier(String paramString, Context paramContext)
  {
    if (DBG)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("createNotifier:");
      localStringBuilder.append(paramString);
      Log.i("NotifierManager", localStringBuilder.toString());
    }
    if (TYPE_MOBILE_DATA.equals(paramString)) {
      return new MobileDataNotifier(paramContext);
    }
    if (TYPE_WIFI_STATE.equals(paramString)) {
      return new MultiBroadcastNotifier(paramContext, new String[] { "android.net.wifi.WIFI_STATE_CHANGED", "android.net.wifi.SCAN_RESULTS", "android.net.wifi.STATE_CHANGE" });
    }
    if (TYPE_TIME_CHANGED.equals(paramString)) {
      return new MultiBroadcastNotifier(paramContext, new String[] { "android.intent.action.TIMEZONE_CHANGED", "android.intent.action.TIME_SET" });
    }
    if (TYPE_DARK_MODE.equals(paramString)) {
      return new DarkModeNotifier(paramContext);
    }
    return new BroadcastNotifier(paramContext, paramString);
  }
  
  public static NotifierManager getInstance(Context paramContext)
  {
    try
    {
      if (sInstance == null)
      {
        NotifierManager localNotifierManager = new com/miui/maml/NotifierManager;
        localNotifierManager.<init>(paramContext);
        sInstance = localNotifierManager;
      }
      paramContext = sInstance;
      return paramContext;
    }
    finally {}
  }
  
  private BaseNotifier safeGet(String paramString)
  {
    synchronized (this.mNotifiers)
    {
      paramString = (BaseNotifier)this.mNotifiers.get(paramString);
      return paramString;
    }
  }
  
  public void acquireNotifier(String paramString, OnNotifyListener paramOnNotifyListener)
  {
    Object localObject;
    if (DBG)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("acquireNotifier:");
      ((StringBuilder)localObject).append(paramString);
      ((StringBuilder)localObject).append("  ");
      ((StringBuilder)localObject).append(paramOnNotifyListener.toString());
      Log.i("NotifierManager", ((StringBuilder)localObject).toString());
    }
    synchronized (this.mNotifiers)
    {
      BaseNotifier localBaseNotifier = (BaseNotifier)this.mNotifiers.get(paramString);
      localObject = localBaseNotifier;
      if (localBaseNotifier == null)
      {
        localObject = createNotifier(paramString, this.mContext);
        if (localObject == null) {
          return;
        }
        ((BaseNotifier)localObject).init();
        this.mNotifiers.put(paramString, localObject);
      }
      ((BaseNotifier)localObject).addListener(paramOnNotifyListener);
      return;
    }
  }
  
  public void pause(String paramString, OnNotifyListener paramOnNotifyListener)
  {
    paramString = safeGet(paramString);
    if (paramString == null) {
      return;
    }
    if (paramString.pauseListener(paramOnNotifyListener) == 0) {
      paramString.pause();
    }
  }
  
  public void releaseNotifier(String paramString, OnNotifyListener paramOnNotifyListener)
  {
    if (DBG)
    {
      ??? = new StringBuilder();
      ((StringBuilder)???).append("releaseNotifier:");
      ((StringBuilder)???).append(paramString);
      ((StringBuilder)???).append("  ");
      ((StringBuilder)???).append(paramOnNotifyListener.toString());
      Log.i("NotifierManager", ((StringBuilder)???).toString());
    }
    synchronized (this.mNotifiers)
    {
      BaseNotifier localBaseNotifier = (BaseNotifier)this.mNotifiers.get(paramString);
      if (localBaseNotifier == null) {
        return;
      }
      localBaseNotifier.removeListener(paramOnNotifyListener);
      if (localBaseNotifier.getRef() == 0)
      {
        localBaseNotifier.finish();
        this.mNotifiers.remove(paramString);
      }
      return;
    }
  }
  
  public void resume(String paramString, OnNotifyListener paramOnNotifyListener)
  {
    try
    {
      paramString = safeGet(paramString);
      if (paramString == null) {
        return;
      }
      if (paramString.resumeListener(paramOnNotifyListener) == 1) {
        paramString.resume();
      }
      return;
    }
    finally {}
  }
  
  public static abstract class BaseNotifier
  {
    private int mActiveCount;
    protected Context mContext;
    private ArrayList<Listener> mListeners = new ArrayList();
    private int mRefCount;
    private boolean mRegistered;
    
    public BaseNotifier(Context paramContext)
    {
      this.mContext = paramContext;
    }
    
    private final void checkListeners()
    {
      synchronized (this.mListeners)
      {
        if (checkListenersLocked() == 0) {
          pause();
        }
        return;
      }
    }
    
    private final int checkListenersLocked()
    {
      this.mActiveCount = 0;
      for (int i = this.mListeners.size() - 1; i >= 0; i--)
      {
        Listener localListener = (Listener)this.mListeners.get(i);
        if (localListener.ref.get() == null) {
          this.mListeners.remove(i);
        } else if (!localListener.paused) {
          this.mActiveCount += 1;
        }
      }
      i = this.mListeners.size();
      this.mRefCount = i;
      return i;
    }
    
    private final Listener findListenerLocked(NotifierManager.OnNotifyListener paramOnNotifyListener)
    {
      Iterator localIterator = this.mListeners.iterator();
      while (localIterator.hasNext())
      {
        Listener localListener = (Listener)localIterator.next();
        if (localListener.ref.get() == paramOnNotifyListener) {
          return localListener;
        }
      }
      return null;
    }
    
    public final void addListener(NotifierManager.OnNotifyListener paramOnNotifyListener)
    {
      synchronized (this.mListeners)
      {
        if (findListenerLocked(paramOnNotifyListener) == null)
        {
          ArrayList localArrayList2 = this.mListeners;
          Listener localListener = new com/miui/maml/NotifierManager$BaseNotifier$Listener;
          localListener.<init>(paramOnNotifyListener);
          localArrayList2.add(localListener);
          checkListenersLocked();
          onListenerAdded(paramOnNotifyListener);
        }
        return;
      }
    }
    
    public void finish()
    {
      unregister();
    }
    
    public final int getActiveCount()
    {
      checkListeners();
      return this.mActiveCount;
    }
    
    public final int getRef()
    {
      checkListeners();
      return this.mRefCount;
    }
    
    public void init()
    {
      register();
    }
    
    protected void onListenerAdded(NotifierManager.OnNotifyListener paramOnNotifyListener) {}
    
    protected void onNotify(Context paramContext, Intent paramIntent, Object paramObject)
    {
      checkListeners();
      synchronized (this.mListeners)
      {
        Iterator localIterator = this.mListeners.iterator();
        while (localIterator.hasNext()) {
          ((Listener)localIterator.next()).onNotify(paramContext, paramIntent, paramObject);
        }
        return;
      }
    }
    
    protected abstract void onRegister();
    
    protected abstract void onUnregister();
    
    public void pause()
    {
      unregister();
    }
    
    public final int pauseListener(NotifierManager.OnNotifyListener paramOnNotifyListener)
    {
      synchronized (this.mListeners)
      {
        paramOnNotifyListener = findListenerLocked(paramOnNotifyListener);
        if (paramOnNotifyListener == null)
        {
          checkListenersLocked();
          Log.w("NotifierManager", "pauseListener, listener not exist");
          i = this.mRefCount;
          return i;
        }
        paramOnNotifyListener.pause();
        int i = this.mRefCount;
        return i;
      }
    }
    
    protected void register()
    {
      if (this.mRegistered) {
        return;
      }
      onRegister();
      this.mRegistered = true;
      if (NotifierManager.DBG)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("onRegister: ");
        localStringBuilder.append(toString());
        Log.i("NotifierManager", localStringBuilder.toString());
      }
    }
    
    public final void removeListener(NotifierManager.OnNotifyListener paramOnNotifyListener)
    {
      synchronized (this.mListeners)
      {
        paramOnNotifyListener = findListenerLocked(paramOnNotifyListener);
        if (paramOnNotifyListener != null)
        {
          this.mListeners.remove(paramOnNotifyListener);
          checkListenersLocked();
        }
        return;
      }
    }
    
    public void resume()
    {
      register();
    }
    
    public final int resumeListener(NotifierManager.OnNotifyListener paramOnNotifyListener)
    {
      synchronized (this.mListeners)
      {
        paramOnNotifyListener = findListenerLocked(paramOnNotifyListener);
        if (paramOnNotifyListener == null)
        {
          checkListenersLocked();
          Log.w("NotifierManager", "resumeListener, listener not exist");
          i = this.mRefCount;
          return i;
        }
        paramOnNotifyListener.resume();
        int i = this.mRefCount;
        return i;
      }
    }
    
    protected void unregister()
    {
      if (!this.mRegistered) {
        return;
      }
      try
      {
        onUnregister();
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        Log.w("NotifierManager", localIllegalArgumentException.toString());
      }
      this.mRegistered = false;
      if (NotifierManager.DBG)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("onUnregister: ");
        localStringBuilder.append(toString());
        Log.i("NotifierManager", localStringBuilder.toString());
      }
    }
    
    private static class Listener
    {
      public Context context;
      public Intent intent;
      public Object obj;
      private boolean paused;
      private boolean pendingNotify;
      public WeakReference<NotifierManager.OnNotifyListener> ref;
      
      public Listener(NotifierManager.OnNotifyListener paramOnNotifyListener)
      {
        this.ref = new WeakReference(paramOnNotifyListener);
      }
      
      public void onNotify(Context paramContext, Intent paramIntent, Object paramObject)
      {
        if (this.paused)
        {
          this.pendingNotify = true;
          this.context = paramContext;
          this.intent = paramIntent;
          this.obj = paramObject;
        }
        else
        {
          NotifierManager.OnNotifyListener localOnNotifyListener = (NotifierManager.OnNotifyListener)this.ref.get();
          if (localOnNotifyListener != null) {
            localOnNotifyListener.onNotify(paramContext, paramIntent, paramObject);
          }
        }
      }
      
      public void pause()
      {
        this.paused = true;
      }
      
      public void resume()
      {
        this.paused = false;
        if (this.pendingNotify)
        {
          NotifierManager.OnNotifyListener localOnNotifyListener = (NotifierManager.OnNotifyListener)this.ref.get();
          if (localOnNotifyListener != null)
          {
            localOnNotifyListener.onNotify(this.context, this.intent, this.obj);
            this.pendingNotify = false;
            this.context = null;
            this.intent = null;
            this.obj = null;
          }
        }
      }
    }
  }
  
  public static class BroadcastNotifier
    extends NotifierManager.BaseNotifier
  {
    private String mAction;
    private IntentFilter mIntentFilter;
    private final BroadcastReceiver mIntentReceiver = new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        if (NotifierManager.DBG)
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("onNotify: ");
          localStringBuilder.append(NotifierManager.BroadcastNotifier.this.toString());
          Log.i("NotifierManager", localStringBuilder.toString());
        }
        NotifierManager.BroadcastNotifier.this.onNotify(paramAnonymousContext, paramAnonymousIntent, null);
      }
    };
    
    public BroadcastNotifier(Context paramContext)
    {
      super();
    }
    
    public BroadcastNotifier(Context paramContext, String paramString)
    {
      super();
      this.mAction = paramString;
    }
    
    protected IntentFilter createIntentFilter()
    {
      Object localObject = getIntentAction();
      if (localObject == null) {
        localObject = null;
      } else {
        localObject = new IntentFilter((String)localObject);
      }
      return localObject;
    }
    
    protected String getIntentAction()
    {
      return this.mAction;
    }
    
    protected void onRegister()
    {
      if (this.mIntentFilter == null) {
        this.mIntentFilter = createIntentFilter();
      }
      Object localObject = this.mIntentFilter;
      if (localObject == null)
      {
        Log.e("NotifierManager", "onRegister: mIntentFilter is null");
        return;
      }
      localObject = this.mContext.registerReceiver(this.mIntentReceiver, (IntentFilter)localObject);
      if (localObject != null) {
        onNotify(this.mContext, (Intent)localObject, null);
      }
    }
    
    protected void onUnregister()
    {
      try
      {
        this.mContext.unregisterReceiver(this.mIntentReceiver);
        label11:
        return;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        break label11;
      }
    }
  }
  
  public static class ContentChangeNotifier
    extends NotifierManager.BaseNotifier
  {
    protected final ContentObserver mObserver = new ContentObserver(null)
    {
      public void onChange(boolean paramAnonymousBoolean)
      {
        if (NotifierManager.DBG)
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("onNotify: ");
          localStringBuilder.append(NotifierManager.ContentChangeNotifier.this.toString());
          Log.i("NotifierManager", localStringBuilder.toString());
        }
        NotifierManager.ContentChangeNotifier.this.onNotify(null, null, Boolean.valueOf(paramAnonymousBoolean));
      }
    };
    private Uri mUri;
    
    public ContentChangeNotifier(Context paramContext, Uri paramUri)
    {
      super();
      this.mUri = paramUri;
    }
    
    protected void onRegister()
    {
      this.mContext.getContentResolver().registerContentObserver(this.mUri, false, this.mObserver);
      onNotify(null, null, Boolean.TRUE);
    }
    
    protected void onUnregister()
    {
      this.mContext.getContentResolver().unregisterContentObserver(this.mObserver);
    }
  }
  
  public static class DarkModeNotifier
    extends NotifierManager.BaseNotifier
  {
    public static final int DARK_MODE = 1;
    public static final int DARK_WALLPAPER_MODE = 2;
    private ComponentCallbacks2 mComponentCallback = new ComponentCallbacks2()
    {
      public void onConfigurationChanged(Configuration paramAnonymousConfiguration)
      {
        NotifierManager.DarkModeNotifier.this.updateUIModeNight(paramAnonymousConfiguration);
        NotifierManager.DarkModeNotifier.this.checkIfNeedToNotify();
      }
      
      public void onLowMemory() {}
      
      public void onTrimMemory(int paramAnonymousInt) {}
    };
    private String mDarkModeName = HideSdkDependencyUtils.SettingsSecure_UI_NIGHT_MODE();
    private ContentObserver mDarkModeObserver = new ContentObserver(null)
    {
      public void onChange(boolean paramAnonymousBoolean)
      {
        NotifierManager.DarkModeNotifier.this.updateDarkMode();
        NotifierManager.DarkModeNotifier.this.checkIfNeedToNotify();
      }
    };
    private String mDarkWallpaperModeName = HideSdkDependencyUtils.SystemSettingsSystem_DARKEN_WALLPAPER_UNDER_DARK_MODE();
    private ContentObserver mDarkWallpaperModeObserver = new ContentObserver(null)
    {
      public void onChange(boolean paramAnonymousBoolean)
      {
        NotifierManager.DarkModeNotifier.this.updateDarkWallpaperMode();
        NotifierManager.DarkModeNotifier.this.checkIfNeedToNotify();
      }
    };
    private boolean mIsDarkMode;
    private boolean mIsDarkWallpaperMode;
    private boolean mIsUIModeNight;
    private int mMamlDarkMode;
    
    public DarkModeNotifier(Context paramContext)
    {
      super();
    }
    
    private void checkIfNeedToNotify()
    {
      int i;
      if ((!this.mIsDarkMode) && (!this.mIsUIModeNight)) {
        i = 0;
      } else {
        i = 1;
      }
      int j = i;
      if (this.mIsDarkWallpaperMode) {
        j = i | 0x2;
      }
      if (j != this.mMamlDarkMode)
      {
        this.mMamlDarkMode = j;
        onNotify(null, null, Integer.valueOf(j));
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("maml dark mode ");
        localStringBuilder.append(j);
        Log.d("NotifierManager", localStringBuilder.toString());
      }
    }
    
    private void updateDarkMode()
    {
      ContentResolver localContentResolver = this.mContext.getContentResolver();
      String str = this.mDarkModeName;
      boolean bool = true;
      if (Settings.Secure.getInt(localContentResolver, str, 1) != 2) {
        bool = false;
      }
      this.mIsDarkMode = bool;
    }
    
    private void updateDarkWallpaperMode()
    {
      this.mIsDarkWallpaperMode = MiuiSettings.System.getBoolean(this.mContext.getContentResolver(), this.mDarkWallpaperModeName, true);
    }
    
    private void updateUIModeNight(Configuration paramConfiguration)
    {
      boolean bool;
      if ((paramConfiguration.uiMode & 0x30) == 32) {
        bool = true;
      } else {
        bool = false;
      }
      this.mIsUIModeNight = bool;
    }
    
    protected void onListenerAdded(NotifierManager.OnNotifyListener paramOnNotifyListener)
    {
      paramOnNotifyListener.onNotify(null, null, Integer.valueOf(this.mMamlDarkMode));
    }
    
    protected void onRegister()
    {
      if ((!TextUtils.isEmpty(this.mDarkModeName)) && (!TextUtils.isEmpty(this.mDarkWallpaperModeName)))
      {
        try
        {
          this.mContext.getContentResolver().registerContentObserver(Settings.Secure.getUriFor(this.mDarkModeName), false, this.mDarkModeObserver);
          this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor(this.mDarkWallpaperModeName), false, this.mDarkWallpaperModeObserver);
          this.mContext.registerComponentCallbacks(this.mComponentCallback);
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
        updateDarkMode();
        updateDarkWallpaperMode();
        updateUIModeNight(this.mContext.getResources().getConfiguration());
        checkIfNeedToNotify();
      }
    }
    
    protected void onUnregister()
    {
      if ((!TextUtils.isEmpty(this.mDarkModeName)) && (!TextUtils.isEmpty(this.mDarkWallpaperModeName))) {
        try
        {
          this.mContext.getContentResolver().unregisterContentObserver(this.mDarkModeObserver);
          this.mContext.getContentResolver().unregisterContentObserver(this.mDarkWallpaperModeObserver);
          this.mContext.unregisterComponentCallbacks(this.mComponentCallback);
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    }
  }
  
  public static class MobileDataNotifier
    extends NotifierManager.ContentChangeNotifier
  {
    private MobileDataUtils mMobileDataUtils = MobileDataUtils.getInstance();
    
    public MobileDataNotifier(Context paramContext)
    {
      super(null);
    }
    
    protected void onRegister()
    {
      this.mMobileDataUtils.registerContentObserver(this.mContext, this.mObserver);
      onNotify(null, null, Boolean.TRUE);
    }
  }
  
  public static class MultiBroadcastNotifier
    extends NotifierManager.BroadcastNotifier
  {
    private String[] mIntents;
    
    public MultiBroadcastNotifier(Context paramContext, String... paramVarArgs)
    {
      super();
      this.mIntents = paramVarArgs;
    }
    
    protected IntentFilter createIntentFilter()
    {
      IntentFilter localIntentFilter = new IntentFilter();
      String[] arrayOfString = this.mIntents;
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++) {
        localIntentFilter.addAction(arrayOfString[j]);
      }
      return localIntentFilter;
    }
  }
  
  public static abstract interface OnNotifyListener
  {
    public abstract void onNotify(Context paramContext, Intent paramIntent, Object paramObject);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.NotifierManager
 * JD-Core Version:    0.7.0.1
 */