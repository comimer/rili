package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.widget.EditText;
import androidx.core.content.res.l;

public class EditTextPreference
  extends DialogPreference
{
  private String c0;
  private a d0;
  
  public EditTextPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, l.a(paramContext, m.d, 16842898));
  }
  
  public EditTextPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public EditTextPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, s.R, paramInt1, paramInt2);
    paramInt1 = s.S;
    if (l.b(paramContext, paramInt1, paramInt1, false)) {
      I0(b.b());
    }
    paramContext.recycle();
  }
  
  public boolean M0()
  {
    boolean bool;
    if ((!TextUtils.isEmpty(this.c0)) && (!super.M0())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  a X0()
  {
    return this.d0;
  }
  
  public String Y0()
  {
    return this.c0;
  }
  
  public void Z0(String paramString)
  {
    boolean bool1 = M0();
    this.c0 = paramString;
    n0(paramString);
    boolean bool2 = M0();
    if (bool2 != bool1) {
      S(bool2);
    }
    R();
  }
  
  protected Object b0(TypedArray paramTypedArray, int paramInt)
  {
    return paramTypedArray.getString(paramInt);
  }
  
  protected void f0(Parcelable paramParcelable)
  {
    if ((paramParcelable != null) && (paramParcelable.getClass().equals(SavedState.class)))
    {
      paramParcelable = (SavedState)paramParcelable;
      super.f0(paramParcelable.getSuperState());
      Z0(paramParcelable.mText);
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
    ((SavedState)localObject).mText = Y0();
    return localObject;
  }
  
  protected void h0(Object paramObject)
  {
    Z0(C((String)paramObject));
  }
  
  private static class SavedState
    extends Preference.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new a();
    String mText;
    
    SavedState(Parcel paramParcel)
    {
      super();
      this.mText = paramParcel.readString();
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeString(this.mText);
    }
    
    static final class a
      implements Parcelable.Creator<EditTextPreference.SavedState>
    {
      public EditTextPreference.SavedState a(Parcel paramParcel)
      {
        return new EditTextPreference.SavedState(paramParcel);
      }
      
      public EditTextPreference.SavedState[] b(int paramInt)
      {
        return new EditTextPreference.SavedState[paramInt];
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(EditText paramEditText);
  }
  
  public static final class b
    implements Preference.f<EditTextPreference>
  {
    private static b a;
    
    public static b b()
    {
      if (a == null) {
        a = new b();
      }
      return a;
    }
    
    public CharSequence c(EditTextPreference paramEditTextPreference)
    {
      if (TextUtils.isEmpty(paramEditTextPreference.Y0())) {
        return paramEditTextPreference.n().getString(q.c);
      }
      return paramEditTextPreference.Y0();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.EditTextPreference
 * JD-Core Version:    0.7.0.1
 */