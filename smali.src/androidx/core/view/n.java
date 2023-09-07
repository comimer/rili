package androidx.core.view;

import android.view.MotionEvent;

public final class n
{
  public static boolean a(MotionEvent paramMotionEvent, int paramInt)
  {
    boolean bool;
    if ((paramMotionEvent.getSource() & paramInt) == paramInt) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.n
 * JD-Core Version:    0.7.0.1
 */