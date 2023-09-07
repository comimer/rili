package b1;

import c1.a.b;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.content.ShapeTrimPath.Type;
import f1.b;
import java.util.ArrayList;
import java.util.List;

public class u
  implements c, a.b
{
  private final String a;
  private final boolean b;
  private final List<a.b> c = new ArrayList();
  private final ShapeTrimPath.Type d;
  private final c1.a<?, Float> e;
  private final c1.a<?, Float> f;
  private final c1.a<?, Float> g;
  
  public u(com.airbnb.lottie.model.layer.a parama, ShapeTrimPath paramShapeTrimPath)
  {
    this.a = paramShapeTrimPath.c();
    this.b = paramShapeTrimPath.g();
    this.d = paramShapeTrimPath.f();
    c1.a locala1 = paramShapeTrimPath.e().m();
    this.e = locala1;
    c1.a locala2 = paramShapeTrimPath.b().m();
    this.f = locala2;
    paramShapeTrimPath = paramShapeTrimPath.d().m();
    this.g = paramShapeTrimPath;
    parama.i(locala1);
    parama.i(locala2);
    parama.i(paramShapeTrimPath);
    locala1.a(this);
    locala2.a(this);
    paramShapeTrimPath.a(this);
  }
  
  public void a()
  {
    for (int i = 0; i < this.c.size(); i++) {
      ((a.b)this.c.get(i)).a();
    }
  }
  
  public void b(List<c> paramList1, List<c> paramList2) {}
  
  void e(a.b paramb)
  {
    this.c.add(paramb);
  }
  
  public c1.a<?, Float> f()
  {
    return this.f;
  }
  
  public c1.a<?, Float> h()
  {
    return this.g;
  }
  
  public c1.a<?, Float> i()
  {
    return this.e;
  }
  
  ShapeTrimPath.Type j()
  {
    return this.d;
  }
  
  public boolean k()
  {
    return this.b;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b1.u
 * JD-Core Version:    0.7.0.1
 */