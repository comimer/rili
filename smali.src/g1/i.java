package g1;

import android.graphics.PointF;
import e1.a;
import java.util.ArrayList;
import java.util.List;
import k1.d;
import k1.g;

public class i
{
  private final List<a> a;
  private PointF b;
  private boolean c;
  
  public i()
  {
    this.a = new ArrayList();
  }
  
  public i(PointF paramPointF, boolean paramBoolean, List<a> paramList)
  {
    this.b = paramPointF;
    this.c = paramBoolean;
    this.a = new ArrayList(paramList);
  }
  
  public List<a> a()
  {
    return this.a;
  }
  
  public PointF b()
  {
    return this.b;
  }
  
  public void c(i parami1, i parami2, float paramFloat)
  {
    if (this.b == null) {
      this.b = new PointF();
    }
    boolean bool;
    if ((!parami1.d()) && (!parami2.d())) {
      bool = false;
    } else {
      bool = true;
    }
    this.c = bool;
    if (parami1.a().size() != parami2.a().size())
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("Curves must have the same number of control points. Shape 1: ");
      ((StringBuilder)localObject1).append(parami1.a().size());
      ((StringBuilder)localObject1).append("\tShape 2: ");
      ((StringBuilder)localObject1).append(parami2.a().size());
      d.c(((StringBuilder)localObject1).toString());
    }
    int i = Math.min(parami1.a().size(), parami2.a().size());
    if (this.a.size() < i) {
      for (j = this.a.size(); j < i; j++) {
        this.a.add(new a());
      }
    }
    if (this.a.size() > i) {
      for (j = this.a.size() - 1; j >= i; j--)
      {
        localObject1 = this.a;
        ((List)localObject1).remove(((List)localObject1).size() - 1);
      }
    }
    Object localObject1 = parami1.b();
    PointF localPointF1 = parami2.b();
    f(g.i(((PointF)localObject1).x, localPointF1.x, paramFloat), g.i(((PointF)localObject1).y, localPointF1.y, paramFloat));
    for (int j = this.a.size() - 1; j >= 0; j--)
    {
      Object localObject2 = (a)parami1.a().get(j);
      Object localObject3 = (a)parami2.a().get(j);
      localObject1 = ((a)localObject2).a();
      localPointF1 = ((a)localObject2).b();
      localObject2 = ((a)localObject2).c();
      PointF localPointF2 = ((a)localObject3).a();
      PointF localPointF3 = ((a)localObject3).b();
      localObject3 = ((a)localObject3).c();
      ((a)this.a.get(j)).d(g.i(((PointF)localObject1).x, localPointF2.x, paramFloat), g.i(((PointF)localObject1).y, localPointF2.y, paramFloat));
      ((a)this.a.get(j)).e(g.i(localPointF1.x, localPointF3.x, paramFloat), g.i(localPointF1.y, localPointF3.y, paramFloat));
      ((a)this.a.get(j)).f(g.i(((PointF)localObject2).x, ((PointF)localObject3).x, paramFloat), g.i(((PointF)localObject2).y, ((PointF)localObject3).y, paramFloat));
    }
  }
  
  public boolean d()
  {
    return this.c;
  }
  
  public void e(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }
  
  public void f(float paramFloat1, float paramFloat2)
  {
    if (this.b == null) {
      this.b = new PointF();
    }
    this.b.set(paramFloat1, paramFloat2);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ShapeData{numCurves=");
    localStringBuilder.append(this.a.size());
    localStringBuilder.append("closed=");
    localStringBuilder.append(this.c);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g1.i
 * JD-Core Version:    0.7.0.1
 */