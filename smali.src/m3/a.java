package m3;

import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import com.android.calendar.application.CalendarApplication;

public class a
{
  private int a;
  private String b;
  private String c;
  private int d;
  private a e;
  private PendingIntent f;
  private PendingIntent g;
  private PendingIntent h;
  private Uri i;
  private boolean j;
  private boolean k;
  private boolean l;
  private boolean m;
  private int n;
  
  public boolean A()
  {
    return this.m;
  }
  
  public boolean B()
  {
    return this.j;
  }
  
  public boolean o()
  {
    return this.l;
  }
  
  public a p()
  {
    return this.e;
  }
  
  public PendingIntent q()
  {
    return this.f;
  }
  
  public String r()
  {
    return this.c;
  }
  
  public String s()
  {
    return this.b;
  }
  
  public PendingIntent t()
  {
    return this.g;
  }
  
  public int u()
  {
    return this.n;
  }
  
  public PendingIntent v()
  {
    return this.h;
  }
  
  public int w()
  {
    return this.a;
  }
  
  public int x()
  {
    return this.d;
  }
  
  public Uri y()
  {
    return this.i;
  }
  
  public boolean z()
  {
    return this.k;
  }
  
  public static class a
  {
    private PendingIntent a;
    private String b;
    private int c = 0;
    private boolean d = false;
    
    public static a e(Context paramContext, int paramInt, PendingIntent paramPendingIntent, boolean paramBoolean)
    {
      a locala = new a();
      locala.b = paramContext.getString(paramInt);
      locala.a = paramPendingIntent;
      locala.d = paramBoolean;
      return locala;
    }
    
    public int a()
    {
      return this.c;
    }
    
    public PendingIntent b()
    {
      return this.a;
    }
    
    public String c()
    {
      return this.b;
    }
    
    public boolean d()
    {
      return this.d;
    }
  }
  
  public static class b
  {
    private String a;
    private String b;
    private int c = 2131232441;
    private a.a d;
    private boolean e;
    private int f;
    private boolean g;
    private boolean h;
    private PendingIntent i;
    private PendingIntent j;
    private PendingIntent k;
    private Uri l;
    private boolean m;
    private int n;
    
    public b a(a.a parama)
    {
      this.d = parama;
      return this;
    }
    
    public a b()
    {
      a locala = new a();
      if (TextUtils.isEmpty(this.a)) {
        this.b = CalendarApplication.e().getApplicationContext().getResources().getString(2131887044);
      }
      a.a(locala, this.a);
      a.c(locala, this.b);
      a.g(locala, this.c);
      a.h(locala, this.d);
      a.i(locala, this.i);
      a.j(locala, this.j);
      a.k(locala, this.k);
      a.l(locala, this.l);
      a.m(locala, this.m);
      a.n(locala, this.g);
      a.b(locala, this.f);
      a.d(locala, this.e);
      a.e(locala, this.n);
      a.f(locala, this.h);
      return locala;
    }
    
    public b c(boolean paramBoolean)
    {
      this.e = paramBoolean;
      return this;
    }
    
    public b d(PendingIntent paramPendingIntent)
    {
      this.i = paramPendingIntent;
      return this;
    }
    
    public b e(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public b f(String paramString)
    {
      this.a = paramString;
      return this;
    }
    
    public b g(PendingIntent paramPendingIntent)
    {
      this.j = paramPendingIntent;
      return this;
    }
    
    public b h(boolean paramBoolean)
    {
      this.g = paramBoolean;
      return this;
    }
    
    public b i(int paramInt)
    {
      this.f = paramInt;
      return this;
    }
    
    public b j(PendingIntent paramPendingIntent)
    {
      this.k = paramPendingIntent;
      return this;
    }
    
    public b k(boolean paramBoolean)
    {
      this.h = paramBoolean;
      return this;
    }
    
    public b l(int paramInt)
    {
      this.n = paramInt;
      return this;
    }
    
    public b m(boolean paramBoolean)
    {
      this.m = paramBoolean;
      return this;
    }
    
    public b n(Uri paramUri)
    {
      this.l = paramUri;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m3.a
 * JD-Core Version:    0.7.0.1
 */