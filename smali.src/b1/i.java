package b1;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import c1.q;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h;
import com.airbnb.lottie.h0;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.content.ShapeStroke.LineCapType;
import com.airbnb.lottie.model.content.ShapeStroke.LineJoinType;
import f1.f;

public class i
  extends a
{
  private final c1.a<PointF, PointF> A;
  private q B;
  private final String r;
  private final boolean s;
  private final n.d<LinearGradient> t = new n.d();
  private final n.d<RadialGradient> u = new n.d();
  private final RectF v = new RectF();
  private final GradientType w;
  private final int x;
  private final c1.a<g1.d, g1.d> y;
  private final c1.a<PointF, PointF> z;
  
  public i(LottieDrawable paramLottieDrawable, com.airbnb.lottie.model.layer.a parama, com.airbnb.lottie.model.content.a parama1)
  {
    super(paramLottieDrawable, parama, parama1.b().toPaintCap(), parama1.g().toPaintJoin(), parama1.i(), parama1.k(), parama1.m(), parama1.h(), parama1.c());
    this.r = parama1.j();
    this.w = parama1.f();
    this.s = parama1.n();
    this.x = ((int)(paramLottieDrawable.E().d() / 32.0F));
    paramLottieDrawable = parama1.e().m();
    this.y = paramLottieDrawable;
    paramLottieDrawable.a(this);
    parama.i(paramLottieDrawable);
    paramLottieDrawable = parama1.l().m();
    this.z = paramLottieDrawable;
    paramLottieDrawable.a(this);
    parama.i(paramLottieDrawable);
    paramLottieDrawable = parama1.d().m();
    this.A = paramLottieDrawable;
    paramLottieDrawable.a(this);
    parama.i(paramLottieDrawable);
  }
  
  private int[] j(int[] paramArrayOfInt)
  {
    Object localObject = this.B;
    int[] arrayOfInt = paramArrayOfInt;
    if (localObject != null)
    {
      localObject = (Integer[])((q)localObject).h();
      int i = paramArrayOfInt.length;
      int j = localObject.length;
      int k = 0;
      int m = 0;
      if (i == j) {
        for (;;)
        {
          arrayOfInt = paramArrayOfInt;
          if (m >= paramArrayOfInt.length) {
            break;
          }
          paramArrayOfInt[m] = localObject[m].intValue();
          m++;
        }
      }
      paramArrayOfInt = new int[localObject.length];
      for (m = k;; m++)
      {
        arrayOfInt = paramArrayOfInt;
        if (m >= localObject.length) {
          break;
        }
        paramArrayOfInt[m] = localObject[m].intValue();
      }
    }
    return arrayOfInt;
  }
  
  private int k()
  {
    int i = Math.round(this.z.f() * this.x);
    int j = Math.round(this.A.f() * this.x);
    int k = Math.round(this.y.f() * this.x);
    if (i != 0) {
      m = 527 * i;
    } else {
      m = 17;
    }
    i = m;
    if (j != 0) {
      i = m * 31 * j;
    }
    int m = i;
    if (k != 0) {
      m = i * 31 * k;
    }
    return m;
  }
  
  private LinearGradient l()
  {
    int i = k();
    Object localObject1 = this.t;
    long l = i;
    localObject1 = (LinearGradient)((n.d)localObject1).f(l);
    if (localObject1 != null) {
      return localObject1;
    }
    localObject1 = (PointF)this.z.h();
    PointF localPointF = (PointF)this.A.h();
    Object localObject2 = (g1.d)this.y.h();
    int[] arrayOfInt = j(((g1.d)localObject2).a());
    localObject2 = ((g1.d)localObject2).b();
    localObject1 = new LinearGradient(((PointF)localObject1).x, ((PointF)localObject1).y, localPointF.x, localPointF.y, arrayOfInt, (float[])localObject2, Shader.TileMode.CLAMP);
    this.t.l(l, localObject1);
    return localObject1;
  }
  
  private RadialGradient m()
  {
    int i = k();
    Object localObject1 = this.u;
    long l = i;
    localObject1 = (RadialGradient)((n.d)localObject1).f(l);
    if (localObject1 != null) {
      return localObject1;
    }
    localObject1 = (PointF)this.z.h();
    PointF localPointF = (PointF)this.A.h();
    Object localObject2 = (g1.d)this.y.h();
    int[] arrayOfInt = j(((g1.d)localObject2).a());
    localObject2 = ((g1.d)localObject2).b();
    float f1 = ((PointF)localObject1).x;
    float f2 = ((PointF)localObject1).y;
    float f3 = localPointF.x;
    float f4 = localPointF.y;
    localObject1 = new RadialGradient(f1, f2, (float)Math.hypot(f3 - f1, f4 - f2), arrayOfInt, (float[])localObject2, Shader.TileMode.CLAMP);
    this.u.l(l, localObject1);
    return localObject1;
  }
  
  public void g(Canvas paramCanvas, Matrix paramMatrix, int paramInt)
  {
    if (this.s) {
      return;
    }
    c(this.v, paramMatrix, false);
    Object localObject;
    if (this.w == GradientType.LINEAR) {
      localObject = l();
    } else {
      localObject = m();
    }
    ((Shader)localObject).setLocalMatrix(paramMatrix);
    this.i.setShader((Shader)localObject);
    super.g(paramCanvas, paramMatrix, paramInt);
  }
  
  public String getName()
  {
    return this.r;
  }
  
  public <T> void h(T paramT, l1.c<T> paramc)
  {
    super.h(paramT, paramc);
    if (paramT == h0.L)
    {
      paramT = this.B;
      if (paramT != null) {
        this.f.G(paramT);
      }
      if (paramc == null)
      {
        this.B = null;
      }
      else
      {
        paramT = new q(paramc);
        this.B = paramT;
        paramT.a(this);
        this.f.i(this.B);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b1.i
 * JD-Core Version:    0.7.0.1
 */