package kotlin.collections;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"R", "", "Ljava/lang/Class;", "klass", "", "m", "([Ljava/lang/Object;Ljava/lang/Class;)Ljava/util/List;", "", "C", "destination", "n", "([Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;", "T", "c", "([Ljava/lang/Object;)Ljava/util/List;", "", "", "b", "destinationOffset", "startIndex", "endIndex", "e", "([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;", "", "d", "fromIndex", "toIndex", "i", "([Ljava/lang/Object;II)[Ljava/lang/Object;", "h", "([BII)[B", "element", "Lkotlin/u;", "k", "([Ljava/lang/Object;Ljava/lang/Object;II)V", "j", "o", "([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;", "p", "([Ljava/lang/Object;)V", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "q", "([Ljava/lang/Object;Ljava/util/Comparator;)V", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/collections/ArraysKt")
class m
  extends l
{
  public static List<Integer> b(int[] paramArrayOfInt)
  {
    r.f(paramArrayOfInt, "<this>");
    return new a(paramArrayOfInt);
  }
  
  public static <T> List<T> c(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "<this>");
    paramArrayOfT = n.a(paramArrayOfT);
    r.e(paramArrayOfT, "asList(this)");
    return paramArrayOfT;
  }
  
  public static byte[] d(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2, int paramInt3)
  {
    r.f(paramArrayOfByte1, "<this>");
    r.f(paramArrayOfByte2, "destination");
    System.arraycopy(paramArrayOfByte1, paramInt2, paramArrayOfByte2, paramInt1, paramInt3 - paramInt2);
    return paramArrayOfByte2;
  }
  
  public static <T> T[] e(T[] paramArrayOfT1, T[] paramArrayOfT2, int paramInt1, int paramInt2, int paramInt3)
  {
    r.f(paramArrayOfT1, "<this>");
    r.f(paramArrayOfT2, "destination");
    System.arraycopy(paramArrayOfT1, paramInt2, paramArrayOfT2, paramInt1, paramInt3 - paramInt2);
    return paramArrayOfT2;
  }
  
  public static byte[] h(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    r.f(paramArrayOfByte, "<this>");
    k.a(paramInt2, paramArrayOfByte.length);
    paramArrayOfByte = Arrays.copyOfRange(paramArrayOfByte, paramInt1, paramInt2);
    r.e(paramArrayOfByte, "copyOfRange(this, fromIndex, toIndex)");
    return paramArrayOfByte;
  }
  
  public static <T> T[] i(T[] paramArrayOfT, int paramInt1, int paramInt2)
  {
    r.f(paramArrayOfT, "<this>");
    k.a(paramInt2, paramArrayOfT.length);
    paramArrayOfT = Arrays.copyOfRange(paramArrayOfT, paramInt1, paramInt2);
    r.e(paramArrayOfT, "copyOfRange(this, fromIndex, toIndex)");
    return paramArrayOfT;
  }
  
  public static void j(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3)
  {
    r.f(paramArrayOfInt, "<this>");
    Arrays.fill(paramArrayOfInt, paramInt2, paramInt3, paramInt1);
  }
  
  public static <T> void k(T[] paramArrayOfT, T paramT, int paramInt1, int paramInt2)
  {
    r.f(paramArrayOfT, "<this>");
    Arrays.fill(paramArrayOfT, paramInt1, paramInt2, paramT);
  }
  
  public static <R> List<R> m(Object[] paramArrayOfObject, Class<R> paramClass)
  {
    r.f(paramArrayOfObject, "<this>");
    r.f(paramClass, "klass");
    return (List)n(paramArrayOfObject, new ArrayList(), paramClass);
  }
  
  public static final <C extends Collection<? super R>, R> C n(Object[] paramArrayOfObject, C paramC, Class<R> paramClass)
  {
    r.f(paramArrayOfObject, "<this>");
    r.f(paramC, "destination");
    r.f(paramClass, "klass");
    int i = paramArrayOfObject.length;
    for (int j = 0; j < i; j++)
    {
      Object localObject = paramArrayOfObject[j];
      if (paramClass.isInstance(localObject)) {
        paramC.add(localObject);
      }
    }
    return paramC;
  }
  
  public static <T> T[] o(T[] paramArrayOfT, T paramT)
  {
    r.f(paramArrayOfT, "<this>");
    int i = paramArrayOfT.length;
    paramArrayOfT = Arrays.copyOf(paramArrayOfT, i + 1);
    paramArrayOfT[i] = paramT;
    r.e(paramArrayOfT, "result");
    return paramArrayOfT;
  }
  
  public static final <T> void p(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "<this>");
    if (paramArrayOfT.length > 1) {
      Arrays.sort(paramArrayOfT);
    }
  }
  
  public static final <T> void q(T[] paramArrayOfT, Comparator<? super T> paramComparator)
  {
    r.f(paramArrayOfT, "<this>");
    r.f(paramComparator, "comparator");
    if (paramArrayOfT.length > 1) {
      Arrays.sort(paramArrayOfT, paramComparator);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"kotlin/collections/m$a", "Lkotlin/collections/b;", "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "isEmpty", "element", "h", "index", "j", "(I)Ljava/lang/Integer;", "k", "l", "c", "()I", "size", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a
    extends b<Integer>
    implements RandomAccess
  {
    a(int[] paramArrayOfInt) {}
    
    public int c()
    {
      return this.b.length;
    }
    
    public boolean h(int paramInt)
    {
      return ArraysKt___ArraysKt.t(this.b, paramInt);
    }
    
    public boolean isEmpty()
    {
      boolean bool;
      if (this.b.length == 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public Integer j(int paramInt)
    {
      return Integer.valueOf(this.b[paramInt]);
    }
    
    public int k(int paramInt)
    {
      return j.E(this.b, paramInt);
    }
    
    public int l(int paramInt)
    {
      return ArraysKt___ArraysKt.L(this.b, paramInt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.m
 * JD-Core Version:    0.7.0.1
 */