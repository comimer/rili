package z3;

import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class a
{
  private static final ConcurrentHashMap<String, ConcurrentHashMap<String, a>> a = new ConcurrentHashMap();
  
  public static void a()
  {
    a.clear();
  }
  
  public static ConcurrentMap<String, a> b()
  {
    String str = Locale.getDefault().toString();
    ConcurrentHashMap localConcurrentHashMap1 = a;
    if (localConcurrentHashMap1.containsKey(str)) {
      return (ConcurrentMap)localConcurrentHashMap1.get(str);
    }
    ConcurrentHashMap localConcurrentHashMap2 = new ConcurrentHashMap();
    localConcurrentHashMap1.put(str, localConcurrentHashMap2);
    return localConcurrentHashMap2;
  }
  
  public static class a
  {
    public ArrayList<String> a;
    public boolean b;
    
    public a(ArrayList<String> paramArrayList, boolean paramBoolean)
    {
      this.a = paramArrayList;
      this.b = paramBoolean;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z3.a
 * JD-Core Version:    0.7.0.1
 */