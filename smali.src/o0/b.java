package o0;

import android.annotation.SuppressLint;
import android.os.Trace;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class b
{
  private static long a;
  private static Method b;
  
  public static void a(String paramString)
  {
    c.a(paramString);
  }
  
  public static void b() {}
  
  private static void c(String paramString, Exception paramException)
  {
    if ((paramException instanceof InvocationTargetException))
    {
      paramString = paramException.getCause();
      if ((paramString instanceof RuntimeException)) {
        throw ((RuntimeException)paramString);
      }
      throw new RuntimeException(paramString);
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Unable to call ");
    localStringBuilder.append(paramString);
    localStringBuilder.append(" via reflection");
    Log.v("Trace", localStringBuilder.toString(), paramException);
  }
  
  @SuppressLint({"NewApi"})
  public static boolean d()
  {
    try
    {
      if (b == null)
      {
        boolean bool = a.a();
        return bool;
      }
    }
    catch (NoSuchMethodError|NoClassDefFoundError localNoSuchMethodError)
    {
      label12:
      break label12;
    }
    return e();
  }
  
  private static boolean e()
  {
    try
    {
      if (b == null)
      {
        a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
        b = Trace.class.getMethod("isTagEnabled", new Class[] { Long.TYPE });
      }
      boolean bool = ((Boolean)b.invoke(null, new Object[] { Long.valueOf(a) })).booleanValue();
      return bool;
    }
    catch (Exception localException)
    {
      c("isTagEnabled", localException);
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o0.b
 * JD-Core Version:    0.7.0.1
 */