package androidx.core.view.accessibility;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.ArrayList;
import java.util.List;

public class h
{
  private final Object a;
  
  public h()
  {
    this.a = new c(this);
  }
  
  public h(Object paramObject)
  {
    this.a = paramObject;
  }
  
  public void a(int paramInt, g paramg, String paramString, Bundle paramBundle) {}
  
  public g b(int paramInt)
  {
    return null;
  }
  
  public List<g> c(String paramString, int paramInt)
  {
    return null;
  }
  
  public g d(int paramInt)
  {
    return null;
  }
  
  public Object e()
  {
    return this.a;
  }
  
  public boolean f(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    return false;
  }
  
  static class a
    extends AccessibilityNodeProvider
  {
    final h a;
    
    a(h paramh)
    {
      this.a = paramh;
    }
    
    public AccessibilityNodeInfo createAccessibilityNodeInfo(int paramInt)
    {
      g localg = this.a.b(paramInt);
      if (localg == null) {
        return null;
      }
      return localg.r0();
    }
    
    public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String paramString, int paramInt)
    {
      List localList = this.a.c(paramString, paramInt);
      if (localList == null) {
        return null;
      }
      paramString = new ArrayList();
      int i = localList.size();
      for (paramInt = 0; paramInt < i; paramInt++) {
        paramString.add(((g)localList.get(paramInt)).r0());
      }
      return paramString;
    }
    
    public boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle)
    {
      return this.a.f(paramInt1, paramInt2, paramBundle);
    }
  }
  
  static class b
    extends h.a
  {
    b(h paramh)
    {
      super();
    }
    
    public AccessibilityNodeInfo findFocus(int paramInt)
    {
      g localg = this.a.d(paramInt);
      if (localg == null) {
        return null;
      }
      return localg.r0();
    }
  }
  
  static class c
    extends h.b
  {
    c(h paramh)
    {
      super();
    }
    
    public void addExtraDataToAccessibilityNodeInfo(int paramInt, AccessibilityNodeInfo paramAccessibilityNodeInfo, String paramString, Bundle paramBundle)
    {
      this.a.a(paramInt, g.s0(paramAccessibilityNodeInfo), paramString, paramBundle);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.accessibility.h
 * JD-Core Version:    0.7.0.1
 */