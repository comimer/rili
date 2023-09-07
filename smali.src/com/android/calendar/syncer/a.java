package com.android.calendar.syncer;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/a;", "T", "", "Landroid/content/Context;", "context", "getInstance", "(Landroid/content/Context;)Ljava/lang/Object;", "createInstance", "", "creatingSingleton", "Z", "getCreatingSingleton", "()Z", "setCreatingSingleton", "(Z)V", "singleton", "Ljava/lang/Object;", "getSingleton", "()Ljava/lang/Object;", "setSingleton", "(Ljava/lang/Object;)V", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
public abstract class a<T>
{
  private boolean creatingSingleton;
  private T singleton;
  
  public abstract T createInstance(Context paramContext);
  
  public final boolean getCreatingSingleton()
  {
    return this.creatingSingleton;
  }
  
  public final T getInstance(Context paramContext)
  {
    try
    {
      r.f(paramContext, "context");
      Object localObject = this.singleton;
      if (localObject != null) {
        return localObject;
      }
      if (!this.creatingSingleton)
      {
        this.creatingSingleton = true;
        paramContext = paramContext.getApplicationContext();
        r.e(paramContext, "context.applicationContext");
        paramContext = createInstance(paramContext);
        this.singleton = paramContext;
        this.creatingSingleton = false;
        return paramContext;
      }
      paramContext = new java/lang/IllegalStateException;
      paramContext.<init>("AndroidSingleton::getInstance() must not be called while createInstance()");
      throw paramContext;
    }
    finally {}
  }
  
  public final T getSingleton()
  {
    return this.singleton;
  }
  
  public final void setCreatingSingleton(boolean paramBoolean)
  {
    this.creatingSingleton = paramBoolean;
  }
  
  public final void setSingleton(T paramT)
  {
    this.singleton = paramT;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.a
 * JD-Core Version:    0.7.0.1
 */