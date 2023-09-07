package kotlin.collections;

import b8.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.sequences.h;
import w7.a;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"T", "", "element", "", "S", "(Ljava/lang/Iterable;Ljava/lang/Object;)Z", "X", "(Ljava/lang/Iterable;)Ljava/lang/Object;", "", "Y", "(Ljava/util/List;)Ljava/lang/Object;", "Z", "a0", "", "index", "b0", "(Ljava/util/List;I)Ljava/lang/Object;", "c0", "(Ljava/lang/Iterable;Ljava/lang/Object;)I", "i0", "j0", "k0", "l0", "t0", "u0", "v0", "w0", "n", "U", "V", "Lkotlin/Function1;", "predicate", "W", "z0", "A0", "", "x0", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "y0", "", "", "D0", "", "C", "destination", "B0", "(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "C0", "E0", "", "F0", "G0", "", "I0", "R", "transform", "m0", "Lkotlin/collections/g0;", "K0", "other", "d0", "", "H0", "J0", "Q", "n0", "(Ljava/lang/Iterable;)Ljava/lang/Comparable;", "o0", "(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;", "q0", "s0", "(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;", "elements", "p0", "r0", "Lkotlin/Pair;", "L0", "Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", "A", "buffer", "", "separator", "prefix", "postfix", "limit", "truncated", "e0", "(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lw7/l;)Ljava/lang/Appendable;", "", "g0", "Lkotlin/sequences/h;", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/collections/CollectionsKt")
class CollectionsKt___CollectionsKt
  extends c0
{
  public static <T> List<T> A0(List<? extends T> paramList, int paramInt)
  {
    r.f(paramList, "<this>");
    int i;
    if (paramInt >= 0) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0)
    {
      if (paramInt == 0) {
        return t.j();
      }
      i = paramList.size();
      if (paramInt >= i) {
        return t.E0(paramList);
      }
      if (paramInt == 1) {
        return t.e(t.j0(paramList));
      }
      ArrayList localArrayList = new ArrayList(paramInt);
      if ((paramList instanceof RandomAccess)) {
        for (paramInt = i - paramInt; paramInt < i; paramInt++) {
          localArrayList.add(paramList.get(paramInt));
        }
      }
      paramList = paramList.listIterator(i - paramInt);
      while (paramList.hasNext()) {
        localArrayList.add(paramList.next());
      }
      return localArrayList;
    }
    paramList = new StringBuilder();
    paramList.append("Requested element count ");
    paramList.append(paramInt);
    paramList.append(" is less than zero.");
    throw new IllegalArgumentException(paramList.toString().toString());
  }
  
  public static final <T, C extends Collection<? super T>> C B0(Iterable<? extends T> paramIterable, C paramC)
  {
    r.f(paramIterable, "<this>");
    r.f(paramC, "destination");
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext()) {
      paramC.add(paramIterable.next());
    }
    return paramC;
  }
  
  public static final <T> HashSet<T> C0(Iterable<? extends T> paramIterable)
  {
    r.f(paramIterable, "<this>");
    return (HashSet)B0(paramIterable, new HashSet(m0.e(t.u(paramIterable, 12))));
  }
  
  public static int[] D0(Collection<Integer> paramCollection)
  {
    r.f(paramCollection, "<this>");
    int[] arrayOfInt = new int[paramCollection.size()];
    paramCollection = paramCollection.iterator();
    for (int i = 0; paramCollection.hasNext(); i++) {
      arrayOfInt[i] = ((Number)paramCollection.next()).intValue();
    }
    return arrayOfInt;
  }
  
  public static <T> List<T> E0(Iterable<? extends T> paramIterable)
  {
    r.f(paramIterable, "<this>");
    if ((paramIterable instanceof Collection))
    {
      Collection localCollection = (Collection)paramIterable;
      int i = localCollection.size();
      if (i != 0)
      {
        if (i != 1)
        {
          paramIterable = t.G0(localCollection);
        }
        else
        {
          if ((paramIterable instanceof List)) {
            paramIterable = ((List)paramIterable).get(0);
          } else {
            paramIterable = paramIterable.iterator().next();
          }
          paramIterable = t.e(paramIterable);
        }
      }
      else {
        paramIterable = t.j();
      }
      return paramIterable;
    }
    return t.q(F0(paramIterable));
  }
  
  public static final <T> List<T> F0(Iterable<? extends T> paramIterable)
  {
    r.f(paramIterable, "<this>");
    if ((paramIterable instanceof Collection)) {
      return t.G0((Collection)paramIterable);
    }
    return (List)B0(paramIterable, new ArrayList());
  }
  
  public static <T> List<T> G0(Collection<? extends T> paramCollection)
  {
    r.f(paramCollection, "<this>");
    return new ArrayList(paramCollection);
  }
  
  public static <T> Set<T> H0(Iterable<? extends T> paramIterable)
  {
    r.f(paramIterable, "<this>");
    if ((paramIterable instanceof Collection)) {
      paramIterable = new LinkedHashSet((Collection)paramIterable);
    } else {
      paramIterable = (Set)B0(paramIterable, new LinkedHashSet());
    }
    return paramIterable;
  }
  
  public static <T> Set<T> I0(Iterable<? extends T> paramIterable)
  {
    r.f(paramIterable, "<this>");
    if ((paramIterable instanceof Collection))
    {
      Collection localCollection = (Collection)paramIterable;
      int i = localCollection.size();
      if (i != 0)
      {
        if (i != 1)
        {
          paramIterable = (Set)B0(paramIterable, new LinkedHashSet(m0.e(localCollection.size())));
        }
        else
        {
          if ((paramIterable instanceof List)) {
            paramIterable = ((List)paramIterable).get(0);
          } else {
            paramIterable = paramIterable.iterator().next();
          }
          paramIterable = u0.c(paramIterable);
        }
      }
      else {
        paramIterable = u0.d();
      }
      return paramIterable;
    }
    return w0.f((Set)B0(paramIterable, new LinkedHashSet()));
  }
  
  public static <T> Set<T> J0(Iterable<? extends T> paramIterable1, Iterable<? extends T> paramIterable2)
  {
    r.f(paramIterable1, "<this>");
    r.f(paramIterable2, "other");
    paramIterable1 = t.H0(paramIterable1);
    t.A(paramIterable1, paramIterable2);
    return paramIterable1;
  }
  
  public static <T> Iterable<g0<T>> K0(Iterable<? extends T> paramIterable)
  {
    r.f(paramIterable, "<this>");
    new h0(new Lambda(paramIterable)
    {
      public final Iterator<T> invoke()
      {
        return this.$this_withIndex.iterator();
      }
    });
  }
  
  public static <T, R> List<Pair<T, R>> L0(Iterable<? extends T> paramIterable, Iterable<? extends R> paramIterable1)
  {
    r.f(paramIterable, "<this>");
    r.f(paramIterable1, "other");
    Iterator localIterator1 = paramIterable.iterator();
    Iterator localIterator2 = paramIterable1.iterator();
    paramIterable = new ArrayList(Math.min(t.u(paramIterable, 10), t.u(paramIterable1, 10)));
    while ((localIterator1.hasNext()) && (localIterator2.hasNext())) {
      paramIterable.add(kotlin.k.a(localIterator1.next(), localIterator2.next()));
    }
    return paramIterable;
  }
  
  public static <T> boolean Q(Iterable<? extends T> paramIterable, l<? super T, Boolean> paraml)
  {
    r.f(paramIterable, "<this>");
    r.f(paraml, "predicate");
    if (((paramIterable instanceof Collection)) && (((Collection)paramIterable).isEmpty())) {
      return true;
    }
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext()) {
      if (!((Boolean)paraml.invoke(paramIterable.next())).booleanValue()) {
        return false;
      }
    }
    return true;
  }
  
  public static <T> h<T> R(Iterable<? extends T> paramIterable)
  {
    r.f(paramIterable, "<this>");
    return new a(paramIterable);
  }
  
  public static <T> boolean S(Iterable<? extends T> paramIterable, T paramT)
  {
    r.f(paramIterable, "<this>");
    if ((paramIterable instanceof Collection)) {
      return ((Collection)paramIterable).contains(paramT);
    }
    boolean bool;
    if (c0(paramIterable, paramT) >= 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static <T> List<T> T(Iterable<? extends T> paramIterable)
  {
    r.f(paramIterable, "<this>");
    return t.E0(t.H0(paramIterable));
  }
  
  public static <T> List<T> U(Iterable<? extends T> paramIterable, int paramInt)
  {
    r.f(paramIterable, "<this>");
    int i = 0;
    int j;
    if (paramInt >= 0) {
      j = 1;
    } else {
      j = 0;
    }
    if (j != 0)
    {
      if (paramInt == 0) {
        return t.E0(paramIterable);
      }
      Object localObject1;
      Object localObject2;
      if ((paramIterable instanceof Collection))
      {
        Collection localCollection = (Collection)paramIterable;
        j = localCollection.size() - paramInt;
        if (j <= 0) {
          return t.j();
        }
        if (j == 1) {
          return t.e(t.i0(paramIterable));
        }
        localObject1 = new ArrayList(j);
        localObject2 = localObject1;
        if ((paramIterable instanceof List))
        {
          if ((paramIterable instanceof RandomAccess))
          {
            j = localCollection.size();
            while (paramInt < j)
            {
              ((ArrayList)localObject1).add(((List)paramIterable).get(paramInt));
              paramInt++;
            }
          }
          paramIterable = ((List)paramIterable).listIterator(paramInt);
          while (paramIterable.hasNext()) {
            ((ArrayList)localObject1).add(paramIterable.next());
          }
          return localObject1;
        }
      }
      else
      {
        localObject2 = new ArrayList();
      }
      paramIterable = paramIterable.iterator();
      j = i;
      while (paramIterable.hasNext())
      {
        localObject1 = paramIterable.next();
        if (j >= paramInt) {
          ((ArrayList)localObject2).add(localObject1);
        } else {
          j++;
        }
      }
      return t.q((List)localObject2);
    }
    paramIterable = new StringBuilder();
    paramIterable.append("Requested element count ");
    paramIterable.append(paramInt);
    paramIterable.append(" is less than zero.");
    throw new IllegalArgumentException(paramIterable.toString().toString());
  }
  
  public static <T> List<T> V(List<? extends T> paramList, int paramInt)
  {
    r.f(paramList, "<this>");
    int i;
    if (paramInt >= 0) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      return z0(paramList, g.c(paramList.size() - paramInt, 0));
    }
    paramList = new StringBuilder();
    paramList.append("Requested element count ");
    paramList.append(paramInt);
    paramList.append(" is less than zero.");
    throw new IllegalArgumentException(paramList.toString().toString());
  }
  
  public static <T> List<T> W(Iterable<? extends T> paramIterable, l<? super T, Boolean> paraml)
  {
    r.f(paramIterable, "<this>");
    r.f(paraml, "predicate");
    ArrayList localArrayList = new ArrayList();
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      Object localObject = paramIterable.next();
      if (((Boolean)paraml.invoke(localObject)).booleanValue()) {
        localArrayList.add(localObject);
      }
    }
    return localArrayList;
  }
  
  public static <T> T X(Iterable<? extends T> paramIterable)
  {
    r.f(paramIterable, "<this>");
    if ((paramIterable instanceof List)) {
      return t.Y((List)paramIterable);
    }
    paramIterable = paramIterable.iterator();
    if (paramIterable.hasNext()) {
      return paramIterable.next();
    }
    throw new NoSuchElementException("Collection is empty.");
  }
  
  public static <T> T Y(List<? extends T> paramList)
  {
    r.f(paramList, "<this>");
    if (!paramList.isEmpty()) {
      return paramList.get(0);
    }
    throw new NoSuchElementException("List is empty.");
  }
  
  public static <T> T Z(Iterable<? extends T> paramIterable)
  {
    r.f(paramIterable, "<this>");
    if ((paramIterable instanceof List))
    {
      paramIterable = (List)paramIterable;
      if (paramIterable.isEmpty()) {
        return null;
      }
      return paramIterable.get(0);
    }
    paramIterable = paramIterable.iterator();
    if (!paramIterable.hasNext()) {
      return null;
    }
    return paramIterable.next();
  }
  
  public static <T> T a0(List<? extends T> paramList)
  {
    r.f(paramList, "<this>");
    if (paramList.isEmpty()) {
      paramList = null;
    } else {
      paramList = paramList.get(0);
    }
    return paramList;
  }
  
  public static <T> T b0(List<? extends T> paramList, int paramInt)
  {
    r.f(paramList, "<this>");
    if ((paramInt >= 0) && (paramInt <= t.l(paramList))) {
      paramList = paramList.get(paramInt);
    } else {
      paramList = null;
    }
    return paramList;
  }
  
  public static final <T> int c0(Iterable<? extends T> paramIterable, T paramT)
  {
    r.f(paramIterable, "<this>");
    if ((paramIterable instanceof List)) {
      return ((List)paramIterable).indexOf(paramT);
    }
    int i = 0;
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
    {
      paramIterable = localIterator.next();
      if (i < 0) {
        t.t();
      }
      if (r.a(paramT, paramIterable)) {
        return i;
      }
      i++;
    }
    return -1;
  }
  
  public static <T> Set<T> d0(Iterable<? extends T> paramIterable1, Iterable<? extends T> paramIterable2)
  {
    r.f(paramIterable1, "<this>");
    r.f(paramIterable2, "other");
    paramIterable1 = t.H0(paramIterable1);
    a0.H(paramIterable1, paramIterable2);
    return paramIterable1;
  }
  
  public static final <T, A extends Appendable> A e0(Iterable<? extends T> paramIterable, A paramA, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt, CharSequence paramCharSequence4, l<? super T, ? extends CharSequence> paraml)
  {
    r.f(paramIterable, "<this>");
    r.f(paramA, "buffer");
    r.f(paramCharSequence1, "separator");
    r.f(paramCharSequence2, "prefix");
    r.f(paramCharSequence3, "postfix");
    r.f(paramCharSequence4, "truncated");
    paramA.append(paramCharSequence2);
    paramIterable = paramIterable.iterator();
    int i = 0;
    int j;
    for (;;)
    {
      j = i;
      if (!paramIterable.hasNext()) {
        break;
      }
      paramCharSequence2 = paramIterable.next();
      i++;
      if (i > 1) {
        paramA.append(paramCharSequence1);
      }
      if (paramInt >= 0)
      {
        j = i;
        if (i > paramInt) {
          break;
        }
      }
      kotlin.text.k.a(paramA, paramCharSequence2, paraml);
    }
    if ((paramInt >= 0) && (j > paramInt)) {
      paramA.append(paramCharSequence4);
    }
    paramA.append(paramCharSequence3);
    return paramA;
  }
  
  public static final <T> String g0(Iterable<? extends T> paramIterable, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt, CharSequence paramCharSequence4, l<? super T, ? extends CharSequence> paraml)
  {
    r.f(paramIterable, "<this>");
    r.f(paramCharSequence1, "separator");
    r.f(paramCharSequence2, "prefix");
    r.f(paramCharSequence3, "postfix");
    r.f(paramCharSequence4, "truncated");
    paramIterable = ((StringBuilder)e0(paramIterable, new StringBuilder(), paramCharSequence1, paramCharSequence2, paramCharSequence3, paramInt, paramCharSequence4, paraml)).toString();
    r.e(paramIterable, "joinTo(StringBuilder(), …ed, transform).toString()");
    return paramIterable;
  }
  
  public static <T> T i0(Iterable<? extends T> paramIterable)
  {
    r.f(paramIterable, "<this>");
    if ((paramIterable instanceof List)) {
      return t.j0((List)paramIterable);
    }
    Iterator localIterator = paramIterable.iterator();
    if (localIterator.hasNext())
    {
      for (paramIterable = localIterator.next(); localIterator.hasNext(); paramIterable = localIterator.next()) {}
      return paramIterable;
    }
    throw new NoSuchElementException("Collection is empty.");
  }
  
  public static <T> T j0(List<? extends T> paramList)
  {
    r.f(paramList, "<this>");
    if (!paramList.isEmpty()) {
      return paramList.get(t.l(paramList));
    }
    throw new NoSuchElementException("List is empty.");
  }
  
  public static <T> T k0(Iterable<? extends T> paramIterable)
  {
    r.f(paramIterable, "<this>");
    boolean bool = paramIterable instanceof List;
    Iterator localIterator = null;
    if (bool)
    {
      paramIterable = (List)paramIterable;
      if (paramIterable.isEmpty()) {
        paramIterable = localIterator;
      } else {
        paramIterable = paramIterable.get(paramIterable.size() - 1);
      }
      return paramIterable;
    }
    localIterator = paramIterable.iterator();
    if (!localIterator.hasNext()) {
      return null;
    }
    for (paramIterable = localIterator.next(); localIterator.hasNext(); paramIterable = localIterator.next()) {}
    return paramIterable;
  }
  
  public static <T> T l0(List<? extends T> paramList)
  {
    r.f(paramList, "<this>");
    if (paramList.isEmpty()) {
      paramList = null;
    } else {
      paramList = paramList.get(paramList.size() - 1);
    }
    return paramList;
  }
  
  public static <T, R> List<R> m0(Iterable<? extends T> paramIterable, l<? super T, ? extends R> paraml)
  {
    r.f(paramIterable, "<this>");
    r.f(paraml, "transform");
    ArrayList localArrayList = new ArrayList(t.u(paramIterable, 10));
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext()) {
      localArrayList.add(paraml.invoke(paramIterable.next()));
    }
    return localArrayList;
  }
  
  public static <T extends Comparable<? super T>> T n0(Iterable<? extends T> paramIterable)
  {
    r.f(paramIterable, "<this>");
    Iterator localIterator = paramIterable.iterator();
    if (!localIterator.hasNext()) {
      return null;
    }
    paramIterable = (Comparable)localIterator.next();
    while (localIterator.hasNext())
    {
      Comparable localComparable = (Comparable)localIterator.next();
      if (paramIterable.compareTo(localComparable) > 0) {
        paramIterable = localComparable;
      }
    }
    return paramIterable;
  }
  
  public static <T> List<T> o0(Iterable<? extends T> paramIterable, T paramT)
  {
    r.f(paramIterable, "<this>");
    ArrayList localArrayList = new ArrayList(t.u(paramIterable, 10));
    paramIterable = paramIterable.iterator();
    int i = 0;
    while (paramIterable.hasNext())
    {
      Object localObject = paramIterable.next();
      int j = 1;
      int k = i;
      int m = j;
      if (i == 0)
      {
        k = i;
        m = j;
        if (r.a(localObject, paramT))
        {
          k = 1;
          m = 0;
        }
      }
      i = k;
      if (m != 0)
      {
        localArrayList.add(localObject);
        i = k;
      }
    }
    return localArrayList;
  }
  
  public static <T> List<T> p0(Iterable<? extends T> paramIterable1, Iterable<? extends T> paramIterable2)
  {
    r.f(paramIterable1, "<this>");
    r.f(paramIterable2, "elements");
    if ((paramIterable1 instanceof Collection)) {
      return t.r0((Collection)paramIterable1, paramIterable2);
    }
    ArrayList localArrayList = new ArrayList();
    t.A(localArrayList, paramIterable1);
    t.A(localArrayList, paramIterable2);
    return localArrayList;
  }
  
  public static <T> List<T> q0(Iterable<? extends T> paramIterable, T paramT)
  {
    r.f(paramIterable, "<this>");
    if ((paramIterable instanceof Collection)) {
      return t.s0((Collection)paramIterable, paramT);
    }
    ArrayList localArrayList = new ArrayList();
    t.A(localArrayList, paramIterable);
    localArrayList.add(paramT);
    return localArrayList;
  }
  
  public static <T> List<T> r0(Collection<? extends T> paramCollection, Iterable<? extends T> paramIterable)
  {
    r.f(paramCollection, "<this>");
    r.f(paramIterable, "elements");
    if ((paramIterable instanceof Collection))
    {
      int i = paramCollection.size();
      Collection localCollection = (Collection)paramIterable;
      paramIterable = new ArrayList(i + localCollection.size());
      paramIterable.addAll(paramCollection);
      paramIterable.addAll(localCollection);
      return paramIterable;
    }
    paramCollection = new ArrayList(paramCollection);
    t.A(paramCollection, paramIterable);
    return paramCollection;
  }
  
  public static <T> List<T> s0(Collection<? extends T> paramCollection, T paramT)
  {
    r.f(paramCollection, "<this>");
    ArrayList localArrayList = new ArrayList(paramCollection.size() + 1);
    localArrayList.addAll(paramCollection);
    localArrayList.add(paramT);
    return localArrayList;
  }
  
  public static <T> T t0(Iterable<? extends T> paramIterable)
  {
    r.f(paramIterable, "<this>");
    if ((paramIterable instanceof List)) {
      return t.u0((List)paramIterable);
    }
    paramIterable = paramIterable.iterator();
    if (paramIterable.hasNext())
    {
      Object localObject = paramIterable.next();
      if (!paramIterable.hasNext()) {
        return localObject;
      }
      throw new IllegalArgumentException("Collection has more than one element.");
    }
    throw new NoSuchElementException("Collection is empty.");
  }
  
  public static <T> T u0(List<? extends T> paramList)
  {
    r.f(paramList, "<this>");
    int i = paramList.size();
    if (i != 0)
    {
      if (i == 1) {
        return paramList.get(0);
      }
      throw new IllegalArgumentException("List has more than one element.");
    }
    throw new NoSuchElementException("List is empty.");
  }
  
  public static <T> T v0(Iterable<? extends T> paramIterable)
  {
    r.f(paramIterable, "<this>");
    boolean bool = paramIterable instanceof List;
    Iterator localIterator = null;
    if (bool)
    {
      List localList = (List)paramIterable;
      paramIterable = localIterator;
      if (localList.size() == 1) {
        paramIterable = localList.get(0);
      }
      return paramIterable;
    }
    localIterator = paramIterable.iterator();
    if (!localIterator.hasNext()) {
      return null;
    }
    paramIterable = localIterator.next();
    if (localIterator.hasNext()) {
      return null;
    }
    return paramIterable;
  }
  
  public static <T> T w0(List<? extends T> paramList)
  {
    r.f(paramList, "<this>");
    if (paramList.size() == 1) {
      paramList = paramList.get(0);
    } else {
      paramList = null;
    }
    return paramList;
  }
  
  public static <T extends Comparable<? super T>> List<T> x0(Iterable<? extends T> paramIterable)
  {
    r.f(paramIterable, "<this>");
    if ((paramIterable instanceof Collection))
    {
      Collection localCollection = (Collection)paramIterable;
      if (localCollection.size() <= 1) {
        return t.E0(paramIterable);
      }
      paramIterable = localCollection.toArray(new Comparable[0]);
      r.d(paramIterable, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
      r.d(paramIterable, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.CollectionsKt___CollectionsKt.sorted>");
      paramIterable = (Comparable[])paramIterable;
      m.p(paramIterable);
      return j.c(paramIterable);
    }
    paramIterable = F0(paramIterable);
    t.y(paramIterable);
    return paramIterable;
  }
  
  public static <T> List<T> y0(Iterable<? extends T> paramIterable, Comparator<? super T> paramComparator)
  {
    r.f(paramIterable, "<this>");
    r.f(paramComparator, "comparator");
    if ((paramIterable instanceof Collection))
    {
      Collection localCollection = (Collection)paramIterable;
      if (localCollection.size() <= 1) {
        return t.E0(paramIterable);
      }
      paramIterable = localCollection.toArray(new Object[0]);
      r.d(paramIterable, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
      r.d(paramIterable, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.CollectionsKt___CollectionsKt.sortedWith>");
      m.q(paramIterable, paramComparator);
      return j.c(paramIterable);
    }
    paramIterable = F0(paramIterable);
    t.z(paramIterable, paramComparator);
    return paramIterable;
  }
  
  public static final <T> List<T> z0(Iterable<? extends T> paramIterable, int paramInt)
  {
    r.f(paramIterable, "<this>");
    int i = 0;
    int j;
    if (paramInt >= 0) {
      j = 1;
    } else {
      j = 0;
    }
    if (j != 0)
    {
      if (paramInt == 0) {
        return t.j();
      }
      if ((paramIterable instanceof Collection))
      {
        if (paramInt >= ((Collection)paramIterable).size()) {
          return t.E0(paramIterable);
        }
        if (paramInt == 1) {
          return t.e(t.X(paramIterable));
        }
      }
      ArrayList localArrayList = new ArrayList(paramInt);
      paramIterable = paramIterable.iterator();
      j = i;
      do
      {
        if (!paramIterable.hasNext()) {
          break;
        }
        localArrayList.add(paramIterable.next());
        i = j + 1;
        j = i;
      } while (i != paramInt);
      return t.q(localArrayList);
    }
    paramIterable = new StringBuilder();
    paramIterable.append("Requested element count ");
    paramIterable.append(paramInt);
    paramIterable.append(" is less than zero.");
    throw new IllegalArgumentException(paramIterable.toString().toString());
  }
  
  @Metadata(bv={}, d1={""}, d2={"kotlin/collections/CollectionsKt___CollectionsKt$a", "Lkotlin/sequences/h;", "", "iterator", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a
    implements h<T>
  {
    public a(Iterable paramIterable) {}
    
    public Iterator<T> iterator()
    {
      return this.a.iterator();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.CollectionsKt___CollectionsKt
 * JD-Core Version:    0.7.0.1
 */