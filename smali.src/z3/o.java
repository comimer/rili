package z3;

import android.content.Context;
import com.miui.calendar.job.RemoteJobService.g;
import com.miui.calendar.util.z;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import u1.b.a;

@Metadata(bv={}, d1={""}, d2={"Lz3/o;", "Lu1/b$a;", "Lorg/json/JSONObject;", "jsonObject", "Lkotlin/u;", "a", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "b", "Landroid/content/Context;", "context", "Lcom/miui/calendar/job/RemoteJobService$g;", "listener", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/job/RemoteJobService$g;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
final class o
  implements b.a
{
  private final WeakReference<Context> a;
  private final WeakReference<RemoteJobService.g> b;
  
  public o(Context paramContext, RemoteJobService.g paramg)
  {
    this.a = new WeakReference(paramContext);
    this.b = new WeakReference(paramg);
  }
  
  /* Error */
  public void a(org.json.JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc 52
    //   3: invokestatic 58	kotlin/jvm/internal/r:f	(Ljava/lang/Object;Ljava/lang/String;)V
    //   6: aload_0
    //   7: getfield 45	z3/o:a	Ljava/lang/ref/WeakReference;
    //   10: invokevirtual 64	java/lang/ref/Reference:get	()Ljava/lang/Object;
    //   13: checkcast 66	android/content/Context
    //   16: astore_2
    //   17: aload_2
    //   18: ifnonnull +4 -> 22
    //   21: return
    //   22: aconst_null
    //   23: astore_3
    //   24: aload_1
    //   25: ldc 68
    //   27: invokevirtual 74	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   30: astore 4
    //   32: aload 4
    //   34: invokestatic 80	s4/d:d	(Ljava/lang/String;)V
    //   37: new 82	z3/n
    //   40: astore_1
    //   41: aload_1
    //   42: aload_2
    //   43: aload 4
    //   45: invokespecial 85	z3/n:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   48: aload_1
    //   49: getstatic 91	android/os/AsyncTask:THREAD_POOL_EXECUTOR	Ljava/util/concurrent/Executor;
    //   52: iconst_1
    //   53: anewarray 93	java/lang/Void
    //   56: dup
    //   57: iconst_0
    //   58: aconst_null
    //   59: aastore
    //   60: invokevirtual 97	android/os/AsyncTask:executeOnExecutor	(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   63: pop
    //   64: aload_0
    //   65: getfield 47	z3/o:b	Ljava/lang/ref/WeakReference;
    //   68: invokevirtual 64	java/lang/ref/Reference:get	()Ljava/lang/Object;
    //   71: checkcast 99	com/miui/calendar/job/RemoteJobService$g
    //   74: astore_1
    //   75: aload_1
    //   76: ifnull +78 -> 154
    //   79: aload_1
    //   80: invokeinterface 101 1 0
    //   85: goto +69 -> 154
    //   88: astore_1
    //   89: aload 4
    //   91: astore_3
    //   92: goto +8 -> 100
    //   95: astore_3
    //   96: goto +59 -> 155
    //   99: astore_1
    //   100: new 103	java/lang/StringBuilder
    //   103: astore 4
    //   105: aload 4
    //   107: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   110: aload 4
    //   112: ldc 106
    //   114: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: pop
    //   118: aload 4
    //   120: aload_3
    //   121: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: pop
    //   125: ldc 112
    //   127: aload 4
    //   129: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   132: aload_1
    //   133: invokestatic 121	com/miui/calendar/util/z:f	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   136: aload_0
    //   137: getfield 47	z3/o:b	Ljava/lang/ref/WeakReference;
    //   140: invokevirtual 64	java/lang/ref/Reference:get	()Ljava/lang/Object;
    //   143: checkcast 99	com/miui/calendar/job/RemoteJobService$g
    //   146: astore_1
    //   147: aload_1
    //   148: ifnull +6 -> 154
    //   151: goto -72 -> 79
    //   154: return
    //   155: aload_0
    //   156: getfield 47	z3/o:b	Ljava/lang/ref/WeakReference;
    //   159: invokevirtual 64	java/lang/ref/Reference:get	()Ljava/lang/Object;
    //   162: checkcast 99	com/miui/calendar/job/RemoteJobService$g
    //   165: astore_1
    //   166: aload_1
    //   167: ifnull +9 -> 176
    //   170: aload_1
    //   171: invokeinterface 101 1 0
    //   176: aload_3
    //   177: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	178	0	this	o
    //   0	178	1	paramJSONObject	org.json.JSONObject
    //   16	27	2	localContext	Context
    //   23	69	3	localObject1	Object
    //   95	82	3	str	java.lang.String
    //   30	98	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   32	64	88	java/lang/Exception
    //   24	32	95	finally
    //   32	64	95	finally
    //   100	136	95	finally
    //   24	32	99	java/lang/Exception
  }
  
  public void b(Exception paramException)
  {
    r.f(paramException, "e");
    z.d("Cal:D:HolidaySyncHelper", "ResponseListener:", paramException);
    paramException = (RemoteJobService.g)this.b.get();
    if (paramException != null) {
      paramException.a();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z3.o
 * JD-Core Version:    0.7.0.1
 */