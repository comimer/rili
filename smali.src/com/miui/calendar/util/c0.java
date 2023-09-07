package com.miui.calendar.util;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.reflect.d;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/util/c0;", "T", "Landroid/os/Handler;", "", "e", "d", "Landroid/os/Message;", "msg", "Lkotlin/u;", "dispatchMessage", "c", "()Ljava/lang/Object;", "b", "a", "Ljava/lang/Object;", "getTarget", "target", "Ljava/lang/ref/WeakReference;", "Ljava/lang/ref/WeakReference;", "targetRef", "", "Ljava/lang/String;", "TAG", "Landroid/os/Looper;", "looper", "Landroid/os/Handler$Callback;", "callback", "<init>", "(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Handler$Callback;)V", "(Ljava/lang/Object;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public class c0<T>
  extends Handler
{
  private final T a;
  private final WeakReference<T> b;
  private final String c;
  
  public c0(T paramT)
  {
    this(paramT, null, null, 2, null);
  }
  
  public c0(T paramT, Looper paramLooper, Handler.Callback paramCallback)
  {
    super(paramLooper, paramCallback);
    this.a = paramT;
    this.b = new WeakReference(paramT);
    this.c = v.b(c0.class).i();
  }
  
  private final boolean d()
  {
    return r.a(Looper.myLooper(), Looper.getMainLooper());
  }
  
  private final boolean e()
  {
    boolean bool;
    if (c() != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public final void a()
  {
    getLooper().quitSafely();
  }
  
  public final T b()
  {
    return this.a;
  }
  
  public final T c()
  {
    return this.b.get();
  }
  
  public void dispatchMessage(Message paramMessage)
  {
    r.f(paramMessage, "msg");
    if ((!e()) && (!d()))
    {
      z.g(this.c, "Handler outer reference target is collected!");
      a();
      return;
    }
    super.dispatchMessage(paramMessage);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.c0
 * JD-Core Version:    0.7.0.1
 */