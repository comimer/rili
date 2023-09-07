package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.drawable.Drawable;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public class d1
  extends q0
{
  private static boolean c = false;
  private final WeakReference<Context> b;
  
  public d1(Context paramContext, Resources paramResources)
  {
    super(paramResources);
    this.b = new WeakReference(paramContext);
  }
  
  public static boolean b()
  {
    return c;
  }
  
  public static boolean c()
  {
    b();
    return false;
  }
  
  public Drawable getDrawable(int paramInt)
    throws Resources.NotFoundException
  {
    Context localContext = (Context)this.b.get();
    if (localContext != null) {
      return p0.g().s(localContext, this, paramInt);
    }
    return a(paramInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.d1
 * JD-Core Version:    0.7.0.1
 */