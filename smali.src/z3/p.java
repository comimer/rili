package z3;

import android.content.Context;
import com.miui.calendar.job.RemoteJobService.g;
import com.miui.calendar.util.z;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import u1.b.a;

@Metadata(bv={}, d1={""}, d2={"Lz3/p;", "Lu1/b$a;", "Lorg/json/JSONObject;", "jsonObject", "Lkotlin/u;", "a", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "b", "Landroid/content/Context;", "context", "Lcom/miui/calendar/job/RemoteJobService$g;", "listener", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/job/RemoteJobService$g;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
final class p
  implements b.a
{
  private final WeakReference<Context> a;
  private final WeakReference<RemoteJobService.g> b;
  
  public p(Context paramContext, RemoteJobService.g paramg)
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
    //   7: getfield 45	z3/p:a	Ljava/lang/ref/WeakReference;
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
    //   30: astore_1
    //   31: aload_1
    //   32: invokestatic 80	s4/d:d	(Ljava/lang/String;)V
    //   35: new 82	z3/m
    //   38: astore_3
    //   39: aload_3
    //   40: aload_2
    //   41: aload_1
    //   42: invokespecial 85	z3/m:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   45: aload_3
    //   46: getstatic 91	android/os/AsyncTask:THREAD_POOL_EXECUTOR	Ljava/util/concurrent/Executor;
    //   49: iconst_1
    //   50: anewarray 93	java/lang/Void
    //   53: dup
    //   54: iconst_0
    //   55: aconst_null
    //   56: aastore
    //   57: invokevirtual 97	android/os/AsyncTask:executeOnExecutor	(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   60: pop
    //   61: aload_0
    //   62: getfield 47	z3/p:b	Ljava/lang/ref/WeakReference;
    //   65: invokevirtual 64	java/lang/ref/Reference:get	()Ljava/lang/Object;
    //   68: checkcast 99	com/miui/calendar/job/RemoteJobService$g
    //   71: astore_1
    //   72: aload_1
    //   73: ifnull +72 -> 145
    //   76: aload_1
    //   77: invokeinterface 101 1 0
    //   82: goto +63 -> 145
    //   85: astore_2
    //   86: goto +10 -> 96
    //   89: astore_2
    //   90: goto +56 -> 146
    //   93: astore_2
    //   94: aload_3
    //   95: astore_1
    //   96: new 103	java/lang/StringBuilder
    //   99: astore_3
    //   100: aload_3
    //   101: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   104: aload_3
    //   105: ldc 106
    //   107: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: pop
    //   111: aload_3
    //   112: aload_1
    //   113: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: pop
    //   117: ldc 112
    //   119: aload_3
    //   120: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   123: aload_2
    //   124: invokestatic 121	com/miui/calendar/util/z:f	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   127: aload_0
    //   128: getfield 47	z3/p:b	Ljava/lang/ref/WeakReference;
    //   131: invokevirtual 64	java/lang/ref/Reference:get	()Ljava/lang/Object;
    //   134: checkcast 99	com/miui/calendar/job/RemoteJobService$g
    //   137: astore_1
    //   138: aload_1
    //   139: ifnull +6 -> 145
    //   142: goto -66 -> 76
    //   145: return
    //   146: aload_0
    //   147: getfield 47	z3/p:b	Ljava/lang/ref/WeakReference;
    //   150: invokevirtual 64	java/lang/ref/Reference:get	()Ljava/lang/Object;
    //   153: checkcast 99	com/miui/calendar/job/RemoteJobService$g
    //   156: astore_1
    //   157: aload_1
    //   158: ifnull +9 -> 167
    //   161: aload_1
    //   162: invokeinterface 101 1 0
    //   167: aload_2
    //   168: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	169	0	this	p
    //   0	169	1	paramJSONObject	org.json.JSONObject
    //   16	25	2	localContext	Context
    //   85	1	2	localException1	Exception
    //   89	1	2	localObject1	Object
    //   93	75	2	localException2	Exception
    //   23	97	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   31	61	85	java/lang/Exception
    //   24	31	89	finally
    //   31	61	89	finally
    //   96	127	89	finally
    //   24	31	93	java/lang/Exception
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
 * Qualified Name:     z3.p
 * JD-Core Version:    0.7.0.1
 */