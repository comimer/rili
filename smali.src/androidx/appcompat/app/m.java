package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import androidx.core.content.c;
import java.util.Calendar;

class m
{
  private static m d;
  private final Context a;
  private final LocationManager b;
  private final a c = new a();
  
  m(Context paramContext, LocationManager paramLocationManager)
  {
    this.a = paramContext;
    this.b = paramLocationManager;
  }
  
  static m a(Context paramContext)
  {
    if (d == null)
    {
      paramContext = paramContext.getApplicationContext();
      d = new m(paramContext, (LocationManager)paramContext.getSystemService("location"));
    }
    return d;
  }
  
  @SuppressLint({"MissingPermission"})
  private Location b()
  {
    int i = c.b(this.a, "android.permission.ACCESS_COARSE_LOCATION");
    Location localLocation1 = null;
    Location localLocation2;
    if (i == 0) {
      localLocation2 = c("network");
    } else {
      localLocation2 = null;
    }
    if (c.b(this.a, "android.permission.ACCESS_FINE_LOCATION") == 0) {
      localLocation1 = c("gps");
    }
    if ((localLocation1 != null) && (localLocation2 != null))
    {
      Location localLocation3 = localLocation2;
      if (localLocation1.getTime() > localLocation2.getTime()) {
        localLocation3 = localLocation1;
      }
      return localLocation3;
    }
    if (localLocation1 != null) {
      localLocation2 = localLocation1;
    }
    return localLocation2;
  }
  
  private Location c(String paramString)
  {
    try
    {
      if (this.b.isProviderEnabled(paramString))
      {
        paramString = this.b.getLastKnownLocation(paramString);
        return paramString;
      }
    }
    catch (Exception paramString)
    {
      Log.d("TwilightManager", "Failed to get last known location", paramString);
    }
    return null;
  }
  
  private boolean e()
  {
    boolean bool;
    if (this.c.f > System.currentTimeMillis()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void f(Location paramLocation)
  {
    a locala = this.c;
    long l1 = System.currentTimeMillis();
    l locall = l.b();
    locall.a(l1 - 86400000L, paramLocation.getLatitude(), paramLocation.getLongitude());
    long l2 = locall.a;
    locall.a(l1, paramLocation.getLatitude(), paramLocation.getLongitude());
    int i = locall.c;
    boolean bool = true;
    if (i != 1) {
      bool = false;
    }
    long l3 = locall.b;
    long l4 = locall.a;
    locall.a(86400000L + l1, paramLocation.getLatitude(), paramLocation.getLongitude());
    long l5 = locall.b;
    if ((l3 != -1L) && (l4 != -1L))
    {
      if (l1 > l4) {
        l1 = 0L + l5;
      } else if (l1 > l3) {
        l1 = 0L + l4;
      } else {
        l1 = 0L + l3;
      }
      l1 += 60000L;
    }
    else
    {
      l1 = 43200000L + l1;
    }
    locala.a = bool;
    locala.b = l2;
    locala.c = l3;
    locala.d = l4;
    locala.e = l5;
    locala.f = l1;
  }
  
  boolean d()
  {
    a locala = this.c;
    if (e()) {
      return locala.a;
    }
    Location localLocation = b();
    if (localLocation != null)
    {
      f(localLocation);
      return locala.a;
    }
    Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
    int i = Calendar.getInstance().get(11);
    boolean bool;
    if ((i >= 6) && (i < 22)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private static class a
  {
    boolean a;
    long b;
    long c;
    long d;
    long e;
    long f;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.app.m
 * JD-Core Version:    0.7.0.1
 */