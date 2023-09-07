package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.widget.AbsSeekBar;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView.c0;

public class SeekBarPreference
  extends Preference
{
  int W;
  int X;
  private int Y;
  private int Z;
  boolean a0;
  SeekBar b0;
  private TextView c0;
  boolean d0;
  private boolean e0;
  boolean f0;
  private SeekBar.OnSeekBarChangeListener g0 = new a();
  private View.OnKeyListener h0 = new b();
  
  public SeekBarPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, m.j);
  }
  
  public SeekBarPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public SeekBarPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, s.r1, paramInt1, paramInt2);
    this.X = paramContext.getInt(s.u1, 0);
    R0(paramContext.getInt(s.s1, 100));
    S0(paramContext.getInt(s.v1, 0));
    this.d0 = paramContext.getBoolean(s.t1, true);
    this.e0 = paramContext.getBoolean(s.w1, false);
    this.f0 = paramContext.getBoolean(s.x1, false);
    paramContext.recycle();
  }
  
  private void U0(int paramInt, boolean paramBoolean)
  {
    int i = this.X;
    int j = paramInt;
    if (paramInt < i) {
      j = i;
    }
    i = this.Y;
    paramInt = j;
    if (j > i) {
      paramInt = i;
    }
    if (paramInt != this.W)
    {
      this.W = paramInt;
      W0(paramInt);
      m0(paramInt);
      if (paramBoolean) {
        R();
      }
    }
  }
  
  public final void R0(int paramInt)
  {
    int i = this.X;
    int j = paramInt;
    if (paramInt < i) {
      j = i;
    }
    if (j != this.Y)
    {
      this.Y = j;
      R();
    }
  }
  
  public final void S0(int paramInt)
  {
    if (paramInt != this.Z)
    {
      this.Z = Math.min(this.Y - this.X, Math.abs(paramInt));
      R();
    }
  }
  
  public void T0(int paramInt)
  {
    U0(paramInt, true);
  }
  
  void V0(SeekBar paramSeekBar)
  {
    int i = this.X + paramSeekBar.getProgress();
    if (i != this.W) {
      if (c(Integer.valueOf(i)))
      {
        U0(i, false);
      }
      else
      {
        paramSeekBar.setProgress(this.W - this.X);
        W0(this.W);
      }
    }
  }
  
  void W0(int paramInt)
  {
    TextView localTextView = this.c0;
    if (localTextView != null) {
      localTextView.setText(String.valueOf(paramInt));
    }
  }
  
  public void X(l paraml)
  {
    super.X(paraml);
    paraml.itemView.setOnKeyListener(this.h0);
    this.b0 = ((SeekBar)paraml.a(o.c));
    paraml = (TextView)paraml.a(o.d);
    this.c0 = paraml;
    if (this.e0)
    {
      paraml.setVisibility(0);
    }
    else
    {
      paraml.setVisibility(8);
      this.c0 = null;
    }
    paraml = this.b0;
    if (paraml == null)
    {
      Log.e("SeekBarPreference", "SeekBar view is null in onBindViewHolder.");
      return;
    }
    paraml.setOnSeekBarChangeListener(this.g0);
    this.b0.setMax(this.Y - this.X);
    int i = this.Z;
    if (i != 0) {
      this.b0.setKeyProgressIncrement(i);
    } else {
      this.Z = this.b0.getKeyProgressIncrement();
    }
    this.b0.setProgress(this.W - this.X);
    W0(this.W);
    this.b0.setEnabled(N());
  }
  
  protected Object b0(TypedArray paramTypedArray, int paramInt)
  {
    return Integer.valueOf(paramTypedArray.getInt(paramInt, 0));
  }
  
  protected void f0(Parcelable paramParcelable)
  {
    if (!paramParcelable.getClass().equals(SavedState.class))
    {
      super.f0(paramParcelable);
      return;
    }
    paramParcelable = (SavedState)paramParcelable;
    super.f0(paramParcelable.getSuperState());
    this.W = paramParcelable.mSeekBarValue;
    this.X = paramParcelable.mMin;
    this.Y = paramParcelable.mMax;
    R();
  }
  
  protected Parcelable g0()
  {
    Object localObject = super.g0();
    if (O()) {
      return localObject;
    }
    localObject = new SavedState((Parcelable)localObject);
    ((SavedState)localObject).mSeekBarValue = this.W;
    ((SavedState)localObject).mMin = this.X;
    ((SavedState)localObject).mMax = this.Y;
    return localObject;
  }
  
  protected void h0(Object paramObject)
  {
    Object localObject = paramObject;
    if (paramObject == null) {
      localObject = Integer.valueOf(0);
    }
    T0(B(((Integer)localObject).intValue()));
  }
  
  private static class SavedState
    extends Preference.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new a();
    int mMax;
    int mMin;
    int mSeekBarValue;
    
    SavedState(Parcel paramParcel)
    {
      super();
      this.mSeekBarValue = paramParcel.readInt();
      this.mMin = paramParcel.readInt();
      this.mMax = paramParcel.readInt();
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(this.mSeekBarValue);
      paramParcel.writeInt(this.mMin);
      paramParcel.writeInt(this.mMax);
    }
    
    static final class a
      implements Parcelable.Creator<SeekBarPreference.SavedState>
    {
      public SeekBarPreference.SavedState a(Parcel paramParcel)
      {
        return new SeekBarPreference.SavedState(paramParcel);
      }
      
      public SeekBarPreference.SavedState[] b(int paramInt)
      {
        return new SeekBarPreference.SavedState[paramInt];
      }
    }
  }
  
  class a
    implements SeekBar.OnSeekBarChangeListener
  {
    a() {}
    
    public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
    {
      if (paramBoolean)
      {
        SeekBarPreference localSeekBarPreference = SeekBarPreference.this;
        if ((localSeekBarPreference.f0) || (!localSeekBarPreference.a0))
        {
          localSeekBarPreference.V0(paramSeekBar);
          return;
        }
      }
      paramSeekBar = SeekBarPreference.this;
      paramSeekBar.W0(paramInt + paramSeekBar.X);
    }
    
    public void onStartTrackingTouch(SeekBar paramSeekBar)
    {
      SeekBarPreference.this.a0 = true;
    }
    
    public void onStopTrackingTouch(SeekBar paramSeekBar)
    {
      SeekBarPreference.this.a0 = false;
      int i = paramSeekBar.getProgress();
      SeekBarPreference localSeekBarPreference = SeekBarPreference.this;
      if (i + localSeekBarPreference.X != localSeekBarPreference.W) {
        localSeekBarPreference.V0(paramSeekBar);
      }
    }
  }
  
  class b
    implements View.OnKeyListener
  {
    b() {}
    
    public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
    {
      if (paramKeyEvent.getAction() != 0) {
        return false;
      }
      paramView = SeekBarPreference.this;
      if ((!paramView.d0) && ((paramInt == 21) || (paramInt == 22))) {
        return false;
      }
      if ((paramInt != 23) && (paramInt != 66))
      {
        paramView = paramView.b0;
        if (paramView == null)
        {
          Log.e("SeekBarPreference", "SeekBar view is null and hence cannot be adjusted.");
          return false;
        }
        return paramView.onKeyDown(paramInt, paramKeyEvent);
      }
      return false;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.SeekBarPreference
 * JD-Core Version:    0.7.0.1
 */