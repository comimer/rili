package com.miui.maml.elements;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.media.MediaMetadata;
import android.media.Rating;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.ResourceManager;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.IndexedVariable;
import java.util.ArrayList;
import java.util.Iterator;
import org.w3c.dom.Element;

public class MusicControlScreenElement
  extends ElementGroup
  implements ButtonScreenElement.ButtonActionListener
{
  private static final String BUTTON_MUSIC_NEXT = "music_next";
  private static final String BUTTON_MUSIC_PAUSE = "music_pause";
  private static final String BUTTON_MUSIC_PLAY = "music_play";
  private static final String BUTTON_MUSIC_PREV = "music_prev";
  private static final String ELE_MUSIC_ALBUM_COVER = "music_album_cover";
  private static final String ELE_MUSIC_DISPLAY = "music_display";
  private static final int FRAMERATE_PLAYING = 30;
  private static final String LOG_TAG = "MusicControlScreenE";
  public static final String METADATA_KEY_LYRIC = "android.media.metadata.LYRIC";
  private static final String MIUI_PLAYER_PACKAGE_NAME = "com.miui.player";
  public static final int MUSIC_STATE_PLAY = 1;
  public static final int MUSIC_STATE_STOP = 0;
  public static final int PLAYSTATE_NONE = 0;
  public static final String TAG_NAME = "MusicControl";
  private AlbumInfo mAlbumInfo = new AlbumInfo(null);
  private IndexedVariable mAlbumVar;
  private IndexedVariable mArtistVar;
  private IndexedVariable mArtworkVar;
  private boolean mAutoShow;
  private ButtonScreenElement mButtonNext = (ButtonScreenElement)findElement("music_next");
  private ButtonScreenElement mButtonPause = (ButtonScreenElement)findElement("music_pause");
  private ButtonScreenElement mButtonPlay = (ButtonScreenElement)findElement("music_play");
  private ButtonScreenElement mButtonPrev = (ButtonScreenElement)findElement("music_prev");
  private Bitmap mDefaultAlbumCoverBm;
  private Runnable mDelayToSetArtworkRunnable = new Runnable()
  {
    public void run()
    {
      MusicControlScreenElement localMusicControlScreenElement = MusicControlScreenElement.this;
      localMusicControlScreenElement.updateArtwork(localMusicControlScreenElement.mDefaultAlbumCoverBm);
    }
  };
  private boolean mDisableNext;
  private IndexedVariable mDisableNextVar;
  private boolean mDisablePlay;
  private IndexedVariable mDisablePlayVar;
  private boolean mDisablePrev;
  private IndexedVariable mDisablePrevVar;
  private IndexedVariable mDurationVar;
  private boolean mEnableLyric;
  private boolean mEnableProgress;
  private ImageScreenElement mImageAlbumCover = (ImageScreenElement)findElement("music_album_cover");
  private MusicLyricParser.Lyric mLyric;
  private IndexedVariable mLyricAfterVar;
  private IndexedVariable mLyricBeforeVar;
  private IndexedVariable mLyricCurrentLineProgressVar;
  private IndexedVariable mLyricCurrentVar;
  private IndexedVariable mLyricLastVar;
  private IndexedVariable mLyricNextVar;
  private IndexedVariable mLyricPrevVar;
  private MediaMetadata mMetadata;
  private Context mMiuiMusicContext;
  private MusicController mMusicController;
  private IndexedVariable mMusicStateVar;
  private MusicController.OnClientUpdateListener mMusicUpdateListener = new MusicController.OnClientUpdateListener()
  {
    private boolean mClientChanged;
    
    public void onClientChange()
    {
      this.mClientChanged = true;
      MusicControlScreenElement.this.resetAll();
      MusicControlScreenElement.this.readPackageName();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("clientChange: ");
      Object localObject = MusicControlScreenElement.this.mPlayerPackageVar;
      String str = "null";
      if (localObject != null) {
        localObject = MusicControlScreenElement.this.mPlayerPackageVar.getString();
      } else {
        localObject = "null";
      }
      localStringBuilder.append((String)localObject);
      localStringBuilder.append("/");
      localObject = str;
      if (MusicControlScreenElement.this.mPlayerClassVar != null) {
        localObject = MusicControlScreenElement.this.mPlayerClassVar.getString();
      }
      localStringBuilder.append((String)localObject);
      Log.d("MusicControlScreenE", localStringBuilder.toString());
    }
    
    public void onClientMetadataUpdate(MediaMetadata paramAnonymousMediaMetadata)
    {
      MusicControlScreenElement.access$1002(MusicControlScreenElement.this, paramAnonymousMediaMetadata);
      if (MusicControlScreenElement.this.mMetadata == null) {
        return;
      }
      Object localObject1 = MusicControlScreenElement.this.mMetadata.getString("android.media.metadata.TITLE");
      Object localObject2 = MusicControlScreenElement.this.mMetadata.getString("android.media.metadata.ARTIST");
      paramAnonymousMediaMetadata = MusicControlScreenElement.this.mMetadata.getString("android.media.metadata.ALBUM");
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("\ntitle: ");
      localStringBuilder.append((String)localObject1);
      localStringBuilder.append(", artist: ");
      localStringBuilder.append((String)localObject2);
      localStringBuilder.append(", album: ");
      localStringBuilder.append(paramAnonymousMediaMetadata);
      Log.d("MusicControlScreenE", localStringBuilder.toString());
      int i = 0;
      boolean bool;
      if ((localObject1 == null) && (localObject2 == null) && (paramAnonymousMediaMetadata == null))
      {
        bool = false;
      }
      else
      {
        bool = MusicControlScreenElement.this.mAlbumInfo.update((String)localObject1, (String)localObject2, paramAnonymousMediaMetadata);
        MusicControlScreenElement.this.updateAlbum((String)localObject1, (String)localObject2, paramAnonymousMediaMetadata);
      }
      localObject2 = MusicControlScreenElement.this.mMetadata.getBitmap("android.media.metadata.ART");
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("artwork: ");
      if (localObject2 != null) {
        paramAnonymousMediaMetadata = localObject2.toString();
      } else {
        paramAnonymousMediaMetadata = "null";
      }
      ((StringBuilder)localObject1).append(paramAnonymousMediaMetadata);
      Log.d("MusicControlScreenE", ((StringBuilder)localObject1).toString());
      int j;
      if ((localObject2 == null) && (!bool)) {
        j = 0;
      } else {
        j = 1;
      }
      if (j != 0) {
        if (localObject2 == null) {
          MusicControlScreenElement.this.delayToSetDefaultArtwork(500L);
        } else {
          MusicControlScreenElement.this.updateArtwork((Bitmap)localObject2);
        }
      }
      localObject1 = MusicControlScreenElement.this.mMetadata.getString("android.media.metadata.LYRIC");
      paramAnonymousMediaMetadata = new StringBuilder();
      paramAnonymousMediaMetadata.append("raw lyric: ");
      paramAnonymousMediaMetadata.append((String)localObject1);
      Log.d("MusicControlScreenE", paramAnonymousMediaMetadata.toString());
      paramAnonymousMediaMetadata = MusicLyricParser.parseLyric((String)localObject1);
      if (paramAnonymousMediaMetadata != null) {
        paramAnonymousMediaMetadata.decorate();
      }
      if ((paramAnonymousMediaMetadata == null) && (!bool)) {
        j = 0;
      } else {
        j = 1;
      }
      if (j != 0)
      {
        MusicControlScreenElement.access$1502(MusicControlScreenElement.this, paramAnonymousMediaMetadata);
        MusicControlScreenElement.this.updateLyric(paramAnonymousMediaMetadata);
      }
      paramAnonymousMediaMetadata = MusicControlScreenElement.this;
      float f;
      if (paramAnonymousMediaMetadata.mLyric != null) {
        f = 30.0F;
      } else {
        f = 0.0F;
      }
      paramAnonymousMediaMetadata.requestFramerate(f);
      long l1 = MusicControlScreenElement.this.mMetadata.getLong("android.media.metadata.DURATION");
      long l2 = MusicControlScreenElement.this.mMusicController.getEstimatedMediaPosition();
      paramAnonymousMediaMetadata = new StringBuilder();
      paramAnonymousMediaMetadata.append("duration: ");
      paramAnonymousMediaMetadata.append(l1);
      paramAnonymousMediaMetadata.append(", position: ");
      paramAnonymousMediaMetadata.append(l2);
      Log.d("MusicControlScreenE", paramAnonymousMediaMetadata.toString());
      if ((l1 < 0L) || (l2 < 0L))
      {
        j = i;
        if (!bool) {}
      }
      else
      {
        j = 1;
      }
      if (j != 0) {
        MusicControlScreenElement.this.updateProgress(l1, l2);
      }
      localObject1 = MusicControlScreenElement.this.mMetadata.getRating("android.media.metadata.USER_RATING");
      paramAnonymousMediaMetadata = new StringBuilder();
      paramAnonymousMediaMetadata.append("rating: ");
      paramAnonymousMediaMetadata.append(localObject1);
      Log.d("MusicControlScreenE", paramAnonymousMediaMetadata.toString());
      MusicControlScreenElement.this.updateUserRating((Rating)localObject1);
      if (!this.mClientChanged) {
        onClientChange();
      }
    }
    
    public void onClientPlaybackActionUpdate(long paramAnonymousLong)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("transportControlFlags: ");
      ((StringBuilder)localObject).append(paramAnonymousLong);
      Log.d("MusicControlScreenE", ((StringBuilder)localObject).toString());
      boolean bool1 = true;
      if ((0x80 & paramAnonymousLong) != 0L) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      if (!bool2) {
        MusicControlScreenElement.this.resetUserRating();
      }
      localObject = MusicControlScreenElement.this;
      boolean bool2 = paramAnonymousLong < 0L;
      boolean bool3;
      if ((bool2) && ((0x207 & paramAnonymousLong) == 0L)) {
        bool3 = true;
      } else {
        bool3 = false;
      }
      MusicControlScreenElement.access$202((MusicControlScreenElement)localObject, bool3);
      localObject = MusicControlScreenElement.this;
      if ((bool2) && ((0x10 & paramAnonymousLong) == 0L)) {
        bool3 = true;
      } else {
        bool3 = false;
      }
      MusicControlScreenElement.access$302((MusicControlScreenElement)localObject, bool3);
      localObject = MusicControlScreenElement.this;
      if ((bool2) && ((paramAnonymousLong & 0x20) == 0L)) {
        bool3 = bool1;
      } else {
        bool3 = false;
      }
      MusicControlScreenElement.access$402((MusicControlScreenElement)localObject, bool3);
      localObject = MusicControlScreenElement.this;
      if (((ScreenElement)localObject).mHasName)
      {
        localObject = ((MusicControlScreenElement)localObject).mDisablePlayVar;
        bool3 = MusicControlScreenElement.this.mDisablePlay;
        double d1 = 1.0D;
        double d2;
        if (bool3) {
          d2 = 1.0D;
        } else {
          d2 = 0.0D;
        }
        ((IndexedVariable)localObject).set(d2);
        localObject = MusicControlScreenElement.this.mDisablePrevVar;
        if (MusicControlScreenElement.this.mDisablePrev) {
          d2 = 1.0D;
        } else {
          d2 = 0.0D;
        }
        ((IndexedVariable)localObject).set(d2);
        localObject = MusicControlScreenElement.this.mDisableNextVar;
        if (MusicControlScreenElement.this.mDisableNext) {
          d2 = d1;
        } else {
          d2 = 0.0D;
        }
        ((IndexedVariable)localObject).set(d2);
      }
    }
    
    public void onClientPlaybackStateUpdate(int paramAnonymousInt)
    {
      onStateUpdate(paramAnonymousInt);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("stateUpdate: ");
      localStringBuilder.append(paramAnonymousInt);
      Log.d("MusicControlScreenE", localStringBuilder.toString());
    }
    
    public void onSessionDestroyed()
    {
      if (MusicControlScreenElement.this.mAutoShow) {
        MusicControlScreenElement.this.show(false);
      }
      MusicControlScreenElement.this.onMusicStateChange(false);
    }
    
    protected void onStateUpdate(int paramAnonymousInt)
    {
      int i = 0;
      boolean bool = true;
      if (paramAnonymousInt != 0)
      {
        if ((paramAnonymousInt != 1) && (paramAnonymousInt != 2))
        {
          if (paramAnonymousInt == 3)
          {
            MusicControlScreenElement.this.performAction("state_play");
            paramAnonymousInt = 1;
            break label69;
          }
        }
        else
        {
          MusicControlScreenElement.this.performAction("state_stop");
          bool = false;
          paramAnonymousInt = 1;
          break label69;
        }
      }
      else {
        MusicControlScreenElement.this.resetAll();
      }
      bool = false;
      paramAnonymousInt = i;
      label69:
      if (paramAnonymousInt != 0) {
        MusicControlScreenElement.this.onMusicStateChange(bool);
      }
    }
  };
  private boolean mNeedUpdateLyric;
  private boolean mNeedUpdateProgress;
  private boolean mNeedUpdateUserRating;
  private IndexedVariable mPlayerClassVar;
  private IndexedVariable mPlayerPackageVar;
  private boolean mPlaying;
  private IndexedVariable mPositionVar;
  private Runnable mResetMusicControllerRunable = new Runnable()
  {
    public void run()
    {
      if (MusicControlScreenElement.this.mMusicController != null) {
        MusicControlScreenElement.this.mMusicController.reset();
      }
    }
  };
  private String mSender;
  private SpectrumVisualizerScreenElement mSpectrumVisualizer = findSpectrumVisualizer(this);
  private TextScreenElement mTextDisplay = (TextScreenElement)findElement("music_display");
  private IndexedVariable mTitleVar;
  private int mUpdateProgressInterval;
  private Runnable mUpdateProgressRunnable = new Runnable()
  {
    public void run()
    {
      if ((MusicControlScreenElement.this.mPlaying) && (MusicControlScreenElement.this.mMetadata != null))
      {
        long l1 = MusicControlScreenElement.this.mMetadata.getLong("android.media.metadata.DURATION");
        long l2 = MusicControlScreenElement.this.mMusicController.getEstimatedMediaPosition();
        if ((l1 > 0L) && (l2 >= 0L))
        {
          MusicControlScreenElement.this.mDurationVar.set(l1);
          MusicControlScreenElement.this.mPositionVar.set(l2);
          if ((MusicControlScreenElement.this.mNeedUpdateLyric) && (MusicControlScreenElement.this.mLyric != null)) {
            MusicControlScreenElement.this.updateLyricVar(l2);
          }
          MusicControlScreenElement.this.requestUpdate();
          MusicControlScreenElement.this.getContext().getHandler().postDelayed(this, MusicControlScreenElement.this.mUpdateProgressInterval);
        }
      }
    }
  };
  private int mUserRatingStyle;
  private IndexedVariable mUserRatingStyleVar;
  private float mUserRatingValue;
  private IndexedVariable mUserRatingValueVar;
  
  public MusicControlScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    setupButton(this.mButtonPrev);
    setupButton(this.mButtonNext);
    setupButton(this.mButtonPlay);
    setupButton(this.mButtonPause);
    paramScreenElementRoot = this.mButtonPause;
    boolean bool1 = false;
    if (paramScreenElementRoot != null) {
      paramScreenElementRoot.show(false);
    }
    if (this.mImageAlbumCover != null)
    {
      paramScreenElementRoot = paramElement.getAttribute("defAlbumCover");
      if (!TextUtils.isEmpty(paramScreenElementRoot)) {
        this.mDefaultAlbumCoverBm = getContext().mResourceManager.getBitmap(paramScreenElementRoot);
      }
      paramScreenElementRoot = this.mDefaultAlbumCoverBm;
      if (paramScreenElementRoot != null) {
        paramScreenElementRoot.setDensity(this.mRoot.getResourceDensity());
      }
    }
    this.mAutoShow = Boolean.parseBoolean(paramElement.getAttribute("autoShow"));
    boolean bool2 = Boolean.parseBoolean(paramElement.getAttribute("enableLyric"));
    this.mEnableLyric = bool2;
    if (bool2) {
      bool2 = true;
    } else {
      bool2 = Boolean.parseBoolean(paramElement.getAttribute("enableProgress"));
    }
    this.mEnableProgress = bool2;
    this.mUpdateProgressInterval = getAttrAsInt(paramElement, "updateProgressInterval", 1000);
    if (this.mHasName)
    {
      paramElement = getVariables();
      paramScreenElementRoot = new StringBuilder();
      paramScreenElementRoot.append(this.mName);
      paramScreenElementRoot.append(".music_state");
      this.mMusicStateVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, true);
      paramScreenElementRoot = new StringBuilder();
      paramScreenElementRoot.append(this.mName);
      paramScreenElementRoot.append(".title");
      this.mTitleVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, false);
      paramScreenElementRoot = new StringBuilder();
      paramScreenElementRoot.append(this.mName);
      paramScreenElementRoot.append(".artist");
      this.mArtistVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, false);
      paramScreenElementRoot = new StringBuilder();
      paramScreenElementRoot.append(this.mName);
      paramScreenElementRoot.append(".album");
      this.mAlbumVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, false);
      if (this.mEnableLyric)
      {
        paramScreenElementRoot = new StringBuilder();
        paramScreenElementRoot.append(this.mName);
        paramScreenElementRoot.append(".lyric_current");
        this.mLyricCurrentVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, false);
        paramScreenElementRoot = new StringBuilder();
        paramScreenElementRoot.append(this.mName);
        paramScreenElementRoot.append(".lyric_before");
        this.mLyricBeforeVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, false);
        paramScreenElementRoot = new StringBuilder();
        paramScreenElementRoot.append(this.mName);
        paramScreenElementRoot.append(".lyric_after");
        this.mLyricAfterVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, false);
        paramScreenElementRoot = new StringBuilder();
        paramScreenElementRoot.append(this.mName);
        paramScreenElementRoot.append(".lyric_last");
        this.mLyricLastVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, false);
        paramScreenElementRoot = new StringBuilder();
        paramScreenElementRoot.append(this.mName);
        paramScreenElementRoot.append(".lyric_prev");
        this.mLyricPrevVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, false);
        paramScreenElementRoot = new StringBuilder();
        paramScreenElementRoot.append(this.mName);
        paramScreenElementRoot.append(".lyric_next");
        this.mLyricNextVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, false);
        paramScreenElementRoot = new StringBuilder();
        paramScreenElementRoot.append(this.mName);
        paramScreenElementRoot.append(".lyric_current_line_progress");
        this.mLyricCurrentLineProgressVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, true);
      }
      if (this.mEnableProgress)
      {
        paramScreenElementRoot = new StringBuilder();
        paramScreenElementRoot.append(this.mName);
        paramScreenElementRoot.append(".music_duration");
        this.mDurationVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, true);
        paramScreenElementRoot = new StringBuilder();
        paramScreenElementRoot.append(this.mName);
        paramScreenElementRoot.append(".music_position");
        this.mPositionVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, true);
      }
      paramScreenElementRoot = new StringBuilder();
      paramScreenElementRoot.append(this.mName);
      paramScreenElementRoot.append(".user_rating_style");
      this.mUserRatingStyleVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, true);
      paramScreenElementRoot = new StringBuilder();
      paramScreenElementRoot.append(this.mName);
      paramScreenElementRoot.append(".user_rating_value");
      this.mUserRatingValueVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, true);
      paramScreenElementRoot = new StringBuilder();
      paramScreenElementRoot.append(this.mName);
      paramScreenElementRoot.append(".disable_play");
      this.mDisablePlayVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, true);
      paramScreenElementRoot = new StringBuilder();
      paramScreenElementRoot.append(this.mName);
      paramScreenElementRoot.append(".disable_prev");
      this.mDisablePrevVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, true);
      paramScreenElementRoot = new StringBuilder();
      paramScreenElementRoot.append(this.mName);
      paramScreenElementRoot.append(".disable_next");
      this.mDisableNextVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, true);
      paramScreenElementRoot = new StringBuilder();
      paramScreenElementRoot.append(this.mName);
      paramScreenElementRoot.append(".artwork");
      this.mArtworkVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, false);
      paramScreenElementRoot = new StringBuilder();
      paramScreenElementRoot.append(this.mName);
      paramScreenElementRoot.append(".package");
      this.mPlayerPackageVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, false);
      paramScreenElementRoot = new StringBuilder();
      paramScreenElementRoot.append(this.mName);
      paramScreenElementRoot.append(".class");
      this.mPlayerClassVar = new IndexedVariable(paramScreenElementRoot.toString(), paramElement, false);
    }
    if ((this.mEnableLyric) && (this.mHasName)) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    this.mNeedUpdateLyric = bool2;
    bool2 = bool1;
    if (this.mEnableProgress)
    {
      bool2 = bool1;
      if (this.mHasName) {
        bool2 = true;
      }
    }
    this.mNeedUpdateProgress = bool2;
    this.mNeedUpdateUserRating = this.mHasName;
    try
    {
      this.mMiuiMusicContext = getContext().mContext.createPackageContext("com.miui.player", 2);
    }
    catch (Exception paramElement)
    {
      Log.w("MusicControlScreenE", "fail to get MiuiMusic preference", paramElement);
    }
    this.mMusicController = new MusicController(getContext().mContext, getContext().getHandler());
    paramElement = this.mRoot.getRootTag();
    this.mSender = "maml";
    if ("gadget".equalsIgnoreCase(paramElement)) {
      this.mSender = "home_widget";
    } else if ("statusbar".equalsIgnoreCase(paramElement)) {
      this.mSender = "notification_bar";
    } else if ("lockscreen".equalsIgnoreCase(paramElement)) {
      this.mSender = "lockscreen";
    }
  }
  
  private void cancelSetDefaultArtwork()
  {
    getContext().getHandler().removeCallbacks(this.mDelayToSetArtworkRunnable);
  }
  
  private void delayToSetDefaultArtwork(long paramLong)
  {
    Handler localHandler = getContext().getHandler();
    localHandler.removeCallbacks(this.mDelayToSetArtworkRunnable);
    localHandler.postDelayed(this.mDelayToSetArtworkRunnable, paramLong);
  }
  
  private SpectrumVisualizerScreenElement findSpectrumVisualizer(ElementGroup paramElementGroup)
  {
    paramElementGroup = paramElementGroup.getElements().iterator();
    while (paramElementGroup.hasNext())
    {
      Object localObject = (ScreenElement)paramElementGroup.next();
      if ((localObject instanceof SpectrumVisualizerScreenElement)) {
        return (SpectrumVisualizerScreenElement)localObject;
      }
      if ((localObject instanceof ElementGroup))
      {
        localObject = findSpectrumVisualizer((ElementGroup)localObject);
        if (localObject != null) {
          return localObject;
        }
      }
    }
    return null;
  }
  
  private void onMusicStateChange(boolean paramBoolean)
  {
    boolean bool = true;
    if ((paramBoolean) && (this.mAutoShow) && (!isVisible())) {
      show(true);
    }
    this.mPlaying = paramBoolean;
    Object localObject = this.mMusicStateVar;
    if (localObject != null)
    {
      double d;
      if (paramBoolean) {
        d = 1.0D;
      } else {
        d = 0.0D;
      }
      ((IndexedVariable)localObject).set(d);
    }
    localObject = this.mButtonPause;
    if (localObject != null) {
      ((ScreenElement)localObject).show(paramBoolean);
    }
    localObject = this.mButtonPlay;
    if (localObject != null) {
      ((ScreenElement)localObject).show(paramBoolean ^ true);
    }
    if (this.mNeedUpdateProgress)
    {
      long l;
      if (paramBoolean) {
        l = 100L;
      } else {
        l = 0L;
      }
      startProgressUpdate(paramBoolean, l);
    }
    localObject = this.mSpectrumVisualizer;
    if (localObject != null)
    {
      if ((!paramBoolean) || (!this.mResumed)) {
        bool = false;
      }
      ((SpectrumVisualizerScreenElement)localObject).enableUpdate(bool);
    }
    float f;
    if ((paramBoolean) && (this.mLyric != null)) {
      f = 30.0F;
    } else {
      f = 0.0F;
    }
    requestFramerate(f);
    requestUpdate();
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("music state change: playing=");
    ((StringBuilder)localObject).append(paramBoolean);
    Log.d("MusicControlScreenE", ((StringBuilder)localObject).toString());
  }
  
  private void resetAll()
  {
    updateAlbum(null, null, null);
    resetProgress();
    resetLyric();
    resetUserRating();
    updateArtwork(this.mDefaultAlbumCoverBm);
    resetPackageName();
    resetMusicState();
  }
  
  private void resetLyric()
  {
    if (this.mNeedUpdateLyric)
    {
      this.mLyricBeforeVar.set(null);
      this.mLyricAfterVar.set(null);
      this.mLyricLastVar.set(null);
      this.mLyricPrevVar.set(null);
      this.mLyricNextVar.set(null);
      this.mLyricCurrentVar.set(null);
    }
  }
  
  private void resetMusicState()
  {
    onMusicStateChange(false);
  }
  
  private void resetPackageName()
  {
    IndexedVariable localIndexedVariable = this.mPlayerPackageVar;
    if (localIndexedVariable != null) {
      localIndexedVariable.set(null);
    }
    localIndexedVariable = this.mPlayerClassVar;
    if (localIndexedVariable != null) {
      localIndexedVariable.set(null);
    }
  }
  
  private void resetProgress()
  {
    if (this.mNeedUpdateProgress)
    {
      this.mDurationVar.set(0.0D);
      this.mPositionVar.set(0.0D);
    }
    if (this.mNeedUpdateLyric) {
      this.mLyricCurrentLineProgressVar.set(0.0D);
    }
  }
  
  private void resetUserRating()
  {
    if (this.mNeedUpdateUserRating)
    {
      this.mUserRatingStyle = 0;
      this.mUserRatingValue = 0.0F;
      this.mUserRatingStyleVar.set(0.0D);
      this.mUserRatingValueVar.set(0.0D);
    }
  }
  
  private boolean sendMediaKeyEvent(int paramInt, String paramString)
  {
    int i;
    if ("music_prev".equals(paramString)) {
      i = 88;
    } else if ("music_next".equals(paramString)) {
      i = 87;
    } else if ((!"music_play".equals(paramString)) && (!"music_pause".equals(paramString))) {
      i = 0;
    } else {
      i = 85;
    }
    if ((i == 88) && (this.mDisablePrev)) {
      return false;
    }
    if ((i == 87) && (this.mDisableNext)) {
      return false;
    }
    if ((i == 85) && (this.mDisablePlay)) {
      return false;
    }
    if (this.mMusicController.sendMediaKeyEvent(paramInt, i)) {
      return true;
    }
    Log.d("MusicControlScreenE", "fail to dispatch by media controller, send to MiuiMusic.");
    if (paramInt == 0) {
      return true;
    }
    Intent localIntent = null;
    if ((!"music_play".equals(paramString)) && (!"music_pause".equals(paramString)))
    {
      if ("music_prev".equals(paramString)) {
        localIntent = new Intent("com.miui.player.musicservicecommand.previous");
      } else if ("music_next".equals(paramString)) {
        localIntent = new Intent("com.miui.player.musicservicecommand.next");
      }
    }
    else {
      localIntent = new Intent("com.miui.player.musicservicecommand.togglepause");
    }
    if (localIntent != null)
    {
      localIntent.setPackage("com.miui.player");
      localIntent.putExtra("intent_sender", this.mSender);
      this.mRoot.getContext().mContext.startService(localIntent);
      getContext().getHandler().postDelayed(this.mResetMusicControllerRunable, 1000L);
      return true;
    }
    return false;
  }
  
  private void setupButton(ButtonScreenElement paramButtonScreenElement)
  {
    if (paramButtonScreenElement != null)
    {
      paramButtonScreenElement.setListener(this);
      paramButtonScreenElement.setParent(this);
    }
  }
  
  private void startProgressUpdate(boolean paramBoolean, long paramLong)
  {
    getContext().getHandler().removeCallbacks(this.mUpdateProgressRunnable);
    if (paramBoolean) {
      if (paramLong > 0L) {
        getContext().getHandler().postDelayed(this.mUpdateProgressRunnable, paramLong);
      } else {
        getContext().getHandler().post(this.mUpdateProgressRunnable);
      }
    }
  }
  
  private void updateAlbum(String paramString1, String paramString2, String paramString3)
  {
    if (this.mHasName)
    {
      this.mTitleVar.set(paramString1);
      this.mArtistVar.set(paramString2);
      this.mAlbumVar.set(paramString3);
    }
    if (this.mTextDisplay != null)
    {
      if (TextUtils.isEmpty(paramString1)) {
        paramString1 = paramString2;
      } else if (!TextUtils.isEmpty(paramString2)) {
        paramString1 = String.format("%s   %s", new Object[] { paramString1, paramString2 });
      }
      this.mTextDisplay.setText(paramString1);
    }
    requestUpdate();
  }
  
  private void updateArtwork(Bitmap paramBitmap)
  {
    cancelSetDefaultArtwork();
    if (this.mHasName) {
      this.mArtworkVar.set(paramBitmap);
    }
    ImageScreenElement localImageScreenElement = this.mImageAlbumCover;
    if (localImageScreenElement != null) {
      localImageScreenElement.setBitmap(paramBitmap);
    }
    requestUpdate();
  }
  
  private void updateLyric(MusicLyricParser.Lyric paramLyric)
  {
    if (!this.mNeedUpdateLyric) {
      return;
    }
    if (paramLyric == null)
    {
      resetLyric();
      return;
    }
    int[] arrayOfInt = paramLyric.getTimeArr();
    paramLyric = paramLyric.getStringArr();
    MusicLyricParser.Lyric localLyric = this.mLyric;
    if (localLyric != null) {
      localLyric.set(arrayOfInt, paramLyric);
    }
  }
  
  private void updateLyricVar(long paramLong)
  {
    double d = this.mLyric.getLyricShot(paramLong).percent;
    this.mLyricCurrentLineProgressVar.set(d);
    String str = this.mLyric.getLine(paramLong);
    this.mLyricCurrentVar.set(str);
    str = this.mLyric.getBeforeLines(paramLong);
    this.mLyricBeforeVar.set(str);
    str = this.mLyric.getAfterLines(paramLong);
    this.mLyricAfterVar.set(str);
    str = this.mLyric.getLastLine(paramLong);
    this.mLyricLastVar.set(str);
    this.mLyricPrevVar.set(str);
    str = this.mLyric.getNextLine(paramLong);
    this.mLyricNextVar.set(str);
  }
  
  private void updateProgress(long paramLong1, long paramLong2)
  {
    if (!this.mNeedUpdateProgress) {
      return;
    }
    if ((paramLong1 > 0L) && (paramLong2 >= 0L))
    {
      this.mDurationVar.set(paramLong1);
      this.mPositionVar.set(paramLong2);
      if (this.mNeedUpdateLyric) {
        if (this.mLyric != null) {
          updateLyricVar(paramLong2);
        } else {
          resetLyric();
        }
      }
      requestUpdate();
      startProgressUpdate(this.mPlaying, 0L);
      return;
    }
    resetProgress();
  }
  
  private void updateUserRating(Rating paramRating)
  {
    if (!this.mNeedUpdateUserRating) {
      return;
    }
    if (paramRating == null)
    {
      resetUserRating();
      return;
    }
    int i = paramRating.getRatingStyle();
    this.mUserRatingStyle = i;
    float f = 1.0F;
    switch (i)
    {
    default: 
      this.mUserRatingValue = 0.0F;
      break;
    case 6: 
      this.mUserRatingValue = paramRating.getPercentRating();
      break;
    case 3: 
    case 4: 
    case 5: 
      this.mUserRatingValue = paramRating.getStarRating();
      break;
    case 2: 
      if (!paramRating.isThumbUp()) {
        f = 0.0F;
      }
      this.mUserRatingValue = f;
      break;
    case 1: 
      if (!paramRating.hasHeart()) {
        f = 0.0F;
      }
      this.mUserRatingValue = f;
    }
    this.mUserRatingStyleVar.set(this.mUserRatingStyle);
    this.mUserRatingValueVar.set(this.mUserRatingValue);
    requestUpdate();
  }
  
  public void finish()
  {
    super.finish();
    Object localObject = this.mArtworkVar;
    if (localObject != null) {
      ((IndexedVariable)localObject).set(null);
    }
    this.mMusicController.unregisterListener();
    this.mMusicController.finish();
    localObject = getContext().getHandler();
    ((Handler)localObject).removeCallbacks(this.mUpdateProgressRunnable);
    ((Handler)localObject).removeCallbacks(this.mDelayToSetArtworkRunnable);
    ((Handler)localObject).removeCallbacks(this.mResetMusicControllerRunable);
  }
  
  public void init()
  {
    super.init();
    initByPreference();
    this.mMusicController.registerListener(this.mMusicUpdateListener);
    if (this.mMusicController.isMusicActive())
    {
      if (this.mAutoShow) {
        show(true);
      }
      onMusicStateChange(true);
    }
    else
    {
      onMusicStateChange(false);
    }
  }
  
  public void initByPreference()
  {
    Object localObject1 = this.mMiuiMusicContext;
    if (localObject1 != null)
    {
      Object localObject2;
      try
      {
        localObject1 = ((Context)localObject1).getSharedPreferences("MiuiMusic", 4);
      }
      catch (IllegalStateException localIllegalStateException)
      {
        localObject2 = null;
      }
      if (localObject2 != null)
      {
        updateAlbum(localObject2.getString("songName", null), localObject2.getString("artistName", null), localObject2.getString("albumName", null));
        updateArtwork(this.mDefaultAlbumCoverBm);
      }
    }
  }
  
  public boolean onButtonDoubleClick(String paramString)
  {
    return false;
  }
  
  public boolean onButtonDown(String paramString)
  {
    return sendMediaKeyEvent(0, paramString);
  }
  
  public boolean onButtonLongClick(String paramString)
  {
    return false;
  }
  
  public boolean onButtonUp(String paramString)
  {
    if (!sendMediaKeyEvent(1, paramString)) {
      return false;
    }
    if (("music_prev".equals(paramString)) || ("music_next".equals(paramString)))
    {
      cancelSetDefaultArtwork();
      getContext().getHandler().removeCallbacks(this.mUpdateProgressRunnable);
    }
    return true;
  }
  
  protected void onVisibilityChange(boolean paramBoolean)
  {
    super.onVisibilityChange(paramBoolean);
    boolean bool = false;
    SpectrumVisualizerScreenElement localSpectrumVisualizerScreenElement;
    if (paramBoolean)
    {
      requestUpdate();
      localSpectrumVisualizerScreenElement = this.mSpectrumVisualizer;
      if (localSpectrumVisualizerScreenElement != null)
      {
        paramBoolean = bool;
        if (this.mPlaying)
        {
          paramBoolean = bool;
          if (this.mResumed) {
            paramBoolean = true;
          }
        }
        localSpectrumVisualizerScreenElement.enableUpdate(paramBoolean);
      }
    }
    else
    {
      requestFramerate(0.0F);
      localSpectrumVisualizerScreenElement = this.mSpectrumVisualizer;
      if (localSpectrumVisualizerScreenElement != null) {
        localSpectrumVisualizerScreenElement.enableUpdate(false);
      }
    }
  }
  
  public void pause()
  {
    super.pause();
    SpectrumVisualizerScreenElement localSpectrumVisualizerScreenElement = this.mSpectrumVisualizer;
    if (localSpectrumVisualizerScreenElement != null) {
      localSpectrumVisualizerScreenElement.enableUpdate(false);
    }
  }
  
  public void ratingHeart()
  {
    if (this.mUserRatingStyle == 1)
    {
      int i;
      if (this.mUserRatingValue == 1.0F) {
        i = 1;
      } else {
        i = 0;
      }
      Rating localRating = Rating.newHeartRating(i ^ 0x1);
      this.mMusicController.rating(localRating);
      updateUserRating(localRating);
    }
  }
  
  protected void readPackageName()
  {
    if ((this.mPlayerPackageVar != null) && (this.mPlayerClassVar != null))
    {
      Object localObject1 = this.mMusicController.getClientPackageName();
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("readPackage: ");
      ((StringBuilder)localObject2).append((String)localObject1);
      Log.d("MusicControlScreenE", ((StringBuilder)localObject2).toString());
      if (localObject1 != null)
      {
        localObject2 = this.mRoot.getContext().mContext.getPackageManager().getLaunchIntentForPackage((String)localObject1);
        if (localObject2 != null)
        {
          localObject1 = ((Intent)localObject2).getComponent();
          this.mPlayerPackageVar.set(((ComponentName)localObject1).getPackageName());
          this.mPlayerClassVar.set(((ComponentName)localObject1).getClassName());
        }
        else
        {
          this.mPlayerPackageVar.set(localObject1);
          this.mPlayerClassVar.set(null);
          Log.w("MusicControlScreenE", "set player info fail.");
        }
      }
    }
  }
  
  public void resume()
  {
    super.resume();
    requestUpdate();
    SpectrumVisualizerScreenElement localSpectrumVisualizerScreenElement = this.mSpectrumVisualizer;
    if (localSpectrumVisualizerScreenElement != null) {
      localSpectrumVisualizerScreenElement.enableUpdate(this.mPlaying);
    }
  }
  
  public void seekTo(double paramDouble)
  {
    long l = (paramDouble * this.mDurationVar.getDouble());
    this.mMusicController.seekTo(l);
  }
  
  private static class AlbumInfo
  {
    String album;
    String artist;
    String title;
    
    boolean update(String paramString1, String paramString2, String paramString3)
    {
      String str = paramString1;
      if (paramString1 != null) {
        str = paramString1.trim();
      }
      paramString1 = paramString2;
      if (paramString2 != null) {
        paramString1 = paramString2.trim();
      }
      paramString2 = paramString3;
      if (paramString3 != null) {
        paramString2 = paramString3.trim();
      }
      boolean bool;
      if ((TextUtils.equals(str, this.title)) && (TextUtils.equals(paramString1, this.artist)) && (TextUtils.equals(paramString2, this.album))) {
        bool = false;
      } else {
        bool = true;
      }
      if (bool)
      {
        this.title = str;
        this.artist = paramString1;
        this.album = paramString2;
      }
      return bool;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.MusicControlScreenElement
 * JD-Core Version:    0.7.0.1
 */