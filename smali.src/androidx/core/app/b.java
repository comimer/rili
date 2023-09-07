package androidx.core.app;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.app.SharedElementCallback.OnSharedElementsReadyListener;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.IntentSender.SendIntentException;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import java.util.Arrays;

public class b
  extends androidx.core.content.a
{
  private static d c;
  
  public static void m(Activity paramActivity)
  {
    a.a(paramActivity);
  }
  
  public static void n(Activity paramActivity)
  {
    b.a(paramActivity);
  }
  
  public static void p(Activity paramActivity)
  {
    b.b(paramActivity);
  }
  
  public static void q(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      paramActivity.recreate();
    } else {
      new Handler(paramActivity.getMainLooper()).post(new a(paramActivity));
    }
  }
  
  public static void r(Activity paramActivity, String[] paramArrayOfString, int paramInt)
  {
    d locald = c;
    if ((locald != null) && (locald.a(paramActivity, paramArrayOfString, paramInt))) {
      return;
    }
    int i = paramArrayOfString.length;
    int j = 0;
    while (j < i) {
      if (!TextUtils.isEmpty(paramArrayOfString[j]))
      {
        j++;
      }
      else
      {
        paramActivity = new StringBuilder();
        paramActivity.append("Permission request for permissions ");
        paramActivity.append(Arrays.toString(paramArrayOfString));
        paramActivity.append(" must not contain null or empty values");
        throw new IllegalArgumentException(paramActivity.toString());
      }
    }
    if ((paramActivity instanceof e)) {
      ((e)paramActivity).validateRequestPermissionsRequestCode(paramInt);
    }
    c.b(paramActivity, paramArrayOfString, paramInt);
  }
  
  public static void s(Activity paramActivity, a0 parama0)
  {
    b.c(paramActivity, null);
  }
  
  public static void t(Activity paramActivity, a0 parama0)
  {
    b.d(paramActivity, null);
  }
  
  public static boolean u(Activity paramActivity, String paramString)
  {
    return c.c(paramActivity, paramString);
  }
  
  public static void v(Activity paramActivity, Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    a.b(paramActivity, paramIntent, paramInt, paramBundle);
  }
  
  public static void w(Activity paramActivity, IntentSender paramIntentSender, int paramInt1, Intent paramIntent, int paramInt2, int paramInt3, int paramInt4, Bundle paramBundle)
    throws IntentSender.SendIntentException
  {
    a.c(paramActivity, paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4, paramBundle);
  }
  
  public static void x(Activity paramActivity)
  {
    b.e(paramActivity);
  }
  
  static class a
  {
    static void a(Activity paramActivity)
    {
      paramActivity.finishAffinity();
    }
    
    static void b(Activity paramActivity, Intent paramIntent, int paramInt, Bundle paramBundle)
    {
      paramActivity.startActivityForResult(paramIntent, paramInt, paramBundle);
    }
    
    static void c(Activity paramActivity, IntentSender paramIntentSender, int paramInt1, Intent paramIntent, int paramInt2, int paramInt3, int paramInt4, Bundle paramBundle)
      throws IntentSender.SendIntentException
    {
      paramActivity.startIntentSenderForResult(paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4, paramBundle);
    }
  }
  
  static class b
  {
    static void a(Activity paramActivity)
    {
      paramActivity.finishAfterTransition();
    }
    
    static void b(Activity paramActivity)
    {
      paramActivity.postponeEnterTransition();
    }
    
    static void c(Activity paramActivity, SharedElementCallback paramSharedElementCallback)
    {
      paramActivity.setEnterSharedElementCallback(paramSharedElementCallback);
    }
    
    static void d(Activity paramActivity, SharedElementCallback paramSharedElementCallback)
    {
      paramActivity.setExitSharedElementCallback(paramSharedElementCallback);
    }
    
    static void e(Activity paramActivity)
    {
      paramActivity.startPostponedEnterTransition();
    }
  }
  
  static class c
  {
    static void a(Object paramObject)
    {
      ((SharedElementCallback.OnSharedElementsReadyListener)paramObject).onSharedElementsReady();
    }
    
    static void b(Activity paramActivity, String[] paramArrayOfString, int paramInt)
    {
      paramActivity.requestPermissions(paramArrayOfString, paramInt);
    }
    
    static boolean c(Activity paramActivity, String paramString)
    {
      return paramActivity.shouldShowRequestPermissionRationale(paramString);
    }
  }
  
  public static abstract interface d
  {
    public abstract boolean a(Activity paramActivity, String[] paramArrayOfString, int paramInt);
  }
  
  public static abstract interface e
  {
    public abstract void validateRequestPermissionsRequestCode(int paramInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.app.b
 * JD-Core Version:    0.7.0.1
 */