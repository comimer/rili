package androidx.databinding;

import java.util.ArrayList;
import java.util.List;

public class c<C, T, A>
  implements Cloneable
{
  private List<C> a = new ArrayList();
  private long b = 0L;
  private long[] c;
  private int d;
  private final a<C, T, A> e;
  
  public c(a<C, T, A> parama)
  {
    this.e = parama;
  }
  
  private boolean d(int paramInt)
  {
    boolean bool1 = true;
    boolean bool2 = true;
    if (paramInt < 64)
    {
      if ((1L << paramInt & this.b) == 0L) {
        bool2 = false;
      }
      return bool2;
    }
    long[] arrayOfLong = this.c;
    if (arrayOfLong == null) {
      return false;
    }
    int i = paramInt / 64 - 1;
    if (i >= arrayOfLong.length) {
      return false;
    }
    if ((1L << paramInt % 64 & arrayOfLong[i]) != 0L) {
      bool2 = bool1;
    } else {
      bool2 = false;
    }
    return bool2;
  }
  
  private void f(T paramT, int paramInt1, A paramA, int paramInt2, int paramInt3, long paramLong)
  {
    long l = 1L;
    while (paramInt2 < paramInt3)
    {
      if ((paramLong & l) == 0L) {
        this.e.a(this.a.get(paramInt2), paramT, paramInt1, paramA);
      }
      l <<= 1;
      paramInt2++;
    }
  }
  
  private void g(T paramT, int paramInt, A paramA)
  {
    f(paramT, paramInt, paramA, 0, Math.min(64, this.a.size()), this.b);
  }
  
  private void h(T paramT, int paramInt, A paramA)
  {
    int i = this.a.size();
    long[] arrayOfLong = this.c;
    int j;
    if (arrayOfLong == null) {
      j = -1;
    } else {
      j = arrayOfLong.length - 1;
    }
    i(paramT, paramInt, paramA, j);
    f(paramT, paramInt, paramA, (j + 2) * 64, i, 0L);
  }
  
  private void i(T paramT, int paramInt1, A paramA, int paramInt2)
  {
    if (paramInt2 < 0)
    {
      g(paramT, paramInt1, paramA);
    }
    else
    {
      long l = this.c[paramInt2];
      int i = (paramInt2 + 1) * 64;
      int j = Math.min(this.a.size(), i + 64);
      i(paramT, paramInt1, paramA, paramInt2 - 1);
      f(paramT, paramInt1, paramA, i, j, l);
    }
  }
  
  private void l(int paramInt, long paramLong)
  {
    int i = paramInt + 64 - 1;
    long l = -9223372036854775808L;
    while (i >= paramInt)
    {
      if ((paramLong & l) != 0L) {
        this.a.remove(i);
      }
      l >>>= 1;
      i--;
    }
  }
  
  private void n(int paramInt)
  {
    if (paramInt < 64)
    {
      this.b = (1L << paramInt | this.b);
    }
    else
    {
      int i = paramInt / 64 - 1;
      long[] arrayOfLong1 = this.c;
      if (arrayOfLong1 == null)
      {
        this.c = new long[this.a.size() / 64];
      }
      else if (arrayOfLong1.length <= i)
      {
        arrayOfLong1 = new long[this.a.size() / 64];
        long[] arrayOfLong2 = this.c;
        System.arraycopy(arrayOfLong2, 0, arrayOfLong1, 0, arrayOfLong2.length);
        this.c = arrayOfLong1;
      }
      arrayOfLong1 = this.c;
      arrayOfLong1[i] = (1L << paramInt % 64 | arrayOfLong1[i]);
    }
  }
  
  public void a(C paramC)
  {
    if (paramC != null) {
      try
      {
        int i = this.a.lastIndexOf(paramC);
        if ((i < 0) || (d(i))) {
          this.a.add(paramC);
        }
        return;
      }
      finally
      {
        break label59;
      }
    }
    paramC = new java/lang/IllegalArgumentException;
    paramC.<init>("callback cannot be null");
    throw paramC;
    label59:
    throw paramC;
  }
  
  /* Error */
  public c<C, T, A> b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 117	java/lang/Object:clone	()Ljava/lang/Object;
    //   6: checkcast 2	androidx/databinding/c
    //   9: astore_1
    //   10: aload_1
    //   11: lconst_0
    //   12: putfield 33	androidx/databinding/c:b	J
    //   15: aload_1
    //   16: aconst_null
    //   17: putfield 41	androidx/databinding/c:c	[J
    //   20: iconst_0
    //   21: istore_2
    //   22: aload_1
    //   23: iconst_0
    //   24: putfield 119	androidx/databinding/c:d	I
    //   27: new 28	java/util/ArrayList
    //   30: astore_3
    //   31: aload_3
    //   32: invokespecial 29	java/util/ArrayList:<init>	()V
    //   35: aload_1
    //   36: aload_3
    //   37: putfield 31	androidx/databinding/c:a	Ljava/util/List;
    //   40: aload_0
    //   41: getfield 31	androidx/databinding/c:a	Ljava/util/List;
    //   44: invokeinterface 59 1 0
    //   49: istore 4
    //   51: aload_1
    //   52: astore_3
    //   53: iload_2
    //   54: iload 4
    //   56: if_icmpge +54 -> 110
    //   59: aload_0
    //   60: iload_2
    //   61: invokespecial 98	androidx/databinding/c:d	(I)Z
    //   64: ifne +23 -> 87
    //   67: aload_1
    //   68: getfield 31	androidx/databinding/c:a	Ljava/util/List;
    //   71: aload_0
    //   72: getfield 31	androidx/databinding/c:a	Ljava/util/List;
    //   75: iload_2
    //   76: invokeinterface 49 2 0
    //   81: invokeinterface 102 2 0
    //   86: pop
    //   87: iinc 2 1
    //   90: goto -39 -> 51
    //   93: astore_3
    //   94: goto +10 -> 104
    //   97: astore_1
    //   98: goto +16 -> 114
    //   101: astore_3
    //   102: aconst_null
    //   103: astore_1
    //   104: aload_3
    //   105: invokevirtual 124	java/lang/Throwable:printStackTrace	()V
    //   108: aload_1
    //   109: astore_3
    //   110: aload_0
    //   111: monitorexit
    //   112: aload_3
    //   113: areturn
    //   114: aload_0
    //   115: monitorexit
    //   116: aload_1
    //   117: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	118	0	this	c
    //   9	59	1	localc	c
    //   97	1	1	localObject1	Object
    //   103	14	1	localObject2	Object
    //   21	67	2	i	int
    //   30	23	3	localObject3	Object
    //   93	1	3	localCloneNotSupportedException1	java.lang.CloneNotSupportedException
    //   101	4	3	localCloneNotSupportedException2	java.lang.CloneNotSupportedException
    //   109	4	3	localObject4	Object
    //   49	8	4	j	int
    // Exception table:
    //   from	to	target	type
    //   10	20	93	java/lang/CloneNotSupportedException
    //   22	51	93	java/lang/CloneNotSupportedException
    //   59	87	93	java/lang/CloneNotSupportedException
    //   2	10	97	finally
    //   10	20	97	finally
    //   22	51	97	finally
    //   59	87	97	finally
    //   104	108	97	finally
    //   2	10	101	java/lang/CloneNotSupportedException
  }
  
  public void e(T paramT, int paramInt, A paramA)
  {
    try
    {
      this.d += 1;
      h(paramT, paramInt, paramA);
      paramInt = this.d - 1;
      this.d = paramInt;
      if (paramInt == 0)
      {
        paramT = this.c;
        if (paramT != null) {
          for (paramInt = paramT.length - 1; paramInt >= 0; paramInt--)
          {
            l = this.c[paramInt];
            if (l != 0L)
            {
              l((paramInt + 1) * 64, l);
              this.c[paramInt] = 0L;
            }
          }
        }
        long l = this.b;
        if (l != 0L)
        {
          l(0, l);
          this.b = 0L;
        }
      }
      return;
    }
    finally {}
  }
  
  public void k(C paramC)
  {
    try
    {
      if (this.d == 0)
      {
        this.a.remove(paramC);
      }
      else
      {
        int i = this.a.lastIndexOf(paramC);
        if (i >= 0) {
          n(i);
        }
      }
      return;
    }
    finally {}
  }
  
  public static abstract class a<C, T, A>
  {
    public abstract void a(C paramC, T paramT, int paramInt, A paramA);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.c
 * JD-Core Version:    0.7.0.1
 */