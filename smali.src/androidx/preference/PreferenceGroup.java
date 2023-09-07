package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import androidx.core.content.res.l;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import n.g;

public abstract class PreferenceGroup
  extends Preference
{
  final g<String, Long> W = new g();
  private final Handler X = new Handler();
  private List<Preference> Y = new ArrayList();
  private boolean Z = true;
  private int a0 = 0;
  private boolean b0 = false;
  private int c0 = 2147483647;
  private b d0 = null;
  private final Runnable e0 = new a();
  
  public PreferenceGroup(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public PreferenceGroup(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public PreferenceGroup(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, s.h1, paramInt1, paramInt2);
    paramInt1 = s.j1;
    this.Z = l.b(paramContext, paramInt1, paramInt1, true);
    paramInt1 = s.i1;
    if (paramContext.hasValue(paramInt1)) {
      c1(l.d(paramContext, paramInt1, paramInt1, 2147483647));
    }
    paramContext.recycle();
  }
  
  private boolean b1(Preference paramPreference)
  {
    try
    {
      paramPreference.e0();
      if (paramPreference.z() == this) {
        paramPreference.b(null);
      }
      boolean bool = this.Y.remove(paramPreference);
      if (bool)
      {
        String str = paramPreference.u();
        if (str != null)
        {
          this.W.put(str, Long.valueOf(paramPreference.s()));
          this.X.removeCallbacks(this.e0);
          this.X.post(this.e0);
        }
        if (this.b0) {
          paramPreference.a0();
        }
      }
      return bool;
    }
    finally {}
  }
  
  public void R0(Preference paramPreference)
  {
    S0(paramPreference);
  }
  
  public void S(boolean paramBoolean)
  {
    super.S(paramBoolean);
    int i = X0();
    for (int j = 0; j < i; j++) {
      W0(j).d0(this, paramBoolean);
    }
  }
  
  public boolean S0(Preference paramPreference)
  {
    if (this.Y.contains(paramPreference)) {
      return true;
    }
    Object localObject;
    String str;
    if (paramPreference.u() != null)
    {
      for (localObject = this; ((Preference)localObject).z() != null; localObject = ((Preference)localObject).z()) {}
      str = paramPreference.u();
      if (((PreferenceGroup)localObject).T0(str) != null)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Found duplicated key: \"");
        ((StringBuilder)localObject).append(str);
        ((StringBuilder)localObject).append("\". This can cause unintended behaviour, please use unique keys for every preference.");
        Log.e("PreferenceGroup", ((StringBuilder)localObject).toString());
      }
    }
    if (paramPreference.y() == 2147483647)
    {
      if (this.Z)
      {
        i = this.a0;
        this.a0 = (i + 1);
        paramPreference.F0(i);
      }
      if ((paramPreference instanceof PreferenceGroup)) {
        ((PreferenceGroup)paramPreference).d1(this.Z);
      }
    }
    int j = Collections.binarySearch(this.Y, paramPreference);
    int i = j;
    if (j < 0) {
      i = j * -1 - 1;
    }
    if (!Z0(paramPreference)) {
      return false;
    }
    try
    {
      this.Y.add(i, paramPreference);
      localObject = F();
      str = paramPreference.u();
      long l;
      if ((str != null) && (this.W.containsKey(str)))
      {
        l = ((Long)this.W.get(str)).longValue();
        this.W.remove(str);
      }
      else
      {
        l = ((j)localObject).d();
      }
      paramPreference.W((j)localObject, l);
      paramPreference.b(this);
      if (this.b0) {
        paramPreference.U();
      }
      T();
      return true;
    }
    finally {}
  }
  
  public <T extends Preference> T T0(CharSequence paramCharSequence)
  {
    if (paramCharSequence != null)
    {
      if (TextUtils.equals(u(), paramCharSequence)) {
        return this;
      }
      int i = X0();
      for (int j = 0; j < i; j++)
      {
        Preference localPreference = W0(j);
        if (TextUtils.equals(localPreference.u(), paramCharSequence)) {
          return localPreference;
        }
        if ((localPreference instanceof PreferenceGroup))
        {
          localPreference = ((PreferenceGroup)localPreference).T0(paramCharSequence);
          if (localPreference != null) {
            return localPreference;
          }
        }
      }
      return null;
    }
    throw new IllegalArgumentException("Key cannot be null");
  }
  
  public void U()
  {
    super.U();
    this.b0 = true;
    int i = X0();
    for (int j = 0; j < i; j++) {
      W0(j).U();
    }
  }
  
  public int U0()
  {
    return this.c0;
  }
  
  public b V0()
  {
    return this.d0;
  }
  
  public Preference W0(int paramInt)
  {
    return (Preference)this.Y.get(paramInt);
  }
  
  public int X0()
  {
    return this.Y.size();
  }
  
  protected boolean Y0()
  {
    return true;
  }
  
  protected boolean Z0(Preference paramPreference)
  {
    paramPreference.d0(this, M0());
    return true;
  }
  
  public void a0()
  {
    super.a0();
    int i = 0;
    this.b0 = false;
    int j = X0();
    while (i < j)
    {
      W0(i).a0();
      i++;
    }
  }
  
  public boolean a1(Preference paramPreference)
  {
    boolean bool = b1(paramPreference);
    T();
    return bool;
  }
  
  public void c1(int paramInt)
  {
    if ((paramInt != 2147483647) && (!L()))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(getClass().getSimpleName());
      localStringBuilder.append(" should have a key defined if it contains an expandable preference");
      Log.e("PreferenceGroup", localStringBuilder.toString());
    }
    this.c0 = paramInt;
  }
  
  public void d1(boolean paramBoolean)
  {
    this.Z = paramBoolean;
  }
  
  void e1()
  {
    try
    {
      Collections.sort(this.Y);
      return;
    }
    finally {}
  }
  
  protected void f0(Parcelable paramParcelable)
  {
    if ((paramParcelable != null) && (paramParcelable.getClass().equals(SavedState.class)))
    {
      paramParcelable = (SavedState)paramParcelable;
      this.c0 = paramParcelable.mInitialExpandedChildrenCount;
      super.f0(paramParcelable.getSuperState());
      return;
    }
    super.f0(paramParcelable);
  }
  
  protected Parcelable g0()
  {
    return new SavedState(super.g0(), this.c0);
  }
  
  protected void j(Bundle paramBundle)
  {
    super.j(paramBundle);
    int i = X0();
    for (int j = 0; j < i; j++) {
      W0(j).j(paramBundle);
    }
  }
  
  protected void k(Bundle paramBundle)
  {
    super.k(paramBundle);
    int i = X0();
    for (int j = 0; j < i; j++) {
      W0(j).k(paramBundle);
    }
  }
  
  static class SavedState
    extends Preference.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new a();
    int mInitialExpandedChildrenCount;
    
    SavedState(Parcel paramParcel)
    {
      super();
      this.mInitialExpandedChildrenCount = paramParcel.readInt();
    }
    
    SavedState(Parcelable paramParcelable, int paramInt)
    {
      super();
      this.mInitialExpandedChildrenCount = paramInt;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(this.mInitialExpandedChildrenCount);
    }
    
    static final class a
      implements Parcelable.Creator<PreferenceGroup.SavedState>
    {
      public PreferenceGroup.SavedState a(Parcel paramParcel)
      {
        return new PreferenceGroup.SavedState(paramParcel);
      }
      
      public PreferenceGroup.SavedState[] b(int paramInt)
      {
        return new PreferenceGroup.SavedState[paramInt];
      }
    }
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      try
      {
        PreferenceGroup.this.W.clear();
        return;
      }
      finally {}
    }
  }
  
  public static abstract interface b
  {
    public abstract void a();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.PreferenceGroup
 * JD-Core Version:    0.7.0.1
 */