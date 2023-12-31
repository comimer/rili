.class public Lcom/miui/maml/elements/MusicControlScreenElement;
.super Lcom/miui/maml/elements/ElementGroup;
.source "MusicControlScreenElement.java"

# interfaces
.implements Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;
    }
.end annotation


# static fields
.field private static final BUTTON_MUSIC_NEXT:Ljava/lang/String; = "music_next"

.field private static final BUTTON_MUSIC_PAUSE:Ljava/lang/String; = "music_pause"

.field private static final BUTTON_MUSIC_PLAY:Ljava/lang/String; = "music_play"

.field private static final BUTTON_MUSIC_PREV:Ljava/lang/String; = "music_prev"

.field private static final ELE_MUSIC_ALBUM_COVER:Ljava/lang/String; = "music_album_cover"

.field private static final ELE_MUSIC_DISPLAY:Ljava/lang/String; = "music_display"

.field private static final FRAMERATE_PLAYING:I = 0x1e

.field private static final LOG_TAG:Ljava/lang/String; = "MusicControlScreenE"

.field public static final METADATA_KEY_LYRIC:Ljava/lang/String; = "android.media.metadata.LYRIC"

.field private static final MIUI_PLAYER_PACKAGE_NAME:Ljava/lang/String; = "com.miui.player"

.field public static final MUSIC_STATE_PLAY:I = 0x1

.field public static final MUSIC_STATE_STOP:I = 0x0

.field public static final PLAYSTATE_NONE:I = 0x0

.field public static final TAG_NAME:Ljava/lang/String; = "MusicControl"


# instance fields
.field private mAlbumInfo:Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;

.field private mAlbumVar:Lcom/miui/maml/data/IndexedVariable;

.field private mArtistVar:Lcom/miui/maml/data/IndexedVariable;

.field private mArtworkVar:Lcom/miui/maml/data/IndexedVariable;

.field private mAutoShow:Z

.field private mButtonNext:Lcom/miui/maml/elements/ButtonScreenElement;

.field private mButtonPause:Lcom/miui/maml/elements/ButtonScreenElement;

.field private mButtonPlay:Lcom/miui/maml/elements/ButtonScreenElement;

.field private mButtonPrev:Lcom/miui/maml/elements/ButtonScreenElement;

.field private mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

.field private mDisableNext:Z

.field private mDisableNextVar:Lcom/miui/maml/data/IndexedVariable;

.field private mDisablePlay:Z

.field private mDisablePlayVar:Lcom/miui/maml/data/IndexedVariable;

.field private mDisablePrev:Z

.field private mDisablePrevVar:Lcom/miui/maml/data/IndexedVariable;

.field private mDurationVar:Lcom/miui/maml/data/IndexedVariable;

.field private mEnableLyric:Z

.field private mEnableProgress:Z

.field private mImageAlbumCover:Lcom/miui/maml/elements/ImageScreenElement;

.field private mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

.field private mLyricAfterVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLyricBeforeVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLyricCurrentLineProgressVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLyricCurrentVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLyricLastVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLyricNextVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLyricPrevVar:Lcom/miui/maml/data/IndexedVariable;

.field private mMetadata:Landroid/media/MediaMetadata;

.field private mMiuiMusicContext:Landroid/content/Context;

.field private mMusicController:Lcom/miui/maml/elements/MusicController;

.field private mMusicStateVar:Lcom/miui/maml/data/IndexedVariable;

.field private mMusicUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

.field private mNeedUpdateLyric:Z

.field private mNeedUpdateProgress:Z

.field private mNeedUpdateUserRating:Z

.field private mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

.field private mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

.field private mPlaying:Z

.field private mPositionVar:Lcom/miui/maml/data/IndexedVariable;

.field private mResetMusicControllerRunable:Ljava/lang/Runnable;

.field private mSender:Ljava/lang/String;

.field private mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

.field private mTextDisplay:Lcom/miui/maml/elements/TextScreenElement;

