package com.android.calendar.syncer;

import hc.p;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.u;
import okhttp3.l;
import okhttp3.m;
import okhttp3.t;
import org.apache.commons.collections4.map.HashedMap;
import org.apache.commons.collections4.map.MultiKeyMap;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/e;", "Lokhttp3/m;", "Lokhttp3/t;", "url", "", "Lokhttp3/l;", "cookies", "Lkotlin/u;", "a", "b", "Lorg/apache/commons/collections4/map/MultiKeyMap;", "", "kotlin.jvm.PlatformType", "c", "Lorg/apache/commons/collections4/map/MultiKeyMap;", "storage", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
public final class e
  implements m
{
  private final MultiKeyMap<String, l> c;
  
  public e()
  {
    MultiKeyMap localMultiKeyMap = MultiKeyMap.multiKeyMap(new HashedMap());
    r.c(localMultiKeyMap);
    this.c = localMultiKeyMap;
  }
  
  public void a(t arg1, List<l> paramList)
  {
    r.f(???, "url");
    r.f(paramList, "cookies");
    synchronized (this.c)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        l locall = (l)paramList.next();
        this.c.put(locall.h(), locall.e(), locall.i(), locall);
      }
      paramList = u.a;
      return;
    }
  }
  
  public List<l> b(t paramt)
  {
    r.f(paramt, "url");
    LinkedList localLinkedList = new LinkedList();
    synchronized (this.c)
    {
      p localp = this.c.mapIterator();
      while (localp.hasNext())
      {
        localp.next();
        l locall = (l)localp.getValue();
        if (locall.f() <= System.currentTimeMillis()) {
          localp.remove();
        } else if (locall.g(paramt)) {
          localLinkedList.add(locall);
        }
      }
      paramt = u.a;
      return localLinkedList;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.e
 * JD-Core Version:    0.7.0.1
 */