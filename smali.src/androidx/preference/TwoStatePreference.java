package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.View;
import android.widget.TextView;

public abstract class TwoStatePreference
  extends Preference
{
  protected boolean W;
  private CharSequence X;
  private CharSequence Y;
  private boolean Z;
  private boolean a0;
  
  public TwoStatePreference(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TwoStatePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public TwoStatePreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public TwoStatePreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
  }
  
  public boolean M0()
  {
    boolean bool1 = this.a0;
    boolean bool2 = true;
    if (bool1) {
      bool1 = this.W;
    } else if (!this.W) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    boolean bool3 = bool2;
    if (!bool1) {
      if (super.M0()) {
        bool3 = bool2;
      } else {
        bool3 = false;
      }
    }
    return bool3;
  }
  
  public void R0(boolean paramBoolean)
  {
    this.a0 = paramBoolean;
  }
  
  public void S0(CharSequence paramCharSequence)
  {
    this.Y = paramCharSequence;
    if (!isChecked()) {
      R();
    }
  }
  
  public void T0(CharSequence paramCharSequence)
  {
    this.X = paramCharSequence;
    if (isChecked()) {
      R();
    }
  }
  
  protected void U0(View paramView)
  {
    if (!(paramView instanceof TextView)) {
      return;
    }
    paramView = (TextView)paramView;
    int i = 1;
    boolean bool = this.W;
    int j = 0;
    if ((bool) && (!TextUtils.isEmpty(this.X))) {
      paramView.setText(this.X);
    }
    int k;
    for (;;)
    {
      k = 0;
      break;
      k = i;
      if (this.W) {
        break;
      }
      k = i;
      if (TextUtils.isEmpty(this.Y)) {
        break;
      }
      paramView.setText(this.Y);
    }
    i = k;
    if (k != 0)
    {
      CharSequence localCharSequence = H();
      i = k;
      if (!TextUtils.isEmpty(localCharSequence))
      {
        paramView.setText(localCharSequence);
        i = 0;
      }
    }
    if (i == 0) {
      k = j;
    } else {
      k = 8;
    }
    if (k != paramView.getVisibility()) {
      paramView.setVisibility(k);
    }
  }
  
  protected void V0(l paraml)
  {
    U0(paraml.a(16908304));
  }
  
  protected void Y()
  {
    super.Y();
    boolean bool = isChecked() ^ true;
    if (c(Boolean.valueOf(bool))) {
      setChecked(bool);
    }
  }
  
  protected Object b0(TypedArray paramTypedArray, int paramInt)
  {
    return Boolean.valueOf(paramTypedArray.getBoolean(paramInt, false));
  }
  
  protected void f0(Parcelable paramParcelable)
  {
    if ((paramParcelable != null) && (paramParcelable.getClass().equals(SavedState.class)))
    {
      paramParcelable = (SavedState)paramParcelable;
      super.f0(paramParcelable.getSuperState());
      setChecked(paramParcelable.mChecked);
      return;
    }
    super.f0(paramParcelable);
  }
  
  protected Parcelable g0()
  {
    Object localObject = super.g0();
    if (O()) {
      return localObject;
    }
    localObject = new SavedState((Parcelable)localObject);
    ((SavedState)localObject).mChecked = isChecked();
    return localObject;
  }
  
  protected void h0(Object paramObject)
  {
    Object localObject = paramObject;
    if (paramObject == null) {
      localObject = Boolean.FALSE;
    }
    setChecked(A(((Boolean)localObject).booleanValue()));
  }
  
  public boolean isChecked()
  {
    return this.W;
  }
  
  public void setChecked(boolean paramBoolean)
  {
    int i;
    if (this.W != paramBoolean) {
      i = 1;
    } else {
      i = 0;
    }
    if ((i != 0) || (!this.Z))
    {
      this.W = paramBoolean;
      this.Z = true;
      l0(paramBoolean);
      if (i != 0)
      {
        S(M0());
        R();
      }
    }
  }
  
  static class SavedState
    extends Preference.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new a();
    boolean mChecked;
    
    SavedState(Parcel paramParcel)
    {
      super();
      int i = paramParcel.readInt();
      boolean bool = true;
      if (i != 1) {
        bool = false;
      }
      this.mChecked = bool;
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(this.mChecked);
    }
    
    static final class a
      implements Parcelable.Creator<TwoStatePreference.SavedState>
    {
      public TwoStatePreference.SavedState a(Parcel paramParcel)
      {
        return new TwoStatePreference.SavedState(paramParcel);
      }
      
      public TwoStatePreference.SavedState[] b(int paramInt)
      {
        return new TwoStatePreference.SavedState[paramInt];
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.TwoStatePreference
 * JD-Core Version:    0.7.0.1
 */