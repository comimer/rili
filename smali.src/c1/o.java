package c1;

import com.airbnb.lottie.model.DocumentData;
import java.util.List;
import l1.b;
import l1.c;

public class o
  extends g<DocumentData>
{
  public o(List<l1.a<DocumentData>> paramList)
  {
    super(paramList);
  }
  
  DocumentData p(l1.a<DocumentData> parama, float paramFloat)
  {
    Object localObject1 = this.e;
    if (localObject1 != null)
    {
      float f1 = parama.g;
      Object localObject2 = parama.h;
      float f2;
      if (localObject2 == null) {
        f2 = 3.4028235E+38F;
      } else {
        f2 = ((Float)localObject2).floatValue();
      }
      Object localObject3 = parama.b;
      localObject2 = (DocumentData)localObject3;
      parama = parama.c;
      if (parama == null) {
        parama = (DocumentData)localObject3;
      } else {
        parama = (DocumentData)parama;
      }
      return (DocumentData)((c)localObject1).b(f1, f2, localObject2, parama, paramFloat, d(), f());
    }
    if (paramFloat == 1.0F)
    {
      localObject1 = parama.c;
      if (localObject1 != null) {
        return (DocumentData)localObject1;
      }
    }
    return (DocumentData)parama.b;
  }
  
  public void q(final c<String> paramc)
  {
    super.n(new a(new b(), paramc, new DocumentData()));
  }
  
  class a
    extends c<DocumentData>
  {
    a(b paramb, c paramc, DocumentData paramDocumentData) {}
    
    public DocumentData d(b<DocumentData> paramb)
    {
      this.d.h(paramb.f(), paramb.a(), ((DocumentData)paramb.g()).a, ((DocumentData)paramb.b()).a, paramb.d(), paramb.c(), paramb.e());
      String str = (String)paramc.a(this.d);
      if (paramb.c() == 1.0F) {
        paramb = paramb.b();
      } else {
        paramb = paramb.g();
      }
      paramb = (DocumentData)paramb;
      this.f.a(str, paramb.b, paramb.c, paramb.d, paramb.e, paramb.f, paramb.g, paramb.h, paramb.i, paramb.j, paramb.k);
      return this.f;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c1.o
 * JD-Core Version:    0.7.0.1
 */