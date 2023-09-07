package kotlin.jvm.internal;

import java.util.Iterator;
import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"T", "", "array", "", "a", "([Ljava/lang/Object;)Ljava/util/Iterator;", "kotlin-stdlib"}, k=2, mv={1, 7, 1})
public final class h
{
  public static final <T> Iterator<T> a(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "array");
    return new g(paramArrayOfT);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.h
 * JD-Core Version:    0.7.0.1
 */