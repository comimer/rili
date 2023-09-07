package y2;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.engine.s;
import com.bumptech.glide.load.resource.bitmap.t;
import f3.j;
import n2.d;

public class b
  implements e<Bitmap, BitmapDrawable>
{
  private final Resources a;
  
  public b(Resources paramResources)
  {
    this.a = ((Resources)j.d(paramResources));
  }
  
  public s<BitmapDrawable> a(s<Bitmap> params, d paramd)
  {
    return t.f(this.a, params);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y2.b
 * JD-Core Version:    0.7.0.1
 */