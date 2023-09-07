package com.xiaomi.passport.accountmanager;

import android.content.Context;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;

class c
  extends e
{
  public c(Context paramContext)
  {
    super(paramContext);
  }
  
  public i<Bundle> y(h<Bundle> paramh, Handler paramHandler)
  {
    return new a(paramh, paramHandler).d();
  }
  
  class a
    extends i<Bundle>
  {
    a(h paramh, Handler paramHandler)
    {
      super(paramHandler);
    }
    
    public Bundle f()
      throws Exception
    {
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("booleanResult", false);
      localBundle.putParcelable("intent", c.this.E());
      return localBundle;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.accountmanager.c
 * JD-Core Version:    0.7.0.1
 */