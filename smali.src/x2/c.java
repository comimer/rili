package x2;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.view.Gravity;
import f3.j;
import java.nio.ByteBuffer;
import java.util.List;
import m2.a;

public class c
  extends Drawable
  implements g.b, Animatable
{
  private final a a;
  private boolean b;
  private boolean c;
  private boolean d;
  private boolean e = true;
  private int f;
  private int g = -1;
  private boolean h;
  private Paint i;
  private Rect j;
  private List<androidx.vectordrawable.graphics.drawable.b> k;
  
  public c(Context paramContext, a parama, n2.g<Bitmap> paramg, int paramInt1, int paramInt2, Bitmap paramBitmap)
  {
    this(new a(new g(com.bumptech.glide.b.c(paramContext), parama, paramInt1, paramInt2, paramg, paramBitmap)));
  }
  
  c(a parama)
  {
    this.a = ((a)j.d(parama));
  }
  
  private Drawable.Callback b()
  {
    for (Drawable.Callback localCallback = getCallback(); (localCallback instanceof Drawable); localCallback = ((Drawable)localCallback).getCallback()) {}
    return localCallback;
  }
  
  private Rect d()
  {
    if (this.j == null) {
      this.j = new Rect();
    }
    return this.j;
  }
  
  private Paint h()
  {
    if (this.i == null) {
      this.i = new Paint(2);
    }
    return this.i;
  }
  
  private void j()
  {
    List localList = this.k;
    if (localList != null)
    {
      int m = 0;
      int n = localList.size();
      while (m < n)
      {
        ((androidx.vectordrawable.graphics.drawable.b)this.k.get(m)).a(this);
        m++;
      }
    }
  }
  
  private void l()
  {
    this.f = 0;
  }
  
  private void n()
  {
    j.a(this.d ^ true, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
    if (this.a.a.f() == 1)
    {
      invalidateSelf();
    }
    else if (!this.b)
    {
      this.b = true;
      this.a.a.r(this);
      invalidateSelf();
    }
  }
  
  private void o()
  {
    this.b = false;
    this.a.a.s(this);
  }
  
  public void a()
  {
    if (b() == null)
    {
      stop();
      invalidateSelf();
      return;
    }
    invalidateSelf();
    if (g() == f() - 1) {
      this.f += 1;
    }
    int m = this.g;
    if ((m != -1) && (this.f >= m))
    {
      j();
      stop();
    }
  }
  
  public ByteBuffer c()
  {
    return this.a.a.b();
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (this.d) {
      return;
    }
    if (this.h)
    {
      Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), d());
      this.h = false;
    }
    paramCanvas.drawBitmap(this.a.a.c(), null, d(), h());
  }
  
  public Bitmap e()
  {
    return this.a.a.e();
  }
  
  public int f()
  {
    return this.a.a.f();
  }
  
  public int g()
  {
    return this.a.a.d();
  }
  
  public Drawable.ConstantState getConstantState()
  {
    return this.a;
  }
  
  public int getIntrinsicHeight()
  {
    return this.a.a.h();
  }
  
  public int getIntrinsicWidth()
  {
    return this.a.a.k();
  }
  
  public int getOpacity()
  {
    return -2;
  }
  
  public int i()
  {
    return this.a.a.j();
  }
  
  public boolean isRunning()
  {
    return this.b;
  }
  
  public void k()
  {
    this.d = true;
    this.a.a.a();
  }
  
  public void m(n2.g<Bitmap> paramg, Bitmap paramBitmap)
  {
    this.a.a.o(paramg, paramBitmap);
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    this.h = true;
  }
  
  public void setAlpha(int paramInt)
  {
    h().setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    h().setColorFilter(paramColorFilter);
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    j.a(this.d ^ true, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
    this.e = paramBoolean1;
    if (!paramBoolean1) {
      o();
    } else if (this.c) {
      n();
    }
    return super.setVisible(paramBoolean1, paramBoolean2);
  }
  
  public void start()
  {
    this.c = true;
    l();
    if (this.e) {
      n();
    }
  }
  
  public void stop()
  {
    this.c = false;
    o();
  }
  
  static final class a
    extends Drawable.ConstantState
  {
    final g a;
    
    a(g paramg)
    {
      this.a = paramg;
    }
    
    public int getChangingConfigurations()
    {
      return 0;
    }
    
    public Drawable newDrawable()
    {
      return new c(this);
    }
    
    public Drawable newDrawable(Resources paramResources)
    {
      return newDrawable();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x2.c
 * JD-Core Version:    0.7.0.1
 */