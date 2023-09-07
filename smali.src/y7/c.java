package y7;

import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"", "", "a", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/math/MathKt")
class c
  extends b
{
  public static int a(float paramFloat)
  {
    if (!Float.isNaN(paramFloat)) {
      return Math.round(paramFloat);
    }
    throw new IllegalArgumentException("Cannot round NaN value.");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y7.c
 * JD-Core Version:    0.7.0.1
 */