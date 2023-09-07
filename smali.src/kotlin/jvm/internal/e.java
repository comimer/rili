package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.f0;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/jvm/internal/e;", "Lkotlin/collections/f0;", "", "hasNext", "", "b", "", "a", "[F", "array", "", "I", "index", "<init>", "([F)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class e
  extends f0
{
  private final float[] a;
  private int b;
  
  public e(float[] paramArrayOfFloat)
  {
    this.a = paramArrayOfFloat;
  }
  
  public float b()
  {
    try
    {
      float[] arrayOfFloat = this.a;
      int i = this.b;
      this.b = (i + 1);
      float f = arrayOfFloat[i];
      return f;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
      this.b -= 1;
      throw new NoSuchElementException(localArrayIndexOutOfBoundsException.getMessage());
    }
  }
  
  public boolean hasNext()
  {
    boolean bool;
    if (this.b < this.a.length) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.e
 * JD-Core Version:    0.7.0.1
 */