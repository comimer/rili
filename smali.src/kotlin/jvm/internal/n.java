package kotlin.jvm.internal;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collection<*>;
import java.util.Iterator;
import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"", "collection", "", "", "a", "(Ljava/util/Collection;)[Ljava/lang/Object;", "b", "(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;", "[Ljava/lang/Object;", "EMPTY", "kotlin-stdlib"}, k=2, mv={1, 7, 1})
public final class n
{
  private static final Object[] a = new Object[0];
  
  public static final Object[] a(Collection<?> paramCollection)
  {
    r.f(paramCollection, "collection");
    int i = paramCollection.size();
    if (i == 0) {}
    Iterator localIterator;
    do
    {
      paramCollection = a;
      break;
      localIterator = paramCollection.iterator();
    } while (!localIterator.hasNext());
    paramCollection = new Object[i];
    i = 0;
    for (;;)
    {
      int j = i + 1;
      paramCollection[i] = localIterator.next();
      Object localObject;
      if (j >= paramCollection.length)
      {
        if (localIterator.hasNext())
        {
          int k = j * 3 + 1 >>> 1;
          i = k;
          if (k <= j) {
            if (j < 2147483645) {
              i = 2147483645;
            } else {
              throw new OutOfMemoryError();
            }
          }
          localObject = Arrays.copyOf(paramCollection, i);
          r.e(localObject, "copyOf(result, newSize)");
          break label162;
        }
      }
      else
      {
        localObject = paramCollection;
        if (localIterator.hasNext()) {
          break label162;
        }
        paramCollection = Arrays.copyOf(paramCollection, j);
        r.e(paramCollection, "copyOf(result, size)");
      }
      return paramCollection;
      label162:
      i = j;
      paramCollection = (Collection<?>)localObject;
    }
  }
  
  public static final Object[] b(Collection<?> paramCollection, Object[] paramArrayOfObject)
  {
    r.f(paramCollection, "collection");
    paramArrayOfObject.getClass();
    int i = paramCollection.size();
    int j = 0;
    Iterator localIterator;
    if (i == 0)
    {
      paramCollection = paramArrayOfObject;
      if (paramArrayOfObject.length > 0)
      {
        paramArrayOfObject[0] = null;
        paramCollection = paramArrayOfObject;
      }
    }
    else
    {
      localIterator = paramCollection.iterator();
      if (!localIterator.hasNext())
      {
        paramCollection = paramArrayOfObject;
        if (paramArrayOfObject.length > 0)
        {
          paramArrayOfObject[0] = null;
          paramCollection = paramArrayOfObject;
        }
      }
      else if (i <= paramArrayOfObject.length)
      {
        paramCollection = paramArrayOfObject;
      }
      else
      {
        paramCollection = Array.newInstance(paramArrayOfObject.getClass().getComponentType(), i);
        r.d(paramCollection, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
      }
    }
    Object localObject;
    for (paramCollection = (Object[])paramCollection;; paramCollection = (Collection<?>)localObject)
    {
      i = j + 1;
      paramCollection[j] = localIterator.next();
      if (i >= paramCollection.length)
      {
        if (localIterator.hasNext())
        {
          int k = i * 3 + 1 >>> 1;
          j = k;
          if (k <= i) {
            if (i < 2147483645) {
              j = 2147483645;
            } else {
              throw new OutOfMemoryError();
            }
          }
          localObject = Arrays.copyOf(paramCollection, j);
          r.e(localObject, "copyOf(result, newSize)");
          break label237;
        }
      }
      else
      {
        localObject = paramCollection;
        if (localIterator.hasNext()) {
          break label237;
        }
        if (paramCollection == paramArrayOfObject)
        {
          paramArrayOfObject[i] = null;
          paramCollection = paramArrayOfObject;
        }
        else
        {
          paramCollection = Arrays.copyOf(paramCollection, i);
          r.e(paramCollection, "copyOf(result, size)");
        }
      }
      return paramCollection;
      label237:
      j = i;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.n
 * JD-Core Version:    0.7.0.1
 */