package b8;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"", "isPositive", "", "step", "Lkotlin/u;", "a", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/ranges/RangesKt")
class h
{
  public static final void a(boolean paramBoolean, Number paramNumber)
  {
    r.f(paramNumber, "step");
    if (paramBoolean) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Step must be positive, was: ");
    localStringBuilder.append(paramNumber);
    localStringBuilder.append('.');
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b8.h
 * JD-Core Version:    0.7.0.1
 */