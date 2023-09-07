package com.android.calendar.syncer.model;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.util.Log;
import com.android.calendar.syncer.resource.DavResourceFinder;
import com.android.calendar.syncer.resource.DavResourceFinder.Configuration;
import com.android.calendar.syncer.resource.DavResourceFinder.Configuration.Reason;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/model/DetectConfigurationModel;", "Landroidx/lifecycle/a;", "Lcom/android/calendar/syncer/model/LoginModel;", "loginModel", "Lkotlin/u;", "detectConfiguration", "onCleared", "Ljava/lang/ref/WeakReference;", "Ljava/lang/Thread;", "detectionThread", "Ljava/lang/ref/WeakReference;", "Landroidx/lifecycle/u;", "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;", "result", "Landroidx/lifecycle/u;", "getResult", "()Landroidx/lifecycle/u;", "Landroid/app/Application;", "application", "<init>", "(Landroid/app/Application;)V", "Companion", "syncer_release"}, k=1, mv={1, 7, 1})
@SuppressLint({"LongLogTag"})
public final class DetectConfigurationModel
  extends androidx.lifecycle.a
{
  public static final Companion Companion = new Companion(null);
  public static final String TAG = "CalSync:D:DetectConfigurationModel";
  private WeakReference<Thread> detectionThread;
  private final androidx.lifecycle.u<DavResourceFinder.Configuration> result = new androidx.lifecycle.u();
  
  public DetectConfigurationModel(Application paramApplication)
  {
    super(paramApplication);
  }
  
  public final void detectConfiguration(final LoginModel paramLoginModel)
  {
    r.f(paramLoginModel, "loginModel");
    synchronized (this.result)
    {
      Object localObject = this.detectionThread;
      int i = 1;
      if (localObject != null)
      {
        localObject = (Thread)((Reference)localObject).get();
        if ((localObject != null) && (((Thread)localObject).isAlive() == true)) {}
      }
      else
      {
        i = 0;
      }
      if (i != 0)
      {
        Log.d("CalSync:D:DetectConfigurationModel", "detection already running");
        paramLoginModel = this.result;
        localObject = new com/android/calendar/syncer/resource/DavResourceFinder$Configuration;
        ((DavResourceFinder.Configuration)localObject).<init>(null, DavResourceFinder.Configuration.Reason.REASON_BLOCK);
        paramLoginModel.l(localObject);
        return;
      }
      localObject = kotlin.u.a;
      r7.a.b(false, false, null, null, 0, new Lambda(paramLoginModel)
      {
        public final void invoke()
        {
          Object localObject1 = this.this$0.getResult();
          Object localObject2 = this.this$0;
          try
          {
            WeakReference localWeakReference = new java/lang/ref/WeakReference;
            localWeakReference.<init>(Thread.currentThread());
            DetectConfigurationModel.access$setDetectionThread$p((DetectConfigurationModel)localObject2, localWeakReference);
            localObject2 = kotlin.u.a;
            try
            {
              localObject1 = new com/android/calendar/syncer/resource/DavResourceFinder;
              localObject2 = this.this$0.getApplication();
              r.e(localObject2, "getApplication()");
              ((DavResourceFinder)localObject1).<init>((Context)localObject2, paramLoginModel);
              this.this$0.getResult().l(((DavResourceFinder)localObject1).m());
            }
            catch (Exception localException)
            {
              Log.d("CalSync:D:DetectConfigurationModel", "Internal resource detection error", localException);
              this.this$0.getResult().l(null);
            }
            return;
          }
          finally {}
        }
      }, 31, null);
      return;
    }
  }
  
  public final androidx.lifecycle.u<DavResourceFinder.Configuration> getResult()
  {
    return this.result;
  }
  
  protected void onCleared()
  {
    synchronized (this.result)
    {
      Object localObject1 = this.detectionThread;
      if (localObject1 != null)
      {
        localObject1 = (Thread)((Reference)localObject1).get();
        if (localObject1 != null)
        {
          Log.d("CalSync:D:DetectConfigurationModel", "Aborting resource detection");
          ((Thread)localObject1).interrupt();
        }
      }
      this.detectionThread = null;
      localObject1 = kotlin.u.a;
      return;
    }
  }
  
  @Metadata(d1={""}, d2={"Lcom/android/calendar/syncer/model/DetectConfigurationModel$Companion;", "", "()V", "TAG", "", "syncer_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class Companion {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.model.DetectConfigurationModel
 * JD-Core Version:    0.7.0.1
 */