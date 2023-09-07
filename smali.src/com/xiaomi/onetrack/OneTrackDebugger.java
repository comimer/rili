package com.xiaomi.onetrack;

import android.content.Context;
import com.xiaomi.onetrack.util.o;
import com.xiaomi.onetrack.util.oaid.a;
import java.util.concurrent.ConcurrentHashMap;

public class OneTrackDebugger
{
  private static volatile OneTrackDebugger a;
  private static String b = "com.xiaomi.onetrack.otdebugger.FloatWindowService";
  private ConcurrentHashMap<Long, Configuration> c = new ConcurrentHashMap();
  
  public static OneTrackDebugger getInstance()
  {
    if (a == null) {
      try
      {
        if (a == null)
        {
          OneTrackDebugger localOneTrackDebugger = new com/xiaomi/onetrack/OneTrackDebugger;
          localOneTrackDebugger.<init>();
          a = localOneTrackDebugger;
        }
      }
      finally {}
    }
    return a;
  }
  
  public String getInstanceId()
  {
    return o.a().b();
  }
  
  public String getOaid(Context paramContext)
  {
    return a.a().a(paramContext.getApplicationContext());
  }
  
  public ConcurrentHashMap<Long, Configuration> getSdkConfig()
  {
    return this.c;
  }
  
  public void setSdkConfig(Configuration paramConfiguration)
  {
    this.c.put(Long.valueOf(System.currentTimeMillis()), paramConfiguration);
  }
  
  /* Error */
  public void startDebugger()
  {
    // Byte code:
    //   0: getstatic 78	com/xiaomi/onetrack/OneTrackDebugger:b	Ljava/lang/String;
    //   3: invokestatic 84	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   6: astore_1
    //   7: invokestatic 88	com/xiaomi/onetrack/f/a:b	()Landroid/content/Context;
    //   10: astore_2
    //   11: new 90	android/content/Intent
    //   14: astore_3
    //   15: aload_3
    //   16: invokestatic 88	com/xiaomi/onetrack/f/a:b	()Landroid/content/Context;
    //   19: aload_1
    //   20: invokespecial 93	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   23: aload_2
    //   24: aload_3
    //   25: invokevirtual 97	android/content/Context:startService	(Landroid/content/Intent;)Landroid/content/ComponentName;
    //   28: pop
    //   29: goto +14 -> 43
    //   32: astore_2
    //   33: ldc 98
    //   35: aload_2
    //   36: invokevirtual 103	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   39: invokestatic 109	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   42: pop
    //   43: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	OneTrackDebugger
    //   6	14	1	localClass	java.lang.Class
    //   10	14	2	localContext	Context
    //   32	4	2	localObject	Object
    //   14	11	3	localIntent	android.content.Intent
    // Exception table:
    //   from	to	target	type
    //   0	29	32	finally
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.OneTrackDebugger
 * JD-Core Version:    0.7.0.1
 */