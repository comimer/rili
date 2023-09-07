package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;

public class a
  extends i0
{
  @SuppressLint({"StaticFieldLeak"})
  private Application mApplication;
  
  public a(Application paramApplication)
  {
    this.mApplication = paramApplication;
  }
  
  public <T extends Application> T getApplication()
  {
    return this.mApplication;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.a
 * JD-Core Version:    0.7.0.1
 */