package s4;

import android.text.TextUtils;
import com.miui.calendar.util.logger.LogLevel;
import org.json.JSONArray;
import org.json.JSONObject;

final class c
  implements e
{
  private String a;
  private final ThreadLocal<String> b = new ThreadLocal();
  private final ThreadLocal<Integer> c = new ThreadLocal();
  private f d;
  
  private String d(String paramString, Object... paramVarArgs)
  {
    if (paramVarArgs.length != 0) {
      paramString = String.format(paramString, paramVarArgs);
    }
    return paramString;
  }
  
  private String g(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (!TextUtils.equals(this.a, paramString)))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.a);
      localStringBuilder.append("-");
      localStringBuilder.append(paramString);
      return localStringBuilder.toString();
    }
    return this.a;
  }
  
  private int h()
  {
    Integer localInteger = (Integer)this.c.get();
    int i = this.d.c();
    if (localInteger != null)
    {
      this.c.remove();
      i = localInteger.intValue();
    }
    if (i >= 0) {
      return i;
    }
    throw new IllegalStateException("methodCount cannot be negative");
  }
  
  private String i(String paramString)
  {
    return paramString.substring(paramString.lastIndexOf(".") + 1);
  }
  
  private int j(StackTraceElement[] paramArrayOfStackTraceElement)
  {
    for (int i = 3; i < paramArrayOfStackTraceElement.length; i++)
    {
      String str = paramArrayOfStackTraceElement[i].getClassName();
      if ((!str.equals(c.class.getName())) && (!str.equals(d.class.getName()))) {
        return i - 1;
      }
    }
    return -1;
  }
  
  private String k()
  {
    String str = (String)this.b.get();
    if (str != null)
    {
      this.b.remove();
      return str;
    }
    return this.a;
  }
  
  private void l(int paramInt, String paramString, Object... paramVarArgs)
  {
    try
    {
      LogLevel localLogLevel = this.d.a();
      Object localObject = LogLevel.NONE;
      if (localLogLevel == localObject) {
        return;
      }
      localObject = k();
      paramVarArgs = d(paramString, paramVarArgs);
      int i = h();
      r(paramInt, (String)localObject);
      q(paramInt, (String)localObject, i);
      paramString = paramVarArgs.getBytes();
      int j = paramString.length;
      if (j <= 4000)
      {
        if (i > 0) {
          p(paramInt, (String)localObject);
        }
        o(paramInt, (String)localObject, paramVarArgs);
        m(paramInt, (String)localObject);
        return;
      }
      if (i > 0) {
        p(paramInt, (String)localObject);
      }
      for (i = 0; i < j; i += 4000)
      {
        int k = Math.min(j - i, 4000);
        paramVarArgs = new java/lang/String;
        paramVarArgs.<init>(paramString, i, k);
        o(paramInt, (String)localObject, paramVarArgs);
      }
      m(paramInt, (String)localObject);
      return;
    }
    finally {}
  }
  
  private void m(int paramInt, String paramString)
  {
    n(paramInt, paramString, "╚════════════════════════════════════════════════════════════════════════════════════════");
  }
  
  private void n(int paramInt, String paramString1, String paramString2)
  {
    paramString1 = g(paramString1);
    if (paramInt != 2)
    {
      if (paramInt != 4)
      {
        if (paramInt != 5)
        {
          if (paramInt != 6)
          {
            if (paramInt != 7) {
              this.d.b().b(paramString1, paramString2);
            } else {
              this.d.b().e(paramString1, paramString2);
            }
          }
          else {
            this.d.b().a(paramString1, paramString2);
          }
        }
        else {
          this.d.b().c(paramString1, paramString2);
        }
      }
      else {
        this.d.b().f(paramString1, paramString2);
      }
    }
    else {
      this.d.b().d(paramString1, paramString2);
    }
  }
  
  private void o(int paramInt, String paramString1, String paramString2)
  {
    for (String str : paramString2.split(System.getProperty("line.separator")))
    {
      paramString2 = new StringBuilder();
      paramString2.append("║ ");
      paramString2.append(str);
      n(paramInt, paramString1, paramString2.toString());
    }
  }
  
  private void p(int paramInt, String paramString)
  {
    n(paramInt, paramString, "╟────────────────────────────────────────────────────────────────────────────────────────");
  }
  
  private void q(int paramInt1, String paramString, int paramInt2)
  {
    StackTraceElement[] arrayOfStackTraceElement = Thread.currentThread().getStackTrace();
    if (this.d.e())
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("║ Thread: ");
      ((StringBuilder)localObject).append(Thread.currentThread().getName());
      n(paramInt1, paramString, ((StringBuilder)localObject).toString());
      p(paramInt1, paramString);
    }
    int i = j(arrayOfStackTraceElement) + this.d.d();
    int j = paramInt2;
    if (paramInt2 + i > arrayOfStackTraceElement.length) {
      j = arrayOfStackTraceElement.length - i - 1;
    }
    Object localObject = "";
    while (j > 0)
    {
      paramInt2 = j + i;
      if (paramInt2 < arrayOfStackTraceElement.length)
      {
        StringBuilder localStringBuilder1 = new StringBuilder();
        localStringBuilder1.append("║ ");
        localStringBuilder1.append((String)localObject);
        localStringBuilder1.append(i(arrayOfStackTraceElement[paramInt2].getClassName()));
        localStringBuilder1.append(".");
        localStringBuilder1.append(arrayOfStackTraceElement[paramInt2].getMethodName());
        localStringBuilder1.append(" ");
        localStringBuilder1.append(" (");
        localStringBuilder1.append(arrayOfStackTraceElement[paramInt2].getFileName());
        localStringBuilder1.append(":");
        localStringBuilder1.append(arrayOfStackTraceElement[paramInt2].getLineNumber());
        localStringBuilder1.append(")");
        StringBuilder localStringBuilder2 = new StringBuilder();
        localStringBuilder2.append((String)localObject);
        localStringBuilder2.append("   ");
        localObject = localStringBuilder2.toString();
        n(paramInt1, paramString, localStringBuilder1.toString());
      }
      j--;
    }
  }
  
  private void r(int paramInt, String paramString)
  {
    n(paramInt, paramString, "╔════════════════════════════════════════════════════════════════════════════════════════");
  }
  
  public f a(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.trim().length() != 0)
      {
        this.a = paramString;
        paramString = new f();
        this.d = paramString;
        return paramString;
      }
      throw new IllegalStateException("tag may not be empty");
    }
    throw new NullPointerException("tag may not be null");
  }
  
  public void b(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      e("Empty/Null json content", new Object[0]);
      return;
    }
    try
    {
      Object localObject;
      if (paramString.startsWith("{"))
      {
        localObject = new org/json/JSONObject;
        ((JSONObject)localObject).<init>(paramString);
        e(((JSONObject)localObject).toString(4), new Object[0]);
        return;
      }
      if (paramString.startsWith("["))
      {
        localObject = new org/json/JSONArray;
        ((JSONArray)localObject).<init>(paramString);
        e(((JSONArray)localObject).toString(4), new Object[0]);
      }
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(localException.getCause().getMessage());
      localStringBuilder.append("\n");
      localStringBuilder.append(paramString);
      f(localStringBuilder.toString(), new Object[0]);
    }
  }
  
  public void c(Throwable paramThrowable, String paramString, Object... paramVarArgs)
  {
    Object localObject = paramString;
    if (paramThrowable != null)
    {
      localObject = paramString;
      if (paramString != null)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append(paramString);
        ((StringBuilder)localObject).append(" : ");
        ((StringBuilder)localObject).append(paramThrowable.toString());
        localObject = ((StringBuilder)localObject).toString();
      }
    }
    paramString = (String)localObject;
    if (paramThrowable != null)
    {
      paramString = (String)localObject;
      if (localObject == null) {
        paramString = paramThrowable.toString();
      }
    }
    paramThrowable = paramString;
    if (paramString == null) {
      paramThrowable = "No message/exception is set";
    }
    l(6, paramThrowable, paramVarArgs);
  }
  
  public void e(String paramString, Object... paramVarArgs)
  {
    l(3, paramString, paramVarArgs);
  }
  
  public void f(String paramString, Object... paramVarArgs)
  {
    c(null, paramString, paramVarArgs);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s4.c
 * JD-Core Version:    0.7.0.1
 */