package kotlin.collections;

import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/i;", "E", "Lkotlin/collections/e;", "a", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class i<E>
  extends e<E>
{
  public static final a a = new a(null);
  private static final Object[] b = new Object[0];
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/i$a;", "", "", "oldCapacity", "minCapacity", "a", "(II)I", "defaultMinCapacity", "I", "", "emptyElementData", "[Ljava/lang/Object;", "maxArraySize", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a
  {
    public final int a(int paramInt1, int paramInt2)
    {
      int i = paramInt1 + (paramInt1 >> 1);
      paramInt1 = i;
      if (i - paramInt2 < 0) {
        paramInt1 = paramInt2;
      }
      i = paramInt1;
      if (paramInt1 - 2147483639 > 0) {
        if (paramInt2 > 2147483639) {
          i = 2147483647;
        } else {
          i = 2147483639;
        }
      }
      return i;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.i
 * JD-Core Version:    0.7.0.1
 */