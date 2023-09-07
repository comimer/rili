package com.android.calendar.syncer;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import android.widget.Toast;
import at.bitfire.ical4android.AndroidCalendar;
import at.bitfire.ical4android.AndroidCalendar.Companion;
import at.bitfire.ical4android.Event;
import at.bitfire.ical4android.Event.Companion;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Ref.ObjectRef;
import kotlin.jvm.internal.r;
import kotlin.u;
import okhttp3.v;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/f;", "Ljava/lang/Runnable;", "Lkotlin/u;", "b", "run", "Landroid/content/Context;", "a", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "Lc2/b;", "calendar", "Lc2/b;", "()Lc2/b;", "<init>", "(Landroid/content/Context;Lc2/b;)V", "c", "syncer_release"}, k=1, mv={1, 7, 1})
public final class f
  implements Runnable
{
  public static final a c = new a(null);
  private final Context a;
  private final c2.b b;
  
  public f(Context paramContext, c2.b paramb)
  {
    this.a = paramContext;
    this.b = paramb;
  }
  
  private final void b()
  {
    try
    {
      Object localObject1 = Uri.parse(this.b.p());
      r.e(localObject1, "parse(calendar.url)");
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("Synchronizing ");
      ((StringBuilder)localObject2).append(localObject1);
      Log.i("Cal:D:ProcessEventsTask", ((StringBuilder)localObject2).toString());
      localObject2 = new Ref.ObjectRef();
      b localb = new b((Uri)localObject1, this, (Ref.ObjectRef)localObject2, this.a);
      Object localObject3 = c2.a.a.a(this.a, this.b);
      localObject1 = (String)((Pair)localObject3).component1();
      localObject3 = (String)((Pair)localObject3).component2();
      localb.l((String)localObject1);
      localb.k((String)localObject3);
      if (this.b.l() != null) {
        localb.i(this.b.l());
      }
      if (this.b.m() != 0L) {
        localb.h(Long.valueOf(this.b.m()));
      }
      localb.run();
      localObject2 = (String)((Ref.ObjectRef)localObject2).element;
      if (localObject2 != null)
      {
        Toast.makeText(this.a, (CharSequence)localObject2, 0).show();
        this.b.s((String)localObject2);
      }
      return;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      Log.e("Cal:D:ProcessEventsTask", "Invalid calendar URL", localMalformedURLException);
      Object localObject2 = this.b;
      String str = localMalformedURLException.getLocalizedMessage();
      r.e(str, "e.localizedMessage");
      ((c2.b)localObject2).s(str);
    }
  }
  
  public final c2.b a()
  {
    return this.b;
  }
  
  public void run()
  {
    Thread.currentThread().setContextClassLoader(this.a.getClassLoader());
    try
    {
      AndroidCalendar.Companion.insertColors(this.b.getProvider(), this.b.getAccount());
      b();
    }
    catch (Exception localException)
    {
      Log.e("Cal:D:ProcessEventsTask", "Couldn't sync calendar", localException);
      c2.b localb = this.b;
      String str = localException.getLocalizedMessage();
      r.e(str, "e.localizedMessage");
      localb.s(str);
    }
    Log.i("Cal:D:ProcessEventsTask", "iCalendar file completely processed");
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/f$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/syncer/f$b", "Lcom/android/calendar/syncer/b;", "Ljava/io/InputStream;", "data", "Lokhttp3/v;", "contentType", "", "eTag", "", "lastModified", "Lkotlin/u;", "g", "(Ljava/io/InputStream;Lokhttp3/v;Ljava/lang/String;Ljava/lang/Long;)V", "", "httpCode", "Ljava/net/URL;", "target", "f", "Ljava/lang/Exception;", "Lkotlin/Exception;", "error", "e", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class b
    extends b
  {
    b(Uri paramUri, f paramf, Ref.ObjectRef<String> paramObjectRef, Context paramContext)
    {
      super(paramUri);
    }
    
    public void e(Exception paramException)
    {
      r.f(paramException, "error");
      Log.w("Cal:D:ProcessEventsTask", "Sync error", paramException);
      this.k.element = paramException.getLocalizedMessage();
    }
    
    public void f(int paramInt, URL paramURL)
    {
      if (paramInt == 304)
      {
        Log.i("Cal:D:ProcessEventsTask", "Calendar has not been modified since last sync");
        jdField_this.a().t();
      }
      else if (paramURL != null)
      {
        if (paramInt == 308)
        {
          Object localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Got permanent redirect, saving new URL: ");
          ((StringBuilder)localObject).append(paramURL);
          Log.i("Cal:D:ProcessEventsTask", ((StringBuilder)localObject).toString());
          localObject = jdField_this.a();
          String str = paramURL.toString();
          r.e(str, "target.toString()");
          ((c2.b)localObject).v(str);
        }
        super.f(paramInt, paramURL);
      }
    }
    
    public void g(InputStream paramInputStream, v paramv, String paramString, Long paramLong)
    {
      r.f(paramInputStream, "data");
      if (paramv != null)
      {
        localObject1 = v.d(paramv, null, 1, null);
        paramv = (v)localObject1;
        if (localObject1 != null) {}
      }
      else
      {
        paramv = kotlin.text.d.b;
      }
      paramInputStream = new InputStreamReader(paramInputStream, paramv);
      Object localObject1 = jdField_this;
      paramv = this.k;
      try
      {
        Object localObject2 = Event.Companion.eventsFromReader$default(Event.Companion, paramInputStream, null, 2, null);
        d.a.a(((f)localObject1).a(), (List)localObject2);
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        ((StringBuilder)localObject2).append("Calendar sync successful, ETag=");
        ((StringBuilder)localObject2).append(paramString);
        ((StringBuilder)localObject2).append(", lastModified=");
        ((StringBuilder)localObject2).append(paramLong);
        Log.i("Cal:D:ProcessEventsTask", ((StringBuilder)localObject2).toString());
        localObject1 = ((f)localObject1).a();
        long l;
        if (paramLong != null) {
          l = paramLong.longValue();
        } else {
          l = 0L;
        }
        ((c2.b)localObject1).u(paramString, l);
      }
      finally {}
      try
      {
        Log.e("Cal:D:ProcessEventsTask", "Couldn't process events", paramString);
        paramv.element = paramString.getLocalizedMessage();
        paramv = u.a;
        kotlin.io.a.a(paramInputStream, null);
        return;
      }
      finally
      {
        try
        {
          throw paramv;
        }
        finally
        {
          kotlin.io.a.a(paramInputStream, paramv);
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.f
 * JD-Core Version:    0.7.0.1
 */