package b5;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.IInterface;
import android.os.Message;
import android.util.Log;

public class a
{
  private static final Uri a = Uri.parse("content://com.lbe.security.miui.autostartmgr");
  
  public static void a(Context paramContext, d paramd)
  {
    if (paramContext == null) {
      return;
    }
    ContentResolver localContentResolver = paramContext.getContentResolver();
    paramContext = new Bundle();
    if (paramd != null) {
      paramContext.putBinder("callback", new a(paramd).asBinder());
    }
    try
    {
      localContentResolver.call(a, "checkAutoStart", null, paramContext);
    }
    catch (Exception paramContext)
    {
      Log.e("AutoStartManager", "operation not support", paramContext);
      if (paramd != null) {
        paramd.a(-1);
      }
    }
  }
  
  public static void b(boolean paramBoolean, Context paramContext, c paramc)
  {
    if (paramContext == null) {
      return;
    }
    ContentResolver localContentResolver = paramContext.getContentResolver();
    Bundle localBundle = new Bundle();
    if (paramc != null) {
      localBundle.putBinder("callback", new b(paramc).asBinder());
    }
    try
    {
      Uri localUri = a;
      if (paramBoolean) {
        paramContext = "openAutoStart";
      } else {
        paramContext = "closeAutoStart";
      }
      localContentResolver.call(localUri, paramContext, null, localBundle);
    }
    catch (Exception paramContext)
    {
      Log.e("AutoStartManager", "open not support", paramContext);
      if (paramc != null) {
        paramc.a(-1);
      }
    }
  }
  
  static final class a
    extends k2.a.a
  {
    a(a.d paramd) {}
    
    public void n(Message paramMessage)
    {
      try
      {
        this.a.a(paramMessage.arg1);
      }
      catch (Exception paramMessage)
      {
        paramMessage.printStackTrace();
      }
    }
  }
  
  static final class b
    extends k2.a.a
  {
    b(a.c paramc) {}
    
    public void n(Message paramMessage)
    {
      try
      {
        this.a.a(paramMessage.arg1);
      }
      catch (Exception paramMessage)
      {
        paramMessage.printStackTrace();
      }
    }
  }
  
  public static abstract interface c
  {
    public abstract void a(int paramInt);
  }
  
  public static abstract interface d
  {
    public abstract void a(int paramInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b5.a
 * JD-Core Version:    0.7.0.1
 */