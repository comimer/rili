package androidx.room;

import java.util.Iterator;
import l0.f;

public abstract class c<T>
  extends q
{
  public c(RoomDatabase paramRoomDatabase)
  {
    super(paramRoomDatabase);
  }
  
  protected abstract void bind(f paramf, T paramT);
  
  protected abstract String createQuery();
  
  public final int handle(T paramT)
  {
    f localf = acquire();
    try
    {
      bind(localf, paramT);
      int i = localf.o();
      return i;
    }
    finally
    {
      release(localf);
    }
  }
  
  public final int handleMultiple(Iterable<? extends T> paramIterable)
  {
    f localf = acquire();
    int i = 0;
    try
    {
      paramIterable = paramIterable.iterator();
      while (paramIterable.hasNext())
      {
        bind(localf, paramIterable.next());
        int j = localf.o();
        i += j;
      }
      return i;
    }
    finally
    {
      release(localf);
    }
  }
  
  public final int handleMultiple(T[] paramArrayOfT)
  {
    f localf = acquire();
    try
    {
      int i = paramArrayOfT.length;
      int j = 0;
      int k = 0;
      while (j < i)
      {
        bind(localf, paramArrayOfT[j]);
        int m = localf.o();
        k += m;
        j++;
      }
      return k;
    }
    finally
    {
      release(localf);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.c
 * JD-Core Version:    0.7.0.1
 */