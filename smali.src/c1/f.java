package c1;

import java.util.List;
import l1.c;

public class f
  extends g<Integer>
{
  public f(List<l1.a<Integer>> paramList)
  {
    super(paramList);
  }
  
  public int p()
  {
    return q(b(), d());
  }
  
  int q(l1.a<Integer> parama, float paramFloat)
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
      return k1.g.j(parama.g(), parama.d(), paramFloat);
    }
    throw new IllegalStateException("Missing values for keyframe.");
  }
  
  Integer r(l1.a<Integer> parama, float paramFloat)
  {
    return Integer.valueOf(q(parama, paramFloat));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c1.f
 * JD-Core Version:    0.7.0.1
 */