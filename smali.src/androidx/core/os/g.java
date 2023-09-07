package androidx.core.os;

import android.os.Build.VERSION;
import android.os.Trace;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

@Deprecated
public final class g
{
  private static long a;
  private static Method b;
  private static Method c;
  private static Method d;
  private static Method e;
  
  static
  {
    if (Build.VERSION.SDK_INT < 29) {
      try
      {
        a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
        Class localClass1 = Long.TYPE;
        b = Trace.class.getMethod("isTagEnabled", new Class[] { localClass1 });
        Class localClass2 = Integer.TYPE;
        c = Trace.class.getMethod("asyncTraceBegin", new Class[] { localClass1, String.class, localClass2 });
        d = Trace.class.getMethod("asyncTraceEnd", new Class[] { localClass1, String.class, localClass2 });
        e = Trace.class.getMethod("traceCounter", new Class[] { localClass1, String.class, localClass2 });
      }
      catch (Exception localException)
      {
        Log.i("TraceCompat", "Unable to initialize via reflection.", localException);
      }
    }
  }
  
  public static void a(String paramString)
  {
    a.a(paramString);
  }
  
  public static void b() {}
  
  static class a
  {
    static void a(String paramString)
    {
      Trace.beginSection(paramString);
    }
    
    static void b() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.os.g
 * JD-Core Version:    0.7.0.1
 */