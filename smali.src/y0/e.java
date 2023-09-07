package y0;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.s;
import androidx.lifecycle.u;
import androidx.lifecycle.v;

public class e
{
  public static <In, Out> LiveData<Out> a(LiveData<In> paramLiveData, final k.a<In, Out> parama, z0.a parama1)
  {
    final Object localObject = new Object();
    final s locals = new s();
    locals.o(paramLiveData, new a(parama1, localObject, parama, locals));
    return locals;
  }
  
  class a
    implements v<In>
  {
    Out a = null;
    
    a(Object paramObject, k.a parama, s params) {}
    
    public void d(final In paramIn)
    {
      e.this.b(new a(paramIn));
    }
    
    class a
      implements Runnable
    {
      a(Object paramObject) {}
      
      public void run()
      {
        synchronized (e.a.this.c)
        {
          Object localObject2 = e.a.this.d.apply(paramIn);
          e.a locala = e.a.this;
          Object localObject4 = paramIn;
          if ((localObject4 == null) && (localObject2 != null))
          {
            locala.a = localObject2;
            locala.e.l(localObject2);
          }
          else if ((localObject4 != null) && (!localObject4.equals(localObject2)))
          {
            locala = e.a.this;
            locala.a = localObject2;
            locala.e.l(localObject2);
          }
          return;
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y0.e
 * JD-Core Version:    0.7.0.1
 */