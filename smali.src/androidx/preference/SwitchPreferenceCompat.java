package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import androidx.appcompat.widget.SwitchCompat;

public class SwitchPreferenceCompat
  extends TwoStatePreference
{
  private final a b0 = new a();
  private CharSequence c0;
  private CharSequence d0;
  
  public SwitchPreferenceCompat(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, m.k);
  }
  
  public SwitchPreferenceCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public SwitchPreferenceCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, s.N1, paramInt1, paramInt2);
    T0(androidx.core.content.res.l.o(paramContext, s.V1, s.O1));
    S0(androidx.core.content.res.l.o(paramContext, s.U1, s.P1));
    X0(androidx.core.content.res.l.o(paramContext, s.X1, s.R1));
    W0(androidx.core.content.res.l.o(paramContext, s.W1, s.S1));
    R0(androidx.core.content.res.l.b(paramContext, s.T1, s.Q1, false));
    paramContext.recycle();
  }
  
  private void Y0(View paramView)
  {
    boolean bool = paramView instanceof SwitchCompat;
    if (bool) {
      ((SwitchCompat)paramView).setOnCheckedChangeListener(null);
    }
    if ((paramView instanceof Checkable)) {
      ((Checkable)paramView).setChecked(this.W);
    }
    if (bool)
    {
      paramView = (SwitchCompat)paramView;
      paramView.setTextOn(this.c0);
      paramView.setTextOff(this.d0);
      paramView.setOnCheckedChangeListener(this.b0);
    }
  }
  
  private void Z0(View paramView)
  {
    if (!((AccessibilityManager)n().getSystemService("accessibility")).isEnabled()) {
      return;
    }
    Y0(paramView.findViewById(o.f));
    U0(paramView.findViewById(16908304));
  }
  
  public void W0(CharSequence paramCharSequence)
  {
    this.d0 = paramCharSequence;
    R();
  }
  
  public void X(l paraml)
  {
    super.X(paraml);
    Y0(paraml.a(o.f));
    V0(paraml);
  }
  
  public void X0(CharSequence paramCharSequence)
  {
    this.c0 = paramCharSequence;
    R();
  }
  
  protected void k0(View paramView)
  {
    super.k0(paramView);
    Z0(paramView);
  }
  
  private class a
    implements CompoundButton.OnCheckedChangeListener
  {
    a() {}
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      if (!SwitchPreferenceCompat.this.c(Boolean.valueOf(paramBoolean)))
      {
        paramCompoundButton.setChecked(paramBoolean ^ true);
        return;
      }
      SwitchPreferenceCompat.this.setChecked(paramBoolean);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.SwitchPreferenceCompat
 * JD-Core Version:    0.7.0.1
 */