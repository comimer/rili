package androidx.core.view.accessibility;

import android.view.View;
import android.view.accessibility.AccessibilityRecord;

public class i
{
  public static void a(AccessibilityRecord paramAccessibilityRecord, int paramInt)
  {
    a.c(paramAccessibilityRecord, paramInt);
  }
  
  public static void b(AccessibilityRecord paramAccessibilityRecord, int paramInt)
  {
    a.d(paramAccessibilityRecord, paramInt);
  }
  
  public static void c(AccessibilityRecord paramAccessibilityRecord, View paramView, int paramInt)
  {
    b.a(paramAccessibilityRecord, paramView, paramInt);
  }
  
  static class a
  {
    static int a(AccessibilityRecord paramAccessibilityRecord)
    {
      return paramAccessibilityRecord.getMaxScrollX();
    }
    
    static int b(AccessibilityRecord paramAccessibilityRecord)
    {
      return paramAccessibilityRecord.getMaxScrollY();
    }
    
    static void c(AccessibilityRecord paramAccessibilityRecord, int paramInt)
    {
      paramAccessibilityRecord.setMaxScrollX(paramInt);
    }
    
    static void d(AccessibilityRecord paramAccessibilityRecord, int paramInt)
    {
      paramAccessibilityRecord.setMaxScrollY(paramInt);
    }
  }
  
  static class b
  {
    static void a(AccessibilityRecord paramAccessibilityRecord, View paramView, int paramInt)
    {
      paramAccessibilityRecord.setSource(paramView, paramInt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.accessibility.i
 * JD-Core Version:    0.7.0.1
 */