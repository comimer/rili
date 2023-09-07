package kotlin.collections.builders;

import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"E", "", "size", "", "d", "(I)[Ljava/lang/Object;", "T", "offset", "length", "", "j", "([Ljava/lang/Object;II)Ljava/lang/String;", "i", "([Ljava/lang/Object;II)I", "", "other", "", "h", "([Ljava/lang/Object;IILjava/util/List;)Z", "newSize", "e", "([Ljava/lang/Object;I)[Ljava/lang/Object;", "index", "Lkotlin/u;", "f", "([Ljava/lang/Object;I)V", "fromIndex", "toIndex", "g", "([Ljava/lang/Object;II)V", "kotlin-stdlib"}, k=2, mv={1, 7, 1})
public final class b
{
  public static final <E> E[] d(int paramInt)
  {
    int i;
    if (paramInt >= 0) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      return new Object[paramInt];
    }
    throw new IllegalArgumentException("capacity must be non-negative.".toString());
  }
  
  public static final <T> T[] e(T[] paramArrayOfT, int paramInt)
  {
    r.f(paramArrayOfT, "<this>");
    paramArrayOfT = Arrays.copyOf(paramArrayOfT, paramInt);
    r.e(paramArrayOfT, "copyOf(this, newSize)");
    r.d(paramArrayOfT, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.builders.ListBuilderKt.copyOfUninitializedElements>");
    return paramArrayOfT;
  }
  
  public static final <E> void f(E[] paramArrayOfE, int paramInt)
  {
    r.f(paramArrayOfE, "<this>");
    paramArrayOfE[paramInt] = null;
  }
  
  public static final <E> void g(E[] paramArrayOfE, int paramInt1, int paramInt2)
  {
    r.f(paramArrayOfE, "<this>");
    while (paramInt1 < paramInt2)
    {
      f(paramArrayOfE, paramInt1);
      paramInt1++;
    }
  }
  
  private static final <T> boolean h(T[] paramArrayOfT, int paramInt1, int paramInt2, List<?> paramList)
  {
    if (paramInt2 != paramList.size()) {
      return false;
    }
    for (int i = 0; i < paramInt2; i++) {
      if (!r.a(paramArrayOfT[(paramInt1 + i)], paramList.get(i))) {
        return false;
      }
    }
    return true;
  }
  
  private static final <T> int i(T[] paramArrayOfT, int paramInt1, int paramInt2)
  {
    int i = 1;
    for (int j = 0; j < paramInt2; j++)
    {
      T ? = paramArrayOfT[(paramInt1 + j)];
      int k;
      if (? != null) {
        k = ?.hashCode();
      } else {
        k = 0;
      }
      i = i * 31 + k;
    }
    return i;
  }
  
  private static final <T> String j(T[] paramArrayOfT, int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramInt2 * 3 + 2);
    localStringBuilder.append("[");
    for (int i = 0; i < paramInt2; i++)
    {
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(paramArrayOfT[(paramInt1 + i)]);
    }
    localStringBuilder.append("]");
    paramArrayOfT = localStringBuilder.toString();
    r.e(paramArrayOfT, "sb.toString()");
    return paramArrayOfT;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.builders.b
 * JD-Core Version:    0.7.0.1
 */