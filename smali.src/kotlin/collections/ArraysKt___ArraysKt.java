package kotlin.collections;

import b8.c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"T", "", "element", "", "u", "([Ljava/lang/Object;Ljava/lang/Object;)Z", "", "", "t", "x", "([Ljava/lang/Object;)Ljava/lang/Object;", "y", "index", "D", "([Ljava/lang/Object;I)Ljava/lang/Object;", "C", "([II)Ljava/lang/Integer;", "F", "([Ljava/lang/Object;Ljava/lang/Object;)I", "E", "K", "L", "O", "", "", "N", "P", "", "", "v", "([Ljava/lang/Object;)Ljava/util/List;", "", "destination", "w", "([Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "Q", "([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;", "R", "([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;", "S", "Z", "", "", "", "", "a0", "X", "", "", "Y", "", "", "W", "", "", "V", "", "b0", "U", "", "i0", "c0", "j0", "g0", "h0", "f0", "e0", "k0", "d0", "", "l0", "([Ljava/lang/Object;)Ljava/util/Set;", "Lkotlin/Function1;", "transform", "M", "([Ljava/lang/Object;Lw7/l;)Ljava/util/List;", "", "Lkotlin/collections/g0;", "m0", "([Ljava/lang/Object;)Ljava/lang/Iterable;", "other", "Lkotlin/Pair;", "n0", "([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;", "Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", "A", "buffer", "", "separator", "prefix", "postfix", "limit", "truncated", "G", "([Ljava/lang/Object;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lw7/l;)Ljava/lang/Appendable;", "", "I", "([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lw7/l;)Ljava/lang/String;", "r", "Lkotlin/sequences/h;", "s", "([Ljava/lang/Object;)Lkotlin/sequences/h;", "Lb8/c;", "z", "([Ljava/lang/Object;)Lb8/c;", "indices", "B", "([Ljava/lang/Object;)I", "lastIndex", "([I)I", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/collections/ArraysKt")
class ArraysKt___ArraysKt
  extends m
{
  public static final int A(int[] paramArrayOfInt)
  {
    r.f(paramArrayOfInt, "<this>");
    return paramArrayOfInt.length - 1;
  }
  
  public static <T> int B(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "<this>");
    return paramArrayOfT.length - 1;
  }
  
  public static Integer C(int[] paramArrayOfInt, int paramInt)
  {
    r.f(paramArrayOfInt, "<this>");
    if ((paramInt >= 0) && (paramInt <= A(paramArrayOfInt))) {
      paramArrayOfInt = Integer.valueOf(paramArrayOfInt[paramInt]);
    } else {
      paramArrayOfInt = null;
    }
    return paramArrayOfInt;
  }
  
  public static <T> T D(T[] paramArrayOfT, int paramInt)
  {
    r.f(paramArrayOfT, "<this>");
    if ((paramInt >= 0) && (paramInt <= j.B(paramArrayOfT))) {
      paramArrayOfT = paramArrayOfT[paramInt];
    } else {
      paramArrayOfT = null;
    }
    return paramArrayOfT;
  }
  
  public static int E(int[] paramArrayOfInt, int paramInt)
  {
    r.f(paramArrayOfInt, "<this>");
    int i = paramArrayOfInt.length;
    for (int j = 0; j < i; j++) {
      if (paramInt == paramArrayOfInt[j]) {
        return j;
      }
    }
    return -1;
  }
  
  public static <T> int F(T[] paramArrayOfT, T paramT)
  {
    r.f(paramArrayOfT, "<this>");
    int i = 0;
    int j = 0;
    if (paramT == null)
    {
      i = paramArrayOfT.length;
      while (j < i)
      {
        if (paramArrayOfT[j] == null) {
          return j;
        }
        j++;
      }
    }
    int k = paramArrayOfT.length;
    for (j = i; j < k; j++) {
      if (r.a(paramT, paramArrayOfT[j])) {
        return j;
      }
    }
    return -1;
  }
  
  public static final <T, A extends Appendable> A G(T[] paramArrayOfT, A paramA, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt, CharSequence paramCharSequence4, l<? super T, ? extends CharSequence> paraml)
  {
    r.f(paramArrayOfT, "<this>");
    r.f(paramA, "buffer");
    r.f(paramCharSequence1, "separator");
    r.f(paramCharSequence2, "prefix");
    r.f(paramCharSequence3, "postfix");
    r.f(paramCharSequence4, "truncated");
    paramA.append(paramCharSequence2);
    int i = paramArrayOfT.length;
    int j = 0;
    int k = 0;
    int m;
    for (;;)
    {
      m = k;
      if (j >= i) {
        break;
      }
      paramCharSequence2 = paramArrayOfT[j];
      k++;
      if (k > 1) {
        paramA.append(paramCharSequence1);
      }
      if (paramInt >= 0)
      {
        m = k;
        if (k > paramInt) {
          break;
        }
      }
      kotlin.text.k.a(paramA, paramCharSequence2, paraml);
      j++;
    }
    if ((paramInt >= 0) && (m > paramInt)) {
      paramA.append(paramCharSequence4);
    }
    paramA.append(paramCharSequence3);
    return paramA;
  }
  
  public static final <T> String I(T[] paramArrayOfT, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt, CharSequence paramCharSequence4, l<? super T, ? extends CharSequence> paraml)
  {
    r.f(paramArrayOfT, "<this>");
    r.f(paramCharSequence1, "separator");
    r.f(paramCharSequence2, "prefix");
    r.f(paramCharSequence3, "postfix");
    r.f(paramCharSequence4, "truncated");
    paramArrayOfT = ((StringBuilder)G(paramArrayOfT, new StringBuilder(), paramCharSequence1, paramCharSequence2, paramCharSequence3, paramInt, paramCharSequence4, paraml)).toString();
    r.e(paramArrayOfT, "joinTo(StringBuilder(), …ed, transform).toString()");
    return paramArrayOfT;
  }
  
  public static <T> T K(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "<this>");
    int i;
    if (paramArrayOfT.length == 0) {
      i = 1;
    } else {
      i = 0;
    }
    if (i == 0) {
      return paramArrayOfT[j.B(paramArrayOfT)];
    }
    throw new NoSuchElementException("Array is empty.");
  }
  
  public static final int L(int[] paramArrayOfInt, int paramInt)
  {
    r.f(paramArrayOfInt, "<this>");
    int i = paramArrayOfInt.length - 1;
    if (i >= 0) {
      for (;;)
      {
        int j = i - 1;
        if (paramInt == paramArrayOfInt[i]) {
          return i;
        }
        if (j < 0) {
          break;
        }
        i = j;
      }
    }
    return -1;
  }
  
  public static <T, R> List<R> M(T[] paramArrayOfT, l<? super T, ? extends R> paraml)
  {
    r.f(paramArrayOfT, "<this>");
    r.f(paraml, "transform");
    ArrayList localArrayList = new ArrayList(paramArrayOfT.length);
    int i = paramArrayOfT.length;
    for (int j = 0; j < i; j++) {
      localArrayList.add(paraml.invoke(paramArrayOfT[j]));
    }
    return localArrayList;
  }
  
  public static char N(char[] paramArrayOfChar)
  {
    r.f(paramArrayOfChar, "<this>");
    int i = paramArrayOfChar.length;
    if (i != 0)
    {
      if (i == 1) {
        return paramArrayOfChar[0];
      }
      throw new IllegalArgumentException("Array has more than one element.");
    }
    throw new NoSuchElementException("Array is empty.");
  }
  
  public static <T> T O(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "<this>");
    int i = paramArrayOfT.length;
    if (i != 0)
    {
      if (i == 1) {
        return paramArrayOfT[0];
      }
      throw new IllegalArgumentException("Array has more than one element.");
    }
    throw new NoSuchElementException("Array is empty.");
  }
  
  public static <T> T P(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "<this>");
    if (paramArrayOfT.length == 1) {
      paramArrayOfT = paramArrayOfT[0];
    } else {
      paramArrayOfT = null;
    }
    return paramArrayOfT;
  }
  
  public static final <T> T[] Q(T[] paramArrayOfT, Comparator<? super T> paramComparator)
  {
    r.f(paramArrayOfT, "<this>");
    r.f(paramComparator, "comparator");
    int i;
    if (paramArrayOfT.length == 0) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      return paramArrayOfT;
    }
    paramArrayOfT = Arrays.copyOf(paramArrayOfT, paramArrayOfT.length);
    r.e(paramArrayOfT, "copyOf(this, size)");
    m.q(paramArrayOfT, paramComparator);
    return paramArrayOfT;
  }
  
  public static <T> List<T> R(T[] paramArrayOfT, Comparator<? super T> paramComparator)
  {
    r.f(paramArrayOfT, "<this>");
    r.f(paramComparator, "comparator");
    return j.c(Q(paramArrayOfT, paramComparator));
  }
  
  public static final <T, C extends Collection<? super T>> C S(T[] paramArrayOfT, C paramC)
  {
    r.f(paramArrayOfT, "<this>");
    r.f(paramC, "destination");
    int i = paramArrayOfT.length;
    for (int j = 0; j < i; j++) {
      paramC.add(paramArrayOfT[j]);
    }
    return paramC;
  }
  
  public static List<Byte> T(byte[] paramArrayOfByte)
  {
    r.f(paramArrayOfByte, "<this>");
    int i = paramArrayOfByte.length;
    if (i != 0)
    {
      if (i != 1) {
        paramArrayOfByte = c0(paramArrayOfByte);
      } else {
        paramArrayOfByte = t.e(Byte.valueOf(paramArrayOfByte[0]));
      }
    }
    else {
      paramArrayOfByte = t.j();
    }
    return paramArrayOfByte;
  }
  
  public static List<Character> U(char[] paramArrayOfChar)
  {
    r.f(paramArrayOfChar, "<this>");
    int i = paramArrayOfChar.length;
    if (i != 0)
    {
      if (i != 1) {
        paramArrayOfChar = d0(paramArrayOfChar);
      } else {
        paramArrayOfChar = t.e(Character.valueOf(paramArrayOfChar[0]));
      }
    }
    else {
      paramArrayOfChar = t.j();
    }
    return paramArrayOfChar;
  }
  
  public static List<Double> V(double[] paramArrayOfDouble)
  {
    r.f(paramArrayOfDouble, "<this>");
    int i = paramArrayOfDouble.length;
    if (i != 0)
    {
      if (i != 1) {
        paramArrayOfDouble = e0(paramArrayOfDouble);
      } else {
        paramArrayOfDouble = t.e(Double.valueOf(paramArrayOfDouble[0]));
      }
    }
    else {
      paramArrayOfDouble = t.j();
    }
    return paramArrayOfDouble;
  }
  
  public static List<Float> W(float[] paramArrayOfFloat)
  {
    r.f(paramArrayOfFloat, "<this>");
    int i = paramArrayOfFloat.length;
    if (i != 0)
    {
      if (i != 1) {
        paramArrayOfFloat = f0(paramArrayOfFloat);
      } else {
        paramArrayOfFloat = t.e(Float.valueOf(paramArrayOfFloat[0]));
      }
    }
    else {
      paramArrayOfFloat = t.j();
    }
    return paramArrayOfFloat;
  }
  
  public static List<Integer> X(int[] paramArrayOfInt)
  {
    r.f(paramArrayOfInt, "<this>");
    int i = paramArrayOfInt.length;
    if (i != 0)
    {
      if (i != 1) {
        paramArrayOfInt = g0(paramArrayOfInt);
      } else {
        paramArrayOfInt = t.e(Integer.valueOf(paramArrayOfInt[0]));
      }
    }
    else {
      paramArrayOfInt = t.j();
    }
    return paramArrayOfInt;
  }
  
  public static List<Long> Y(long[] paramArrayOfLong)
  {
    r.f(paramArrayOfLong, "<this>");
    int i = paramArrayOfLong.length;
    if (i != 0)
    {
      if (i != 1) {
        paramArrayOfLong = h0(paramArrayOfLong);
      } else {
        paramArrayOfLong = t.e(Long.valueOf(paramArrayOfLong[0]));
      }
    }
    else {
      paramArrayOfLong = t.j();
    }
    return paramArrayOfLong;
  }
  
  public static <T> List<T> Z(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "<this>");
    int i = paramArrayOfT.length;
    if (i != 0)
    {
      if (i != 1) {
        paramArrayOfT = j.i0(paramArrayOfT);
      } else {
        paramArrayOfT = t.e(paramArrayOfT[0]);
      }
    }
    else {
      paramArrayOfT = t.j();
    }
    return paramArrayOfT;
  }
  
  public static List<Short> a0(short[] paramArrayOfShort)
  {
    r.f(paramArrayOfShort, "<this>");
    int i = paramArrayOfShort.length;
    if (i != 0)
    {
      if (i != 1) {
        paramArrayOfShort = j0(paramArrayOfShort);
      } else {
        paramArrayOfShort = t.e(Short.valueOf(paramArrayOfShort[0]));
      }
    }
    else {
      paramArrayOfShort = t.j();
    }
    return paramArrayOfShort;
  }
  
  public static List<Boolean> b0(boolean[] paramArrayOfBoolean)
  {
    r.f(paramArrayOfBoolean, "<this>");
    int i = paramArrayOfBoolean.length;
    if (i != 0)
    {
      if (i != 1) {
        paramArrayOfBoolean = k0(paramArrayOfBoolean);
      } else {
        paramArrayOfBoolean = t.e(Boolean.valueOf(paramArrayOfBoolean[0]));
      }
    }
    else {
      paramArrayOfBoolean = t.j();
    }
    return paramArrayOfBoolean;
  }
  
  public static final List<Byte> c0(byte[] paramArrayOfByte)
  {
    r.f(paramArrayOfByte, "<this>");
    ArrayList localArrayList = new ArrayList(paramArrayOfByte.length);
    int i = paramArrayOfByte.length;
    for (int j = 0; j < i; j++) {
      localArrayList.add(Byte.valueOf(paramArrayOfByte[j]));
    }
    return localArrayList;
  }
  
  public static final List<Character> d0(char[] paramArrayOfChar)
  {
    r.f(paramArrayOfChar, "<this>");
    ArrayList localArrayList = new ArrayList(paramArrayOfChar.length);
    int i = paramArrayOfChar.length;
    for (int j = 0; j < i; j++) {
      localArrayList.add(Character.valueOf(paramArrayOfChar[j]));
    }
    return localArrayList;
  }
  
  public static final List<Double> e0(double[] paramArrayOfDouble)
  {
    r.f(paramArrayOfDouble, "<this>");
    ArrayList localArrayList = new ArrayList(paramArrayOfDouble.length);
    int i = paramArrayOfDouble.length;
    for (int j = 0; j < i; j++) {
      localArrayList.add(Double.valueOf(paramArrayOfDouble[j]));
    }
    return localArrayList;
  }
  
  public static final List<Float> f0(float[] paramArrayOfFloat)
  {
    r.f(paramArrayOfFloat, "<this>");
    ArrayList localArrayList = new ArrayList(paramArrayOfFloat.length);
    int i = paramArrayOfFloat.length;
    for (int j = 0; j < i; j++) {
      localArrayList.add(Float.valueOf(paramArrayOfFloat[j]));
    }
    return localArrayList;
  }
  
  public static final List<Integer> g0(int[] paramArrayOfInt)
  {
    r.f(paramArrayOfInt, "<this>");
    ArrayList localArrayList = new ArrayList(paramArrayOfInt.length);
    int i = paramArrayOfInt.length;
    for (int j = 0; j < i; j++) {
      localArrayList.add(Integer.valueOf(paramArrayOfInt[j]));
    }
    return localArrayList;
  }
  
  public static final List<Long> h0(long[] paramArrayOfLong)
  {
    r.f(paramArrayOfLong, "<this>");
    ArrayList localArrayList = new ArrayList(paramArrayOfLong.length);
    int i = paramArrayOfLong.length;
    for (int j = 0; j < i; j++) {
      localArrayList.add(Long.valueOf(paramArrayOfLong[j]));
    }
    return localArrayList;
  }
  
  public static <T> List<T> i0(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "<this>");
    return new ArrayList(v.g(paramArrayOfT));
  }
  
  public static final List<Short> j0(short[] paramArrayOfShort)
  {
    r.f(paramArrayOfShort, "<this>");
    ArrayList localArrayList = new ArrayList(paramArrayOfShort.length);
    int i = paramArrayOfShort.length;
    for (int j = 0; j < i; j++) {
      localArrayList.add(Short.valueOf(paramArrayOfShort[j]));
    }
    return localArrayList;
  }
  
  public static final List<Boolean> k0(boolean[] paramArrayOfBoolean)
  {
    r.f(paramArrayOfBoolean, "<this>");
    ArrayList localArrayList = new ArrayList(paramArrayOfBoolean.length);
    int i = paramArrayOfBoolean.length;
    for (int j = 0; j < i; j++) {
      localArrayList.add(Boolean.valueOf(paramArrayOfBoolean[j]));
    }
    return localArrayList;
  }
  
  public static <T> Set<T> l0(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "<this>");
    int i = paramArrayOfT.length;
    if (i != 0)
    {
      if (i != 1) {
        paramArrayOfT = (Set)S(paramArrayOfT, new LinkedHashSet(m0.e(paramArrayOfT.length)));
      } else {
        paramArrayOfT = u0.c(paramArrayOfT[0]);
      }
    }
    else {
      paramArrayOfT = u0.d();
    }
    return paramArrayOfT;
  }
  
  public static <T> Iterable<g0<T>> m0(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "<this>");
    new h0(new Lambda(paramArrayOfT)
    {
      public final Iterator<T> invoke()
      {
        return kotlin.jvm.internal.h.a(this.$this_withIndex);
      }
    });
  }
  
  public static <T, R> List<Pair<T, R>> n0(T[] paramArrayOfT, R[] paramArrayOfR)
  {
    r.f(paramArrayOfT, "<this>");
    r.f(paramArrayOfR, "other");
    int i = Math.min(paramArrayOfT.length, paramArrayOfR.length);
    ArrayList localArrayList = new ArrayList(i);
    for (int j = 0; j < i; j++) {
      localArrayList.add(kotlin.k.a(paramArrayOfT[j], paramArrayOfR[j]));
    }
    return localArrayList;
  }
  
  public static <T> Iterable<T> r(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "<this>");
    int i;
    if (paramArrayOfT.length == 0) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      return t.j();
    }
    return new a(paramArrayOfT);
  }
  
  public static <T> kotlin.sequences.h<T> s(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "<this>");
    int i;
    if (paramArrayOfT.length == 0) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      return kotlin.sequences.k.e();
    }
    return new b(paramArrayOfT);
  }
  
  public static final boolean t(int[] paramArrayOfInt, int paramInt)
  {
    r.f(paramArrayOfInt, "<this>");
    boolean bool;
    if (j.E(paramArrayOfInt, paramInt) >= 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static <T> boolean u(T[] paramArrayOfT, T paramT)
  {
    r.f(paramArrayOfT, "<this>");
    boolean bool;
    if (j.F(paramArrayOfT, paramT) >= 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static <T> List<T> v(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "<this>");
    return (List)w(paramArrayOfT, new ArrayList());
  }
  
  public static final <C extends Collection<? super T>, T> C w(T[] paramArrayOfT, C paramC)
  {
    r.f(paramArrayOfT, "<this>");
    r.f(paramC, "destination");
    int i = paramArrayOfT.length;
    for (int j = 0; j < i; j++)
    {
      T ? = paramArrayOfT[j];
      if (? != null) {
        paramC.add(?);
      }
    }
    return paramC;
  }
  
  public static <T> T x(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "<this>");
    int i;
    if (paramArrayOfT.length == 0) {
      i = 1;
    } else {
      i = 0;
    }
    if (i == 0) {
      return paramArrayOfT[0];
    }
    throw new NoSuchElementException("Array is empty.");
  }
  
  public static <T> T y(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "<this>");
    int i;
    if (paramArrayOfT.length == 0) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      paramArrayOfT = null;
    } else {
      paramArrayOfT = paramArrayOfT[0];
    }
    return paramArrayOfT;
  }
  
  public static <T> c z(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "<this>");
    return new c(0, j.B(paramArrayOfT));
  }
  
  @Metadata(bv={}, d1={""}, d2={"kotlin/collections/ArraysKt___ArraysKt$a", "", "", "iterator", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a
    implements Iterable<T>, x7.a
  {
    public a(Object[] paramArrayOfObject) {}
    
    public Iterator<T> iterator()
    {
      return kotlin.jvm.internal.h.a(this.a);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"kotlin/collections/ArraysKt___ArraysKt$b", "Lkotlin/sequences/h;", "", "iterator", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class b
    implements kotlin.sequences.h<T>
  {
    public b(Object[] paramArrayOfObject) {}
    
    public Iterator<T> iterator()
    {
      return kotlin.jvm.internal.h.a(this.a);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.ArraysKt___ArraysKt
 * JD-Core Version:    0.7.0.1
 */