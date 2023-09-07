package kotlin.collections;

import b8.c;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import q7.a;

@Metadata(bv={}, d1={""}, d2={"T", "", "", "g", "([Ljava/lang/Object;)Ljava/util/Collection;", "", "j", "elements", "m", "([Ljava/lang/Object;)Ljava/util/List;", "", "p", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "f", "([Ljava/lang/Object;)Ljava/util/ArrayList;", "", "element", "n", "(Ljava/lang/Object;)Ljava/util/List;", "o", "q", "", "", "fromIndex", "toIndex", "h", "(Ljava/util/List;Ljava/lang/Comparable;II)I", "size", "Lkotlin/u;", "r", "(III)V", "t", "s", "Lb8/c;", "k", "(Ljava/util/Collection;)Lb8/c;", "indices", "l", "(Ljava/util/List;)I", "lastIndex", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/collections/CollectionsKt")
class v
  extends u
{
  public static <T> ArrayList<T> f(T... paramVarArgs)
  {
    r.f(paramVarArgs, "elements");
    if (paramVarArgs.length == 0) {
      paramVarArgs = new ArrayList();
    } else {
      paramVarArgs = new ArrayList(new h(paramVarArgs, true));
    }
    return paramVarArgs;
  }
  
  public static final <T> Collection<T> g(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "<this>");
    return new h(paramArrayOfT, false);
  }
  
  public static final <T extends Comparable<? super T>> int h(List<? extends T> paramList, T paramT, int paramInt1, int paramInt2)
  {
    r.f(paramList, "<this>");
    r(paramList.size(), paramInt1, paramInt2);
    paramInt2--;
    while (paramInt1 <= paramInt2)
    {
      int i = paramInt1 + paramInt2 >>> 1;
      int j = a.a((Comparable)paramList.get(i), paramT);
      if (j < 0) {
        paramInt1 = i + 1;
      } else if (j > 0) {
        paramInt2 = i - 1;
      } else {
        return i;
      }
    }
    return -(paramInt1 + 1);
  }
  
  public static <T> List<T> j()
  {
    return EmptyList.INSTANCE;
  }
  
  public static c k(Collection<?> paramCollection)
  {
    r.f(paramCollection, "<this>");
    return new c(0, paramCollection.size() - 1);
  }
  
  public static <T> int l(List<? extends T> paramList)
  {
    r.f(paramList, "<this>");
    return paramList.size() - 1;
  }
  
  public static <T> List<T> m(T... paramVarArgs)
  {
    r.f(paramVarArgs, "elements");
    if (paramVarArgs.length > 0) {
      paramVarArgs = j.c(paramVarArgs);
    } else {
      paramVarArgs = t.j();
    }
    return paramVarArgs;
  }
  
  public static <T> List<T> n(T paramT)
  {
    if (paramT != null) {
      paramT = t.e(paramT);
    } else {
      paramT = t.j();
    }
    return paramT;
  }
  
  public static <T> List<T> o(T... paramVarArgs)
  {
    r.f(paramVarArgs, "elements");
    return j.v(paramVarArgs);
  }
  
  public static <T> List<T> p(T... paramVarArgs)
  {
    r.f(paramVarArgs, "elements");
    if (paramVarArgs.length == 0) {
      paramVarArgs = new ArrayList();
    } else {
      paramVarArgs = new ArrayList(new h(paramVarArgs, true));
    }
    return paramVarArgs;
  }
  
  public static <T> List<T> q(List<? extends T> paramList)
  {
    r.f(paramList, "<this>");
    int i = paramList.size();
    if (i != 0)
    {
      if (i == 1) {
        paramList = t.e(paramList.get(0));
      }
    }
    else {
      paramList = t.j();
    }
    return paramList;
  }
  
  private static final void r(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 <= paramInt3)
    {
      if (paramInt2 >= 0)
      {
        if (paramInt3 <= paramInt1) {
          return;
        }
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("toIndex (");
        localStringBuilder.append(paramInt3);
        localStringBuilder.append(") is greater than size (");
        localStringBuilder.append(paramInt1);
        localStringBuilder.append(").");
        throw new IndexOutOfBoundsException(localStringBuilder.toString());
      }
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("fromIndex (");
      localStringBuilder.append(paramInt2);
      localStringBuilder.append(") is less than zero.");
      throw new IndexOutOfBoundsException(localStringBuilder.toString());
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("fromIndex (");
    localStringBuilder.append(paramInt2);
    localStringBuilder.append(") is greater than toIndex (");
    localStringBuilder.append(paramInt3);
    localStringBuilder.append(").");
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public static void s()
  {
    throw new ArithmeticException("Count overflow has happened.");
  }
  
  public static void t()
  {
    throw new ArithmeticException("Index overflow has happened.");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.v
 * JD-Core Version:    0.7.0.1
 */