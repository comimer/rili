package com.miui.calendar.sync.ics;

import android.app.Application;
import android.net.Uri;
import android.util.Log;
import androidx.lifecycle.a;
import androidx.lifecycle.u;
import com.android.calendar.syncer.b;
import com.android.calendar.syncer.model.ResourceInfo;
import com.miui.calendar.util.z;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/sync/ics/i;", "Landroidx/lifecycle/a;", "Landroid/net/Uri;", "originalUrl", "", "username", "password", "Lkotlin/u;", "a", "Landroidx/lifecycle/u;", "Lcom/android/calendar/syncer/model/ResourceInfo;", "Landroidx/lifecycle/u;", "getResult", "()Landroidx/lifecycle/u;", "result", "Landroid/app/Application;", "application", "<init>", "(Landroid/app/Application;)V", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class i
  extends a
{
  public static final a b = new a(null);
  private final u<ResourceInfo> a = new u();
  
  public i(Application paramApplication)
  {
    super(paramApplication);
  }
  
  public final void a(Uri paramUri, String paramString1, String paramString2)
  {
    r.f(paramUri, "originalUrl");
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Validating Webcal feed ");
    localStringBuilder.append(paramUri);
    localStringBuilder.append(" (authentication: ");
    localStringBuilder.append(paramString1);
    localStringBuilder.append(')');
    Log.i("ValidationModel", localStringBuilder.toString());
    paramUri = new b(paramUri, this, new ResourceInfo(null, null, null, null, 15, null), getApplication());
    paramUri.l(paramString1);
    paramUri.k(paramString2);
    paramUri.j(true);
    new Thread(paramUri).start();
  }
  
  public final u<ResourceInfo> getResult()
  {
    return this.a;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/sync/ics/i$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"com/miui/calendar/sync/ics/i$b", "Lcom/android/calendar/syncer/b;", "Ljava/io/InputStream;", "data", "Lokhttp3/v;", "contentType", "", "eTag", "", "lastModified", "Lkotlin/u;", "g", "(Ljava/io/InputStream;Lokhttp3/v;Ljava/lang/String;Ljava/lang/Long;)V", "Ljava/lang/Exception;", "Lkotlin/Exception;", "error", "e", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b
    extends b
  {
    b(Uri paramUri, i parami, ResourceInfo paramResourceInfo, Application paramApplication)
    {
      super(paramUri);
    }
    
    public void e(Exception paramException)
    {
      r.f(paramException, "error");
      this.k.setException(paramException);
      z.a("ValidationModel", "onError");
      jdField_this.getResult().l(this.k);
    }
    
    /* Error */
    public void g(java.io.InputStream paramInputStream, okhttp3.v paramv, String paramString, java.lang.Long paramLong)
    {
      // Byte code:
      //   0: aload_1
      //   1: ldc 85
      //   3: invokestatic 59	kotlin/jvm/internal/r:f	(Ljava/lang/Object;Ljava/lang/String;)V
      //   6: iconst_1
      //   7: istore 5
      //   9: aload_2
      //   10: ifnull +17 -> 27
      //   13: aload_2
      //   14: aconst_null
      //   15: iconst_1
      //   16: aconst_null
      //   17: invokestatic 91	okhttp3/v:d	(Lokhttp3/v;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/nio/charset/Charset;
      //   20: astore_3
      //   21: aload_3
      //   22: astore_2
      //   23: aload_3
      //   24: ifnonnull +7 -> 31
      //   27: getstatic 97	kotlin/text/d:b	Ljava/nio/charset/Charset;
      //   30: astore_2
      //   31: new 99	java/io/InputStreamReader
      //   34: dup
      //   35: aload_1
      //   36: aload_2
      //   37: invokespecial 102	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
      //   40: astore_2
      //   41: aload_0
      //   42: getfield 43	com/miui/calendar/sync/ics/i$b:k	Lcom/android/calendar/syncer/model/ResourceInfo;
      //   45: astore_3
      //   46: aload_0
      //   47: getfield 41	com/miui/calendar/sync/ics/i$b:j	Lcom/miui/calendar/sync/ics/i;
      //   50: astore_1
      //   51: new 104	java/util/LinkedHashMap
      //   54: astore 6
      //   56: aload 6
      //   58: invokespecial 107	java/util/LinkedHashMap:<init>	()V
      //   61: getstatic 113	at/bitfire/ical4android/Event:Companion	Lat/bitfire/ical4android/Event$Companion;
      //   64: aload_2
      //   65: aload 6
      //   67: invokevirtual 119	at/bitfire/ical4android/Event$Companion:eventsFromReader	(Ljava/io/Reader;Ljava/util/Map;)Ljava/util/List;
      //   70: astore 4
      //   72: aload_3
      //   73: aload_0
      //   74: invokevirtual 122	com/android/calendar/syncer/b:d	()Landroid/net/Uri;
      //   77: invokevirtual 126	com/android/calendar/syncer/model/ResourceInfo:setUrl	(Landroid/net/Uri;)V
      //   80: aload 6
      //   82: ldc 128
      //   84: invokeinterface 134 2 0
      //   89: checkcast 136	java/lang/String
      //   92: astore_1
      //   93: iload 5
      //   95: istore 7
      //   97: aload_1
      //   98: ifnull +22 -> 120
      //   101: aload_1
      //   102: invokeinterface 142 1 0
      //   107: ifne +10 -> 117
      //   110: iload 5
      //   112: istore 7
      //   114: goto +6 -> 120
      //   117: iconst_0
      //   118: istore 7
      //   120: iload 7
      //   122: ifeq +11 -> 133
      //   125: aload_0
      //   126: invokevirtual 122	com/android/calendar/syncer/b:d	()Landroid/net/Uri;
      //   129: invokevirtual 148	android/net/Uri:getLastPathSegment	()Ljava/lang/String;
      //   132: astore_1
      //   133: aload_3
      //   134: aload_1
      //   135: invokevirtual 152	com/android/calendar/syncer/model/ResourceInfo:setCalendarName	(Ljava/lang/String;)V
      //   138: aload_3
      //   139: aload 4
      //   141: invokevirtual 156	com/android/calendar/syncer/model/ResourceInfo:setEvents	(Ljava/util/List;)V
      //   144: getstatic 160	kotlin/u:a	Lkotlin/u;
      //   147: astore_1
      //   148: aload_2
      //   149: aconst_null
      //   150: invokestatic 165	kotlin/io/a:a	(Ljava/io/Closeable;Ljava/lang/Throwable;)V
      //   153: ldc 67
      //   155: ldc 167
      //   157: invokestatic 74	com/miui/calendar/util/z:a	(Ljava/lang/String;Ljava/lang/String;)V
      //   160: aload_0
      //   161: getfield 41	com/miui/calendar/sync/ics/i$b:j	Lcom/miui/calendar/sync/ics/i;
      //   164: invokevirtual 78	com/miui/calendar/sync/ics/i:getResult	()Landroidx/lifecycle/u;
      //   167: aload_0
      //   168: getfield 43	com/miui/calendar/sync/ics/i$b:k	Lcom/android/calendar/syncer/model/ResourceInfo;
      //   171: invokevirtual 84	androidx/lifecycle/u:l	(Ljava/lang/Object;)V
      //   174: return
      //   175: astore 4
      //   177: ldc 67
      //   179: ldc 169
      //   181: invokestatic 174	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
      //   184: pop
      //   185: aload_3
      //   186: aload 4
      //   188: invokevirtual 65	com/android/calendar/syncer/model/ResourceInfo:setException	(Ljava/lang/Throwable;)V
      //   191: aload_1
      //   192: invokevirtual 78	com/miui/calendar/sync/ics/i:getResult	()Landroidx/lifecycle/u;
      //   195: aload_3
      //   196: invokevirtual 84	androidx/lifecycle/u:l	(Ljava/lang/Object;)V
      //   199: aload_2
      //   200: aconst_null
      //   201: invokestatic 165	kotlin/io/a:a	(Ljava/io/Closeable;Ljava/lang/Throwable;)V
      //   204: return
      //   205: astore_1
      //   206: aload_1
      //   207: athrow
      //   208: astore_3
      //   209: aload_2
      //   210: aload_1
      //   211: invokestatic 165	kotlin/io/a:a	(Ljava/io/Closeable;Ljava/lang/Throwable;)V
      //   214: aload_3
      //   215: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	216	0	this	b
      //   0	216	1	paramInputStream	java.io.InputStream
      //   0	216	2	paramv	okhttp3.v
      //   0	216	3	paramString	String
      //   0	216	4	paramLong	java.lang.Long
      //   7	104	5	i	int
      //   54	27	6	localLinkedHashMap	java.util.LinkedHashMap
      //   95	26	7	m	int
      // Exception table:
      //   from	to	target	type
      //   61	72	175	finally
      //   51	61	205	finally
      //   72	93	205	finally
      //   101	110	205	finally
      //   125	133	205	finally
      //   133	148	205	finally
      //   177	199	205	finally
      //   206	208	208	finally
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.sync.ics.i
 * JD-Core Version:    0.7.0.1
 */