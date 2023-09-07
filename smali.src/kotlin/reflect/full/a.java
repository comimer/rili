package kotlin.reflect.full;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.reflect.d;
import kotlin.reflect.p;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/reflect/d;", "", "a", "(Lkotlin/reflect/d;)Ljava/util/List;", "getSuperclasses$annotations", "(Lkotlin/reflect/d;)V", "superclasses", "kotlin-reflection"}, k=2, mv={1, 7, 1})
public final class a
{
  public static final List<d<?>> a(d<?> paramd)
  {
    r.f(paramd, "<this>");
    paramd = paramd.e();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramd.iterator();
    while (localIterator.hasNext())
    {
      paramd = ((p)localIterator.next()).h();
      if ((paramd instanceof d)) {
        paramd = (d)paramd;
      } else {
        paramd = null;
      }
      if (paramd != null) {
        localArrayList.add(paramd);
      }
    }
    return localArrayList;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.reflect.full.a
 * JD-Core Version:    0.7.0.1
 */