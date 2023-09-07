package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import androidx.core.content.res.l;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class MultiSelectListPreference
  extends DialogPreference
{
  private CharSequence[] c0;
  private CharSequence[] d0;
  private Set<String> e0 = new HashSet();
  
  public MultiSelectListPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, l.a(paramContext, m.b, 16842897));
  }
  
  public MultiSelectListPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public MultiSelectListPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, s.j0, paramInt1, paramInt2);
    this.c0 = l.q(paramContext, s.m0, s.k0);
    this.d0 = l.q(paramContext, s.n0, s.l0);
    paramContext.recycle();
  }
  
  public CharSequence[] X0()
  {
    return this.c0;
  }
  
  public CharSequence[] Y0()
  {
    return this.d0;
  }
  
  public Set<String> Z0()
  {
    return this.e0;
  }
  
  public void a1(Set<String> paramSet)
  {
    this.e0.clear();
    this.e0.addAll(paramSet);
    o0(paramSet);
    R();
  }
  
  protected Object b0(TypedArray paramTypedArray, int paramInt)
  {
    paramTypedArray = paramTypedArray.getTextArray(paramInt);
    HashSet localHashSet = new HashSet();
    int i = paramTypedArray.length;
    for (paramInt = 0; paramInt < i; paramInt++) {
      localHashSet.add(paramTypedArray[paramInt].toString());
    }
    return localHashSet;
  }
  
  protected void f0(Parcelable paramParcelable)
  {
    if ((paramParcelable != null) && (paramParcelable.getClass().equals(SavedState.class)))
    {
      paramParcelable = (SavedState)paramParcelable;
      super.f0(paramParcelable.getSuperState());
      a1(paramParcelable.mValues);
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
    ((SavedState)localObject).mValues = Z0();
    return localObject;
  }
  
  protected void h0(Object paramObject)
  {
    a1(D((Set)paramObject));
  }
  
  private static class SavedState
    extends Preference.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new a();
    Set<String> mValues;
    
    SavedState(Parcel paramParcel)
    {
      super();
      int i = paramParcel.readInt();
      this.mValues = new HashSet();
      String[] arrayOfString = new String[i];
      paramParcel.readStringArray(arrayOfString);
      Collections.addAll(this.mValues, arrayOfString);
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(this.mValues.size());
      Set localSet = this.mValues;
      paramParcel.writeStringArray((String[])localSet.toArray(new String[localSet.size()]));
    }
    
    static final class a
      implements Parcelable.Creator<MultiSelectListPreference.SavedState>
    {
      public MultiSelectListPreference.SavedState a(Parcel paramParcel)
      {
        return new MultiSelectListPreference.SavedState(paramParcel);
      }
      
      public MultiSelectListPreference.SavedState[] b(int paramInt)
      {
        return new MultiSelectListPreference.SavedState[paramInt];
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.MultiSelectListPreference
 * JD-Core Version:    0.7.0.1
 */