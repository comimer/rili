package androidx.core.app;

import android.app.Notification;
import android.app.Notification.BubbleMetadata;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;

public class l
{
  public static Bundle a(Notification paramNotification)
  {
    return paramNotification.extras;
  }
  
  public static class a
  {
    final Bundle a;
    private IconCompat b;
    private final x[] c;
    private boolean d;
    boolean e;
    private final int f;
    private final boolean g;
    @Deprecated
    public int h;
    public CharSequence i;
    public PendingIntent j;
    private boolean k;
    
    public PendingIntent a()
    {
      return this.j;
    }
    
    public boolean b()
    {
      return this.d;
    }
    
    public Bundle c()
    {
      return this.a;
    }
    
    public IconCompat d()
    {
      if (this.b == null)
      {
        int m = this.h;
        if (m != 0) {
          this.b = IconCompat.f(null, "", m);
        }
      }
      return this.b;
    }
    
    public x[] e()
    {
      return this.c;
    }
    
    public int f()
    {
      return this.f;
    }
    
    public boolean g()
    {
      return this.e;
    }
    
    public CharSequence h()
    {
      return this.i;
    }
    
    public boolean i()
    {
      return this.k;
    }
    
    public boolean j()
    {
      return this.g;
    }
  }
  
  public static final class b
  {
    public static Notification.BubbleMetadata a(b paramb)
    {
      return null;
    }
  }
  
  public static class c
  {
    boolean A;
    String B;
    Bundle C;
    int D = 0;
    int E = 0;
    Notification F;
    RemoteViews G;
    RemoteViews H;
    RemoteViews I;
    String J;
    int K = 0;
    String L;
    long M;
    int N = 0;
    int O = 0;
    boolean P;
    Notification Q;
    boolean R;
    Icon S;
    @Deprecated
    public ArrayList<String> T;
    public Context a;
    public ArrayList<l.a> b = new ArrayList();
    public ArrayList<w> c = new ArrayList();
    ArrayList<l.a> d = new ArrayList();
    CharSequence e;
    CharSequence f;
    PendingIntent g;
    PendingIntent h;
    RemoteViews i;
    Bitmap j;
    CharSequence k;
    int l;
    int m;
    boolean n = true;
    boolean o;
    CharSequence p;
    CharSequence q;
    CharSequence[] r;
    int s;
    int t;
    boolean u;
    String v;
    boolean w;
    String x;
    boolean y = false;
    boolean z;
    
    public c(Context paramContext, String paramString)
    {
      Notification localNotification = new Notification();
      this.Q = localNotification;
      this.a = paramContext;
      this.J = paramString;
      localNotification.when = System.currentTimeMillis();
      this.Q.audioStreamType = -1;
      this.m = 0;
      this.T = new ArrayList();
      this.P = true;
    }
    
    protected static CharSequence c(CharSequence paramCharSequence)
    {
      if (paramCharSequence == null) {
        return paramCharSequence;
      }
      CharSequence localCharSequence = paramCharSequence;
      if (paramCharSequence.length() > 5120) {
        localCharSequence = paramCharSequence.subSequence(0, 5120);
      }
      return localCharSequence;
    }
    
    public Notification a()
    {
      return new t(this).b();
    }
    
    public Bundle b()
    {
      if (this.C == null) {
        this.C = new Bundle();
      }
      return this.C;
    }
    
    public c d(String paramString)
    {
      this.B = paramString;
      return this;
    }
    
    public c e(PendingIntent paramPendingIntent)
    {
      this.g = paramPendingIntent;
      return this;
    }
    
    public c f(CharSequence paramCharSequence)
    {
      this.f = c(paramCharSequence);
      return this;
    }
    
    public c g(CharSequence paramCharSequence)
    {
      this.e = c(paramCharSequence);
      return this;
    }
    
    public c h(PendingIntent paramPendingIntent)
    {
      this.Q.deleteIntent = paramPendingIntent;
      return this;
    }
    
    public c i(int paramInt)
    {
      this.Q.icon = paramInt;
      return this;
    }
    
    public c j(CharSequence paramCharSequence)
    {
      this.p = c(paramCharSequence);
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.app.l
 * JD-Core Version:    0.7.0.1
 */