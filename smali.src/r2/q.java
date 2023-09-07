package r2;

import androidx.core.util.e;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d.a;
import com.bumptech.glide.load.engine.GlideException;
import f3.j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

class q<Model, Data>
  implements n<Model, Data>
{
  private final List<n<Model, Data>> a;
  private final e<List<Throwable>> b;
  
  q(List<n<Model, Data>> paramList, e<List<Throwable>> parame)
  {
    this.a = paramList;
    this.b = parame;
  }
  
  public n.a<Data> a(Model paramModel, int paramInt1, int paramInt2, n2.d paramd)
  {
    int i = this.a.size();
    ArrayList localArrayList = new ArrayList(i);
    Object localObject1 = null;
    int j = 0;
    Object localObject4;
    for (Object localObject2 = null; j < i; localObject2 = localObject4)
    {
      Object localObject3 = (n)this.a.get(j);
      localObject4 = localObject2;
      if (((n)localObject3).b(paramModel))
      {
        localObject3 = ((n)localObject3).a(paramModel, paramInt1, paramInt2, paramd);
        localObject4 = localObject2;
        if (localObject3 != null)
        {
          localObject4 = ((n.a)localObject3).a;
          localArrayList.add(((n.a)localObject3).c);
        }
      }
      j++;
    }
    paramModel = localObject1;
    if (!localArrayList.isEmpty())
    {
      paramModel = localObject1;
      if (localObject2 != null) {
        paramModel = new n.a(localObject2, new a(localArrayList, this.b));
      }
    }
    return paramModel;
  }
  
  public boolean b(Model paramModel)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext()) {
      if (((n)localIterator.next()).b(paramModel)) {
        return true;
      }
    }
    return false;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("MultiModelLoader{modelLoaders=");
    localStringBuilder.append(Arrays.toString(this.a.toArray()));
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  static class a<Data>
    implements com.bumptech.glide.load.data.d<Data>, d.a<Data>
  {
    private final List<com.bumptech.glide.load.data.d<Data>> a;
    private final e<List<Throwable>> b;
    private int c;
    private Priority d;
    private d.a<? super Data> e;
    private List<Throwable> f;
    private boolean g;
    
    a(List<com.bumptech.glide.load.data.d<Data>> paramList, e<List<Throwable>> parame)
    {
      this.b = parame;
      j.c(paramList);
      this.a = paramList;
      this.c = 0;
    }
    
    private void g()
    {
      if (this.g) {
        return;
      }
      if (this.c < this.a.size() - 1)
      {
        this.c += 1;
        e(this.d, this.e);
      }
      else
      {
        j.d(this.f);
        this.e.c(new GlideException("Fetch failed", new ArrayList(this.f)));
      }
    }
    
    public Class<Data> a()
    {
      return ((com.bumptech.glide.load.data.d)this.a.get(0)).a();
    }
    
    public void b()
    {
      Object localObject = this.f;
      if (localObject != null) {
        this.b.a(localObject);
      }
      this.f = null;
      localObject = this.a.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((com.bumptech.glide.load.data.d)((Iterator)localObject).next()).b();
      }
    }
    
    public void c(Exception paramException)
    {
      ((List)j.d(this.f)).add(paramException);
      g();
    }
    
    public void cancel()
    {
      this.g = true;
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext()) {
        ((com.bumptech.glide.load.data.d)localIterator.next()).cancel();
      }
    }
    
    public DataSource d()
    {
      return ((com.bumptech.glide.load.data.d)this.a.get(0)).d();
    }
    
    public void e(Priority paramPriority, d.a<? super Data> parama)
    {
      this.d = paramPriority;
      this.e = parama;
      this.f = ((List)this.b.b());
      ((com.bumptech.glide.load.data.d)this.a.get(this.c)).e(paramPriority, this);
      if (this.g) {
        cancel();
      }
    }
    
    public void f(Data paramData)
    {
      if (paramData != null) {
        this.e.f(paramData);
      } else {
        g();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r2.q
 * JD-Core Version:    0.7.0.1
 */