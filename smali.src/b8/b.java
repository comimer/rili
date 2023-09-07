package b8;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.j0;

@Metadata(bv={}, d1={""}, d2={"Lb8/b;", "Lkotlin/collections/j0;", "", "hasNext", "", "nextInt", "first", "last", "step", "<init>", "(III)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class b
  extends j0
{
  private final int a;
  private final int b;
  private boolean c;
  private int d;
  
  public b(int paramInt1, int paramInt2, int paramInt3)
  {
    this.a = paramInt3;
    this.b = paramInt2;
    boolean bool = true;
    if (paramInt3 > 0 ? paramInt1 > paramInt2 : paramInt1 < paramInt2) {
      bool = false;
    }
    this.c = bool;
    if (!bool) {
      paramInt1 = paramInt2;
    }
    this.d = paramInt1;
  }
  
  public boolean hasNext()
  {
    return this.c;
  }
  
  public int nextInt()
  {
    int i = this.d;
    if (i == this.b)
    {
      if (this.c) {
        this.c = false;
      } else {
        throw new NoSuchElementException();
      }
    }
    else {
      this.d = (this.a + i);
    }
    return i;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b8.b
 * JD-Core Version:    0.7.0.1
 */