package c2;

import android.annotation.SuppressLint;
import android.content.ContentProviderClient;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import at.bitfire.ical4android.AndroidCalendar;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lc2/a;", "", "Lc2/b;", "calendar", "", "field", "Lkotlin/u;", "b", "Landroid/content/Context;", "context", "Lkotlin/Pair;", "a", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
public final class a
{
  public static final a a = new a();
  
  private final void b(b paramb, String paramString)
  {
    ContentValues localContentValues = new ContentValues(1);
    localContentValues.putNull(paramString);
    paramb.getProvider().update(paramb.calendarSyncURI(), localContentValues, null, null);
  }
  
  @SuppressLint({"ApplySharedPref"})
  public final Pair<String, String> a(Context paramContext, b paramb)
  {
    r.f(paramContext, "context");
    r.f(paramb, "calendar");
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("basicAuth", 0);
    String str = paramb.p();
    r.c(str);
    paramContext = paramb.o();
    StringBuilder localStringBuilder;
    if (paramContext != null)
    {
      localObject = localSharedPreferences.edit();
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("username_");
      localStringBuilder.append(str);
      ((SharedPreferences.Editor)localObject).putString(localStringBuilder.toString(), paramContext).commit();
      a.b(paramb, b.h.e());
    }
    else
    {
      paramContext = null;
    }
    Object localObject = paramb.n();
    if (localObject != null)
    {
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("password_");
      localStringBuilder.append(str);
      localEditor.putString(localStringBuilder.toString(), (String)localObject).commit();
      a.b(paramb, b.h.d());
      paramb = (b)localObject;
    }
    else
    {
      paramb = null;
    }
    localObject = paramContext;
    if (paramContext == null)
    {
      paramContext = new StringBuilder();
      paramContext.append("username_");
      paramContext.append(str);
      localObject = localSharedPreferences.getString(paramContext.toString(), null);
    }
    paramContext = paramb;
    if (paramb == null)
    {
      paramContext = new StringBuilder();
      paramContext.append("password_");
      paramContext.append(str);
      paramContext = localSharedPreferences.getString(paramContext.toString(), null);
    }
    return new Pair(localObject, paramContext);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c2.a
 * JD-Core Version:    0.7.0.1
 */