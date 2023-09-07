package c1;

import android.graphics.Path;
import b1.s;
import g1.i;
import java.util.List;
import k1.g;

public class m
  extends a<i, Path>
{
  private final i i = new i();
  private final Path j = new Path();
  private List<s> k;
  
  public m(List<l1.a<i>> paramList)
  {
    super(paramList);
  }
  
  public Path p(l1.a<i> parama, float paramFloat)
  {
    Object localObject = (i)parama.b;
    parama = (i)parama.c;
    this.i.c((i)localObject, parama, paramFloat);
    parama = this.i;
    List localList = this.k;
    localObject = parama;
    if (localList != null) {
      for (int m = localList.size() - 1;; m--)
      {
        localObject = parama;
        if (m < 0) {
          break;
        }
        parama = ((s)this.k.get(m)).d(parama);
      }
    }
    g.h((i)localObject, this.j);
    return this.j;
  }
  
  public void q(List<s> paramList)
  {
    this.k = paramList;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c1.m
 * JD-Core Version:    0.7.0.1
 */