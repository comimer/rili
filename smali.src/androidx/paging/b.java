package androidx.paging;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import k.a;

public abstract class b<Key, Value>
{
  private AtomicBoolean mInvalid = new AtomicBoolean(false);
  private CopyOnWriteArrayList<c> mOnInvalidatedCallbacks = new CopyOnWriteArrayList();
  
  static <A, B> List<B> convert(a<List<A>, List<B>> parama, List<A> paramList)
  {
    List localList = (List)parama.apply(paramList);
    if (localList.size() == paramList.size()) {
      return localList;
    }
    paramList = new StringBuilder();
    paramList.append("Invalid Function ");
    paramList.append(parama);
    paramList.append(" changed return size. This is not supported.");
    throw new IllegalStateException(paramList.toString());
  }
  
  static <X, Y> a<List<X>, List<Y>> createListFunction(a<X, Y> parama)
  {
    return new a(parama);
  }
  
  public void addInvalidatedCallback(c paramc)
  {
    this.mOnInvalidatedCallbacks.add(paramc);
  }
  
  public void invalidate()
  {
    if (this.mInvalid.compareAndSet(false, true))
    {
      Iterator localIterator = this.mOnInvalidatedCallbacks.iterator();
      while (localIterator.hasNext()) {
        ((c)localIterator.next()).a();
      }
    }
  }
  
  abstract boolean isContiguous();
  
  public boolean isInvalid()
  {
    return this.mInvalid.get();
  }
  
  public abstract <ToValue> b<Key, ToValue> map(a<Value, ToValue> parama);
  
  public abstract <ToValue> b<Key, ToValue> mapByPage(a<List<Value>, List<ToValue>> parama);
  
  public void removeInvalidatedCallback(c paramc)
  {
    this.mOnInvalidatedCallbacks.remove(paramc);
  }
  
  static final class a
    implements a<List<X>, List<Y>>
  {
    a(a parama) {}
    
    public List<Y> a(List<X> paramList)
    {
      ArrayList localArrayList = new ArrayList(paramList.size());
      for (int i = 0; i < paramList.size(); i++) {
        localArrayList.add(this.a.apply(paramList.get(i)));
      }
      return localArrayList;
    }
  }
  
  public static abstract class b<Key, Value>
  {
    public abstract b<Key, Value> create();
    
    public <ToValue> b<Key, ToValue> map(a<Value, ToValue> parama)
    {
      return mapByPage(b.createListFunction(parama));
    }
    
    public <ToValue> b<Key, ToValue> mapByPage(final a<List<Value>, List<ToValue>> parama)
    {
      return new a(parama);
    }
    
    class a
      extends b.b<Key, ToValue>
    {
      a(a parama) {}
      
      public b<Key, ToValue> create()
      {
        return b.b.this.create().mapByPage(parama);
      }
    }
  }
  
  public static abstract interface c
  {
    public abstract void a();
  }
  
  static class d<T>
  {
    final int a;
    private final b b;
    private final Object c = new Object();
    private Executor d;
    private boolean e = false;
    
    d(b paramb, int paramInt, Executor paramExecutor, c.a<T> parama)
    {
      this.b = paramb;
      this.a = paramInt;
      this.d = paramExecutor;
    }
    
    static void d(List<?> paramList, int paramInt1, int paramInt2)
    {
      if (paramInt1 >= 0)
      {
        if (paramList.size() + paramInt1 <= paramInt2)
        {
          if ((paramList.size() == 0) && (paramInt2 > 0)) {
            throw new IllegalArgumentException("Initial result cannot be empty if items are present in data set.");
          }
          return;
        }
        throw new IllegalArgumentException("List size + position too large, last item in list beyond totalCount.");
      }
      throw new IllegalArgumentException("Position must be non-negative");
    }
    
    boolean a()
    {
      if (this.b.isInvalid())
      {
        b(c.a());
        return true;
      }
      return false;
    }
    
    void b(final c<T> paramc)
    {
      synchronized (this.c)
      {
        if (!this.e)
        {
          this.e = true;
          Executor localExecutor = this.d;
          localExecutor.getClass();
          localExecutor.execute(new a(paramc));
          return;
        }
        paramc = new java/lang/IllegalStateException;
        paramc.<init>("callback.onResult already called, cannot call again.");
        throw paramc;
      }
    }
    
    void c(Executor paramExecutor)
    {
      synchronized (this.c)
      {
        this.d = paramExecutor;
        return;
      }
    }
    
    class a
      implements Runnable
    {
      a(c paramc) {}
      
      public void run()
      {
        b.d.this.getClass();
        int i = b.d.this.a;
        throw null;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.paging.b
 * JD-Core Version:    0.7.0.1
 */