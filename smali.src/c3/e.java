package c3;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import d3.b;
import d3.b.a;

public abstract class e<Z>
  extends i<ImageView, Z>
  implements b.a
{
  private Animatable h;
  
  public e(ImageView paramImageView)
  {
    super(paramImageView);
  }
  
  private void o(Z paramZ)
  {
    if ((paramZ instanceof Animatable))
    {
      paramZ = (Animatable)paramZ;
      this.h = paramZ;
      paramZ.start();
    }
    else
    {
      this.h = null;
    }
  }
  
  private void r(Z paramZ)
  {
    q(paramZ);
    o(paramZ);
  }
  
  public void a()
  {
    Animatable localAnimatable = this.h;
    if (localAnimatable != null) {
      localAnimatable.start();
    }
  }
  
  public void b()
  {
    Animatable localAnimatable = this.h;
    if (localAnimatable != null) {
      localAnimatable.stop();
    }
  }
  
  public void e(Z paramZ, b<? super Z> paramb)
  {
    if ((paramb != null) && (paramb.a(paramZ, this))) {
      o(paramZ);
    } else {
      r(paramZ);
    }
  }
  
  public void g(Drawable paramDrawable)
  {
    super.g(paramDrawable);
    r(null);
    p(paramDrawable);
  }
  
  public void h(Drawable paramDrawable)
  {
    super.h(paramDrawable);
    r(null);
    p(paramDrawable);
  }
  
  public void j(Drawable paramDrawable)
  {
    super.j(paramDrawable);
    Animatable localAnimatable = this.h;
    if (localAnimatable != null) {
      localAnimatable.stop();
    }
    r(null);
    p(paramDrawable);
  }
  
  public void p(Drawable paramDrawable)
  {
    ((ImageView)this.a).setImageDrawable(paramDrawable);
  }
  
  protected abstract void q(Z paramZ);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c3.e
 * JD-Core Version:    0.7.0.1
 */