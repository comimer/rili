package b1;

import android.graphics.Path;
import android.graphics.Path.FillType;
import c1.a.b;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeTrimPath.Type;
import f1.h;
import g1.l;
import java.util.ArrayList;
import java.util.List;
import java.util.List<Lb1.c;>;

public class r
  implements m, a.b
{
  private final Path a = new Path();
  private final String b;
  private final boolean c;
  private final LottieDrawable d;
  private final c1.m e;
  private boolean f;
  private final b g = new b();
  
  public r(LottieDrawable paramLottieDrawable, com.airbnb.lottie.model.layer.a parama, l paraml)
  {
    this.b = paraml.b();
    this.c = paraml.d();
    this.d = paramLottieDrawable;
    paramLottieDrawable = paraml.c().a();
    this.e = paramLottieDrawable;
    parama.i(paramLottieDrawable);
    paramLottieDrawable.a(this);
  }
  
  private void e()
  {
    this.f = false;
    this.d.invalidateSelf();
  }
  
  public void a()
  {
    e();
  }
  
  public void b(List<c> paramList1, List<c> paramList2)
  {
    paramList2 = null;
    int i = 0;
    while (i < paramList1.size())
    {
      c localc = (c)paramList1.get(i);
      if ((localc instanceof u))
      {
        localObject = (u)localc;
        if (((u)localObject).j() == ShapeTrimPath.Type.SIMULTANEOUSLY)
        {
          this.g.a((u)localObject);
          ((u)localObject).e(this);
          localObject = paramList2;
          break label113;
        }
      }
      Object localObject = paramList2;
      if ((localc instanceof s))
      {
        localObject = paramList2;
        if (paramList2 == null) {
          localObject = new ArrayList();
        }
        ((List)localObject).add((s)localc);
      }
      label113:
      i++;
      paramList2 = (List<c>)localObject;
    }
    this.e.q(paramList2);
  }
  
  public Path getPath()
  {
    if (this.f) {
      return this.a;
    }
    this.a.reset();
    if (this.c)
    {
      this.f = true;
      return this.a;
    }
    Path localPath = (Path)this.e.h();
    if (localPath == null) {
      return this.a;
    }
    this.a.set(localPath);
    this.a.setFillType(Path.FillType.EVEN_ODD);
    this.g.b(this.a);
    this.f = true;
    return this.a;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b1.r
 * JD-Core Version:    0.7.0.1
 */