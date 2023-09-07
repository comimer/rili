package androidx.work.impl.utils.futures;

import java.util.concurrent.Executor;

 enum DirectExecutor
  implements Executor
{
  static
  {
    DirectExecutor localDirectExecutor = new DirectExecutor("INSTANCE", 0);
    INSTANCE = localDirectExecutor;
    $VALUES = new DirectExecutor[] { localDirectExecutor };
  }
  
  private DirectExecutor() {}
  
  public void execute(Runnable paramRunnable)
  {
    paramRunnable.run();
  }
  
  public String toString()
  {
    return "DirectExecutor";
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.utils.futures.DirectExecutor
 * JD-Core Version:    0.7.0.1
 */