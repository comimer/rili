package c1;

import java.util.List;
import l1.c;

public class b
  extends g<Integer>
{
  public b(List<l1.a<Integer>> paramList)
  {
    super(paramList);
  }
  
  public int p()
  {
    return q(b(), d());
  }
  
  public int q(l1.a<Integer> parama, float paramFloat)
  {
    if ((parama.b != null) && (parama.c != null))
    {
      Object localObject = this.e;
      if (localObject != null)
      {
        localObject = (Integer)((c)localObject).b(parama.g, parama.h.floatValue(), (Integer)parama.b, (Integer)parama.c, paramFloat, e(), f());
        if (localObject != null) {
          return ((Integer)localObject).intValue();
        }
      }
      return k1.b.c(k1.g.b(paramFloat, 0.0F, 1.0F), ((Integer)parama.b).intValue(), ((Integer)parama.c).intValue());
    }
    throw new IllegalStateException("Missing values for keyframe.");
  }
  
  Integer r(l1.a<Integer> parama, float paramFloat)
  {
    return Integer.valueOf(q(parama, paramFloat));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c1.b
 * JD-Core Version:    0.7.0.1
 */