package o7;

import java.util.Map;
import java.util.WeakHashMap;

public abstract class b
{
  private static b a;
  private static Map<ClassLoader, b> b = new WeakHashMap();
  
  public static b c()
  {
    try
    {
      Object localObject1 = a;
      if (localObject1 != null) {
        return localObject1;
      }
      ClassLoader localClassLoader = l.a();
      b localb = (b)b.get(localClassLoader);
      localObject1 = localb;
      if (localb == null)
      {
        localObject1 = new o7/i;
        ((i)localObject1).<init>();
        b.put(localClassLoader, localObject1);
      }
      return localObject1;
    }
    finally {}
  }
  
  public abstract c a(String paramString);
  
  public c b(String paramString, g paramg)
  {
    return a(paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o7.b
 * JD-Core Version:    0.7.0.1
 */