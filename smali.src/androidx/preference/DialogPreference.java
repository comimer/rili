package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.core.content.res.l;

public abstract class DialogPreference
  extends Preference
{
  private CharSequence W;
  private CharSequence X;
  private Drawable Y;
  private CharSequence Z;
  private CharSequence a0;
  private int b0;
  
  public DialogPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, l.a(paramContext, m.b, 16842897));
  }
  
  public DialogPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public DialogPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, s.D, paramInt1, paramInt2);
    paramContext = l.o(paramAttributeSet, s.N, s.E);
    this.W = paramContext;
    if (paramContext == null) {
      this.W = J();
    }
    this.X = l.o(paramAttributeSet, s.M, s.F);
    this.Y = l.c(paramAttributeSet, s.K, s.G);
    this.Z = l.o(paramAttributeSet, s.P, s.H);
    this.a0 = l.o(paramAttributeSet, s.O, s.I);
    this.b0 = l.n(paramAttributeSet, s.L, s.J, 0);
    paramAttributeSet.recycle();
  }
  
  public Drawable R0()
  {
    return this.Y;
  }
  
  public int S0()
  {
    return this.b0;
  }
  
  public CharSequence T0()
  {
    return this.X;
  }
  
  public CharSequence U0()
  {
    return this.W;
  }
  
  public CharSequence V0()
  {
    return this.a0;
  }
  
  public CharSequence W0()
  {
    return this.Z;
  }
  
  protected void Y()
  {
    F().u(this);
  }
  
  public static abstract interface a
  {
    public abstract <T extends Preference> T a(CharSequence paramCharSequence);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.DialogPreference
 * JD-Core Version:    0.7.0.1
 */