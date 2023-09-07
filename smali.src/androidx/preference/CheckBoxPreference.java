package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

public class CheckBoxPreference
  extends TwoStatePreference
{
  private final a b0 = new a();
  
  public CheckBoxPreference(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CheckBoxPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, androidx.core.content.res.l.a(paramContext, m.a, 16842895));
  }
  
  public CheckBoxPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public CheckBoxPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, s.s, paramInt1, paramInt2);
    T0(androidx.core.content.res.l.o(paramContext, s.y, s.t));
    S0(androidx.core.content.res.l.o(paramContext, s.x, s.u));
    R0(androidx.core.content.res.l.b(paramContext, s.w, s.v, false));
    paramContext.recycle();
  }
  
  private void W0(View paramView)
  {
    boolean bool = paramView instanceof CompoundButton;
    if (bool) {
      ((CompoundButton)paramView).setOnCheckedChangeListener(null);
    }
    if ((paramView instanceof Checkable)) {
      ((Checkable)paramView).setChecked(this.W);
    }
    if (bool) {
      ((CompoundButton)paramView).setOnCheckedChangeListener(this.b0);
    }
  }
  
  private void X0(View paramView)
  {
    if (!((AccessibilityManager)n().getSystemService("accessibility")).isEnabled()) {
      return;
    }
    W0(paramView.findViewById(16908289));
    U0(paramView.findViewById(16908304));
  }
  
  public void X(l paraml)
  {
    super.X(paraml);
    W0(paraml.a(16908289));
    V0(paraml);
  }
  
  protected void k0(View paramView)
  {
    super.k0(paramView);
    X0(paramView);
  }
  
  private class a
    implements CompoundButton.OnCheckedChangeListener
  {
    a() {}
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      if (!CheckBoxPreference.this.c(Boolean.valueOf(paramBoolean)))
      {
        paramCompoundButton.setChecked(paramBoolean ^ true);
        return;
      }
      CheckBoxPreference.this.setChecked(paramBoolean);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.CheckBoxPreference
 * JD-Core Version:    0.7.0.1
 */