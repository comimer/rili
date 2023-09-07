package b1;

import android.annotation.TargetApi;
import android.graphics.Path;
import android.graphics.Path.Op;
import com.airbnb.lottie.model.content.MergePaths;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

@TargetApi(19)
public class l
  implements m, j
{
  private final Path a = new Path();
  private final Path b = new Path();
  private final Path c = new Path();
  private final String d;
  private final List<m> e = new ArrayList();
  private final MergePaths f;
  
  public l(MergePaths paramMergePaths)
  {
    this.d = paramMergePaths.c();
    this.f = paramMergePaths;
  }
  
  private void a()
  {
    for (int i = 0; i < this.e.size(); i++) {
      this.c.addPath(((m)this.e.get(i)).getPath());
    }
  }
  
  @TargetApi(19)
  private void f(Path.Op paramOp)
  {
    this.b.reset();
    this.a.reset();
    List localList;
    Object localObject2;
    for (int i = this.e.size() - 1; i >= 1; i--)
    {
      localObject1 = (m)this.e.get(i);
      if ((localObject1 instanceof d))
      {
        localObject1 = (d)localObject1;
        localList = ((d)localObject1).j();
        for (int j = localList.size() - 1; j >= 0; j--)
        {
          localObject2 = ((m)localList.get(j)).getPath();
          ((Path)localObject2).transform(((d)localObject1).k());
          this.b.addPath((Path)localObject2);
        }
      }
      this.b.addPath(((m)localObject1).getPath());
    }
    Object localObject1 = this.e;
    i = 0;
    localObject1 = (m)((List)localObject1).get(0);
    if ((localObject1 instanceof d))
    {
      localObject2 = (d)localObject1;
      localList = ((d)localObject2).j();
      while (i < localList.size())
      {
        localObject1 = ((m)localList.get(i)).getPath();
        ((Path)localObject1).transform(((d)localObject2).k());
        this.a.addPath((Path)localObject1);
        i++;
      }
    }
    this.a.set(((m)localObject1).getPath());
    this.c.op(this.a, this.b, paramOp);
  }
  
  public void b(List<c> paramList1, List<c> paramList2)
  {
    for (int i = 0; i < this.e.size(); i++) {
      ((m)this.e.get(i)).b(paramList1, paramList2);
    }
  }
  
  public void e(ListIterator<c> paramListIterator)
  {
    while ((paramListIterator.hasPrevious()) && (paramListIterator.previous() != this)) {}
    while (paramListIterator.hasPrevious())
    {
      c localc = (c)paramListIterator.previous();
      if ((localc instanceof m))
      {
        this.e.add((m)localc);
        paramListIterator.remove();
      }
    }
  }
  
  public Path getPath()
  {
    this.c.reset();
    if (this.f.d()) {
      return this.c;
    }
    int i = a.a[this.f.b().ordinal()];
    if (i != 1)
    {
      if (i != 2)
      {
        if (i != 3)
        {
          if (i != 4)
          {
            if (i == 5) {
              f(Path.Op.XOR);
            }
          }
          else {
            f(Path.Op.INTERSECT);
          }
        }
        else {
          f(Path.Op.REVERSE_DIFFERENCE);
        }
      }
      else {
        f(Path.Op.UNION);
      }
    }
    else {
      a();
    }
    return this.c;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b1.l
 * JD-Core Version:    0.7.0.1
 */