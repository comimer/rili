package r2;

import f3.j;
import java.util.Collections;
import java.util.List;
import n2.b;

public abstract interface n<Model, Data>
{
  public abstract a<Data> a(Model paramModel, int paramInt1, int paramInt2, n2.d paramd);
  
  public abstract boolean b(Model paramModel);
  
  public static class a<Data>
  {
    public final b a;
    public final List<b> b;
    public final com.bumptech.glide.load.data.d<Data> c;
    
    public a(b paramb, com.bumptech.glide.load.data.d<Data> paramd)
    {
      this(paramb, Collections.emptyList(), paramd);
    }
    
    public a(b paramb, List<b> paramList, com.bumptech.glide.load.data.d<Data> paramd)
    {
      this.a = ((b)j.d(paramb));
      this.b = ((List)j.d(paramList));
      this.c = ((com.bumptech.glide.load.data.d)j.d(paramd));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r2.n
 * JD-Core Version:    0.7.0.1
 */