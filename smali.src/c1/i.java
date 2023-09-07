package c1;

import android.graphics.Path;
import android.graphics.PointF;
import l1.a;

public class i
  extends a<PointF>
{
  private Path q;
  private final a<PointF> r;
  
  public i(com.airbnb.lottie.h paramh, a<PointF> parama)
  {
    super(paramh, (PointF)parama.b, (PointF)parama.c, parama.d, parama.e, parama.f, parama.g, parama.h);
    this.r = parama;
    i();
  }
  
  public void i()
  {
    Object localObject1 = this.c;
    Object localObject2;
    if (localObject1 != null)
    {
      localObject2 = this.b;
      if ((localObject2 != null) && (((PointF)localObject2).equals(((PointF)localObject1).x, ((PointF)localObject1).y)))
      {
        i = 1;
        break label49;
      }
    }
    int i = 0;
    label49:
    localObject1 = this.b;
    if (localObject1 != null)
    {
      localObject2 = this.c;
      if ((localObject2 != null) && (i == 0))
      {
        localObject1 = (PointF)localObject1;
        PointF localPointF = (PointF)localObject2;
        localObject2 = this.r;
        this.q = k1.h.d((PointF)localObject1, localPointF, ((a)localObject2).o, ((a)localObject2).p);
      }
    }
  }
  
  Path j()
  {
    return this.q;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c1.i
 * JD-Core Version:    0.7.0.1
 */