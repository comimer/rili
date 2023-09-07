package r2;

import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d.a;
import e3.b;

public class v<Model>
  implements n<Model, Model>
{
  private static final v<?> a = new v();
  
  public static <T> v<T> c()
  {
    return a;
  }
  
  public n.a<Model> a(Model paramModel, int paramInt1, int paramInt2, n2.d paramd)
  {
    return new n.a(new b(paramModel), new b(paramModel));
  }
  
  public boolean b(Model paramModel)
  {
    return true;
  }
  
  public static class a<Model>
    implements o<Model, Model>
  {
    private static final a<?> a = new a();
    
    public static <T> a<T> a()
    {
      return a;
    }
    
    public n<Model, Model> b(r paramr)
    {
      return v.c();
    }
  }
  
  private static class b<Model>
    implements com.bumptech.glide.load.data.d<Model>
  {
    private final Model a;
    
    b(Model paramModel)
    {
      this.a = paramModel;
    }
    
    public Class<Model> a()
    {
      return this.a.getClass();
    }
    
    public void b() {}
    
    public void cancel() {}
    
    public DataSource d()
    {
      return DataSource.LOCAL;
    }
    
    public void e(Priority paramPriority, d.a<? super Model> parama)
    {
      parama.f(this.a);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r2.v
 * JD-Core Version:    0.7.0.1
 */