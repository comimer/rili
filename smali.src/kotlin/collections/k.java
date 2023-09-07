package kotlin.collections;

import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"", "toIndex", "size", "Lkotlin/u;", "a", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/collections/ArraysKt")
class k
{
  public static final void a(int paramInt1, int paramInt2)
  {
    if (paramInt1 <= paramInt2) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("toIndex (");
    localStringBuilder.append(paramInt1);
    localStringBuilder.append(") is greater than size (");
    localStringBuilder.append(paramInt2);
    localStringBuilder.append(").");
    throw new IndexOutOfBoundsException(localStringBuilder.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.k
 * JD-Core Version:    0.7.0.1
 */