package androidx.core.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.PointerIcon;

public final class y
{
  private final PointerIcon a;
  
  private y(PointerIcon paramPointerIcon)
  {
    this.a = paramPointerIcon;
  }
  
  public static y b(Context paramContext, int paramInt)
  {
    return new y(a.b(paramContext, paramInt));
  }
  
  public Object a()
  {
    return this.a;
  }
  
  static class a
  {
    static PointerIcon a(Bitmap paramBitmap, float paramFloat1, float paramFloat2)
    {
      return PointerIcon.create(paramBitmap, paramFloat1, paramFloat2);
    }
    
    static PointerIcon b(Context paramContext, int paramInt)
    {
      return PointerIcon.getSystemIcon(paramContext, paramInt);
    }
    
    static PointerIcon c(Resources paramResources, int paramInt)
    {
      return PointerIcon.load(paramResources, paramInt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.y
 * JD-Core Version:    0.7.0.1
 */