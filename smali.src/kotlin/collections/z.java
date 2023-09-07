package kotlin.collections;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"", "T", "", "Lkotlin/u;", "y", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "z", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/collections/CollectionsKt")
class z
  extends y
{
  public static <T extends Comparable<? super T>> void y(List<T> paramList)
  {
    r.f(paramList, "<this>");
    if (paramList.size() > 1) {
      Collections.sort(paramList);
    }
  }
  
  public static <T> void z(List<T> paramList, Comparator<? super T> paramComparator)
  {
    r.f(paramList, "<this>");
    r.f(paramComparator, "comparator");
    if (paramList.size() > 1) {
      Collections.sort(paramList, paramComparator);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.z
 * JD-Core Version:    0.7.0.1
 */