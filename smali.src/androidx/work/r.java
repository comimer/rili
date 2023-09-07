package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.lifecycle.LiveData;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import q0.i;

@SuppressLint({"AddedAbstractMethod"})
public abstract class r
{
  @Deprecated
  public static r e()
  {
    i locali = i.m();
    if (locali != null) {
      return locali;
    }
    throw new IllegalStateException("WorkManager is not initialized properly.  The most likely cause is that you disabled WorkManagerInitializer in your manifest but forgot to call WorkManager#initialize in your Application#onCreate or a ContentProvider.");
  }
  
  public static r f(Context paramContext)
  {
    return i.n(paramContext);
  }
  
  public static void h(Context paramContext, a parama)
  {
    i.h(paramContext, parama);
  }
  
  public final q a(String paramString, ExistingWorkPolicy paramExistingWorkPolicy, l paraml)
  {
    return b(paramString, paramExistingWorkPolicy, Collections.singletonList(paraml));
  }
  
  public abstract q b(String paramString, ExistingWorkPolicy paramExistingWorkPolicy, List<l> paramList);
  
  public final m c(s params)
  {
    return d(Collections.singletonList(params));
  }
  
  public abstract m d(List<? extends s> paramList);
  
  public abstract LiveData<WorkInfo> g(UUID paramUUID);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.r
 * JD-Core Version:    0.7.0.1
 */