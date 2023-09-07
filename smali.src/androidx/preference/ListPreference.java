package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import androidx.core.content.res.l;

public class ListPreference
  extends DialogPreference
{
  private CharSequence[] c0;
  private CharSequence[] d0;
  private String e0;
  private String f0;
  private boolean g0;
  
  public ListPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, l.a(paramContext, m.b, 16842897));
  }
  
  public ListPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public ListPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, s.a0, paramInt1, paramInt2);
    this.c0 = l.q(localTypedArray, s.d0, s.b0);
    this.d0 = l.q(localTypedArray, s.e0, s.c0);
    int i = s.f0;
    if (l.b(localTypedArray, i, i, false)) {
      I0(a.b());
    }
    localTypedArray.recycle();
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, s.q0, paramInt1, paramInt2);
    this.f0 = l.o(paramContext, s.Y0, s.y0);
    paramContext.recycle();
  }
  
  private int c1()
  {
    return X0(this.e0);
  }
  
  public CharSequence H()
  {
    if (I() != null) {
      return I().a(this);
    }
    CharSequence localCharSequence1 = Z0();
    CharSequence localCharSequence2 = super.H();
    String str = this.f0;
    if (str == null) {
      return localCharSequence2;
    }
    Object localObject = localCharSequence1;
    if (localCharSequence1 == null) {
      localObject = "";
    }
    localObject = String.format(str, new Object[] { localObject });
    if (TextUtils.equals((CharSequence)localObject, localCharSequence2)) {
      return localCharSequence2;
    }
    Log.w("ListPreference", "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead.");
    return localObject;
  }
  
  public void H0(CharSequence paramCharSequence)
  {
    super.H0(paramCharSequence);
    if ((paramCharSequence == null) && (this.f0 != null)) {
      this.f0 = null;
    } else if ((paramCharSequence != null) && (!paramCharSequence.equals(this.f0))) {
      this.f0 = paramCharSequence.toString();
    }
  }
  
  public int X0(String paramString)
  {
    if (paramString != null)
    {
      CharSequence[] arrayOfCharSequence = this.d0;
      if (arrayOfCharSequence != null) {
        for (int i = arrayOfCharSequence.length - 1; i >= 0; i--) {
          if (this.d0[i].equals(paramString)) {
            return i;
          }
        }
      }
    }
    return -1;
  }
  
  public CharSequence[] Y0()
  {
    return this.c0;
  }
  
  public CharSequence Z0()
  {
    int i = c1();
    if (i >= 0)
    {
      localObject = this.c0;
      if (localObject != null) {
        return localObject[i];
      }
    }
    Object localObject = null;
    return localObject;
  }
  
  public CharSequence[] a1()
  {
    return this.d0;
  }
  
  protected Object b0(TypedArray paramTypedArray, int paramInt)
  {
    return paramTypedArray.getString(paramInt);
  }
  
  public String b1()
  {
    return this.e0;
  }
  
  public void d1(String paramString)
  {
    boolean bool = TextUtils.equals(this.e0, paramString) ^ true;
    if ((bool) || (!this.g0))
    {
      this.e0 = paramString;
      this.g0 = true;
      n0(paramString);
      if (bool) {
        R();
      }
    }
  }
  
  protected void f0(Parcelable paramParcelable)
  {
    if ((paramParcelable != null) && (paramParcelable.getClass().equals(SavedState.class)))
    {
      paramParcelable = (SavedState)paramParcelable;
      super.f0(paramParcelable.getSuperState());
      d1(paramParcelable.mValue);
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
    ((SavedState)localObject).mValue = b1();
    return localObject;
  }
  
  protected void h0(Object paramObject)
  {
    d1(C((String)paramObject));
  }
  
  private static class SavedState
    extends Preference.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new a();
    String mValue;
    
    SavedState(Parcel paramParcel)
    {
      super();
      this.mValue = paramParcel.readString();
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeString(this.mValue);
    }
    
    static final class a
      implements Parcelable.Creator<ListPreference.SavedState>
    {
      public ListPreference.SavedState a(Parcel paramParcel)
      {
        return new ListPreference.SavedState(paramParcel);
      }
      
      public ListPreference.SavedState[] b(int paramInt)
      {
        return new ListPreference.SavedState[paramInt];
      }
    }
  }
  
  public static final class a
    implements Preference.f<ListPreference>
  {
    private static a a;
    
    public static a b()
    {
      if (a == null) {
        a = new a();
      }
      return a;
    }
    
    public CharSequence c(ListPreference paramListPreference)
    {
      if (TextUtils.isEmpty(paramListPreference.Z0())) {
        return paramListPreference.n().getString(q.c);
      }
      return paramListPreference.Z0();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.ListPreference
 * JD-Core Version:    0.7.0.1
 */