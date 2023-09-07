package com.miui.maml.elements.video;

import android.content.Context;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.media.MediaDataSource;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.data.Variables;
import java.io.IOException;

public abstract class BaseVideoView
  extends SurfaceView
{
  private static final String DURATION = ".duration";
  private static final String PLAY_STATE = ".playState";
  private static final String POSITION = ".position";
  public static final int SCALE_MODE_FIT_CROP = 2;
  public static final int SCALE_MODE_FIT_START = 3;
  public static final int SCALE_MODE_FIT_XY = 1;
  private static final int STATE_ERROR = -1;
  private static final int STATE_IDLE = 0;
  private static final int STATE_PAUSED = 4;
  private static final int STATE_PLAYBACK_COMPLETED = 5;
  private static final int STATE_PLAYING = 3;
  private static final int STATE_PREPARED = 2;
  private static final int STATE_PREPARING = 1;
  private static final String TAG = "BaseVideoView";
  private AudioManager.OnAudioFocusChangeListener mAudioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener()
  {
    public void onAudioFocusChange(int paramAnonymousInt)
    {
      if (paramAnonymousInt == -1) {
        BaseVideoView.this.pause();
      }
    }
  };
  private int mAudioFocusType = 0;
  private AudioManager mAudioManager;
  private MediaPlayer.OnCompletionListener mCompletionListener = new MediaPlayer.OnCompletionListener()
  {
    public void onCompletion(MediaPlayer paramAnonymousMediaPlayer)
    {
      BaseVideoView.access$002(BaseVideoView.this, 5);
      BaseVideoView.this.updateStateVar(5);
      paramAnonymousMediaPlayer = BaseVideoView.this;
      paramAnonymousMediaPlayer.updatePositionVar(paramAnonymousMediaPlayer.getDuration());
      if (BaseVideoView.this.mAudioFocusType != 0) {
        BaseVideoView.this.mAudioManager.abandonAudioFocus(null);
      }
    }
  };
  protected Context mContext;
  private int mCurrentState = 0;
  private MediaDataSource mDataSource;
  private IndexedVariable mDurationVar;
  private MediaPlayer.OnErrorListener mErrorListener = new MediaPlayer.OnErrorListener()
  {
    public boolean onError(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      paramAnonymousMediaPlayer = new StringBuilder();
      paramAnonymousMediaPlayer.append("Error: ");
      paramAnonymousMediaPlayer.append(paramAnonymousInt1);
      paramAnonymousMediaPlayer.append(",");
      paramAnonymousMediaPlayer.append(paramAnonymousInt2);
      Log.d("BaseVideoView", paramAnonymousMediaPlayer.toString());
      BaseVideoView.access$002(BaseVideoView.this, -1);
      BaseVideoView.this.updateStateVar(-1);
      return true;
    }
  };
  private MediaPlayer.OnInfoListener mInfoListener = new MediaPlayer.OnInfoListener()
  {
    public boolean onInfo(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      paramAnonymousMediaPlayer = new StringBuilder();
      paramAnonymousMediaPlayer.append("onInfo: ");
      paramAnonymousMediaPlayer.append(paramAnonymousInt1);
      paramAnonymousMediaPlayer.append(",");
      paramAnonymousMediaPlayer.append(paramAnonymousInt2);
      Log.d("BaseVideoView", paramAnonymousMediaPlayer.toString());
      return true;
    }
  };
  private boolean mLooping;
  private MediaPlayer mMediaPlayer = null;
  private String mName;
  private IndexedVariable mPositionVar;
  private MediaPlayer.OnPreparedListener mPreparedListener = new MediaPlayer.OnPreparedListener()
  {
    public void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
    {
      BaseVideoView.this.mVideoWidth = paramAnonymousMediaPlayer.getVideoWidth();
      BaseVideoView.this.mVideoHeight = paramAnonymousMediaPlayer.getVideoHeight();
      int i = BaseVideoView.this.mSeekWhenPrepared;
      if (i != 0) {
        BaseVideoView.this.seekTo(i);
      }
      paramAnonymousMediaPlayer.setLooping(BaseVideoView.this.mLooping);
      paramAnonymousMediaPlayer.setVolume(BaseVideoView.this.mVolume, BaseVideoView.this.mVolume);
      BaseVideoView.this.updateStateVar(2);
      paramAnonymousMediaPlayer = BaseVideoView.this;
      paramAnonymousMediaPlayer.updateDurationVar(paramAnonymousMediaPlayer.getDuration());
      if (BaseVideoView.this.mTargetState == 3) {
        BaseVideoView.this.start();
      }
    }
  };
  protected SurfaceHolder.Callback mSHCallback = new SurfaceHolder.Callback()
  {
    public void surfaceChanged(SurfaceHolder paramAnonymousSurfaceHolder, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      paramAnonymousInt1 = BaseVideoView.this.mTargetState;
      int i = 1;
      if (paramAnonymousInt1 == 3) {
        paramAnonymousInt1 = 1;
      } else {
        paramAnonymousInt1 = 0;
      }
      paramAnonymousSurfaceHolder = BaseVideoView.this;
      if ((paramAnonymousSurfaceHolder.mVideoWidth == paramAnonymousInt2) && (paramAnonymousSurfaceHolder.mVideoHeight == paramAnonymousInt3)) {
        paramAnonymousInt2 = i;
      } else {
        paramAnonymousInt2 = 0;
      }
      if ((paramAnonymousSurfaceHolder.mMediaPlayer != null) && (paramAnonymousInt1 != 0) && (paramAnonymousInt2 != 0))
      {
        if (BaseVideoView.this.mSeekWhenPrepared != 0)
        {
          paramAnonymousSurfaceHolder = BaseVideoView.this;
          paramAnonymousSurfaceHolder.seekTo(paramAnonymousSurfaceHolder.mSeekWhenPrepared);
        }
        BaseVideoView.this.start();
      }
    }
    
    public void surfaceCreated(SurfaceHolder paramAnonymousSurfaceHolder)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("surfaceCreated ");
      localStringBuilder.append(paramAnonymousSurfaceHolder);
      Log.d("BaseVideoView", localStringBuilder.toString());
      BaseVideoView.this.onSurfaceCreated(paramAnonymousSurfaceHolder);
      BaseVideoView.this.openVideo();
    }
    
    public void surfaceDestroyed(SurfaceHolder paramAnonymousSurfaceHolder)
    {
      BaseVideoView.this.onSurfaceDestroyed();
    }
  };
  protected int mScaleMode = 1;
  private int mSeekWhenPrepared;
  private MediaPlayer.OnVideoSizeChangedListener mSizeChangedListener = new MediaPlayer.OnVideoSizeChangedListener()
  {
    public void onVideoSizeChanged(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      BaseVideoView.this.mVideoWidth = paramAnonymousMediaPlayer.getVideoWidth();
      BaseVideoView.this.mVideoHeight = paramAnonymousMediaPlayer.getVideoHeight();
      paramAnonymousMediaPlayer = BaseVideoView.this;
      if ((paramAnonymousMediaPlayer.mVideoWidth != 0) && (paramAnonymousMediaPlayer.mVideoHeight != 0)) {
        paramAnonymousMediaPlayer.updateVideoSize();
      }
    }
  };
  private IndexedVariable mStateVar;
  protected Surface mSurface = null;
  private int mTargetState = 0;
  protected int mVideoHeight;
  protected int mVideoWidth;
  private float mVolume;
  
  public BaseVideoView(Context paramContext)
  {
    super(paramContext, null);
    this.mContext = paramContext;
    this.mVideoWidth = 0;
    this.mVideoHeight = 0;
    this.mAudioManager = ((AudioManager)paramContext.getSystemService("audio"));
    this.mCurrentState = 0;
    this.mTargetState = 0;
  }
  
  private void checkAudioFocus()
  {
    if (this.mAudioFocusType == 0) {
      this.mAudioManager.abandonAudioFocus(this.mAudioFocusChangeListener);
    } else if (this.mMediaPlayer != null) {
      this.mAudioManager.requestAudioFocus(this.mAudioFocusChangeListener, 3, 1);
    }
  }
  
  private String getStateName(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "";
    case 5: 
      return "state_playback_completed";
    case 4: 
      return "state_paused";
    case 3: 
      return "state_playing";
    case 2: 
      return "state_prepared";
    case 1: 
      return "state_preparing";
    case 0: 
      return "state_idle";
    }
    return "state_error";
  }
  
  private void initIndexedVariable(Variables paramVariables)
  {
    if (!TextUtils.isEmpty(this.mName))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.mName);
      localStringBuilder.append(".duration");
      this.mDurationVar = new IndexedVariable(localStringBuilder.toString(), paramVariables, true);
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.mName);
      localStringBuilder.append(".position");
      this.mPositionVar = new IndexedVariable(localStringBuilder.toString(), paramVariables, true);
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.mName);
      localStringBuilder.append(".playState");
      paramVariables = new IndexedVariable(localStringBuilder.toString(), paramVariables, false);
      this.mStateVar = paramVariables;
      paramVariables.set(getStateName(this.mCurrentState));
    }
  }
  
  private void openVideo()
  {
    if (this.mDataSource != null)
    {
      Object localObject = this.mSurface;
      if ((localObject != null) && (((Surface)localObject).isValid()))
      {
        releaseMedia(false);
        try
        {
          localObject = new android/media/MediaPlayer;
          ((MediaPlayer)localObject).<init>();
          this.mMediaPlayer = ((MediaPlayer)localObject);
          ((MediaPlayer)localObject).setOnPreparedListener(this.mPreparedListener);
          this.mMediaPlayer.setOnVideoSizeChangedListener(this.mSizeChangedListener);
          this.mMediaPlayer.setOnCompletionListener(this.mCompletionListener);
          this.mMediaPlayer.setOnErrorListener(this.mErrorListener);
          this.mMediaPlayer.setOnInfoListener(this.mInfoListener);
          this.mMediaPlayer.setDataSource(this.mDataSource);
          if (this.mScaleMode == 2) {
            this.mMediaPlayer.setVideoScalingMode(2);
          }
          this.mMediaPlayer.setAudioStreamType(3);
          this.mMediaPlayer.prepare();
          this.mMediaPlayer.setSurface(this.mSurface);
          updateStateVar(1);
          return;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          StringBuilder localStringBuilder2 = new StringBuilder();
          localStringBuilder2.append("Unable to open content: ");
          localStringBuilder2.append(this.mDataSource);
          Log.w("BaseVideoView", localStringBuilder2.toString(), localIllegalArgumentException);
          this.mCurrentState = -1;
          this.mTargetState = -1;
          this.mErrorListener.onError(this.mMediaPlayer, 1, 0);
          return;
        }
        catch (IOException localIOException)
        {
          StringBuilder localStringBuilder1 = new StringBuilder();
          localStringBuilder1.append("Unable to open content: ");
          localStringBuilder1.append(this.mDataSource);
          Log.w("BaseVideoView", localStringBuilder1.toString(), localIOException);
          this.mCurrentState = -1;
          this.mTargetState = -1;
          this.mErrorListener.onError(this.mMediaPlayer, 1, 0);
        }
      }
    }
  }
  
  private void updateDurationVar(int paramInt)
  {
    IndexedVariable localIndexedVariable = this.mDurationVar;
    if (localIndexedVariable != null) {
      localIndexedVariable.set(paramInt);
    }
  }
  
  private void updatePositionVar(int paramInt)
  {
    IndexedVariable localIndexedVariable = this.mPositionVar;
    if (localIndexedVariable != null) {
      localIndexedVariable.set(paramInt);
    }
  }
  
  private void updateStateVar(int paramInt)
  {
    this.mCurrentState = paramInt;
    IndexedVariable localIndexedVariable = this.mStateVar;
    if (localIndexedVariable != null) {
      localIndexedVariable.set(getStateName(paramInt));
    }
  }
  
  protected abstract void addSurfaceHolderCallback();
  
  public void doTick()
  {
    if (isPlaying()) {
      updatePositionVar(getCurrentPosition());
    }
  }
  
  public int getCurrentPosition()
  {
    if (isInPlaybackState()) {
      return this.mMediaPlayer.getCurrentPosition();
    }
    return 0;
  }
  
  public int getDuration()
  {
    if (isInPlaybackState()) {
      return this.mMediaPlayer.getDuration();
    }
    return -1;
  }
  
  public void init(Variables paramVariables)
  {
    addSurfaceHolderCallback();
    initIndexedVariable(paramVariables);
  }
  
  public boolean isInPlaybackState()
  {
    MediaPlayer localMediaPlayer = this.mMediaPlayer;
    boolean bool = true;
    if (localMediaPlayer != null)
    {
      int i = this.mCurrentState;
      if ((i != -1) && (i != 0) && (i != 1)) {}
    }
    else
    {
      bool = false;
    }
    return bool;
  }
  
  public boolean isPlaying()
  {
    boolean bool;
    if ((isInPlaybackState()) && (this.mMediaPlayer.isPlaying())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected void onDetachedFromWindow()
  {
    releaseMedia(true);
    super.onDetachedFromWindow();
  }
  
  protected abstract void onSurfaceCreated(SurfaceHolder paramSurfaceHolder);
  
  protected abstract void onSurfaceDestroyed();
  
  public void pause()
  {
    if ((isInPlaybackState()) && (this.mMediaPlayer.isPlaying()))
    {
      this.mMediaPlayer.pause();
      updateStateVar(4);
    }
    this.mTargetState = 4;
  }
  
  protected void releaseMedia(boolean paramBoolean)
  {
    MediaPlayer localMediaPlayer = this.mMediaPlayer;
    if (localMediaPlayer != null)
    {
      localMediaPlayer.release();
      this.mMediaPlayer = null;
      this.mCurrentState = 0;
      if (paramBoolean) {
        this.mTargetState = 0;
      }
      if (this.mAudioFocusType != 0) {
        this.mAudioManager.abandonAudioFocus(null);
      }
    }
  }
  
  public void seekTo(int paramInt)
  {
    if (isInPlaybackState())
    {
      if (this.mCurrentState == 4) {
        this.mMediaPlayer.seekTo(paramInt, 0);
      } else {
        this.mMediaPlayer.seekTo(paramInt, 2);
      }
      this.mSeekWhenPrepared = 0;
    }
    else
    {
      this.mSeekWhenPrepared = paramInt;
    }
  }
  
  protected abstract void setFormat(int paramInt);
  
  public void setLooping(boolean paramBoolean)
  {
    boolean bool = this.mLooping;
    if (bool != paramBoolean)
    {
      MediaPlayer localMediaPlayer = this.mMediaPlayer;
      if (localMediaPlayer != null) {
        localMediaPlayer.setLooping(bool);
      }
      this.mLooping = paramBoolean;
    }
  }
  
  public void setName(String paramString)
  {
    this.mName = paramString;
  }
  
  public void setScaleMode(int paramInt)
  {
    if ((paramInt <= 3) && (paramInt >= 1)) {
      this.mScaleMode = paramInt;
    }
  }
  
  public void setVideoDataSource(MediaDataSource paramMediaDataSource)
  {
    this.mDataSource = paramMediaDataSource;
    this.mSeekWhenPrepared = 0;
    openVideo();
    requestLayout();
    invalidate();
  }
  
  public void setVolume(float paramFloat)
  {
    float f;
    if (paramFloat < 0.0F)
    {
      f = 0.0F;
    }
    else
    {
      f = paramFloat;
      if (paramFloat > 1.0F) {
        f = 1.0F;
      }
    }
    int i;
    if (f == 0.0F) {
      i = 0;
    } else {
      i = 1;
    }
    if (i != this.mAudioFocusType) {
      this.mAudioFocusType = i;
    }
    checkAudioFocus();
    if (this.mVolume != f)
    {
      MediaPlayer localMediaPlayer = this.mMediaPlayer;
      if (localMediaPlayer != null) {
        localMediaPlayer.setVolume(f, f);
      }
      this.mVolume = f;
    }
  }
  
  public void start()
  {
    if (isInPlaybackState())
    {
      checkAudioFocus();
      this.mMediaPlayer.start();
      updateStateVar(3);
    }
    this.mTargetState = 3;
  }
  
  public void stopPlayback()
  {
    MediaPlayer localMediaPlayer = this.mMediaPlayer;
    if (localMediaPlayer != null)
    {
      localMediaPlayer.stop();
      this.mMediaPlayer.release();
      this.mMediaPlayer = null;
      updateStateVar(0);
      this.mTargetState = 0;
      this.mAudioManager.abandonAudioFocus(null);
    }
  }
  
  protected abstract void updateVideoSize();
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.video.BaseVideoView
 * JD-Core Version:    0.7.0.1
 */