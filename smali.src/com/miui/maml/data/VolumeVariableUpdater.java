package com.miui.maml.data;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;

public class VolumeVariableUpdater
  extends NotifierVariableUpdater
{
  public static final String EXTRA_PREV_VOLUME_STREAM_VALUE = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE";
  public static final String EXTRA_VOLUME_STREAM_TYPE = "android.media.EXTRA_VOLUME_STREAM_TYPE";
  public static final String EXTRA_VOLUME_STREAM_VALUE = "android.media.EXTRA_VOLUME_STREAM_VALUE";
  private static final int SHOW_DELAY_TIME = 1000;
  public static final String VAR_VOLUME_LEVEL = "volume_level";
  public static final String VAR_VOLUME_LEVEL_OLD = "volume_level_old";
  public static final String VAR_VOLUME_TYPE = "volume_type";
  public static final String VOLUME_CHANGED_ACTION = "android.media.VOLUME_CHANGED_ACTION";
  private Handler mHandler = new Handler();
  private final Runnable mResetType = new Runnable()
  {
    public void run()
    {
      VolumeVariableUpdater.this.mVolumeType.set(-1.0D);
    }
  };
  private IndexedVariable mVolumeLevel = new IndexedVariable("volume_level", getContext().mVariables, true);
  private IndexedVariable mVolumeLevelOld = new IndexedVariable("volume_level_old", getContext().mVariables, true);
  private IndexedVariable mVolumeType;
  
  public VolumeVariableUpdater(VariableUpdaterManager paramVariableUpdaterManager)
  {
    super(paramVariableUpdaterManager, "android.media.VOLUME_CHANGED_ACTION");
    paramVariableUpdaterManager = new IndexedVariable("volume_type", getContext().mVariables, true);
    this.mVolumeType = paramVariableUpdaterManager;
    paramVariableUpdaterManager.set(-1.0D);
  }
  
  public void onNotify(Context paramContext, Intent paramIntent, Object paramObject)
  {
    if (paramIntent.getAction().equals("android.media.VOLUME_CHANGED_ACTION"))
    {
      int i = paramIntent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1);
      this.mVolumeType.set(i);
      int j = paramIntent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_VALUE", 0);
      this.mVolumeLevel.set(j);
      i = paramIntent.getIntExtra("android.media.EXTRA_PREV_VOLUME_STREAM_VALUE", 0);
      if (i != j) {
        this.mVolumeLevelOld.set(i);
      }
      getRoot().requestUpdate();
      this.mHandler.removeCallbacks(this.mResetType);
      this.mHandler.postDelayed(this.mResetType, 1000L);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.VolumeVariableUpdater
 * JD-Core Version:    0.7.0.1
 */