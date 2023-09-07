package androidx.lifecycle;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class m0
{
  private final HashMap<String, i0> a = new HashMap();
  
  public final void a()
  {
    Iterator localIterator = this.a.values().iterator();
    while (localIterator.hasNext()) {
      ((i0)localIterator.next()).clear();
    }
    this.a.clear();
  }
  
  final i0 b(String paramString)
  {
    return (i0)this.a.get(paramString);
  }
  
  Set<String> c()
  {
    return new HashSet(this.a.keySet());
  }
  
  final void d(String paramString, i0 parami0)
  {
    paramString = (i0)this.a.put(paramString, parami0);
    if (paramString != null) {
      paramString.onCleared();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.m0
 * JD-Core Version:    0.7.0.1
 */