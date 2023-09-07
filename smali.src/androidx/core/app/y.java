package androidx.core.app;

import android.content.Context;
import android.content.Intent;

public abstract class y
  extends j
{
  public static void d(Context paramContext, Class paramClass, int paramInt, Intent paramIntent)
  {
    try
    {
      j.d(paramContext, paramClass, paramInt, paramIntent);
    }
    catch (Exception paramContext)
    {
      com.miui.calendar.util.z.d("Cal:D:SafeJobIntentService", "enqueueWork error: ", paramContext);
    }
  }
  
  j.d a()
  {
    try
    {
      j.d locald = super.a();
      return locald;
    }
    catch (SecurityException localSecurityException)
    {
      com.miui.calendar.util.z.f("Cal:D:SafeJobIntentService", "dequeueWork", localSecurityException);
    }
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    this.a = new z(this);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.app.y
 * JD-Core Version:    0.7.0.1
 */