package androidx.work;

import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
import x0.p;

public abstract class s
{
  private UUID a;
  private p b;
  private Set<String> c;
  
  protected s(UUID paramUUID, p paramp, Set<String> paramSet)
  {
    this.a = paramUUID;
    this.b = paramp;
    this.c = paramSet;
  }
  
  public UUID a()
  {
    return this.a;
  }
  
  public String b()
  {
    return this.a.toString();
  }
  
  public Set<String> c()
  {
    return this.c;
  }
  
  public p d()
  {
    return this.b;
  }
  
  public static abstract class a<B extends a<?, ?>, W extends s>
  {
    boolean a = false;
    UUID b = UUID.randomUUID();
    p c;
    Set<String> d = new HashSet();
    Class<? extends ListenableWorker> e;
    
    a(Class<? extends ListenableWorker> paramClass)
    {
      this.e = paramClass;
      this.c = new p(this.b.toString(), paramClass.getName());
      a(paramClass.getName());
    }
    
    public final B a(String paramString)
    {
      this.d.add(paramString);
      return d();
    }
    
    public final W b()
    {
      s locals = c();
      Object localObject = this.c.j;
      int i;
      if ((!((b)localObject).e()) && (!((b)localObject).f()) && (!((b)localObject).g()) && (!((b)localObject).h())) {
        i = 0;
      } else {
        i = 1;
      }
      localObject = this.c;
      if (((p)localObject).q) {
        if (i == 0)
        {
          if (((p)localObject).g > 0L) {
            throw new IllegalArgumentException("Expedited jobs cannot be delayed");
          }
        }
        else {
          throw new IllegalArgumentException("Expedited jobs only support network and storage constraints");
        }
      }
      this.b = UUID.randomUUID();
      localObject = new p(this.c);
      this.c = ((p)localObject);
      ((p)localObject).a = this.b.toString();
      return locals;
    }
    
    abstract W c();
    
    abstract B d();
    
    public final B e(d paramd)
    {
      this.c.e = paramd;
      return d();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.s
 * JD-Core Version:    0.7.0.1
 */