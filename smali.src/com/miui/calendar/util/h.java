package com.miui.calendar.util;

import android.content.AsyncQueryHandler;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.os.Looper;
import android.provider.CalendarContract.CalendarCache;
import android.text.TextUtils;
import android.text.format.DateUtils;
import com.android.calendar.application.CalendarApplication;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Formatter;
import java.util.Locale;

public class h
{
  private static final String a = ;
  
  public static SharedPreferences b(Context paramContext, String paramString)
  {
    return paramContext.getSharedPreferences(paramString, 0);
  }
  
  public static boolean c(String paramString)
  {
    return "LOCAL".equals(paramString);
  }
  
  public static boolean d(String paramString)
  {
    return "com.xiaomi".equals(paramString);
  }
  
  public static void e(SharedPreferences paramSharedPreferences, String paramString1, String paramString2)
  {
    paramSharedPreferences = paramSharedPreferences.edit();
    paramSharedPreferences.putString(paramString1, paramString2);
    paramSharedPreferences.apply();
  }
  
  public static void f(SharedPreferences paramSharedPreferences, String paramString, boolean paramBoolean)
  {
    paramSharedPreferences = paramSharedPreferences.edit();
    paramSharedPreferences.putBoolean(paramString, paramBoolean);
    paramSharedPreferences.apply();
  }
  
  public static class a
  {
    private static WeakReference<a> c;
    private static final String[] d = { "timezoneType" };
    private static final String[] e = { "timezoneInstances" };
    public static final String[] f = { "key", "value" };
    private static StringBuilder g = new StringBuilder(50);
    private static Formatter h = new Formatter(g, Locale.getDefault());
    private static volatile boolean i = true;
    private static volatile boolean j = false;
    private static volatile String k = r0.j();
    private static int l = 1;
    private a a;
    private final String b;
    
    private a(String paramString)
    {
      this.b = paramString;
    }
    
    public static a h(String paramString)
    {
      a locala = null;
      try
      {
        Object localObject = c;
        if (localObject != null) {
          locala = (a)((Reference)localObject).get();
        }
        localObject = locala;
        if (locala == null)
        {
          localObject = new com/miui/calendar/util/h$a;
          ((a)localObject).<init>(paramString);
          paramString = new java/lang/ref/WeakReference;
          paramString.<init>(localObject);
          c = paramString;
        }
        return localObject;
      }
      finally {}
    }
    
    public String g(Context paramContext, long paramLong1, long paramLong2, int paramInt)
    {
      String str;
      if ((paramInt & 0x2000) != 0) {
        str = "UTC";
      }
      for (;;)
      {
        break;
        if ((0x100000 & paramInt) != 0) {
          str = r0.j();
        } else {
          str = i(paramContext);
        }
      }
      synchronized (g)
      {
        g.setLength(0);
        paramContext = DateUtils.formatDateRange(paramContext, h, paramLong1, paramLong2, paramInt, str).toString();
        return paramContext;
      }
    }
    
    public String i(Context paramContext)
    {
      if ((i) && (Looper.myLooper() != null))
      {
        i = false;
        if (this.a == null) {
          this.a = new a(paramContext.getContentResolver(), this);
        }
        this.a.startQuery(0, paramContext, CalendarContract.CalendarCache.URI, f, null, null, null);
      }
      paramContext = h.b(CalendarApplication.e(), this.b);
      j = paramContext.getBoolean("preferences_home_tz_enabled", false);
      k = paramContext.getString("preferences_home_tz", h.a());
      if (j) {
        paramContext = k;
      } else {
        paramContext = h.a();
      }
      return paramContext;
    }
    
    public void j(Context paramContext, String paramString)
    {
      if (TextUtils.isEmpty(paramString)) {
        return;
      }
      String str = "auto";
      boolean bool1 = "auto".equals(paramString);
      boolean bool2 = false;
      if (bool1)
      {
        bool2 = j;
        j = false;
      }
      else
      {
        if ((!j) || (!TextUtils.equals(k, paramString))) {
          bool2 = true;
        }
        j = true;
        k = paramString;
      }
      if (bool2)
      {
        paramString = h.b(paramContext, this.b);
        h.f(paramString, "preferences_home_tz_enabled", j);
        h.e(paramString, "preferences_home_tz", k);
        paramString = new ContentValues();
        a locala = this.a;
        if (locala != null) {
          locala.cancelOperation(l);
        }
        this.a = new a(paramContext.getContentResolver(), this);
        int m = l + 1;
        l = m;
        if (m == 0) {
          l = 1;
        }
        paramContext = str;
        if (j) {
          paramContext = "home";
        }
        paramString.put("value", paramContext);
        this.a.startUpdate(l, null, CalendarContract.CalendarCache.URI, paramString, "key=?", d);
        if (j)
        {
          paramContext = new ContentValues();
          paramContext.put("value", k);
          this.a.startUpdate(l, null, CalendarContract.CalendarCache.URI, paramContext, "key=?", e);
        }
      }
    }
    
    private static class a
      extends AsyncQueryHandler
    {
      private WeakReference<h.a> a;
      
      public a(ContentResolver paramContentResolver, h.a parama)
      {
        super();
        this.a = new WeakReference(parama);
      }
      
      protected void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
      {
        h.a locala = (h.a)this.a.get();
        if (locala != null)
        {
          if (paramCursor == null)
          {
            h.a.a(true);
            return;
          }
          paramInt = 0;
          int i = paramCursor.getColumnIndexOrThrow("key");
          int j = paramCursor.getColumnIndexOrThrow("value");
          while (paramCursor.moveToNext())
          {
            String str1 = paramCursor.getString(i);
            String str2 = paramCursor.getString(j);
            if (TextUtils.equals(str1, "timezoneType"))
            {
              boolean bool = TextUtils.equals(str2, "auto") ^ true;
              if (bool != h.a.b()) {
                h.a.c(bool);
              }
            }
            else
            {
              for (;;)
              {
                paramInt = 1;
                break;
                if ((!TextUtils.equals(str1, "timezoneInstancesPrevious")) || (TextUtils.isEmpty(str2)) || (TextUtils.equals(h.a.d(), str2))) {
                  break;
                }
                h.a.e(str2);
              }
            }
          }
          paramCursor.close();
          if (paramInt != 0)
          {
            paramObject = h.b((Context)paramObject, h.a.f(locala));
            h.f(paramObject, "preferences_home_tz_enabled", h.a.b());
            h.e(paramObject, "preferences_home_tz", h.a.d());
          }
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.h
 * JD-Core Version:    0.7.0.1
 */