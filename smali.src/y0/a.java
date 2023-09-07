package y0;

import androidx.room.RoomDatabase;
import androidx.work.WorkInfo.State;
import androidx.work.impl.WorkDatabase;
import androidx.work.m;
import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import q0.c;
import q0.d;
import q0.e;
import q0.f;
import q0.i;
import x0.b;
import x0.q;

public abstract class a
  implements Runnable
{
  private final c a = new c();
  
  public static a b(final UUID paramUUID, i parami)
  {
    return new a(parami, paramUUID);
  }
  
  public static a c(final String paramString, i parami, final boolean paramBoolean)
  {
    return new b(parami, paramString, paramBoolean);
  }
  
  private void e(WorkDatabase paramWorkDatabase, String paramString)
  {
    q localq = paramWorkDatabase.j();
    b localb = paramWorkDatabase.b();
    paramWorkDatabase = new LinkedList();
    paramWorkDatabase.add(paramString);
    while (!paramWorkDatabase.isEmpty())
    {
      paramString = (String)paramWorkDatabase.remove();
      WorkInfo.State localState = localq.m(paramString);
      if ((localState != WorkInfo.State.SUCCEEDED) && (localState != WorkInfo.State.FAILED)) {
        localq.b(WorkInfo.State.CANCELLED, new String[] { paramString });
      }
      paramWorkDatabase.addAll(localb.a(paramString));
    }
  }
  
  void a(i parami, String paramString)
  {
    e(parami.r(), paramString);
    parami.p().l(paramString);
    parami = parami.q().iterator();
    while (parami.hasNext()) {
      ((e)parami.next()).d(paramString);
    }
  }
  
  public m d()
  {
    return this.a;
  }
  
  void f(i parami)
  {
    f.b(parami.l(), parami.r(), parami.q());
  }
  
  abstract void g();
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 150	y0/a:g	()V
    //   4: aload_0
    //   5: getfield 21	y0/a:a	Lq0/c;
    //   8: getstatic 155	androidx/work/m:a	Landroidx/work/m$b$c;
    //   11: invokevirtual 158	q0/c:a	(Landroidx/work/m$b;)V
    //   14: goto +19 -> 33
    //   17: astore_1
    //   18: aload_0
    //   19: getfield 21	y0/a:a	Lq0/c;
    //   22: new 160	androidx/work/m$b$a
    //   25: dup
    //   26: aload_1
    //   27: invokespecial 163	androidx/work/m$b$a:<init>	(Ljava/lang/Throwable;)V
    //   30: invokevirtual 158	q0/c:a	(Landroidx/work/m$b;)V
    //   33: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	34	0	this	a
    //   17	10	1	localThrowable	java.lang.Throwable
    // Exception table:
    //   from	to	target	type
    //   0	14	17	finally
  }
  
  class a
    extends a
  {
    a(UUID paramUUID) {}
    
    void g()
    {
      WorkDatabase localWorkDatabase = a.this.r();
      localWorkDatabase.beginTransaction();
      try
      {
        a(a.this, paramUUID.toString());
        localWorkDatabase.setTransactionSuccessful();
        localWorkDatabase.endTransaction();
        f(a.this);
        return;
      }
      finally
      {
        localWorkDatabase.endTransaction();
      }
    }
  }
  
  class b
    extends a
  {
    b(String paramString, boolean paramBoolean) {}
    
    void g()
    {
      WorkDatabase localWorkDatabase = a.this.r();
      localWorkDatabase.beginTransaction();
      try
      {
        Iterator localIterator = localWorkDatabase.j().l(paramString).iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          a(a.this, str);
        }
        localWorkDatabase.setTransactionSuccessful();
        localWorkDatabase.endTransaction();
        if (paramBoolean) {
          f(a.this);
        }
        return;
      }
      finally
      {
        localWorkDatabase.endTransaction();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y0.a
 * JD-Core Version:    0.7.0.1
 */