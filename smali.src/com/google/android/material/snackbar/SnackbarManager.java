package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

class SnackbarManager
{
  private static final int LONG_DURATION_MS = 2750;
  static final int MSG_TIMEOUT = 0;
  private static final int SHORT_DURATION_MS = 1500;
  private static SnackbarManager snackbarManager;
  private SnackbarRecord currentSnackbar;
  private final Handler handler = new Handler(Looper.getMainLooper(), new Handler.Callback()
  {
    public boolean handleMessage(Message paramAnonymousMessage)
    {
      if (paramAnonymousMessage.what != 0) {
        return false;
      }
      SnackbarManager.this.handleTimeout((SnackbarManager.SnackbarRecord)paramAnonymousMessage.obj);
      return true;
    }
  });
  private final Object lock = new Object();
  private SnackbarRecord nextSnackbar;
  
  private boolean cancelSnackbarLocked(SnackbarRecord paramSnackbarRecord, int paramInt)
  {
    Callback localCallback = (Callback)paramSnackbarRecord.callback.get();
    if (localCallback != null)
    {
      this.handler.removeCallbacksAndMessages(paramSnackbarRecord);
      localCallback.dismiss(paramInt);
      return true;
    }
    return false;
  }
  
  static SnackbarManager getInstance()
  {
    if (snackbarManager == null) {
      snackbarManager = new SnackbarManager();
    }
    return snackbarManager;
  }
  
  private boolean isCurrentSnackbarLocked(Callback paramCallback)
  {
    SnackbarRecord localSnackbarRecord = this.currentSnackbar;
    boolean bool;
    if ((localSnackbarRecord != null) && (localSnackbarRecord.isSnackbar(paramCallback))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean isNextSnackbarLocked(Callback paramCallback)
  {
    SnackbarRecord localSnackbarRecord = this.nextSnackbar;
    boolean bool;
    if ((localSnackbarRecord != null) && (localSnackbarRecord.isSnackbar(paramCallback))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void scheduleTimeoutLocked(SnackbarRecord paramSnackbarRecord)
  {
    int i = paramSnackbarRecord.duration;
    if (i == -2) {
      return;
    }
    if (i <= 0) {
      if (i == -1) {
        i = 1500;
      } else {
        i = 2750;
      }
    }
    this.handler.removeCallbacksAndMessages(paramSnackbarRecord);
    Handler localHandler = this.handler;
    localHandler.sendMessageDelayed(Message.obtain(localHandler, 0, paramSnackbarRecord), i);
  }
  
  private void showNextSnackbarLocked()
  {
    Object localObject = this.nextSnackbar;
    if (localObject != null)
    {
      this.currentSnackbar = ((SnackbarRecord)localObject);
      this.nextSnackbar = null;
      localObject = (Callback)((SnackbarRecord)localObject).callback.get();
      if (localObject != null) {
        ((Callback)localObject).show();
      } else {
        this.currentSnackbar = null;
      }
    }
  }
  
  public void dismiss(Callback paramCallback, int paramInt)
  {
    synchronized (this.lock)
    {
      if (isCurrentSnackbarLocked(paramCallback)) {
        cancelSnackbarLocked(this.currentSnackbar, paramInt);
      } else if (isNextSnackbarLocked(paramCallback)) {
        cancelSnackbarLocked(this.nextSnackbar, paramInt);
      }
      return;
    }
  }
  
  void handleTimeout(SnackbarRecord paramSnackbarRecord)
  {
    synchronized (this.lock)
    {
      if ((this.currentSnackbar == paramSnackbarRecord) || (this.nextSnackbar == paramSnackbarRecord)) {
        cancelSnackbarLocked(paramSnackbarRecord, 2);
      }
      return;
    }
  }
  
  public boolean isCurrent(Callback paramCallback)
  {
    synchronized (this.lock)
    {
      boolean bool = isCurrentSnackbarLocked(paramCallback);
      return bool;
    }
  }
  
  public boolean isCurrentOrNext(Callback paramCallback)
  {
    synchronized (this.lock)
    {
      boolean bool;
      if ((!isCurrentSnackbarLocked(paramCallback)) && (!isNextSnackbarLocked(paramCallback))) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
  }
  
  public void onDismissed(Callback paramCallback)
  {
    synchronized (this.lock)
    {
      if (isCurrentSnackbarLocked(paramCallback))
      {
        this.currentSnackbar = null;
        if (this.nextSnackbar != null) {
          showNextSnackbarLocked();
        }
      }
      return;
    }
  }
  
  public void onShown(Callback paramCallback)
  {
    synchronized (this.lock)
    {
      if (isCurrentSnackbarLocked(paramCallback)) {
        scheduleTimeoutLocked(this.currentSnackbar);
      }
      return;
    }
  }
  
  public void pauseTimeout(Callback paramCallback)
  {
    synchronized (this.lock)
    {
      if (isCurrentSnackbarLocked(paramCallback))
      {
        paramCallback = this.currentSnackbar;
        if (!paramCallback.paused)
        {
          paramCallback.paused = true;
          this.handler.removeCallbacksAndMessages(paramCallback);
        }
      }
      return;
    }
  }
  
  public void restoreTimeoutIfPaused(Callback paramCallback)
  {
    synchronized (this.lock)
    {
      if (isCurrentSnackbarLocked(paramCallback))
      {
        paramCallback = this.currentSnackbar;
        if (paramCallback.paused)
        {
          paramCallback.paused = false;
          scheduleTimeoutLocked(paramCallback);
        }
      }
      return;
    }
  }
  
  public void show(int paramInt, Callback paramCallback)
  {
    synchronized (this.lock)
    {
      if (isCurrentSnackbarLocked(paramCallback))
      {
        paramCallback = this.currentSnackbar;
        paramCallback.duration = paramInt;
        this.handler.removeCallbacksAndMessages(paramCallback);
        scheduleTimeoutLocked(this.currentSnackbar);
        return;
      }
      if (isNextSnackbarLocked(paramCallback))
      {
        this.nextSnackbar.duration = paramInt;
      }
      else
      {
        SnackbarRecord localSnackbarRecord = new com/google/android/material/snackbar/SnackbarManager$SnackbarRecord;
        localSnackbarRecord.<init>(paramInt, paramCallback);
        this.nextSnackbar = localSnackbarRecord;
      }
      paramCallback = this.currentSnackbar;
      if ((paramCallback != null) && (cancelSnackbarLocked(paramCallback, 4))) {
        return;
      }
      this.currentSnackbar = null;
      showNextSnackbarLocked();
      return;
    }
  }
  
  static abstract interface Callback
  {
    public abstract void dismiss(int paramInt);
    
    public abstract void show();
  }
  
  private static class SnackbarRecord
  {
    final WeakReference<SnackbarManager.Callback> callback;
    int duration;
    boolean paused;
    
    SnackbarRecord(int paramInt, SnackbarManager.Callback paramCallback)
    {
      this.callback = new WeakReference(paramCallback);
      this.duration = paramInt;
    }
    
    boolean isSnackbar(SnackbarManager.Callback paramCallback)
    {
      boolean bool;
      if ((paramCallback != null) && (this.callback.get() == paramCallback)) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.snackbar.SnackbarManager
 * JD-Core Version:    0.7.0.1
 */