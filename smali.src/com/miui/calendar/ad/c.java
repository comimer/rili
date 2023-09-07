package com.miui.calendar.ad;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Iterator;

public class c
{
  private static c d;
  private SharedPreferences a;
  private ArrayList<a> b = new ArrayList();
  private Context c;
  
  private c(Context paramContext)
  {
    this.c = paramContext.getApplicationContext();
    this.a = paramContext.getSharedPreferences("install_status", 0);
  }
  
  public static c a(Context paramContext)
  {
    try
    {
      if (d == null)
      {
        c localc = new com/miui/calendar/ad/c;
        localc.<init>(paramContext.getApplicationContext());
        d = localc;
      }
      paramContext = d;
      return paramContext;
    }
    finally {}
  }
  
  public int b(String paramString)
  {
    SharedPreferences localSharedPreferences = this.a;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append("_progress");
    return localSharedPreferences.getInt(localStringBuilder.toString(), -1);
  }
  
  public int c(String paramString)
  {
    SharedPreferences localSharedPreferences = this.a;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append("_progress_status");
    return localSharedPreferences.getInt(localStringBuilder.toString(), -1);
  }
  
  public int d(String paramString)
  {
    return this.a.getInt(paramString, -100);
  }
  
  public void e(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onChange() packageName=");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append(",code=");
    ((StringBuilder)localObject).append(paramInt1);
    z.a("Cal:D:InstallCacheManager", ((StringBuilder)localObject).toString());
    if ((paramInt1 != -3) && (paramInt1 != -2))
    {
      if (paramInt1 == -1) {
        break label243;
      }
      if (paramInt1 != 4)
      {
        if (paramInt1 != 5)
        {
          this.a.edit().putInt(paramString, paramInt1).apply();
          break label243;
        }
        localObject = this.a.edit();
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(paramString);
        localStringBuilder.append("_progress_status");
        ((SharedPreferences.Editor)localObject).putInt(localStringBuilder.toString(), paramInt3).apply();
        if (paramInt3 == -4) {
          break label243;
        }
        localStringBuilder = new StringBuilder();
        localStringBuilder.append(paramString);
        localStringBuilder.append("_progress");
        ((SharedPreferences.Editor)localObject).putInt(localStringBuilder.toString(), paramInt2).apply();
        ((SharedPreferences.Editor)localObject).putInt(paramString, paramInt1).apply();
        break label243;
      }
    }
    this.a.edit().remove(paramString).apply();
    label243:
    localObject = this.b.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((a)((Iterator)localObject).next()).a(paramString, paramInt1);
    }
  }
  
  public void f(a parama)
  {
    if (parama == null) {
      z.m("Cal:D:InstallCacheManager", "registerInstallChangeListener() listener is null");
    }
    this.b.add(parama);
  }
  
  public void g(String paramString)
  {
    this.a.edit().remove(paramString).apply();
  }
  
  public void h(a parama)
  {
    if (parama == null) {
      z.m("Cal:D:InstallCacheManager", "unRegisterInstallChangeListener() listener is null");
    }
    this.b.remove(parama);
  }
  
  public static abstract interface a
  {
    public abstract void a(String paramString, int paramInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.ad.c
 * JD-Core Version:    0.7.0.1
 */