package androidx.core.os;

import android.os.CancellationSignal;

public final class e
{
  private boolean a;
  private b b;
  private Object c;
  private boolean d;
  
  private void d()
  {
    for (;;)
    {
      if (this.d) {}
      try
      {
        wait();
      }
      catch (InterruptedException localInterruptedException) {}
      return;
    }
  }
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 29	androidx/core/os/e:a	Z
    //   6: ifeq +6 -> 12
    //   9: aload_0
    //   10: monitorexit
    //   11: return
    //   12: aload_0
    //   13: iconst_1
    //   14: putfield 29	androidx/core/os/e:a	Z
    //   17: aload_0
    //   18: iconst_1
    //   19: putfield 24	androidx/core/os/e:d	Z
    //   22: aload_0
    //   23: getfield 31	androidx/core/os/e:b	Landroidx/core/os/e$b;
    //   26: astore_1
    //   27: aload_0
    //   28: getfield 33	androidx/core/os/e:c	Ljava/lang/Object;
    //   31: astore_2
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_1
    //   35: ifnull +16 -> 51
    //   38: aload_1
    //   39: invokeinterface 36 1 0
    //   44: goto +7 -> 51
    //   47: astore_1
    //   48: goto +14 -> 62
    //   51: aload_2
    //   52: ifnull +30 -> 82
    //   55: aload_2
    //   56: invokestatic 39	androidx/core/os/e$a:a	(Ljava/lang/Object;)V
    //   59: goto +23 -> 82
    //   62: aload_0
    //   63: monitorenter
    //   64: aload_0
    //   65: iconst_0
    //   66: putfield 24	androidx/core/os/e:d	Z
    //   69: aload_0
    //   70: invokevirtual 42	java/lang/Object:notifyAll	()V
    //   73: aload_0
    //   74: monitorexit
    //   75: aload_1
    //   76: athrow
    //   77: astore_1
    //   78: aload_0
    //   79: monitorexit
    //   80: aload_1
    //   81: athrow
    //   82: aload_0
    //   83: monitorenter
    //   84: aload_0
    //   85: iconst_0
    //   86: putfield 24	androidx/core/os/e:d	Z
    //   89: aload_0
    //   90: invokevirtual 42	java/lang/Object:notifyAll	()V
    //   93: aload_0
    //   94: monitorexit
    //   95: return
    //   96: astore_1
    //   97: aload_0
    //   98: monitorexit
    //   99: aload_1
    //   100: athrow
    //   101: astore_1
    //   102: aload_0
    //   103: monitorexit
    //   104: aload_1
    //   105: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	106	0	this	e
    //   26	13	1	localb	b
    //   47	29	1	localObject1	Object
    //   77	4	1	localObject2	Object
    //   96	4	1	localObject3	Object
    //   101	4	1	localObject4	Object
    //   31	25	2	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   38	44	47	finally
    //   55	59	47	finally
    //   64	75	77	finally
    //   78	80	77	finally
    //   84	95	96	finally
    //   97	99	96	finally
    //   2	11	101	finally
    //   12	34	101	finally
    //   102	104	101	finally
  }
  
  public boolean b()
  {
    try
    {
      boolean bool = this.a;
      return bool;
    }
    finally {}
  }
  
  public void c(b paramb)
  {
    try
    {
      d();
      if (this.b == paramb) {
        return;
      }
      this.b = paramb;
      if ((this.a) && (paramb != null))
      {
        paramb.onCancel();
        return;
      }
      return;
    }
    finally {}
  }
  
  static class a
  {
    static void a(Object paramObject)
    {
      ((CancellationSignal)paramObject).cancel();
    }
    
    static CancellationSignal b()
    {
      return new CancellationSignal();
    }
  }
  
  public static abstract interface b
  {
    public abstract void onCancel();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.os.e
 * JD-Core Version:    0.7.0.1
 */