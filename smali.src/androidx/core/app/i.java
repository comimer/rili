package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import androidx.core.view.f;
import androidx.core.view.f.a;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.State;
import androidx.lifecycle.a0;
import androidx.lifecycle.n;
import androidx.lifecycle.o;
import n.g;

public class i
  extends Activity
  implements n, f.a
{
  private g<Class<? extends a>, a> mExtraDataMap = new g();
  private o mLifecycleRegistry = new o(this);
  
  private static boolean shouldSkipDump(String[] paramArrayOfString)
  {
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = bool1;
    if (paramArrayOfString != null)
    {
      bool3 = bool1;
      if (paramArrayOfString.length > 0)
      {
        paramArrayOfString = paramArrayOfString[0];
        paramArrayOfString.hashCode();
        int i = -1;
        switch (paramArrayOfString.hashCode())
        {
        default: 
          break;
        case 1455016274: 
          if (paramArrayOfString.equals("--autofill")) {
            i = 2;
          }
          break;
        case 1159329357: 
          if (paramArrayOfString.equals("--contentcapture")) {
            i = 1;
          }
          break;
        case -645125871: 
          if (paramArrayOfString.equals("--translation")) {
            i = 0;
          }
          break;
        }
        switch (i)
        {
        default: 
          bool3 = bool1;
          break;
        case 2: 
          return true;
        case 1: 
          bool3 = bool2;
          if (Build.VERSION.SDK_INT >= 29) {
            bool3 = true;
          }
          return bool3;
        case 0: 
          bool3 = bool1;
          if (Build.VERSION.SDK_INT >= 31) {
            bool3 = true;
          }
          break;
        }
      }
    }
    return bool3;
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    View localView = getWindow().getDecorView();
    if ((localView != null) && (f.d(localView, paramKeyEvent))) {
      return true;
    }
    return f.e(this, localView, this, paramKeyEvent);
  }
  
  public boolean dispatchKeyShortcutEvent(KeyEvent paramKeyEvent)
  {
    View localView = getWindow().getDecorView();
    if ((localView != null) && (f.d(localView, paramKeyEvent))) {
      return true;
    }
    return super.dispatchKeyShortcutEvent(paramKeyEvent);
  }
  
  @Deprecated
  public <T extends a> T getExtraData(Class<T> paramClass)
  {
    return (a)this.mExtraDataMap.get(paramClass);
  }
  
  public Lifecycle getLifecycle()
  {
    return this.mLifecycleRegistry;
  }
  
  @SuppressLint({"RestrictedApi"})
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a0.g(this);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    this.mLifecycleRegistry.j(Lifecycle.State.CREATED);
    super.onSaveInstanceState(paramBundle);
  }
  
  @Deprecated
  public void putExtraData(a parama)
  {
    this.mExtraDataMap.put(parama.getClass(), parama);
  }
  
  protected final boolean shouldDumpInternalState(String[] paramArrayOfString)
  {
    return shouldSkipDump(paramArrayOfString) ^ true;
  }
  
  public boolean superDispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  @Deprecated
  public static class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.app.i
 * JD-Core Version:    0.7.0.1
 */