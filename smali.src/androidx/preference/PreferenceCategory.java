package androidx.preference;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import androidx.core.view.accessibility.g;
import androidx.core.view.accessibility.g.c;
import androidx.core.view.f0;
import androidx.recyclerview.widget.RecyclerView.c0;

public class PreferenceCategory
  extends PreferenceGroup
{
  public PreferenceCategory(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, androidx.core.content.res.l.a(paramContext, m.e, 16842892));
  }
  
  public PreferenceCategory(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public PreferenceCategory(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
  }
  
  public boolean M0()
  {
    return super.N() ^ true;
  }
  
  public boolean N()
  {
    return false;
  }
  
  public void X(l paraml)
  {
    super.X(paraml);
    if (Build.VERSION.SDK_INT >= 28) {
      f0.a(paraml.itemView, true);
    }
  }
  
  @Deprecated
  public void c0(g paramg)
  {
    super.c0(paramg);
    if (Build.VERSION.SDK_INT < 28)
    {
      g.c localc = paramg.n();
      if (localc == null) {
        return;
      }
      paramg.U(g.c.f(localc.c(), localc.d(), localc.a(), localc.b(), true, localc.e()));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.PreferenceCategory
 * JD-Core Version:    0.7.0.1
 */