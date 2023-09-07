package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.IntentSender.SendIntentException;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.app.b;
import androidx.core.content.a;
import androidx.core.util.h;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class j<E>
  extends f
{
  private final Activity a;
  private final Context b;
  private final Handler c;
  private final int d;
  final FragmentManager e = new m();
  
  j(Activity paramActivity, Context paramContext, Handler paramHandler, int paramInt)
  {
    this.a = paramActivity;
    this.b = ((Context)h.h(paramContext, "context == null"));
    this.c = ((Handler)h.h(paramHandler, "handler == null"));
    this.d = paramInt;
  }
  
  j(d paramd)
  {
    this(paramd, paramd, new Handler(), 0);
  }
  
  public View c(int paramInt)
  {
    return null;
  }
  
  public boolean d()
  {
    return true;
  }
  
  Activity e()
  {
    return this.a;
  }
  
  Context f()
  {
    return this.b;
  }
  
  Handler g()
  {
    return this.c;
  }
  
  public void h(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {}
  
  public abstract E i();
  
  public LayoutInflater j()
  {
    return LayoutInflater.from(this.b);
  }
  
  @Deprecated
  public void k(Fragment paramFragment, String[] paramArrayOfString, int paramInt) {}
  
  public boolean l(Fragment paramFragment)
  {
    return true;
  }
  
  public boolean m(String paramString)
  {
    return false;
  }
  
  public void n(Fragment paramFragment, @SuppressLint({"UnknownNullness"}) Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    if (paramInt == -1)
    {
      a.j(this.b, paramIntent, paramBundle);
      return;
    }
    throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
  }
  
  @Deprecated
  public void o(Fragment paramFragment, @SuppressLint({"UnknownNullness"}) IntentSender paramIntentSender, int paramInt1, Intent paramIntent, int paramInt2, int paramInt3, int paramInt4, Bundle paramBundle)
    throws IntentSender.SendIntentException
  {
    if (paramInt1 == -1)
    {
      b.w(this.a, paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4, paramBundle);
      return;
    }
    throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
  }
  
  public void p() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.j
 * JD-Core Version:    0.7.0.1
 */