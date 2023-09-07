package x2;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.bitmap_recycle.d;
import com.bumptech.glide.load.engine.s;
import com.bumptech.glide.load.resource.bitmap.e;
import f3.j;
import java.security.MessageDigest;
import n2.g;

public class f
  implements g<c>
{
  private final g<Bitmap> b;
  
  public f(g<Bitmap> paramg)
  {
    this.b = ((g)j.d(paramg));
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    this.b.a(paramMessageDigest);
  }
  
  public s<c> b(Context paramContext, s<c> params, int paramInt1, int paramInt2)
  {
    c localc = (c)params.get();
    Object localObject = com.bumptech.glide.b.c(paramContext).f();
    localObject = new e(localc.e(), (d)localObject);
    paramContext = this.b.b(paramContext, (s)localObject, paramInt1, paramInt2);
    if (!localObject.equals(paramContext)) {
      ((s)localObject).a();
    }
    paramContext = (Bitmap)paramContext.get();
    localc.m(this.b, paramContext);
    return params;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof f))
    {
      paramObject = (f)paramObject;
      return this.b.equals(paramObject.b);
    }
    return false;
  }
  
  public int hashCode()
  {
    return this.b.hashCode();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x2.f
 * JD-Core Version:    0.7.0.1
 */