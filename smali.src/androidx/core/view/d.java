package androidx.core.view;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.DisplayCutout;
import androidx.core.util.c;
import java.util.List;

public final class d
{
  private final DisplayCutout a;
  
  private d(DisplayCutout paramDisplayCutout)
  {
    this.a = paramDisplayCutout;
  }
  
  static d e(DisplayCutout paramDisplayCutout)
  {
    if (paramDisplayCutout == null) {
      paramDisplayCutout = null;
    } else {
      paramDisplayCutout = new d(paramDisplayCutout);
    }
    return paramDisplayCutout;
  }
  
  public int a()
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return a.c(this.a);
    }
    return 0;
  }
  
  public int b()
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return a.d(this.a);
    }
    return 0;
  }
  
  public int c()
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return a.e(this.a);
    }
    return 0;
  }
  
  public int d()
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return a.f(this.a);
    }
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject != null) && (d.class == paramObject.getClass()))
    {
      paramObject = (d)paramObject;
      return c.a(this.a, paramObject.a);
    }
    return false;
  }
  
  public int hashCode()
  {
    DisplayCutout localDisplayCutout = this.a;
    int i;
    if (localDisplayCutout == null) {
      i = 0;
    } else {
      i = localDisplayCutout.hashCode();
    }
    return i;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("DisplayCutoutCompat{");
    localStringBuilder.append(this.a);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  static class a
  {
    static DisplayCutout a(Rect paramRect, List<Rect> paramList)
    {
      return new DisplayCutout(paramRect, paramList);
    }
    
    static List<Rect> b(DisplayCutout paramDisplayCutout)
    {
      return paramDisplayCutout.getBoundingRects();
    }
    
    static int c(DisplayCutout paramDisplayCutout)
    {
      return paramDisplayCutout.getSafeInsetBottom();
    }
    
    static int d(DisplayCutout paramDisplayCutout)
    {
      return paramDisplayCutout.getSafeInsetLeft();
    }
    
    static int e(DisplayCutout paramDisplayCutout)
    {
      return paramDisplayCutout.getSafeInsetRight();
    }
    
    static int f(DisplayCutout paramDisplayCutout)
    {
      return paramDisplayCutout.getSafeInsetTop();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.d
 * JD-Core Version:    0.7.0.1
 */