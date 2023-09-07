package y0;

import androidx.room.RoomDatabase;
import androidx.work.WorkInfo.State;
import androidx.work.impl.WorkDatabase;
import androidx.work.k;
import q0.d;
import q0.i;
import x0.q;

public class l
  implements Runnable
{
  private static final String d = k.f("StopWorkRunnable");
  private final i a;
  private final String b;
  private final boolean c;
  
  public l(i parami, String paramString, boolean paramBoolean)
  {
    this.a = parami;
    this.b = paramString;
    this.c = paramBoolean;
  }
  
  public void run()
  {
    WorkDatabase localWorkDatabase = this.a.r();
    d locald = this.a.p();
    q localq = localWorkDatabase.j();
    localWorkDatabase.beginTransaction();
    try
    {
      boolean bool = locald.h(this.b);
      if (this.c)
      {
        bool = this.a.p().n(this.b);
      }
      else
      {
        if ((!bool) && (localq.m(this.b) == WorkInfo.State.RUNNING)) {
          localq.b(WorkInfo.State.ENQUEUED, new String[] { this.b });
        }
        bool = this.a.p().o(this.b);
      }
      k.c().a(d, String.format("StopWorkRunnable for %s; Processor.stopWork = %s", new Object[] { this.b, Boolean.valueOf(bool) }), new Throwable[0]);
      localWorkDatabase.setTransactionSuccessful();
      return;
    }
    finally
    {
      localWorkDatabase.endTransaction();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y0.l
 * JD-Core Version:    0.7.0.1
 */