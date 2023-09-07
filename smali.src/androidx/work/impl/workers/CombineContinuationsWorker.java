package androidx.work.impl.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.ListenableWorker.a;
import androidx.work.Worker;
import androidx.work.WorkerParameters;

public class CombineContinuationsWorker
  extends Worker
{
  public CombineContinuationsWorker(Context paramContext, WorkerParameters paramWorkerParameters)
  {
    super(paramContext, paramWorkerParameters);
  }
  
  public ListenableWorker.a r()
  {
    return ListenableWorker.a.d(g());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.workers.CombineContinuationsWorker
 * JD-Core Version:    0.7.0.1
 */