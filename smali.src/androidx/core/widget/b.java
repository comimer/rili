package androidx.core.widget;

import android.os.Build.VERSION;

public abstract interface b
{
  public static final boolean s;
  
  static
  {
    boolean bool;
    if (Build.VERSION.SDK_INT >= 27) {
      bool = true;
    } else {
      bool = false;
    }
    s = bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.widget.b
 * JD-Core Version:    0.7.0.1
 */