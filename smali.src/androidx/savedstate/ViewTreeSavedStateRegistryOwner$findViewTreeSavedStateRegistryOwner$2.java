package androidx.savedstate;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"Landroid/view/View;", "view", "Landroidx/savedstate/e;", "invoke", "(Landroid/view/View;)Landroidx/savedstate/e;", "<anonymous>"}, k=3, mv={1, 6, 0})
final class ViewTreeSavedStateRegistryOwner$findViewTreeSavedStateRegistryOwner$2
  extends Lambda
  implements l<View, e>
{
  public static final 2 INSTANCE = new 2();
  
  ViewTreeSavedStateRegistryOwner$findViewTreeSavedStateRegistryOwner$2()
  {
    super(1);
  }
  
  public final e invoke(View paramView)
  {
    r.f(paramView, "view");
    paramView = paramView.getTag(a.a);
    if ((paramView instanceof e)) {
      paramView = (e)paramView;
    } else {
      paramView = null;
    }
    return paramView;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.savedstate.ViewTreeSavedStateRegistryOwner.findViewTreeSavedStateRegistryOwner.2
 * JD-Core Version:    0.7.0.1
 */