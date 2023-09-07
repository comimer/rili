package p2;

import f3.j;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

final class c
{
  private final Map<String, a> a = new HashMap();
  private final b b = new b();
  
  void a(String paramString)
  {
    try
    {
      a locala1 = (a)this.a.get(paramString);
      a locala2 = locala1;
      if (locala1 == null)
      {
        locala2 = this.b.a();
        this.a.put(paramString, locala2);
      }
      locala2.b += 1;
      locala2.a.lock();
      return;
    }
    finally {}
  }
  
  void b(String paramString)
  {
    try
    {
      a locala1 = (a)j.d(this.a.get(paramString));
      int i = locala1.b;
      if (i >= 1)
      {
        i--;
        locala1.b = i;
        if (i == 0)
        {
          a locala2 = (a)this.a.remove(paramString);
          if (locala2.equals(locala1))
          {
            this.b.b(locala2);
          }
          else
          {
            localIllegalStateException = new java/lang/IllegalStateException;
            localStringBuilder = new java/lang/StringBuilder;
            localStringBuilder.<init>();
            localStringBuilder.append("Removed the wrong lock, expected to remove: ");
            localStringBuilder.append(locala1);
            localStringBuilder.append(", but actually removed: ");
            localStringBuilder.append(locala2);
            localStringBuilder.append(", safeKey: ");
            localStringBuilder.append(paramString);
            localIllegalStateException.<init>(localStringBuilder.toString());
            throw localIllegalStateException;
          }
        }
        locala1.a.unlock();
        return;
      }
      IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("Cannot release a lock that is not held, safeKey: ");
      localStringBuilder.append(paramString);
      localStringBuilder.append(", interestedThreads: ");
      localStringBuilder.append(locala1.b);
      localIllegalStateException.<init>(localStringBuilder.toString());
      throw localIllegalStateException;
    }
    finally {}
  }
  
  private static class a
  {
    final Lock a = new ReentrantLock();
    int b;
  }
  
  private static class b
  {
    private final Queue<c.a> a = new ArrayDeque();
    
    c.a a()
    {
      synchronized (this.a)
      {
        c.a locala = (c.a)this.a.poll();
        ??? = locala;
        if (locala == null) {
          ??? = new c.a();
        }
        return ???;
      }
    }
    
    void b(c.a parama)
    {
      synchronized (this.a)
      {
        if (this.a.size() < 10) {
          this.a.offer(parama);
        }
        return;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     p2.c
 * JD-Core Version:    0.7.0.1
 */