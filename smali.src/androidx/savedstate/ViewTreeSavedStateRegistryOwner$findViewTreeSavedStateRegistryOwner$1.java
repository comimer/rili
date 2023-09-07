package androidx.savedstate;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import w7.l;

@Metadata(d1={""}, d2={"<anonymous>", "Landroid/view/View;", "view", "invoke"}, k=3, mv={1, 6, 0}, xi=48)
final class ViewTreeSavedStateRegistryOwner$findViewTreeSavedStateRegistryOwner$1
  extends Lambda
  implements l<View, View>
{
  public static final 1 INSTANCE = new 1();
  
  ViewTreeSavedStateRegistryOwner$findViewTreeSavedStateRegistryOwner$1()
  {
    super(1);
  }
  
  public final View invoke(View paramView)
  {
    r.f(paramView, "view");
    paramView = paramView.getParent();
    if ((paramView instanceof View)) {
      paramView = (View)paramView;
    } else {
      paramView = null;
    }
    return paramView;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.savedstate.ViewTreeSavedStateRegistryOwner.findViewTreeSavedStateRegistryOwner.1
 * JD-Core Version:    0.7.0.1
 */