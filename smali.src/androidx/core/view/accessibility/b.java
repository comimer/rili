package androidx.core.view.accessibility;

import android.view.accessibility.AccessibilityEvent;

public final class b
{
  public static int a(AccessibilityEvent paramAccessibilityEvent)
  {
    return a.a(paramAccessibilityEvent);
  }
  
  public static void b(AccessibilityEvent paramAccessibilityEvent, int paramInt)
  {
    a.b(paramAccessibilityEvent, paramInt);
  }
  
  static class a
  {
    static int a(AccessibilityEvent paramAccessibilityEvent)
    {
      return paramAccessibilityEvent.getContentChangeTypes();
    }
    
    static void b(AccessibilityEvent paramAccessibilityEvent, int paramInt)
    {
      paramAccessibilityEvent.setContentChangeTypes(paramInt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.accessibility.b
 * JD-Core Version:    0.7.0.1
 */