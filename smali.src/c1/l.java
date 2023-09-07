package c1;

import java.util.List;
import l1.c;
import l1.d;

public class l
  extends g<d>
{
  private final d i = new d();
  
  public l(List<l1.a<d>> paramList)
  {
    super(paramList);
  }
  
  public d p(l1.a<d> parama, float paramFloat)
  {
    Object localObject1 = parama.b;
    if (localObject1 != null)
    {
      Object localObject2 = parama.c;
      if (localObject2 != null)
      {
        localObject1 = (d)localObject1;
        localObject2 = (d)localObject2;
        c localc = this.e;
        if (localc != null)
        {
          parama = (d)localc.b(parama.g, parama.h.floatValue(), localObject1, localObject2, paramFloat, e(), f());
          if (parama != null) {
            return parama;
          }
        }
        this.i.d(k1.g.i(((d)localObject1).b(), ((d)localObject2).b(), paramFloat), k1.g.i(((d)localObject1).c(), ((d)localObject2).c(), paramFloat));
        return this.i;
      }
    }
    throw new IllegalStateException("Missing values for keyframe.");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c1.l
 * JD-Core Version:    0.7.0.1
 */