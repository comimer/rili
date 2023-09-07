package h;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.DisplayMetrics;
import d.b;
import d.d;
import d.j;

public class a
{
  private Context a;
  
  private a(Context paramContext)
  {
    this.a = paramContext;
  }
  
  public static a b(Context paramContext)
  {
    return new a(paramContext);
  }
  
  public boolean a()
  {
    boolean bool;
    if (this.a.getApplicationInfo().targetSdkVersion < 14) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public int c()
  {
    return this.a.getResources().getDisplayMetrics().widthPixels / 2;
  }
  
  public int d()
  {
    Configuration localConfiguration = this.a.getResources().getConfiguration();
    int i = localConfiguration.screenWidthDp;
    int j = localConfiguration.screenHeightDp;
    if ((localConfiguration.smallestScreenWidthDp <= 600) && (i <= 600) && ((i <= 960) || (j <= 720)) && ((i <= 720) || (j <= 960)))
    {
      if ((i < 500) && ((i <= 640) || (j <= 480)) && ((i <= 480) || (j <= 640)))
      {
        if (i >= 360) {
          return 3;
        }
        return 2;
      }
      return 4;
    }
    return 5;
  }
  
  public int e()
  {
    return this.a.getResources().getDimensionPixelSize(d.b);
  }
  
  public int f()
  {
    TypedArray localTypedArray = this.a.obtainStyledAttributes(null, j.a, d.a.c, 0);
    int i = localTypedArray.getLayoutDimension(j.j, 0);
    Resources localResources = this.a.getResources();
    int j = i;
    if (!g()) {
      j = Math.min(i, localResources.getDimensionPixelSize(d.a));
    }
    localTypedArray.recycle();
    return j;
  }
  
  public boolean g()
  {
    return this.a.getResources().getBoolean(b.a);
  }
  
  public boolean h()
  {
    return true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h.a
 * JD-Core Version:    0.7.0.1
 */