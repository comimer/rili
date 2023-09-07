package c1;

import android.graphics.PointF;
import java.util.List;
import l1.c;

public class k
  extends g<PointF>
{
  private final PointF i = new PointF();
  
  public k(List<l1.a<PointF>> paramList)
  {
    super(paramList);
  }
  
  public PointF p(l1.a<PointF> parama, float paramFloat)
  {
    return q(parama, paramFloat, paramFloat, paramFloat);
  }
  
  protected PointF q(l1.a<PointF> parama, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    Object localObject1 = parama.b;
    if (localObject1 != null)
    {
      Object localObject2 = parama.c;
      if (localObject2 != null)
      {
        localObject1 = (PointF)localObject1;
        localObject2 = (PointF)localObject2;
        c localc = this.e;
        if (localc != null)
        {
          parama = (PointF)localc.b(parama.g, parama.h.floatValue(), localObject1, localObject2, paramFloat1, e(), f());
          if (parama != null) {
            return parama;
          }
        }
        parama = this.i;
        paramFloat1 = ((PointF)localObject1).x;
        float f1 = ((PointF)localObject2).x;
        float f2 = ((PointF)localObject1).y;
        parama.set(paramFloat1 + paramFloat2 * (f1 - paramFloat1), f2 + paramFloat3 * (((PointF)localObject2).y - f2));
        return this.i;
      }
    }
    throw new IllegalStateException("Missing values for keyframe.");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c1.k
 * JD-Core Version:    0.7.0.1
 */