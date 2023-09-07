package androidx.core.view;

import android.os.BaseBundle;
import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.core.view.accessibility.g;
import androidx.core.view.accessibility.g.a;
import androidx.core.view.accessibility.h;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
import t.b;

public class a
{
  private static final View.AccessibilityDelegate DEFAULT_DELEGATE = new View.AccessibilityDelegate();
  private final View.AccessibilityDelegate mBridge;
  private final View.AccessibilityDelegate mOriginalDelegate;
  
  public a()
  {
    this(DEFAULT_DELEGATE);
  }
  
  public a(View.AccessibilityDelegate paramAccessibilityDelegate)
  {
    this.mOriginalDelegate = paramAccessibilityDelegate;
    this.mBridge = new a(this);
  }
  
  static List<g.a> getActionList(View paramView)
  {
    List localList = (List)paramView.getTag(b.H);
    paramView = localList;
    if (localList == null) {
      paramView = Collections.emptyList();
    }
    return paramView;
  }
  
  private boolean isSpanStillValid(ClickableSpan paramClickableSpan, View paramView)
  {
    if (paramClickableSpan != null)
    {
      paramView = g.m(paramView.createAccessibilityNodeInfo().getText());
      for (int i = 0; (paramView != null) && (i < paramView.length); i++) {
        if (paramClickableSpan.equals(paramView[i])) {
          return true;
        }
      }
    }
    return false;
  }
  
  private boolean performClickableSpanAction(int paramInt, View paramView)
  {
    Object localObject = (SparseArray)paramView.getTag(b.I);
    if (localObject != null)
    {
      localObject = (WeakReference)((SparseArray)localObject).get(paramInt);
      if (localObject != null)
      {
        localObject = (ClickableSpan)((Reference)localObject).get();
        if (isSpanStillValid((ClickableSpan)localObject, paramView))
        {
          ((ClickableSpan)localObject).onClick(paramView);
          return true;
        }
      }
    }
    return false;
  }
  
  public boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return this.mOriginalDelegate.dispatchPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public h getAccessibilityNodeProvider(View paramView)
  {
    paramView = b.a(this.mOriginalDelegate, paramView);
    if (paramView != null) {
      return new h(paramView);
    }
    return null;
  }
  
  View.AccessibilityDelegate getBridge()
  {
    return this.mBridge;
  }
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    this.mOriginalDelegate.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public void onInitializeAccessibilityNodeInfo(View paramView, g paramg)
  {
    this.mOriginalDelegate.onInitializeAccessibilityNodeInfo(paramView, paramg.r0());
  }
  
  public void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    this.mOriginalDelegate.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return this.mOriginalDelegate.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
  }
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    List localList = getActionList(paramView);
    boolean bool1 = false;
    for (int i = 0;; i++)
    {
      bool2 = bool1;
      if (i >= localList.size()) {
        break;
      }
      g.a locala = (g.a)localList.get(i);
      if (locala.b() == paramInt)
      {
        bool2 = locala.d(paramView, paramBundle);
        break;
      }
    }
    bool1 = bool2;
    if (!bool2) {
      bool1 = b.b(this.mOriginalDelegate, paramView, paramInt, paramBundle);
    }
    boolean bool2 = bool1;
    if (!bool1)
    {
      bool2 = bool1;
      if (paramInt == b.a)
      {
        bool2 = bool1;
        if (paramBundle != null) {
          bool2 = performClickableSpanAction(paramBundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1), paramView);
        }
      }
    }
    return bool2;
  }
  
  public void sendAccessibilityEvent(View paramView, int paramInt)
  {
    this.mOriginalDelegate.sendAccessibilityEvent(paramView, paramInt);
  }
  
  public void sendAccessibilityEventUnchecked(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    this.mOriginalDelegate.sendAccessibilityEventUnchecked(paramView, paramAccessibilityEvent);
  }
  
  static final class a
    extends View.AccessibilityDelegate
  {
    final a a;
    
    a(a parama)
    {
      this.a = parama;
    }
    
    public boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      return this.a.dispatchPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
    }
    
    public AccessibilityNodeProvider getAccessibilityNodeProvider(View paramView)
    {
      paramView = this.a.getAccessibilityNodeProvider(paramView);
      if (paramView != null) {
        paramView = (AccessibilityNodeProvider)paramView.e();
      } else {
        paramView = null;
      }
      return paramView;
    }
    
    public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      this.a.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    }
    
    public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfo paramAccessibilityNodeInfo)
    {
      g localg = g.s0(paramAccessibilityNodeInfo);
      localg.k0(a0.S(paramView));
      localg.b0(a0.N(paramView));
      localg.f0(a0.o(paramView));
      localg.o0(a0.G(paramView));
      this.a.onInitializeAccessibilityNodeInfo(paramView, localg);
      localg.d(paramAccessibilityNodeInfo.getText(), paramView);
      paramView = a.getActionList(paramView);
      for (int i = 0; i < paramView.size(); i++) {
        localg.b((g.a)paramView.get(i));
      }
    }
    
    public void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      this.a.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
    }
    
    public boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      return this.a.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
    }
    
    public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
    {
      return this.a.performAccessibilityAction(paramView, paramInt, paramBundle);
    }
    
    public void sendAccessibilityEvent(View paramView, int paramInt)
    {
      this.a.sendAccessibilityEvent(paramView, paramInt);
    }
    
    public void sendAccessibilityEventUnchecked(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      this.a.sendAccessibilityEventUnchecked(paramView, paramAccessibilityEvent);
    }
  }
  
  static class b
  {
    static AccessibilityNodeProvider a(View.AccessibilityDelegate paramAccessibilityDelegate, View paramView)
    {
      return paramAccessibilityDelegate.getAccessibilityNodeProvider(paramView);
    }
    
    static boolean b(View.AccessibilityDelegate paramAccessibilityDelegate, View paramView, int paramInt, Bundle paramBundle)
    {
      return paramAccessibilityDelegate.performAccessibilityAction(paramView, paramInt, paramBundle);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.a
 * JD-Core Version:    0.7.0.1
 */