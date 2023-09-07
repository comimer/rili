package kotlin.io;

import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Ljava/io/Closeable;", "", "cause", "Lkotlin/u;", "a", "kotlin-stdlib"}, k=2, mv={1, 7, 1})
public final class a
{
  /* Error */
  public static final void a(java.io.Closeable paramCloseable, java.lang.Throwable paramThrowable)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +31 -> 32
    //   4: aload_1
    //   5: ifnonnull +12 -> 17
    //   8: aload_0
    //   9: invokeinterface 27 1 0
    //   14: goto +18 -> 32
    //   17: aload_0
    //   18: invokeinterface 27 1 0
    //   23: goto +9 -> 32
    //   26: astore_0
    //   27: aload_1
    //   28: aload_0
    //   29: invokestatic 32	kotlin/a:a	(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    //   32: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	33	0	paramCloseable	java.io.Closeable
    //   0	33	1	paramThrowable	java.lang.Throwable
    // Exception table:
    //   from	to	target	type
    //   17	23	26	finally
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.io.a
 * JD-Core Version:    0.7.0.1
 */