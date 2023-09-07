package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import androidx.core.content.a;

public class j
{
  private Context a;
  private long b = 0L;
  private SharedPreferences c;
  private SharedPreferences.Editor d;
  private boolean e;
  private String f;
  private int g;
  private int h = 0;
  private PreferenceScreen i;
  private c j;
  private a k;
  private b l;
  
  public j(Context paramContext)
  {
    this.a = paramContext;
    s(b(paramContext));
  }
  
  private static String b(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramContext.getPackageName());
    localStringBuilder.append("_preferences");
    return localStringBuilder.toString();
  }
  
  public static void l(Context paramContext, String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("_has_set_default_values", 0);
    if ((paramBoolean) || (!localSharedPreferences.getBoolean("_has_set_default_values", false)))
    {
      j localj = new j(paramContext);
      localj.s(paramString);
      localj.r(paramInt1);
      localj.k(paramContext, paramInt2, null);
      localSharedPreferences.edit().putBoolean("_has_set_default_values", true).apply();
    }
  }
  
  private void m(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      SharedPreferences.Editor localEditor = this.d;
      if (localEditor != null) {
        localEditor.apply();
      }
    }
    this.e = paramBoolean;
  }
  
  public <T extends Preference> T a(CharSequence paramCharSequence)
  {
    PreferenceScreen localPreferenceScreen = this.i;
    if (localPreferenceScreen == null) {
      return null;
    }
    return localPreferenceScreen.T0(paramCharSequence);
  }
  
  SharedPreferences.Editor c()
  {
    if (this.e)
    {
      if (this.d == null) {
        this.d = j().edit();
      }
      return this.d;
    }
    return j().edit();
  }
  
  long d()
  {
    try
    {
      long l1 = this.b;
      this.b = (1L + l1);
      return l1;
    }
    finally {}
  }
  
  public b e()
  {
    return this.l;
  }
  
  public c f()
  {
    return this.j;
  }
  
  public d g()
  {
    return null;
  }
  
  public e h()
  {
    return null;
  }
  
  public PreferenceScreen i()
  {
    return this.i;
  }
  
  public SharedPreferences j()
  {
    h();
    if (this.c == null)
    {
      Context localContext;
      if (this.h != 1) {
        localContext = this.a;
      } else {
        localContext = a.b(this.a);
      }
      this.c = localContext.getSharedPreferences(this.f, this.g);
    }
    return this.c;
  }
  
  public PreferenceScreen k(Context paramContext, int paramInt, PreferenceScreen paramPreferenceScreen)
  {
    m(true);
    paramContext = (PreferenceScreen)new i(paramContext, this).d(paramInt, paramPreferenceScreen);
    paramContext.V(this);
    m(false);
    return paramContext;
  }
  
  public void n(a parama)
  {
    this.k = parama;
  }
  
  public void o(b paramb)
  {
    this.l = paramb;
  }
  
  public void p(c paramc)
  {
    this.j = paramc;
  }
  
  public boolean q(PreferenceScreen paramPreferenceScreen)
  {
    PreferenceScreen localPreferenceScreen = this.i;
    if (paramPreferenceScreen != localPreferenceScreen)
    {
      if (localPreferenceScreen != null) {
        localPreferenceScreen.a0();
      }
      this.i = paramPreferenceScreen;
      return true;
    }
    return false;
  }
  
  public void r(int paramInt)
  {
    this.g = paramInt;
    this.c = null;
  }
  
  public void s(String paramString)
  {
    this.f = paramString;
    this.c = null;
  }
  
  boolean t()
  {
    return this.e ^ true;
  }
  
  public void u(Preference paramPreference)
  {
    a locala = this.k;
    if (locala != null) {
      locala.f(paramPreference);
    }
  }
  
  public static abstract interface a
  {
    public abstract void f(Preference paramPreference);
  }
  
  public static abstract interface b
  {
    public abstract void g(PreferenceScreen paramPreferenceScreen);
  }
  
  public static abstract interface c
  {
    public abstract boolean h(Preference paramPreference);
  }
  
  public static abstract class d {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.j
 * JD-Core Version:    0.7.0.1
 */