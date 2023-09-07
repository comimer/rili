package androidx.lifecycle;

import j.b;
import java.util.Iterator;
import java.util.Map.Entry;

public class s<T>
  extends u<T>
{
  private b<LiveData<?>, a<?>> l = new b();
  
  protected void j()
  {
    Iterator localIterator = this.l.iterator();
    while (localIterator.hasNext()) {
      ((a)((Map.Entry)localIterator.next()).getValue()).a();
    }
  }
  
  protected void k()
  {
    Iterator localIterator = this.l.iterator();
    while (localIterator.hasNext()) {
      ((a)((Map.Entry)localIterator.next()).getValue()).b();
    }
  }
  
  public <S> void o(LiveData<S> paramLiveData, v<? super S> paramv)
  {
    if (paramLiveData != null)
    {
      a locala = new a(paramLiveData, paramv);
      paramLiveData = (a)this.l.l(paramLiveData, locala);
      if ((paramLiveData != null) && (paramLiveData.b != paramv)) {
        throw new IllegalArgumentException("This source was already added with the different observer");
      }
      if (paramLiveData != null) {
        return;
      }
      if (g()) {
        locala.a();
      }
      return;
    }
    throw new NullPointerException("source cannot be null");
  }
  
  private static class a<V>
    implements v<V>
  {
    final LiveData<V> a;
    final v<? super V> b;
    int c = -1;
    
    a(LiveData<V> paramLiveData, v<? super V> paramv)
    {
      this.a = paramLiveData;
      this.b = paramv;
    }
    
    void a()
    {
      this.a.i(this);
    }
    
    void b()
    {
      this.a.m(this);
    }
    
    public void d(V paramV)
    {
      if (this.c != this.a.f())
      {
        this.c = this.a.f();
        this.b.d(paramV);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.s
 * JD-Core Version:    0.7.0.1
 */