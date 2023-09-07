package u6;

import java.util.HashMap;
import java.util.Map;

public class a
{
  private static a a;
  private static volatile b b;
  
  public static void a(String paramString)
  {
    b(paramString, new HashMap());
  }
  
  public static void b(String paramString, Map<String, Object> paramMap)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("pause_");
    ((StringBuilder)localObject).append(paramString);
    String str = ((StringBuilder)localObject).toString();
    localObject = a;
    if (localObject != null) {
      ((a)localObject).c(paramString, paramMap);
    }
    e(str, paramMap);
  }
  
  public static void c(String paramString)
  {
    d(paramString, new HashMap());
  }
  
  public static void d(String paramString, Map<String, Object> paramMap)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("resume_");
    ((StringBuilder)localObject).append(paramString);
    localObject = ((StringBuilder)localObject).toString();
    a locala = a;
    if (locala != null) {
      locala.a(paramString, paramMap);
    }
    e((String)localObject, paramMap);
  }
  
  public static void e(String paramString, Map<String, Object> paramMap)
  {
    if (b != null) {
      b.a(paramString, paramMap);
    }
  }
  
  public static void f(String paramString)
  {
    g(paramString, new HashMap());
  }
  
  public static void g(String paramString, Map<String, Object> paramMap)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("view_");
    ((StringBuilder)localObject).append(paramString);
    localObject = ((StringBuilder)localObject).toString();
    a locala = a;
    if (locala != null) {
      locala.b(paramString, paramMap);
    }
    e((String)localObject, paramMap);
  }
  
  public static abstract interface a
  {
    public abstract void a(String paramString, Map<String, Object> paramMap);
    
    public abstract void b(String paramString, Map<String, Object> paramMap);
    
    public abstract void c(String paramString, Map<String, Object> paramMap);
  }
  
  public static abstract interface b
  {
    public abstract void a(String paramString, Map<String, Object> paramMap);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     u6.a
 * JD-Core Version:    0.7.0.1
 */