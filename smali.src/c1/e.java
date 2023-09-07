package c1;

import g1.d;
import java.util.List;
import l1.a;

public class e
  extends g<d>
{
  private final d i;
  
  public e(List<a<d>> paramList)
  {
    super(paramList);
    int j = 0;
    paramList = (d)((a)paramList.get(0)).b;
    if (paramList != null) {
      j = paramList.c();
    }
    this.i = new d(new float[j], new int[j]);
  }
  
  d p(a<d> parama, float paramFloat)
  {
    this.i.d((d)parama.b, (d)parama.c, paramFloat);
    return this.i;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c1.e
 * JD-Core Version:    0.7.0.1
 */