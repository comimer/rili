package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import androidx.core.content.res.l;

public final class PreferenceScreen
  extends PreferenceGroup
{
  private boolean f0 = true;
  
  public PreferenceScreen(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, l.a(paramContext, m.g, 16842891));
  }
  
  protected void Y()
  {
    if ((t() == null) && (r() == null) && (X0() != 0))
    {
      j.b localb = F().e();
      if (localb != null) {
        localb.g(this);
      }
    }
  }
  
  protected boolean Y0()
  {
    return false;
  }
  
  public boolean f1()
  {
    return this.f0;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.PreferenceScreen
 * JD-Core Version:    0.7.0.1
 */