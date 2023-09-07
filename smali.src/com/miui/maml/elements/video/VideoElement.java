package com.miui.maml.elements.video;

import android.text.TextUtils;
import android.util.Log;
import android.view.SurfaceView;
import android.view.View;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.elements.ScreenElement;
import com.miui.maml.elements.ViewHolderScreenElement;
import com.miui.maml.util.MamlMediaDataSource;
import org.w3c.dom.Element;

public class VideoElement
  extends ViewHolderScreenElement
{
  public static final String LOG_TAG = "VideoElement";
  public static final String TAG_NAME = "Video";
  private MamlMediaDataSource mSource;
  private BaseVideoView mView;
  
  public VideoElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    load();
  }
  
  private void load()
  {
    if (getRoot().getMamlSurface() != null)
    {
      SurfaceVideoView localSurfaceVideoView = new SurfaceVideoView(this.mRoot.getContext().mContext, getRoot().getMamlSurface());
      this.mView = localSurfaceVideoView;
      if (this.mLayer == 1) {
        localSurfaceVideoView.setZOrderOnTop(true);
      }
    }
    else
    {
      this.mView = new NormalVideoView(this.mRoot.getContext().mContext);
    }
    this.mView.setName(this.mName);
    this.mView.setFormat(-2);
    this.mView.setBackgroundColor(0);
  }
  
  public void config(boolean paramBoolean, int paramInt, String paramString)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("config: path ");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append(" looping ");
    ((StringBuilder)localObject).append(paramBoolean);
    ((StringBuilder)localObject).append(" scaleMode ");
    ((StringBuilder)localObject).append(paramInt);
    Log.d("VideoElement", ((StringBuilder)localObject).toString());
    if (this.mView == null) {
      return;
    }
    localObject = this.mSource;
    if ((localObject == null) || (!TextUtils.equals(((MamlMediaDataSource)localObject).getPath(), paramString))) {
      this.mSource = new MamlMediaDataSource(getContext().mContext, getContext().mResourceManager, paramString);
    }
    this.mView.setLooping(paramBoolean);
    this.mView.setScaleMode(paramInt);
    this.mView.setVideoDataSource(this.mSource);
  }
  
  protected void doTick(long paramLong)
  {
    super.doTick(paramLong);
    BaseVideoView localBaseVideoView = this.mView;
    if (localBaseVideoView != null) {
      localBaseVideoView.doTick();
    }
  }
  
  public void finish()
  {
    super.finish();
    MamlMediaDataSource localMamlMediaDataSource = this.mSource;
    if (localMamlMediaDataSource != null) {
      localMamlMediaDataSource.close();
    }
  }
  
  protected View getView()
  {
    return this.mView;
  }
  
  public void init()
  {
    super.init();
    BaseVideoView localBaseVideoView = this.mView;
    if (localBaseVideoView != null) {
      localBaseVideoView.init(getVariables());
    }
  }
  
  protected void onViewAdded(View paramView)
  {
    super.onViewAdded(paramView);
  }
  
  protected void onViewRemoved(View paramView)
  {
    super.onViewRemoved(paramView);
    stop();
  }
  
  public void pause()
  {
    Log.d("VideoElement", "pause");
    BaseVideoView localBaseVideoView = this.mView;
    if (localBaseVideoView != null) {
      localBaseVideoView.pause();
    }
  }
  
  public void play()
  {
    Log.d("VideoElement", "play");
    Object localObject = this.mSource;
    if (localObject != null) {
      ((MamlMediaDataSource)localObject).tryToGenerateMemoryFile();
    }
    localObject = this.mView;
    if (localObject != null) {
      ((BaseVideoView)localObject).start();
    }
  }
  
  public void seekTo(int paramInt)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("seekTo ");
    ((StringBuilder)localObject).append(paramInt);
    Log.d("VideoElement", ((StringBuilder)localObject).toString());
    localObject = this.mView;
    if (localObject != null) {
      ((BaseVideoView)localObject).seekTo(paramInt);
    }
  }
  
  public void setVolume(float paramFloat)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("setVolume ");
    ((StringBuilder)localObject).append(paramFloat);
    Log.d("VideoElement", ((StringBuilder)localObject).toString());
    localObject = this.mView;
    if (localObject != null) {
      ((BaseVideoView)localObject).setVolume(paramFloat);
    }
  }
  
  public void stop()
  {
    Log.d("VideoElement", "stop");
    Object localObject = this.mView;
    if (localObject != null) {
      ((BaseVideoView)localObject).stopPlayback();
    }
    localObject = this.mSource;
    if (localObject != null) {
      ((MamlMediaDataSource)localObject).releaseMemoryFile();
    }
  }
  
  protected void updateView()
  {
    BaseVideoView localBaseVideoView = this.mView;
    if ((localBaseVideoView != null) && ((this.mUpdatePosition) || (this.mUpdateTranslation) || (this.mUpdateSize))) {
      onUpdateView(localBaseVideoView);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.video.VideoElement
 * JD-Core Version:    0.7.0.1
 */