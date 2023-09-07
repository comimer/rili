package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;

class v
{
  private boolean a;
  private final Handler b = new Handler(Looper.getMainLooper(), new a());
  
  void a(s<?> params, boolean paramBoolean)
  {
    try
    {
      if ((!this.a) && (!paramBoolean))
      {
        this.a = true;
        params.a();
        this.a = false;
      }
      else
      {
        this.b.obtainMessage(1, params).sendToTarget();
      }
      return;
    }
    finally {}
  }
  
  private static final class a
    implements Handler.Callback
  {
    public boolean handleMessage(Message paramMessage)
    {
      if (paramMessage.what == 1)
      {
        ((s)paramMessage.obj).a();
        return true;
      }
      return false;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.v
 * JD-Core Version:    0.7.0.1
 */