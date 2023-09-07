package com.xiaomi.passport.servicetoken;

import com.xiaomi.accountsdk.utils.m;
import java.util.concurrent.Executor;

public class c
{
  private static volatile Executor a = m.a(3, "ServiceTokenOp");
  
  public static abstract class a
  {
    protected abstract ServiceTokenResult a();
    
    public b b()
    {
      final b localb = new b(null);
      c.a().execute(new a(localb));
      return localb;
    }
    
    class a
      implements Runnable
    {
      a(b paramb) {}
      
      /* Error */
      public void run()
      {
        // Byte code:
        //   0: aload_0
        //   1: getfield 22	com/xiaomi/passport/servicetoken/c$a$a:a	Lcom/xiaomi/passport/servicetoken/b;
        //   4: aload_0
        //   5: getfield 20	com/xiaomi/passport/servicetoken/c$a$a:b	Lcom/xiaomi/passport/servicetoken/c$a;
        //   8: invokevirtual 30	com/xiaomi/passport/servicetoken/c$a:a	()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
        //   11: invokevirtual 36	y5/a:e	(Ljava/lang/Object;)V
        //   14: goto +12 -> 26
        //   17: astore_1
        //   18: aload_0
        //   19: getfield 22	com/xiaomi/passport/servicetoken/c$a$a:a	Lcom/xiaomi/passport/servicetoken/b;
        //   22: aload_1
        //   23: invokevirtual 40	y5/a:f	(Ljava/lang/Throwable;)V
        //   26: return
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	27	0	this	a
        //   17	6	1	localThrowable	java.lang.Throwable
        // Exception table:
        //   from	to	target	type
        //   0	14	17	finally
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.servicetoken.c
 * JD-Core Version:    0.7.0.1
 */