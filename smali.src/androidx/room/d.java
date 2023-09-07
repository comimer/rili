package androidx.room;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import l0.f;

public abstract class d<T>
  extends q
{
  public d(RoomDatabase paramRoomDatabase)
  {
    super(paramRoomDatabase);
  }
  
  protected abstract void bind(f paramf, T paramT);
  
  public final void insert(Iterable<? extends T> paramIterable)
  {
    f localf = acquire();
    try
    {
      paramIterable = paramIterable.iterator();
      while (paramIterable.hasNext())
      {
        bind(localf, paramIterable.next());
        localf.m0();
      }
      return;
    }
    finally
    {
      release(localf);
    }
  }
  
  public final void insert(T paramT)
  {
    f localf = acquire();
    try
    {
      bind(localf, paramT);
      localf.m0();
      return;
    }
    finally
    {
      release(localf);
    }
  }
  
  public final void insert(T[] paramArrayOfT)
  {
    f localf = acquire();
    try
    {
      int i = paramArrayOfT.length;
      for (int j = 0; j < i; j++)
      {
        bind(localf, paramArrayOfT[j]);
        localf.m0();
      }
      return;
    }
    finally
    {
      release(localf);
    }
  }
  
  public final long insertAndReturnId(T paramT)
  {
    f localf = acquire();
    try
    {
      bind(localf, paramT);
      long l = localf.m0();
      return l;
    }
    finally
    {
      release(localf);
    }
  }
  
  public final long[] insertAndReturnIdsArray(Collection<? extends T> paramCollection)
  {
    f localf = acquire();
    try
    {
      long[] arrayOfLong = new long[paramCollection.size()];
      int i = 0;
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext())
      {
        bind(localf, paramCollection.next());
        arrayOfLong[i] = localf.m0();
        i++;
      }
      return arrayOfLong;
    }
    finally
    {
      release(localf);
    }
  }
  
  public final long[] insertAndReturnIdsArray(T[] paramArrayOfT)
  {
    f localf = acquire();
    try
    {
      long[] arrayOfLong = new long[paramArrayOfT.length];
      int i = paramArrayOfT.length;
      int j = 0;
      int k = 0;
      while (j < i)
      {
        bind(localf, paramArrayOfT[j]);
        arrayOfLong[k] = localf.m0();
        k++;
        j++;
      }
      return arrayOfLong;
    }
    finally
    {
      release(localf);
    }
  }
  
  public final Long[] insertAndReturnIdsArrayBox(Collection<? extends T> paramCollection)
  {
    f localf = acquire();
    try
    {
      Long[] arrayOfLong = new Long[paramCollection.size()];
      int i = 0;
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext())
      {
        bind(localf, paramCollection.next());
        arrayOfLong[i] = Long.valueOf(localf.m0());
        i++;
      }
      return arrayOfLong;
    }
    finally
    {
      release(localf);
    }
  }
  
  public final Long[] insertAndReturnIdsArrayBox(T[] paramArrayOfT)
  {
    f localf = acquire();
    try
    {
      Long[] arrayOfLong = new Long[paramArrayOfT.length];
      int i = paramArrayOfT.length;
      int j = 0;
      int k = 0;
      while (j < i)
      {
        bind(localf, paramArrayOfT[j]);
        arrayOfLong[k] = Long.valueOf(localf.m0());
        k++;
        j++;
      }
      return arrayOfLong;
    }
    finally
    {
      release(localf);
    }
  }
  
  public final List<Long> insertAndReturnIdsList(Collection<? extends T> paramCollection)
  {
    f localf = acquire();
    try
    {
      ArrayList localArrayList = new java/util/ArrayList;
      localArrayList.<init>(paramCollection.size());
      int i = 0;
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext())
      {
        bind(localf, paramCollection.next());
        localArrayList.add(i, Long.valueOf(localf.m0()));
        i++;
      }
      return localArrayList;
    }
    finally
    {
      release(localf);
    }
  }
  
  public final List<Long> insertAndReturnIdsList(T[] paramArrayOfT)
  {
    f localf = acquire();
    try
    {
      ArrayList localArrayList = new java/util/ArrayList;
      localArrayList.<init>(paramArrayOfT.length);
      int i = paramArrayOfT.length;
      int j = 0;
      int k = 0;
      while (j < i)
      {
        bind(localf, paramArrayOfT[j]);
        localArrayList.add(k, Long.valueOf(localf.m0()));
        k++;
        j++;
      }
      return localArrayList;
    }
    finally
    {
      release(localf);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.d
 * JD-Core Version:    0.7.0.1
 */