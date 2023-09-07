package androidx.work;

import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Landroidx/work/DirectExecutor;", "", "Ljava/util/concurrent/Executor;", "Ljava/lang/Runnable;", "command", "Lkotlin/u;", "execute", "", "toString", "<init>", "(Ljava/lang/String;I)V", "INSTANCE", "work-runtime-ktx_release"}, k=1, mv={1, 5, 1})
public enum DirectExecutor
  implements Executor
{
  private DirectExecutor() {}
  
  public void execute(Runnable paramRunnable)
  {
    r.f(paramRunnable, "command");
    paramRunnable.run();
  }
  
  public String toString()
  {
    return "DirectExecutor";
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.DirectExecutor
 * JD-Core Version:    0.7.0.1
 */