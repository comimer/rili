package com.xiaomi.onetrack.a.c;

import com.xiaomi.onetrack.g.b;
import com.xiaomi.onetrack.g.c;
import com.xiaomi.onetrack.util.p;
import com.xiaomi.onetrack.util.q;
import java.util.ArrayList;
import java.util.Iterator;

public class d
{
  private static final String a = "PollingUploader";
  
  public static void a()
  {
    try
    {
      if (!b()) {
        return;
      }
      p.a("PollingUploader", "即将读取数据库并上传数据");
      int i = 0;
      while (i <= 20)
      {
        com.xiaomi.onetrack.a.a.a().d();
        localObject1 = com.xiaomi.onetrack.a.a.a().b();
        if (localObject1 != null)
        {
          ArrayList localArrayList1 = ((a)localObject1).b;
          if ((localArrayList1 != null) && (localArrayList1.size() > 0))
          {
            ArrayList localArrayList2 = new java/util/ArrayList;
            localArrayList2.<init>();
            localArrayList1 = new java/util/ArrayList;
            localArrayList1.<init>();
            Iterator localIterator = ((a)localObject1).b.iterator();
            while (localIterator.hasNext())
            {
              com.xiaomi.onetrack.a.b.a locala = (com.xiaomi.onetrack.a.b.a)localIterator.next();
              boolean bool = b.b(locala.c());
              int j = locala.b();
              if (bool) {
                localArrayList2.add(Integer.valueOf(j));
              } else {
                localArrayList1.add(Integer.valueOf(j));
              }
            }
            if (localArrayList2.size() > 0) {
              com.xiaomi.onetrack.a.a.a().a(localArrayList2);
            }
            if (localArrayList1.size() > 0) {
              com.xiaomi.onetrack.a.a.a().b(localArrayList1);
            }
            i++;
            if (!((a)localObject1).c) {
              continue;
            }
            p.a("PollingUploader", "No more ad monitor records");
            break;
          }
        }
        p.a("PollingUploader", "满足条件的adMonitor记录为空，即将返回");
        return;
      }
    }
    finally
    {
      Object localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("uploadData Throwable:");
      ((StringBuilder)localObject1).append(localObject2.getMessage());
      p.a("PollingUploader", ((StringBuilder)localObject1).toString());
    }
  }
  
  private static boolean b()
  {
    if (q.a("PollingUploader"))
    {
      p.a("PollingUploader", "the device is not provisioned, stop poll!");
      return false;
    }
    if (!c.a())
    {
      p.a("PollingUploader", "network is unconnected, stop poll!");
      return false;
    }
    if (com.xiaomi.onetrack.a.a.a().e() == 0L)
    {
      p.a("PollingUploader", "no data remain in db, stop poll!");
      return false;
    }
    return true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.a.c.d
 * JD-Core Version:    0.7.0.1
 */