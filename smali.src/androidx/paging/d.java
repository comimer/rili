package androidx.paging;

import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

public abstract class d<T>
  extends b<Integer, T>
{
  public static int computeInitialLoadPosition(d paramd, int paramInt)
  {
    int i = paramd.a;
    int j = paramd.b;
    int k = paramd.c;
    i /= k;
    return Math.max(0, Math.min((paramInt - j + k - 1) / k * k, i * k));
  }
  
  public static int computeInitialLoadSize(d paramd, int paramInt1, int paramInt2)
  {
    return Math.min(paramInt2 - paramInt1, paramd.b);
  }
  
  final void dispatchLoadInitial(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, Executor paramExecutor, c.a<T> parama)
  {
    parama = new c(this, paramBoolean, paramInt3, parama);
    loadInitial(new d(paramInt1, paramInt2, paramInt3, paramBoolean), parama);
    parama.a.c(paramExecutor);
  }
  
  final void dispatchLoadRange(int paramInt1, int paramInt2, int paramInt3, Executor paramExecutor, c.a<T> parama)
  {
    paramExecutor = new f(this, paramInt1, paramInt2, paramExecutor, parama);
    if (paramInt3 == 0) {
      paramExecutor.a(Collections.emptyList());
    } else {
      loadRange(new g(paramInt2, paramInt3), paramExecutor);
    }
  }
  
  boolean isContiguous()
  {
    return false;
  }
  
  public abstract void loadInitial(d paramd, b<T> paramb);
  
  public abstract void loadRange(g paramg, e<T> parame);
  
  public final <V> d<V> map(k.a<T, V> parama)
  {
    return mapByPage(b.createListFunction(parama));
  }
  
  public final <V> d<V> mapByPage(k.a<List<T>, List<V>> parama)
  {
    return new e(this, parama);
  }
  
  a<Integer, T> wrapAsContiguousWithoutPlaceholders()
  {
    return new a(this);
  }
  
  static class a<Value>
    extends a<Integer, Value>
  {
    final d<Value> a;
    
    a(d<Value> paramd)
    {
      this.a = paramd;
    }
    
    public void addInvalidatedCallback(b.c paramc)
    {
      this.a.addInvalidatedCallback(paramc);
    }
    
    public void invalidate()
    {
      this.a.invalidate();
    }
    
    public boolean isInvalid()
    {
      return this.a.isInvalid();
    }
    
    public <ToValue> b<Integer, ToValue> map(k.a<Value, ToValue> parama)
    {
      throw new UnsupportedOperationException("Inaccessible inner type doesn't support map op");
    }
    
    public <ToValue> b<Integer, ToValue> mapByPage(k.a<List<Value>, List<ToValue>> parama)
    {
      throw new UnsupportedOperationException("Inaccessible inner type doesn't support map op");
    }
    
    public void removeInvalidatedCallback(b.c paramc)
    {
      this.a.removeInvalidatedCallback(paramc);
    }
  }
  
  public static abstract class b<T>
  {
    public abstract void a(List<T> paramList, int paramInt1, int paramInt2);
  }
  
  static class c<T>
    extends d.b<T>
  {
    final b.d<T> a;
    private final boolean b;
    private final int c;
    
    c(d paramd, boolean paramBoolean, int paramInt, c.a<T> parama)
    {
      this.a = new b.d(paramd, 0, null, parama);
      this.b = paramBoolean;
      this.c = paramInt;
      if (paramInt >= 1) {
        return;
      }
      throw new IllegalArgumentException("Page size must be non-negative");
    }
    
    public void a(List<T> paramList, int paramInt1, int paramInt2)
    {
      if (!this.a.a())
      {
        b.d.d(paramList, paramInt1, paramInt2);
        if ((paramList.size() + paramInt1 != paramInt2) && (paramList.size() % this.c != 0))
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("PositionalDataSource requires initial load size to be a multiple of page size to support internal tiling. loadSize ");
          localStringBuilder.append(paramList.size());
          localStringBuilder.append(", position ");
          localStringBuilder.append(paramInt1);
          localStringBuilder.append(", totalCount ");
          localStringBuilder.append(paramInt2);
          localStringBuilder.append(", pageSize ");
          localStringBuilder.append(this.c);
          throw new IllegalArgumentException(localStringBuilder.toString());
        }
        if (this.b)
        {
          int i = paramList.size();
          this.a.b(new c(paramList, paramInt1, paramInt2 - paramInt1 - i, 0));
        }
        else
        {
          this.a.b(new c(paramList, paramInt1));
        }
      }
    }
  }
  
  public static class d
  {
    public final int a;
    public final int b;
    public final int c;
    public final boolean d;
    
    public d(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
    {
      this.a = paramInt1;
      this.b = paramInt2;
      this.c = paramInt3;
      this.d = paramBoolean;
    }
  }
  
  public static abstract class e<T>
  {
    public abstract void a(List<T> paramList);
  }
  
  static class f<T>
    extends d.e<T>
  {
    private b.d<T> a;
    private final int b;
    
    f(d paramd, int paramInt1, int paramInt2, Executor paramExecutor, c.a<T> parama)
    {
      this.a = new b.d(paramd, paramInt1, paramExecutor, parama);
      this.b = paramInt2;
    }
    
    public void a(List<T> paramList)
    {
      if (!this.a.a()) {
        this.a.b(new c(paramList, 0, 0, this.b));
      }
    }
  }
  
  public static class g
  {
    public final int a;
    public final int b;
    
    public g(int paramInt1, int paramInt2)
    {
      this.a = paramInt1;
      this.b = paramInt2;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.paging.d
 * JD-Core Version:    0.7.0.1
 */