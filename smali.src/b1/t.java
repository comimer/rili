package b1;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import c1.b;
import c1.q;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h0;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.model.content.ShapeStroke.LineCapType;
import com.airbnb.lottie.model.content.ShapeStroke.LineJoinType;
import l1.c;

public class t
  extends a
{
  private final com.airbnb.lottie.model.layer.a r;
  private final String s;
  private final boolean t;
  private final c1.a<Integer, Integer> u;
  private c1.a<ColorFilter, ColorFilter> v;
  
  public t(LottieDrawable paramLottieDrawable, com.airbnb.lottie.model.layer.a parama, ShapeStroke paramShapeStroke)
  {
    super(paramLottieDrawable, parama, paramShapeStroke.b().toPaintCap(), paramShapeStroke.e().toPaintJoin(), paramShapeStroke.g(), paramShapeStroke.i(), paramShapeStroke.j(), paramShapeStroke.f(), paramShapeStroke.d());
    this.r = parama;
    this.s = paramShapeStroke.h();
    this.t = paramShapeStroke.k();
    paramLottieDrawable = paramShapeStroke.c().m();
    this.u = paramLottieDrawable;
    paramLottieDrawable.a(this);
    parama.i(paramLottieDrawable);
  }
  
  public void g(Canvas paramCanvas, Matrix paramMatrix, int paramInt)
  {
    if (this.t) {
      return;
    }
    this.i.setColor(((b)this.u).p());
    c1.a locala = this.v;
    if (locala != null) {
      this.i.setColorFilter((ColorFilter)locala.h());
    }
    super.g(paramCanvas, paramMatrix, paramInt);
  }
  
  public String getName()
  {
    return this.s;
  }
  
  public <T> void h(T paramT, c<T> paramc)
  {
    super.h(paramT, paramc);
    if (paramT == h0.b)
    {
      this.u.n(paramc);
    }
    else if (paramT == h0.K)
    {
      paramT = this.v;
      if (paramT != null) {
        this.r.G(paramT);
      }
      if (paramc == null)
      {
        this.v = null;
      }
      else
      {
        paramT = new q(paramc);
        this.v = paramT;
        paramT.a(this);
        this.r.i(this.u);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b1.t
 * JD-Core Version:    0.7.0.1
 */