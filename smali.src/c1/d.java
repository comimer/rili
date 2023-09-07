package c1;

import java.util.List;
import l1.c;

public class d
  extends g<Float>
{
  public d(List<l1.a<Float>> paramList)
  {
    super(paramList);
  }
  
  public float p()
  {
    return q(b(), d());
  }
  
  float q(l1.a<Float> parama, float paramFloat)
  {
    if ((parama.b != null) && (parama.c != null))
    {
      Object localObject = this.e;
      if (localObject != null)
      {
        localObject = (Float)((c)localObject).b(parama.g, parama.h.floatValue(), (Float)parama.b, (Float)parama.c, paramFloat, e(), f());
        if (localObject != null) {
          return ((Float)localObject).floatValue();
        }
      }
      return k1.g.i(parama.f(), parama.c(), paramFloat);
    }
    throw new IllegalStateException("Missing values for keyframe.");
  }
  
  Float r(l1.a<Float> parama, float paramFloat)
  {
    return Float.valueOf(q(parama, paramFloat));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c1.d
 * JD-Core Version:    0.7.0.1
 */