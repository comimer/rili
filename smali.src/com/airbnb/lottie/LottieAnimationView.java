package com.airbnb.lottie;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import android.view.View;
import android.view.View.BaseSavedState;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class LottieAnimationView
  extends AppCompatImageView
{
  private static final String o = LottieAnimationView.class.getSimpleName();
  private static final e0<Throwable> p = new f();
  private final e0<h> a = new e(this);
  private final e0<Throwable> b = new a();
  private e0<Throwable> c;
  private int d = 0;
  private final LottieDrawable e = new LottieDrawable();
  private String f;
  private int g;
  private boolean h = false;
  private boolean i = false;
  private boolean j = true;
  private final Set<UserActionTaken> k = new HashSet();
  private final Set<g0> l = new HashSet();
  private k0<h> m;
  private h n;
  
  public LottieAnimationView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    o(paramAttributeSet, m0.a);
  }
  
  private void j()
  {
    k0 localk0 = this.m;
    if (localk0 != null)
    {
      localk0.j(this.a);
      this.m.i(this.b);
    }
  }
  
  private void k()
  {
    this.n = null;
    this.e.s();
  }
  
  private k0<h> m(String paramString)
  {
    if (isInEditMode()) {
      return new k0(new g(this, paramString), true);
    }
    if (this.j) {
      paramString = p.j(getContext(), paramString);
    } else {
      paramString = p.k(getContext(), paramString, null);
    }
    return paramString;
  }
  
  private k0<h> n(int paramInt)
  {
    if (isInEditMode()) {
      return new k0(new d(this, paramInt), true);
    }
    k0 localk0;
    if (this.j) {
      localk0 = p.s(getContext(), paramInt);
    } else {
      localk0 = p.t(getContext(), paramInt, null);
    }
    return localk0;
  }
  
  private void o(AttributeSet paramAttributeSet, int paramInt)
  {
    Object localObject1 = getContext();
    Object localObject2 = n0.C;
    boolean bool1 = false;
    paramAttributeSet = ((Context)localObject1).obtainStyledAttributes(paramAttributeSet, (int[])localObject2, paramInt, 0);
    this.j = paramAttributeSet.getBoolean(n0.E, true);
    int i1 = n0.O;
    boolean bool2 = paramAttributeSet.hasValue(i1);
    paramInt = n0.J;
    boolean bool3 = paramAttributeSet.hasValue(paramInt);
    int i2 = n0.T;
    boolean bool4 = paramAttributeSet.hasValue(i2);
    if ((bool2) && (bool3)) {
      throw new IllegalArgumentException("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
    }
    if (bool2)
    {
      paramInt = paramAttributeSet.getResourceId(i1, 0);
      if (paramInt != 0) {
        setAnimation(paramInt);
      }
    }
    else if (bool3)
    {
      localObject2 = paramAttributeSet.getString(paramInt);
      if (localObject2 != null) {
        setAnimation((String)localObject2);
      }
    }
    else if (bool4)
    {
      localObject2 = paramAttributeSet.getString(i2);
      if (localObject2 != null) {
        setAnimationFromUrl((String)localObject2);
      }
    }
    setFallbackResource(paramAttributeSet.getResourceId(n0.I, 0));
    if (paramAttributeSet.getBoolean(n0.D, false)) {
      this.i = true;
    }
    if (paramAttributeSet.getBoolean(n0.M, false)) {
      this.e.O0(-1);
    }
    paramInt = n0.R;
    if (paramAttributeSet.hasValue(paramInt)) {
      setRepeatMode(paramAttributeSet.getInt(paramInt, 1));
    }
    paramInt = n0.Q;
    if (paramAttributeSet.hasValue(paramInt)) {
      setRepeatCount(paramAttributeSet.getInt(paramInt, -1));
    }
    paramInt = n0.S;
    if (paramAttributeSet.hasValue(paramInt)) {
      setSpeed(paramAttributeSet.getFloat(paramInt, 1.0F));
    }
    paramInt = n0.F;
    if (paramAttributeSet.hasValue(paramInt)) {
      setClipToCompositionBounds(paramAttributeSet.getBoolean(paramInt, true));
    }
    setImageAssetsFolder(paramAttributeSet.getString(n0.L));
    setProgress(paramAttributeSet.getFloat(n0.N, 0.0F));
    l(paramAttributeSet.getBoolean(n0.H, false));
    paramInt = n0.G;
    if (paramAttributeSet.hasValue(paramInt))
    {
      paramInt = paramAttributeSet.getResourceId(paramInt, -1);
      localObject1 = new o0(e.a.a(getContext(), paramInt).getDefaultColor());
      localObject2 = new e1.d(new String[] { "**" });
      localObject1 = new l1.c(localObject1);
      i((e1.d)localObject2, h0.K, (l1.c)localObject1);
    }
    paramInt = n0.P;
    if (paramAttributeSet.hasValue(paramInt))
    {
      localObject2 = RenderMode.AUTOMATIC;
      i2 = paramAttributeSet.getInt(paramInt, ((Enum)localObject2).ordinal());
      paramInt = i2;
      if (i2 >= RenderMode.values().length) {
        paramInt = ((Enum)localObject2).ordinal();
      }
      setRenderMode(RenderMode.values()[paramInt]);
    }
    setIgnoreDisabledSystemAnimations(paramAttributeSet.getBoolean(n0.K, false));
    paramAttributeSet.recycle();
    paramAttributeSet = this.e;
    if (k1.h.f(getContext()) != 0.0F) {
      bool1 = true;
    }
    paramAttributeSet.S0(Boolean.valueOf(bool1));
  }
  
  private void setCompositionTask(k0<h> paramk0)
  {
    this.k.add(UserActionTaken.SET_ANIMATION);
    k();
    j();
    this.m = paramk0.d(this.a).c(this.b);
  }
  
  private void x()
  {
    boolean bool = p();
    setImageDrawable(null);
    setImageDrawable(this.e);
    if (bool) {
      this.e.r0();
    }
  }
  
  public boolean getClipToCompositionBounds()
  {
    return this.e.D();
  }
  
  public h getComposition()
  {
    return this.n;
  }
  
  public long getDuration()
  {
    h localh = this.n;
    long l1;
    if (localh != null) {
      l1 = localh.d();
    } else {
      l1 = 0L;
    }
    return l1;
  }
  
  public int getFrame()
  {
    return this.e.H();
  }
  
  public String getImageAssetsFolder()
  {
    return this.e.J();
  }
  
  public boolean getMaintainOriginalImageBounds()
  {
    return this.e.L();
  }
  
  public float getMaxFrame()
  {
    return this.e.M();
  }
  
  public float getMinFrame()
  {
    return this.e.N();
  }
  
  public l0 getPerformanceTracker()
  {
    return this.e.O();
  }
  
  public float getProgress()
  {
    return this.e.P();
  }
  
  public RenderMode getRenderMode()
  {
    return this.e.Q();
  }
  
  public int getRepeatCount()
  {
    return this.e.R();
  }
  
  public int getRepeatMode()
  {
    return this.e.S();
  }
  
  public float getSpeed()
  {
    return this.e.T();
  }
  
  public <T> void i(e1.d paramd, T paramT, l1.c<T> paramc)
  {
    this.e.p(paramd, paramT, paramc);
  }
  
  public void invalidate()
  {
    super.invalidate();
    Drawable localDrawable = getDrawable();
    if (((localDrawable instanceof LottieDrawable)) && (((LottieDrawable)localDrawable).Q() == RenderMode.SOFTWARE)) {
      this.e.invalidateSelf();
    }
  }
  
  public void invalidateDrawable(Drawable paramDrawable)
  {
    Drawable localDrawable = getDrawable();
    LottieDrawable localLottieDrawable = this.e;
    if (localDrawable == localLottieDrawable) {
      super.invalidateDrawable(localLottieDrawable);
    } else {
      super.invalidateDrawable(paramDrawable);
    }
  }
  
  public void l(boolean paramBoolean)
  {
    this.e.x(paramBoolean);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if ((!isInEditMode()) && (this.i)) {
      this.e.o0();
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    SavedState localSavedState = (SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    this.f = localSavedState.animationName;
    paramParcelable = this.k;
    UserActionTaken localUserActionTaken = UserActionTaken.SET_ANIMATION;
    if ((!paramParcelable.contains(localUserActionTaken)) && (!TextUtils.isEmpty(this.f))) {
      setAnimation(this.f);
    }
    this.g = localSavedState.animationResId;
    if (!this.k.contains(localUserActionTaken))
    {
      int i1 = this.g;
      if (i1 != 0) {
        setAnimation(i1);
      }
    }
    if (!this.k.contains(UserActionTaken.SET_PROGRESS)) {
      setProgress(localSavedState.progress);
    }
    if ((!this.k.contains(UserActionTaken.PLAY_OPTION)) && (localSavedState.isAnimating)) {
      u();
    }
    if (!this.k.contains(UserActionTaken.SET_IMAGE_ASSETS)) {
      setImageAssetsFolder(localSavedState.imageAssetsFolder);
    }
    if (!this.k.contains(UserActionTaken.SET_REPEAT_MODE)) {
      setRepeatMode(localSavedState.repeatMode);
    }
    if (!this.k.contains(UserActionTaken.SET_REPEAT_COUNT)) {
      setRepeatCount(localSavedState.repeatCount);
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    localSavedState.animationName = this.f;
    localSavedState.animationResId = this.g;
    localSavedState.progress = this.e.P();
    localSavedState.isAnimating = this.e.Y();
    localSavedState.imageAssetsFolder = this.e.J();
    localSavedState.repeatMode = this.e.S();
    localSavedState.repeatCount = this.e.R();
    return localSavedState;
  }
  
  public boolean p()
  {
    return this.e.X();
  }
  
  public void setAnimation(int paramInt)
  {
    this.g = paramInt;
    this.f = null;
    setCompositionTask(n(paramInt));
  }
  
  public void setAnimation(String paramString)
  {
    this.f = paramString;
    this.g = 0;
    setCompositionTask(m(paramString));
  }
  
  @Deprecated
  public void setAnimationFromJson(String paramString)
  {
    w(paramString, null);
  }
  
  public void setAnimationFromUrl(String paramString)
  {
    if (this.j) {
      paramString = p.w(getContext(), paramString);
    } else {
      paramString = p.x(getContext(), paramString, null);
    }
    setCompositionTask(paramString);
  }
  
  public void setApplyingOpacityToLayersEnabled(boolean paramBoolean)
  {
    this.e.t0(paramBoolean);
  }
  
  public void setCacheComposition(boolean paramBoolean)
  {
    this.j = paramBoolean;
  }
  
  public void setClipToCompositionBounds(boolean paramBoolean)
  {
    this.e.u0(paramBoolean);
  }
  
  public void setComposition(h paramh)
  {
    if (c.a)
    {
      String str = o;
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Set Composition \n");
      ((StringBuilder)localObject).append(paramh);
      Log.v(str, ((StringBuilder)localObject).toString());
    }
    this.e.setCallback(this);
    this.n = paramh;
    this.h = true;
    boolean bool = this.e.v0(paramh);
    this.h = false;
    if ((getDrawable() == this.e) && (!bool)) {
      return;
    }
    if (!bool) {
      x();
    }
    onVisibilityChanged(this, getVisibility());
    requestLayout();
    Object localObject = this.l.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((g0)((Iterator)localObject).next()).a(paramh);
    }
  }
  
  public void setFailureListener(e0<Throwable> parame0)
  {
    this.c = parame0;
  }
  
  public void setFallbackResource(int paramInt)
  {
    this.d = paramInt;
  }
  
  public void setFontAssetDelegate(a parama)
  {
    this.e.w0(parama);
  }
  
  public void setFrame(int paramInt)
  {
    this.e.x0(paramInt);
  }
  
  public void setIgnoreDisabledSystemAnimations(boolean paramBoolean)
  {
    this.e.y0(paramBoolean);
  }
  
  public void setImageAssetDelegate(b paramb)
  {
    this.e.z0(paramb);
  }
  
  public void setImageAssetsFolder(String paramString)
  {
    this.e.A0(paramString);
  }
  
  public void setImageBitmap(Bitmap paramBitmap)
  {
    j();
    super.setImageBitmap(paramBitmap);
  }
  
  public void setImageDrawable(Drawable paramDrawable)
  {
    j();
    super.setImageDrawable(paramDrawable);
  }
  
  public void setImageResource(int paramInt)
  {
    j();
    super.setImageResource(paramInt);
  }
  
  public void setMaintainOriginalImageBounds(boolean paramBoolean)
  {
    this.e.B0(paramBoolean);
  }
  
  public void setMaxFrame(int paramInt)
  {
    this.e.C0(paramInt);
  }
  
  public void setMaxFrame(String paramString)
  {
    this.e.D0(paramString);
  }
  
  public void setMaxProgress(float paramFloat)
  {
    this.e.E0(paramFloat);
  }
  
  public void setMinAndMaxFrame(String paramString)
  {
    this.e.G0(paramString);
  }
  
  public void setMinFrame(int paramInt)
  {
    this.e.H0(paramInt);
  }
  
  public void setMinFrame(String paramString)
  {
    this.e.I0(paramString);
  }
  
  public void setMinProgress(float paramFloat)
  {
    this.e.J0(paramFloat);
  }
  
  public void setOutlineMasksAndMattes(boolean paramBoolean)
  {
    this.e.K0(paramBoolean);
  }
  
  public void setPerformanceTrackingEnabled(boolean paramBoolean)
  {
    this.e.L0(paramBoolean);
  }
  
  public void setProgress(float paramFloat)
  {
    this.k.add(UserActionTaken.SET_PROGRESS);
    this.e.M0(paramFloat);
  }
  
  public void setRenderMode(RenderMode paramRenderMode)
  {
    this.e.N0(paramRenderMode);
  }
  
  public void setRepeatCount(int paramInt)
  {
    this.k.add(UserActionTaken.SET_REPEAT_COUNT);
    this.e.O0(paramInt);
  }
  
  public void setRepeatMode(int paramInt)
  {
    this.k.add(UserActionTaken.SET_REPEAT_MODE);
    this.e.P0(paramInt);
  }
  
  public void setSafeMode(boolean paramBoolean)
  {
    this.e.Q0(paramBoolean);
  }
  
  public void setSpeed(float paramFloat)
  {
    this.e.R0(paramFloat);
  }
  
  public void setTextDelegate(p0 paramp0)
  {
    this.e.T0(paramp0);
  }
  
  public void t()
  {
    this.i = false;
    this.e.n0();
  }
  
  public void u()
  {
    this.k.add(UserActionTaken.PLAY_OPTION);
    this.e.o0();
  }
  
  public void unscheduleDrawable(Drawable paramDrawable)
  {
    LottieDrawable localLottieDrawable;
    if (!this.h)
    {
      localLottieDrawable = this.e;
      if ((paramDrawable == localLottieDrawable) && (localLottieDrawable.X()))
      {
        t();
        break label61;
      }
    }
    if ((!this.h) && ((paramDrawable instanceof LottieDrawable)))
    {
      localLottieDrawable = (LottieDrawable)paramDrawable;
      if (localLottieDrawable.X()) {
        localLottieDrawable.n0();
      }
    }
    label61:
    super.unscheduleDrawable(paramDrawable);
  }
  
  public void v(InputStream paramInputStream, String paramString)
  {
    setCompositionTask(p.n(paramInputStream, paramString));
  }
  
  public void w(String paramString1, String paramString2)
  {
    v(new ByteArrayInputStream(paramString1.getBytes()), paramString2);
  }
  
  private static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new a();
    String animationName;
    int animationResId;
    String imageAssetsFolder;
    boolean isAnimating;
    float progress;
    int repeatCount;
    int repeatMode;
    
    private SavedState(Parcel paramParcel)
    {
      super();
      this.animationName = paramParcel.readString();
      this.progress = paramParcel.readFloat();
      int i = paramParcel.readInt();
      boolean bool = true;
      if (i != 1) {
        bool = false;
      }
      this.isAnimating = bool;
      this.imageAssetsFolder = paramParcel.readString();
      this.repeatMode = paramParcel.readInt();
      this.repeatCount = paramParcel.readInt();
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeString(this.animationName);
      paramParcel.writeFloat(this.progress);
      paramParcel.writeInt(this.isAnimating);
      paramParcel.writeString(this.imageAssetsFolder);
      paramParcel.writeInt(this.repeatMode);
      paramParcel.writeInt(this.repeatCount);
    }
    
    class a
      implements Parcelable.Creator<LottieAnimationView.SavedState>
    {
      public LottieAnimationView.SavedState a(Parcel paramParcel)
      {
        return new LottieAnimationView.SavedState(paramParcel, null);
      }
      
      public LottieAnimationView.SavedState[] b(int paramInt)
      {
        return new LottieAnimationView.SavedState[paramInt];
      }
    }
  }
  
  private static enum UserActionTaken
  {
    static
    {
      UserActionTaken localUserActionTaken1 = new UserActionTaken("SET_ANIMATION", 0);
      SET_ANIMATION = localUserActionTaken1;
      UserActionTaken localUserActionTaken2 = new UserActionTaken("SET_PROGRESS", 1);
      SET_PROGRESS = localUserActionTaken2;
      UserActionTaken localUserActionTaken3 = new UserActionTaken("SET_REPEAT_MODE", 2);
      SET_REPEAT_MODE = localUserActionTaken3;
      UserActionTaken localUserActionTaken4 = new UserActionTaken("SET_REPEAT_COUNT", 3);
      SET_REPEAT_COUNT = localUserActionTaken4;
      UserActionTaken localUserActionTaken5 = new UserActionTaken("SET_IMAGE_ASSETS", 4);
      SET_IMAGE_ASSETS = localUserActionTaken5;
      UserActionTaken localUserActionTaken6 = new UserActionTaken("PLAY_OPTION", 5);
      PLAY_OPTION = localUserActionTaken6;
      $VALUES = new UserActionTaken[] { localUserActionTaken1, localUserActionTaken2, localUserActionTaken3, localUserActionTaken4, localUserActionTaken5, localUserActionTaken6 };
    }
    
    private UserActionTaken() {}
  }
  
  class a
    implements e0<Throwable>
  {
    a() {}
    
    public void a(Throwable paramThrowable)
    {
      Object localObject;
      if (LottieAnimationView.f(LottieAnimationView.this) != 0)
      {
        localObject = LottieAnimationView.this;
        ((LottieAnimationView)localObject).setImageResource(LottieAnimationView.f((LottieAnimationView)localObject));
      }
      if (LottieAnimationView.g(LottieAnimationView.this) == null) {
        localObject = LottieAnimationView.h();
      } else {
        localObject = LottieAnimationView.g(LottieAnimationView.this);
      }
      ((e0)localObject).onResult(paramThrowable);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.LottieAnimationView
 * JD-Core Version:    0.7.0.1
 */