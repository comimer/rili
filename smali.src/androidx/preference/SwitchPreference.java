package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.Switch;

public class SwitchPreference
  extends TwoStatePreference
{
  private final a b0 = new a();
  private CharSequence c0;
  private CharSequence d0;
  
  public SwitchPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, androidx.core.content.res.l.a(paramContext, m.l, 16843629));
  }
  
  public SwitchPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public SwitchPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, s.C1, paramInt1, paramInt2);
    T0(androidx.core.content.res.l.o(paramContext, s.K1, s.D1));
    S0(androidx.core.content.res.l.o(paramContext, s.J1, s.E1));
    X0(androidx.core.content.res.l.o(paramContext, s.M1, s.G1));
    W0(androidx.core.content.res.l.o(paramContext, s.L1, s.H1));
    R0(androidx.core.content.res.l.b(paramContext, s.I1, s.F1, false));
    paramContext.recycle();
  }
  
  private void Y0(View paramView)
  {
    boolean bool = paramView instanceof Switch;
    if (bool) {
      ((Switch)paramView).setOnCheckedChangeListener(null);
    }
    if ((paramView instanceof Checkable)) {
      ((Checkable)paramView).setChecked(this.W);
    }
    if (bool)
    {
      paramView = (Switch)paramView;
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
    Y0(paramView.findViewById(16908352));
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
    Y0(paraml.a(16908352));
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
      if (!SwitchPreference.this.c(Boolean.valueOf(paramBoolean)))
      {
        paramCompoundButton.setChecked(paramBoolean ^ true);
        return;
      }
      SwitchPreference.this.setChecked(paramBoolean);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.SwitchPreference
 * JD-Core Version:    0.7.0.1
 */