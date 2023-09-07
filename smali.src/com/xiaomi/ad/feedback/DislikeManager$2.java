package com.xiaomi.ad.feedback;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import java.util.List;

final class DislikeManager$2
  implements ServiceConnection
{
  DislikeManager$2(IAdFeedbackListener paramIAdFeedbackListener, String paramString1, String paramString2, List paramList, Context paramContext) {}
  
  /* Error */
  public void onServiceConnected(ComponentName paramComponentName, android.os.IBinder paramIBinder)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokestatic 41	com/xiaomi/ad/feedback/IAdFeedbackService$Stub:asInterface	(Landroid/os/IBinder;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;
    //   4: aload_0
    //   5: getfield 19	com/xiaomi/ad/feedback/DislikeManager$2:val$listener	Lcom/xiaomi/ad/feedback/IAdFeedbackListener;
    //   8: aload_0
    //   9: getfield 21	com/xiaomi/ad/feedback/DislikeManager$2:val$packageName	Ljava/lang/String;
    //   12: aload_0
    //   13: getfield 23	com/xiaomi/ad/feedback/DislikeManager$2:val$configKey	Ljava/lang/String;
    //   16: aload_0
    //   17: getfield 25	com/xiaomi/ad/feedback/DislikeManager$2:val$adPassbacks	Ljava/util/List;
    //   20: invokeinterface 47 5 0
    //   25: goto +17 -> 42
    //   28: astore_1
    //   29: goto +22 -> 51
    //   32: astore_1
    //   33: ldc 49
    //   35: ldc 51
    //   37: aload_1
    //   38: invokestatic 57	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   41: pop
    //   42: aload_0
    //   43: getfield 27	com/xiaomi/ad/feedback/DislikeManager$2:val$context	Landroid/content/Context;
    //   46: aload_0
    //   47: invokevirtual 63	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   50: return
    //   51: aload_0
    //   52: getfield 27	com/xiaomi/ad/feedback/DislikeManager$2:val$context	Landroid/content/Context;
    //   55: aload_0
    //   56: invokevirtual 63	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   59: aload_1
    //   60: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	61	0	this	2
    //   0	61	1	paramComponentName	ComponentName
    //   0	61	2	paramIBinder	android.os.IBinder
    // Exception table:
    //   from	to	target	type
    //   0	25	28	finally
    //   33	42	28	finally
    //   0	25	32	java/lang/Exception
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.feedback.DislikeManager.2
 * JD-Core Version:    0.7.0.1
 */