.field private mTitleVar:Lcom/miui/maml/data/IndexedVariable;

.field private mUpdateProgressInterval:I

.field private mUpdateProgressRunnable:Ljava/lang/Runnable;

.field private mUserRatingStyle:I

.field private mUserRatingStyleVar:Lcom/miui/maml/data/IndexedVariable;

.field private mUserRatingValue:F

.field private mUserRatingValueVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    new-instance p2, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;-><init>(Lcom/miui/maml/elements/MusicControlScreenElement$1;)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAlbumInfo:Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;

    .line 3
    new-instance p2, Lcom/miui/maml/elements/MusicControlScreenElement$1;

    invoke-direct {p2, p0}, Lcom/miui/maml/elements/MusicControlScreenElement$1;-><init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 4
    new-instance p2, Lcom/miui/maml/elements/MusicControlScreenElement$2;

    invoke-direct {p2, p0}, Lcom/miui/maml/elements/MusicControlScreenElement$2;-><init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    .line 5
    new-instance p2, Lcom/miui/maml/elements/MusicControlScreenElement$3;

    invoke-direct {p2, p0}, Lcom/miui/maml/elements/MusicControlScreenElement$3;-><init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mResetMusicControllerRunable:Ljava/lang/Runnable;

    .line 6
    new-instance p2, Lcom/miui/maml/elements/MusicControlScreenElement$4;

    invoke-direct {p2, p0}, Lcom/miui/maml/elements/MusicControlScreenElement$4;-><init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    const-string p2, "music_prev"

    .line 7
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p2

    check-cast p2, Lcom/miui/maml/elements/ButtonScreenElement;

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPrev:Lcom/miui/maml/elements/ButtonScreenElement;

    const-string p2, "music_next"

    .line 8
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p2

    check-cast p2, Lcom/miui/maml/elements/ButtonScreenElement;

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonNext:Lcom/miui/maml/elements/ButtonScreenElement;

    const-string p2, "music_play"

    .line 9
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p2

    check-cast p2, Lcom/miui/maml/elements/ButtonScreenElement;

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lcom/miui/maml/elements/ButtonScreenElement;

    const-string p2, "music_pause"

    .line 10
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p2

    check-cast p2, Lcom/miui/maml/elements/ButtonScreenElement;

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPause:Lcom/miui/maml/elements/ButtonScreenElement;

    const-string p2, "music_display"

    .line 11
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p2

    check-cast p2, Lcom/miui/maml/elements/TextScreenElement;

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lcom/miui/maml/elements/TextScreenElement;

    const-string p2, "music_album_cover"

    .line 12
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p2

    check-cast p2, Lcom/miui/maml/elements/ImageScreenElement;

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lcom/miui/maml/elements/ImageScreenElement;

    .line 13
    invoke-direct {p0, p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Lcom/miui/maml/elements/ElementGroup;)Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 14
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPrev:Lcom/miui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->setupButton(Lcom/miui/maml/elements/ButtonScreenElement;)V

    .line 15
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonNext:Lcom/miui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->setupButton(Lcom/miui/maml/elements/ButtonScreenElement;)V

    .line 16
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lcom/miui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->setupButton(Lcom/miui/maml/elements/ButtonScreenElement;)V

    .line 17
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPause:Lcom/miui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->setupButton(Lcom/miui/maml/elements/ButtonScreenElement;)V

    .line 18
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPause:Lcom/miui/maml/elements/ButtonScreenElement;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 19
    invoke-virtual {p2, v0}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 20
    :cond_0
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lcom/miui/maml/elements/ImageScreenElement;

    if-eqz p2, :cond_2

    const-string p2, "defAlbumCover"

    .line 21
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v1, p2}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 24
    :cond_1
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_2

    .line 25
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getResourceDensity()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_2
    const-string p2, "autoShow"

    .line 26
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    const-string p2, "enableLyric"

    .line 27
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    move p2, v1

    goto :goto_0

    :cond_3
    const-string p2, "enableProgress"

    .line 28
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    :goto_0
    iput-boolean p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    const/16 p2, 0x3e8

    const-string v2, "updateProgressInterval"

    .line 29
    invoke-virtual {p0, p1, v2, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressInterval:I

    .line 30
    iget-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    if-eqz p1, :cond_6

    .line 31
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    .line 32
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".music_state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 33
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".title"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mTitleVar:Lcom/miui/maml/data/IndexedVariable;

    .line 34
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".artist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mArtistVar:Lcom/miui/maml/data/IndexedVariable;

    .line 35
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".album"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAlbumVar:Lcom/miui/maml/data/IndexedVariable;

    .line 36
    iget-boolean p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz p2, :cond_4

    .line 37
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".lyric_current"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lcom/miui/maml/data/IndexedVariable;

    .line 38
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".lyric_before"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lcom/miui/maml/data/IndexedVariable;

    .line 39
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".lyric_after"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lcom/miui/maml/data/IndexedVariable;

    .line 40
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".lyric_last"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lcom/miui/maml/data/IndexedVariable;

    .line 41
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".lyric_prev"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricPrevVar:Lcom/miui/maml/data/IndexedVariable;

    .line 42
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".lyric_next"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lcom/miui/maml/data/IndexedVariable;

    .line 43
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".lyric_current_line_progress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lcom/miui/maml/data/IndexedVariable;

    .line 44
    :cond_4
    iget-boolean p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    if-eqz p2, :cond_5

    .line 45
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".music_duration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    .line 46
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".music_position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPositionVar:Lcom/miui/maml/data/IndexedVariable;

    .line 47
    :cond_5
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".user_rating_style"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyleVar:Lcom/miui/maml/data/IndexedVariable;

    .line 48
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".user_rating_value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValueVar:Lcom/miui/maml/data/IndexedVariable;

    .line 49
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".disable_play"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePlayVar:Lcom/miui/maml/data/IndexedVariable;

    .line 50
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".disable_prev"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePrevVar:Lcom/miui/maml/data/IndexedVariable;

    .line 51
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".disable_next"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisableNextVar:Lcom/miui/maml/data/IndexedVariable;

    .line 52
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".artwork"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lcom/miui/maml/data/IndexedVariable;

    .line 53
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

    .line 54
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

    .line 55
    :cond_6
    iget-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    if-eqz p1, :cond_7

    move p1, v1

    goto :goto_1

    :cond_7
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    .line 56
    iget-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    if-eqz p1, :cond_8

    move v0, v1

    :cond_8
    iput-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    .line 57
    iget-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateUserRating:Z

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string p2, "com.miui.player"

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMiuiMusicContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "MusicControlScreenE"

    const-string v0, "fail to get MiuiMusic preference"

    .line 59
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :goto_2
    new-instance p1, Lcom/miui/maml/elements/MusicController;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/miui/maml/elements/MusicController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 61
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getRootTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "maml"

    .line 62
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    const-string p2, "gadget"

    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p1, "home_widget"

    .line 64
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    goto :goto_3

    :cond_9
    const-string p2, "statusbar"

    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    const-string p1, "notification_bar"

    .line 66
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    goto :goto_3

    :cond_a
    const-string p2, "lockscreen"

    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 68
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    :cond_b
    :goto_3
    return-void
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/MusicControlScreenElement;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetUserRating()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMetadata:Landroid/media/MediaMetadata;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$1002(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMetadata:Landroid/media/MediaMetadata;

    .line 2
    .line 3
    return-object p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic access$1100(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAlbumInfo:Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$1200(Lcom/miui/maml/elements/MusicControlScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
.end method

.method static synthetic access$1300(Lcom/miui/maml/elements/MusicControlScreenElement;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->delayToSetDefaultArtwork(J)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic access$1400(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateArtwork(Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic access$1500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$1502(Lcom/miui/maml/elements/MusicControlScreenElement;Lcom/miui/maml/elements/MusicLyricParser$Lyric;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 2
    .line 3
    return-object p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic access$1600(Lcom/miui/maml/elements/MusicControlScreenElement;Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateLyric(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic access$1700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$1800(Lcom/miui/maml/elements/MusicControlScreenElement;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateProgress(JJ)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method

.method static synthetic access$1900(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/media/Rating;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateUserRating(Landroid/media/Rating;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic access$200(Lcom/miui/maml/elements/MusicControlScreenElement;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePlay:Z

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$2000(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$202(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePlay:Z

    .line 2
    .line 3
    return p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic access$2100(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$2200(Lcom/miui/maml/elements/MusicControlScreenElement;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$2300(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$2400(Lcom/miui/maml/elements/MusicControlScreenElement;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$2500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$2600(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPositionVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$2700(Lcom/miui/maml/elements/MusicControlScreenElement;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$2800(Lcom/miui/maml/elements/MusicControlScreenElement;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateLyricVar(J)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic access$2900(Lcom/miui/maml/elements/MusicControlScreenElement;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressInterval:I

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$300(Lcom/miui/maml/elements/MusicControlScreenElement;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePrev:Z

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$302(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePrev:Z

    .line 2
    .line 3
    return p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic access$400(Lcom/miui/maml/elements/MusicControlScreenElement;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisableNext:Z

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$402(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisableNext:Z

    .line 2
    .line 3
    return p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic access$500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePlayVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$600(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePrevVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisableNextVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$800(Lcom/miui/maml/elements/MusicControlScreenElement;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetAll()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic access$900(Lcom/miui/maml/elements/MusicControlScreenElement;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method private cancelSetDefaultArtwork()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private delayToSetDefaultArtwork(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
    return-void
    .line 20
    .line 21
    .line 22
.end method

.method private findSpectrumVisualizer(Lcom/miui/maml/elements/ElementGroup;)Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/miui/maml/elements/ScreenElement;

    .line 20
    .line 21
    instance-of v1, v0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    check-cast v0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    instance-of v1, v0, Lcom/miui/maml/elements/ElementGroup;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    check-cast v0, Lcom/miui/maml/elements/ElementGroup;

    .line 33
    .line 34
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Lcom/miui/maml/elements/ElementGroup;)Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_2
    const/4 p1, 0x0

    .line 42
    return-object p1
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method private onMusicStateChange(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    .line 18
    .line 19
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-wide/16 v2, 0x0

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPause:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 38
    .line 39
    .line 40
    :cond_3
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lcom/miui/maml/elements/ButtonScreenElement;

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    xor-int/lit8 v2, p1, 0x1

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 47
    .line 48
    .line 49
    :cond_4
    iget-boolean v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    .line 50
    .line 51
    if-eqz v1, :cond_6

    .line 52
    .line 53
    if-eqz p1, :cond_5

    .line 54
    .line 55
    const-wide/16 v1, 0x64

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_5
    const-wide/16 v1, 0x0

    .line 59
    .line 60
    :goto_1
    invoke-direct {p0, p1, v1, v2}, Lcom/miui/maml/elements/MusicControlScreenElement;->startProgressUpdate(ZJ)V

    .line 61
    .line 62
    .line 63
    :cond_6
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 64
    .line 65
    if-eqz v1, :cond_8

    .line 66
    .line 67
    if-eqz p1, :cond_7

    .line 68
    .line 69
    iget-boolean v2, p0, Lcom/miui/maml/elements/ScreenElement;->mResumed:Z

    .line 70
    .line 71
    if-eqz v2, :cond_7

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_7
    const/4 v0, 0x0

    .line 75
    :goto_2
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 76
    .line 77
    .line 78
    :cond_8
    if-eqz p1, :cond_9

    .line 79
    .line 80
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 81
    .line 82
    if-eqz v0, :cond_9

    .line 83
    .line 84
    const/high16 v0, 0x41f00000    # 30.0f

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_9
    const/4 v0, 0x0

    .line 88
    :goto_3
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 92
    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v1, "music state change: playing="

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string v0, "MusicControlScreenE"

    .line 112
    .line 113
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    return-void
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method private resetAll()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetProgress()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetLyric()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetUserRating()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateArtwork(Landroid/graphics/Bitmap;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetPackageName()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetMusicState()V

    .line 23
    .line 24
    .line 25
    return-void
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method private resetLyric()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lcom/miui/maml/data/IndexedVariable;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lcom/miui/maml/data/IndexedVariable;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lcom/miui/maml/data/IndexedVariable;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricPrevVar:Lcom/miui/maml/data/IndexedVariable;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lcom/miui/maml/data/IndexedVariable;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lcom/miui/maml/data/IndexedVariable;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method private resetMusicState()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    .line 3
    .line 4
    .line 5
    return-void
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private resetPackageName()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private resetProgress()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPositionVar:Lcom/miui/maml/data/IndexedVariable;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lcom/miui/maml/data/IndexedVariable;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method private resetUserRating()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateUserRating:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 10
    .line 11
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyleVar:Lcom/miui/maml/data/IndexedVariable;

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValueVar:Lcom/miui/maml/data/IndexedVariable;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method private sendMediaKeyEvent(ILjava/lang/String;)Z
    .locals 9

    .line 1
    const-string v0, "music_prev"

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "music_pause"

    .line 8
    .line 9
    const/16 v3, 0x55

    .line 10
    .line 11
    const/16 v4, 0x57

    .line 12
    .line 13
    const-string v5, "music_play"

    .line 14
    .line 15
    const/16 v6, 0x58

    .line 16
    .line 17
    const-string v7, "music_next"

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    move v1, v6

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    move v1, v4

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move v1, v8

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    :goto_0
    move v1, v3

    .line 48
    :goto_1
    if-ne v1, v6, :cond_4

    .line 49
    .line 50
    iget-boolean v6, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePrev:Z

    .line 51
    .line 52
    if-eqz v6, :cond_4

    .line 53
    .line 54
    return v8

    .line 55
    :cond_4
    if-ne v1, v4, :cond_5

    .line 56
    .line 57
    iget-boolean v4, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisableNext:Z

    .line 58
    .line 59
    if-eqz v4, :cond_5

    .line 60
    .line 61
    return v8

    .line 62
    :cond_5
    if-ne v1, v3, :cond_6

    .line 63
    .line 64
    iget-boolean v3, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDisablePlay:Z

    .line 65
    .line 66
    if-eqz v3, :cond_6

    .line 67
    .line 68
    return v8

    .line 69
    :cond_6
    iget-object v3, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 70
    .line 71
    invoke-virtual {v3, p1, v1}, Lcom/miui/maml/elements/MusicController;->sendMediaKeyEvent(II)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const/4 v3, 0x1

    .line 76
    if-eqz v1, :cond_7

    .line 77
    .line 78
    return v3

    .line 79
    :cond_7
    const-string v1, "MusicControlScreenE"

    .line 80
    .line 81
    const-string v4, "fail to dispatch by media controller, send to MiuiMusic."

    .line 82
    .line 83
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    if-nez p1, :cond_8

    .line 87
    .line 88
    return v3

    .line 89
    :cond_8
    const/4 p1, 0x0

    .line 90
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_b

    .line 95
    .line 96
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_9

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_9
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_a

    .line 108
    .line 109
    new-instance p1, Landroid/content/Intent;

    .line 110
    .line 111
    const-string p2, "com.miui.player.musicservicecommand.previous"

    .line 112
    .line 113
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_a
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-eqz p2, :cond_c

    .line 122
    .line 123
    new-instance p1, Landroid/content/Intent;

    .line 124
    .line 125
    const-string p2, "com.miui.player.musicservicecommand.next"

    .line 126
    .line 127
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_b
    :goto_2
    new-instance p1, Landroid/content/Intent;

    .line 132
    .line 133
    const-string p2, "com.miui.player.musicservicecommand.togglepause"

    .line 134
    .line 135
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_c
    :goto_3
    if-eqz p1, :cond_d

    .line 139
    .line 140
    const-string p2, "com.miui.player"

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    .line 144
    .line 145
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    .line 146
    .line 147
    const-string v0, "intent_sender"

    .line 148
    .line 149
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    .line 151
    .line 152
    iget-object p2, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 159
    .line 160
    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mResetMusicControllerRunable:Ljava/lang/Runnable;

    .line 172
    .line 173
    const-wide/16 v0, 0x3e8

    .line 174
    .line 175
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    .line 177
    .line 178
    return v3

    .line 179
    :cond_d
    return v8
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
.end method

.method private setupButton(Lcom/miui/maml/elements/ButtonScreenElement;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/ButtonScreenElement;->setListener(Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/ScreenElement;->setParent(Lcom/miui/maml/elements/ElementGroup;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private startProgressUpdate(ZJ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    cmp-long p1, p2, v0

    .line 19
    .line 20
    if-lez p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    .line 31
    .line 32
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return-void
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method private updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mTitleVar:Lcom/miui/maml/data/IndexedVariable;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mArtistVar:Lcom/miui/maml/data/IndexedVariable;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAlbumVar:Lcom/miui/maml/data/IndexedVariable;

    .line 16
    .line 17
    invoke-virtual {v0, p3}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p3, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lcom/miui/maml/elements/TextScreenElement;

    .line 21
    .line 22
    if-eqz p3, :cond_3

    .line 23
    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    move-object p1, p2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-eqz p3, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 p3, 0x2

    .line 40
    new-array p3, p3, [Ljava/lang/Object;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    aput-object p1, p3, v0

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    aput-object p2, p3, p1

    .line 47
    .line 48
    const-string p1, "%s   %s"

    .line 49
    .line 50
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_0
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lcom/miui/maml/elements/TextScreenElement;

    .line 55
    .line 56
    invoke-virtual {p2, p1}, Lcom/miui/maml/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 60
    .line 61
    .line 62
    return-void
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method

.method private updateArtwork(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->cancelSetDefaultArtwork()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lcom/miui/maml/data/IndexedVariable;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lcom/miui/maml/elements/ImageScreenElement;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 21
    .line 22
    .line 23
    return-void
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method private updateLyric(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetLyric()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getTimeArr()[I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getStringArr()Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1, v0, p1}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->set([ILjava/util/ArrayList;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method private updateLyricVar(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getLyricShot(J)Lcom/miui/maml/elements/MusicLyricParser$LyricShot;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v0, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    .line 8
    .line 9
    iget-object v2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lcom/miui/maml/data/IndexedVariable;

    .line 10
    .line 11
    invoke-virtual {v2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getLine(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lcom/miui/maml/data/IndexedVariable;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getBeforeLines(J)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lcom/miui/maml/data/IndexedVariable;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getAfterLines(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lcom/miui/maml/data/IndexedVariable;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 48
    .line 49
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getLastLine(J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lcom/miui/maml/data/IndexedVariable;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricPrevVar:Lcom/miui/maml/data/IndexedVariable;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 64
    .line 65
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getNextLine(J)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lcom/miui/maml/data/IndexedVariable;

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    return-void
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method private updateProgress(JJ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p1, v0

    .line 9
    .line 10
    if-lez v2, :cond_4

    .line 11
    .line 12
    cmp-long v2, p3, v0

    .line 13
    .line 14
    if-gez v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget-object v2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    .line 18
    .line 19
    long-to-double p1, p1

    .line 20
    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPositionVar:Lcom/miui/maml/data/IndexedVariable;

    .line 24
    .line 25
    long-to-double v2, p3

    .line 26
    invoke-virtual {p1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 27
    .line 28
    .line 29
    iget-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mLyric:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-direct {p0, p3, p4}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateLyricVar(J)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetLyric()V

    .line 42
    .line 43
    .line 44
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 45
    .line 46
    .line 47
    iget-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    .line 48
    .line 49
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->startProgressUpdate(ZJ)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetProgress()V

    .line 54
    .line 55
    .line 56
    return-void
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method private updateUserRating(Landroid/media/Rating;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mNeedUpdateUserRating:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->resetUserRating()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/media/Rating;->getRatingStyle()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    .line 17
    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    iput v2, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :pswitch_0
    invoke-virtual {p1}, Landroid/media/Rating;->getPercentRating()F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :pswitch_1
    invoke-virtual {p1}, Landroid/media/Rating;->getStarRating()F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :pswitch_2
    invoke-virtual {p1}, Landroid/media/Rating;->isThumbUp()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v1, v2

    .line 49
    :goto_0
    iput v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :pswitch_3
    invoke-virtual {p1}, Landroid/media/Rating;->hasHeart()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    move v1, v2

    .line 60
    :goto_1
    iput v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 61
    .line 62
    :goto_2
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyleVar:Lcom/miui/maml/data/IndexedVariable;

    .line 63
    .line 64
    iget v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    .line 65
    .line 66
    int-to-double v0, v0

    .line 67
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValueVar:Lcom/miui/maml/data/IndexedVariable;

    .line 71
    .line 72
    iget v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 73
    .line 74
    float-to-double v0, v0

    .line 75
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->finish()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lcom/miui/maml/data/IndexedVariable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/elements/MusicController;->unregisterListener()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/miui/maml/elements/MusicController;->finish()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mResetMusicControllerRunable:Ljava/lang/Runnable;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    return-void
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method public init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->initByPreference()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/MusicController;->registerListener(Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/miui/maml/elements/MusicController;->isMusicActive()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method public initByPreference()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMiuiMusicContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    const-string v2, "MiuiMusic"

    .line 7
    .line 8
    const/4 v3, 0x4

    .line 9
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-object v0, v1

    .line 15
    :goto_0
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v2, "songName"

    .line 18
    .line 19
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "artistName"

    .line 24
    .line 25
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v4, "albumName"

    .line 30
    .line 31
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p0, v2, v3, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 39
    .line 40
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateArtwork(Landroid/graphics/Bitmap;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method public onButtonDoubleClick(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onButtonDown(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->sendMediaKeyEvent(ILjava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public onButtonLongClick(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onButtonUp(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->sendMediaKeyEvent(ILjava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :cond_0
    const-string v1, "music_prev"

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string v1, "music_next"

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    :cond_1
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->cancelSetDefaultArtwork()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return v0
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method protected onVisibilityChange(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onVisibilityChange(Z)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 11
    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/miui/maml/elements/ScreenElement;->mResumed:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    :cond_0
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method public pause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->pause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public ratingHeart()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 7
    .line 8
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    .line 10
    cmpl-float v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    xor-int/2addr v0, v1

    .line 18
    invoke-static {v0}, Landroid/media/Rating;->newHeartRating(Z)Landroid/media/Rating;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/MusicController;->rating(Landroid/media/Rating;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->updateUserRating(Landroid/media/Rating;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method protected readPackageName()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/elements/MusicController;->getClientPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "readPackage: "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "MusicControlScreenE"

    .line 34
    .line 35
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lcom/miui/maml/data/IndexedVariable;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lcom/miui/maml/data/IndexedVariable;

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    const-string v0, "set player info fail."

    .line 93
    .line 94
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_0
    return-void
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method public resume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->resume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public seekTo(D)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    mul-double/2addr p1, v0

    .line 8
    double-to-long p1, p1

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement;->mMusicController:Lcom/miui/maml/elements/MusicController;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicController;->seekTo(J)Z

    .line 12
    .line 13
    .line 14
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
