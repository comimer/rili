package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.drawable.Drawable;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

class y0
  extends q0
{
  private final WeakReference<Context> b;
  
  public y0(Context paramContext, Resources paramResources)
  {
    super(paramResources);
    this.b = new WeakReference(paramContext);
  }
  
  public Drawable getDrawable(int paramInt)
    throws Resources.NotFoundException
  {
    Drawable localDrawable = a(paramInt);
    Context localContext = (Context)this.b.get();
    if ((localDrawable != null) && (localContext != null)) {
      p0.g().w(localContext, paramInt, localDrawable);
    }
    return localDrawable;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.y0
 * JD-Core Version:    0.7.0.1
 */