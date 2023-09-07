package androidx.customview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityRecord;
import androidx.core.view.a0;
import androidx.core.view.accessibility.g;
import androidx.core.view.accessibility.i;
import java.util.ArrayList;
import java.util.List;

public abstract class a
  extends androidx.core.view.a
{
  private static final String DEFAULT_CLASS_NAME = "android.view.View";
  public static final int HOST_ID = -1;
  public static final int INVALID_ID = -2147483648;
  private static final Rect INVALID_PARENT_BOUNDS = new Rect(2147483647, 2147483647, -2147483648, -2147483648);
  private static final b.a<g> NODE_ADAPTER = new a();
  private static final b.b<n.h<g>, g> SPARSE_VALUES_ADAPTER = new b();
  int mAccessibilityFocusedVirtualViewId = -2147483648;
  private final View mHost;
  private int mHoveredVirtualViewId = -2147483648;
  int mKeyboardFocusedVirtualViewId = -2147483648;
  private final AccessibilityManager mManager;
  private c mNodeProvider;
  private final int[] mTempGlobalRect = new int[2];
  private final Rect mTempParentRect = new Rect();
  private final Rect mTempScreenRect = new Rect();
  private final Rect mTempVisibleRect = new Rect();
  
  public a(View paramView)
  {
    if (paramView != null)
    {
      this.mHost = paramView;
      this.mManager = ((AccessibilityManager)paramView.getContext().getSystemService("accessibility"));
      paramView.setFocusable(true);
      if (a0.x(paramView) == 0) {
        a0.w0(paramView, 1);
      }
      return;
    }
    throw new IllegalArgumentException("View may not be null");
  }
  
  private boolean clearAccessibilityFocus(int paramInt)
  {
    if (this.mAccessibilityFocusedVirtualViewId == paramInt)
    {
      this.mAccessibilityFocusedVirtualViewId = -2147483648;
      this.mHost.invalidate();
      sendEventForVirtualView(paramInt, 65536);
      return true;
    }
    return false;
  }
  
  private boolean clickKeyboardFocusedVirtualView()
  {
    int i = this.mKeyboardFocusedVirtualViewId;
    boolean bool;
    if ((i != -2147483648) && (onPerformActionForVirtualView(i, 16, null))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private AccessibilityEvent createEvent(int paramInt1, int paramInt2)
  {
    if (paramInt1 != -1) {
      return createEventForChild(paramInt1, paramInt2);
    }
    return createEventForHost(paramInt2);
  }
  
  private AccessibilityEvent createEventForChild(int paramInt1, int paramInt2)
  {
    AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain(paramInt2);
    g localg = obtainAccessibilityNodeInfo(paramInt1);
    localAccessibilityEvent.getText().add(localg.r());
    localAccessibilityEvent.setContentDescription(localg.o());
    localAccessibilityEvent.setScrollable(localg.C());
    localAccessibilityEvent.setPassword(localg.B());
    localAccessibilityEvent.setEnabled(localg.x());
    localAccessibilityEvent.setChecked(localg.v());
    onPopulateEventForVirtualView(paramInt1, localAccessibilityEvent);
    if ((localAccessibilityEvent.getText().isEmpty()) && (localAccessibilityEvent.getContentDescription() == null)) {
      throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
    }
    localAccessibilityEvent.setClassName(localg.l());
    i.c(localAccessibilityEvent, this.mHost, paramInt1);
    localAccessibilityEvent.setPackageName(this.mHost.getContext().getPackageName());
    return localAccessibilityEvent;
  }
  
  private AccessibilityEvent createEventForHost(int paramInt)
  {
    AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain(paramInt);
    this.mHost.onInitializeAccessibilityEvent(localAccessibilityEvent);
    return localAccessibilityEvent;
  }
  
  private g createNodeForChild(int paramInt)
  {
    g localg1 = g.F();
    localg1.X(true);
    localg1.Z(true);
    localg1.R("android.view.View");
    Rect localRect1 = INVALID_PARENT_BOUNDS;
    localg1.N(localRect1);
    localg1.O(localRect1);
    localg1.g0(this.mHost);
    onPopulateNodeForVirtualView(paramInt, localg1);
    if ((localg1.r() == null) && (localg1.o() == null)) {
      throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
    }
    localg1.i(this.mTempParentRect);
    if (!this.mTempParentRect.equals(localRect1))
    {
      int i = localg1.h();
      if ((i & 0x40) == 0)
      {
        if ((i & 0x80) == 0)
        {
          localg1.e0(this.mHost.getContext().getPackageName());
          localg1.n0(this.mHost, paramInt);
          if (this.mAccessibilityFocusedVirtualViewId == paramInt)
          {
            localg1.L(true);
            localg1.a(128);
          }
          else
          {
            localg1.L(false);
            localg1.a(64);
          }
          boolean bool;
          if (this.mKeyboardFocusedVirtualViewId == paramInt) {
            bool = true;
          } else {
            bool = false;
          }
          if (bool) {
            localg1.a(2);
          } else if (localg1.y()) {
            localg1.a(1);
          }
          localg1.a0(bool);
          this.mHost.getLocationOnScreen(this.mTempGlobalRect);
          localg1.j(this.mTempScreenRect);
          if (this.mTempScreenRect.equals(localRect1))
          {
            localg1.i(this.mTempScreenRect);
            if (localg1.b != -1)
            {
              g localg2 = g.F();
              for (paramInt = localg1.b; paramInt != -1; paramInt = localg2.b)
              {
                localg2.h0(this.mHost, -1);
                localg2.N(INVALID_PARENT_BOUNDS);
                onPopulateNodeForVirtualView(paramInt, localg2);
                localg2.i(this.mTempParentRect);
                Rect localRect2 = this.mTempScreenRect;
                localRect1 = this.mTempParentRect;
                localRect2.offset(localRect1.left, localRect1.top);
              }
              localg2.J();
            }
            this.mTempScreenRect.offset(this.mTempGlobalRect[0] - this.mHost.getScrollX(), this.mTempGlobalRect[1] - this.mHost.getScrollY());
          }
          if (this.mHost.getLocalVisibleRect(this.mTempVisibleRect))
          {
            this.mTempVisibleRect.offset(this.mTempGlobalRect[0] - this.mHost.getScrollX(), this.mTempGlobalRect[1] - this.mHost.getScrollY());
            if (this.mTempScreenRect.intersect(this.mTempVisibleRect))
            {
              localg1.O(this.mTempScreenRect);
              if (isVisibleToUser(this.mTempScreenRect)) {
                localg1.q0(true);
              }
            }
          }
          return localg1;
        }
        throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
      }
      throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
    }
    throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
  }
  
  private g createNodeForHost()
  {
    g localg = g.G(this.mHost);
    a0.Y(this.mHost, localg);
    ArrayList localArrayList = new ArrayList();
    getVisibleVirtualViews(localArrayList);
    if ((localg.k() > 0) && (localArrayList.size() > 0)) {
      throw new RuntimeException("Views cannot have both real and virtual children");
    }
    int i = 0;
    int j = localArrayList.size();
    while (i < j)
    {
      localg.c(this.mHost, ((Integer)localArrayList.get(i)).intValue());
      i++;
    }
    return localg;
  }
  
  private n.h<g> getAllNodes()
  {
    ArrayList localArrayList = new ArrayList();
    getVisibleVirtualViews(localArrayList);
    n.h localh = new n.h();
    for (int i = 0; i < localArrayList.size(); i++)
    {
      g localg = createNodeForChild(((Integer)localArrayList.get(i)).intValue());
      localh.l(((Integer)localArrayList.get(i)).intValue(), localg);
    }
    return localh;
  }
  
  private void getBoundsInParent(int paramInt, Rect paramRect)
  {
    obtainAccessibilityNodeInfo(paramInt).i(paramRect);
  }
  
  private static Rect guessPreviouslyFocusedRect(View paramView, int paramInt, Rect paramRect)
  {
    int i = paramView.getWidth();
    int j = paramView.getHeight();
    if (paramInt != 17)
    {
      if (paramInt != 33)
      {
        if (paramInt != 66)
        {
          if (paramInt == 130) {
            paramRect.set(0, -1, i, -1);
          } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
          }
        }
        else {
          paramRect.set(-1, 0, -1, j);
        }
      }
      else {
        paramRect.set(0, j, i, j);
      }
    }
    else {
      paramRect.set(i, 0, i, j);
    }
    return paramRect;
  }
  
  private boolean isVisibleToUser(Rect paramRect)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramRect != null) {
      if (paramRect.isEmpty())
      {
        bool2 = bool1;
      }
      else
      {
        if (this.mHost.getWindowVisibility() != 0) {
          return false;
        }
        paramRect = this.mHost.getParent();
        while ((paramRect instanceof View))
        {
          paramRect = (View)paramRect;
          if ((paramRect.getAlpha() > 0.0F) && (paramRect.getVisibility() == 0)) {
            paramRect = paramRect.getParent();
          } else {
            return false;
          }
        }
        bool2 = bool1;
        if (paramRect != null) {
          bool2 = true;
        }
      }
    }
    return bool2;
  }
  
  private static int keyToDirection(int paramInt)
  {
    if (paramInt != 19)
    {
      if (paramInt != 21)
      {
        if (paramInt != 22) {
          return 130;
        }
        return 66;
      }
      return 17;
    }
    return 33;
  }
  
  private boolean moveFocus(int paramInt, Rect paramRect)
  {
    n.h localh = getAllNodes();
    int i = this.mKeyboardFocusedVirtualViewId;
    int j = -2147483648;
    g localg;
    if (i == -2147483648) {
      localg = null;
    } else {
      localg = (g)localh.f(i);
    }
    if ((paramInt != 1) && (paramInt != 2))
    {
      if ((paramInt != 17) && (paramInt != 33) && (paramInt != 66) && (paramInt != 130)) {
        throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
      }
      Rect localRect = new Rect();
      i = this.mKeyboardFocusedVirtualViewId;
      if (i != -2147483648) {
        getBoundsInParent(i, localRect);
      } else if (paramRect != null) {
        localRect.set(paramRect);
      } else {
        guessPreviouslyFocusedRect(this.mHost, paramInt, localRect);
      }
      paramRect = (g)b.c(localh, SPARSE_VALUES_ADAPTER, NODE_ADAPTER, localg, localRect, paramInt);
    }
    else
    {
      boolean bool;
      if (a0.z(this.mHost) == 1) {
        bool = true;
      } else {
        bool = false;
      }
      paramRect = (g)b.d(localh, SPARSE_VALUES_ADAPTER, NODE_ADAPTER, localg, paramInt, bool, false);
    }
    if (paramRect == null) {
      paramInt = j;
    } else {
      paramInt = localh.k(localh.i(paramRect));
    }
    return requestKeyboardFocusForVirtualView(paramInt);
  }
  
  private boolean performActionForChild(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    if (paramInt2 != 1)
    {
      if (paramInt2 != 2)
      {
        if (paramInt2 != 64)
        {
          if (paramInt2 != 128) {
            return onPerformActionForVirtualView(paramInt1, paramInt2, paramBundle);
          }
          return clearAccessibilityFocus(paramInt1);
        }
        return requestAccessibilityFocus(paramInt1);
      }
      return clearKeyboardFocusForVirtualView(paramInt1);
    }
    return requestKeyboardFocusForVirtualView(paramInt1);
  }
  
  private boolean performActionForHost(int paramInt, Bundle paramBundle)
  {
    return a0.a0(this.mHost, paramInt, paramBundle);
  }
  
  private boolean requestAccessibilityFocus(int paramInt)
  {
    if ((this.mManager.isEnabled()) && (this.mManager.isTouchExplorationEnabled()))
    {
      int i = this.mAccessibilityFocusedVirtualViewId;
      if (i != paramInt)
      {
        if (i != -2147483648) {
          clearAccessibilityFocus(i);
        }
        this.mAccessibilityFocusedVirtualViewId = paramInt;
        this.mHost.invalidate();
        sendEventForVirtualView(paramInt, 32768);
        return true;
      }
    }
    return false;
  }
  
  private void updateHoveredVirtualView(int paramInt)
  {
    int i = this.mHoveredVirtualViewId;
    if (i == paramInt) {
      return;
    }
    this.mHoveredVirtualViewId = paramInt;
    sendEventForVirtualView(paramInt, 128);
    sendEventForVirtualView(i, 256);
  }
  
  public final boolean clearKeyboardFocusForVirtualView(int paramInt)
  {
    if (this.mKeyboardFocusedVirtualViewId != paramInt) {
      return false;
    }
    this.mKeyboardFocusedVirtualViewId = -2147483648;
    onVirtualViewKeyboardFocusChanged(paramInt, false);
    sendEventForVirtualView(paramInt, 8);
    return true;
  }
  
  public final boolean dispatchHoverEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1 = this.mManager.isEnabled();
    boolean bool2 = false;
    boolean bool3 = bool2;
    if (bool1) {
      if (!this.mManager.isTouchExplorationEnabled())
      {
        bool3 = bool2;
      }
      else
      {
        int i = paramMotionEvent.getAction();
        if ((i != 7) && (i != 9))
        {
          if (i != 10) {
            return false;
          }
          if (this.mHoveredVirtualViewId != -2147483648)
          {
            updateHoveredVirtualView(-2147483648);
            return true;
          }
          return false;
        }
        i = getVirtualViewAt(paramMotionEvent.getX(), paramMotionEvent.getY());
        updateHoveredVirtualView(i);
        bool3 = bool2;
        if (i != -2147483648) {
          bool3 = true;
        }
      }
    }
    return bool3;
  }
  
  public final boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    int i = paramKeyEvent.getAction();
    boolean bool1 = false;
    int j = 0;
    boolean bool2 = bool1;
    if (i != 1)
    {
      i = paramKeyEvent.getKeyCode();
      if (i != 61)
      {
        if (i != 66)
        {
          switch (i)
          {
          default: 
            bool2 = bool1;
            break;
          case 19: 
          case 20: 
          case 21: 
          case 22: 
            bool2 = bool1;
            if (!paramKeyEvent.hasNoModifiers()) {
              break;
            }
            int k = keyToDirection(i);
            i = paramKeyEvent.getRepeatCount();
            for (bool2 = false; (j < i + 1) && (moveFocus(k, null)); bool2 = true) {
              j++;
            }
            break;
          }
        }
        else
        {
          bool2 = bool1;
          if (paramKeyEvent.hasNoModifiers())
          {
            bool2 = bool1;
            if (paramKeyEvent.getRepeatCount() == 0)
            {
              clickKeyboardFocusedVirtualView();
              bool2 = true;
            }
          }
        }
      }
      else if (paramKeyEvent.hasNoModifiers())
      {
        bool2 = moveFocus(2, null);
      }
      else
      {
        bool2 = bool1;
        if (paramKeyEvent.hasModifiers(1)) {
          bool2 = moveFocus(1, null);
        }
      }
    }
    return bool2;
  }
  
  public final int getAccessibilityFocusedVirtualViewId()
  {
    return this.mAccessibilityFocusedVirtualViewId;
  }
  
  public androidx.core.view.accessibility.h getAccessibilityNodeProvider(View paramView)
  {
    if (this.mNodeProvider == null) {
      this.mNodeProvider = new c();
    }
    return this.mNodeProvider;
  }
  
  @Deprecated
  public int getFocusedVirtualView()
  {
    return getAccessibilityFocusedVirtualViewId();
  }
  
  public final int getKeyboardFocusedVirtualViewId()
  {
    return this.mKeyboardFocusedVirtualViewId;
  }
  
  protected abstract int getVirtualViewAt(float paramFloat1, float paramFloat2);
  
  protected abstract void getVisibleVirtualViews(List<Integer> paramList);
  
  public final void invalidateRoot()
  {
    invalidateVirtualView(-1, 1);
  }
  
  public final void invalidateVirtualView(int paramInt)
  {
    invalidateVirtualView(paramInt, 0);
  }
  
  public final void invalidateVirtualView(int paramInt1, int paramInt2)
  {
    if ((paramInt1 != -2147483648) && (this.mManager.isEnabled()))
    {
      ViewParent localViewParent = this.mHost.getParent();
      if (localViewParent != null)
      {
        AccessibilityEvent localAccessibilityEvent = createEvent(paramInt1, 2048);
        androidx.core.view.accessibility.b.b(localAccessibilityEvent, paramInt2);
        localViewParent.requestSendAccessibilityEvent(this.mHost, localAccessibilityEvent);
      }
    }
  }
  
  g obtainAccessibilityNodeInfo(int paramInt)
  {
    if (paramInt == -1) {
      return createNodeForHost();
    }
    return createNodeForChild(paramInt);
  }
  
  public final void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    int i = this.mKeyboardFocusedVirtualViewId;
    if (i != -2147483648) {
      clearKeyboardFocusForVirtualView(i);
    }
    if (paramBoolean) {
      moveFocus(paramInt, paramRect);
    }
  }
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    onPopulateEventForHost(paramAccessibilityEvent);
  }
  
  public void onInitializeAccessibilityNodeInfo(View paramView, g paramg)
  {
    super.onInitializeAccessibilityNodeInfo(paramView, paramg);
    onPopulateNodeForHost(paramg);
  }
  
  protected abstract boolean onPerformActionForVirtualView(int paramInt1, int paramInt2, Bundle paramBundle);
  
  protected void onPopulateEventForHost(AccessibilityEvent paramAccessibilityEvent) {}
  
  protected void onPopulateEventForVirtualView(int paramInt, AccessibilityEvent paramAccessibilityEvent) {}
  
  protected void onPopulateNodeForHost(g paramg) {}
  
  protected abstract void onPopulateNodeForVirtualView(int paramInt, g paramg);
  
  protected void onVirtualViewKeyboardFocusChanged(int paramInt, boolean paramBoolean) {}
  
  boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    if (paramInt1 != -1) {
      return performActionForChild(paramInt1, paramInt2, paramBundle);
    }
    return performActionForHost(paramInt2, paramBundle);
  }
  
  public final boolean requestKeyboardFocusForVirtualView(int paramInt)
  {
    if ((!this.mHost.isFocused()) && (!this.mHost.requestFocus())) {
      return false;
    }
    int i = this.mKeyboardFocusedVirtualViewId;
    if (i == paramInt) {
      return false;
    }
    if (i != -2147483648) {
      clearKeyboardFocusForVirtualView(i);
    }
    if (paramInt == -2147483648) {
      return false;
    }
    this.mKeyboardFocusedVirtualViewId = paramInt;
    onVirtualViewKeyboardFocusChanged(paramInt, true);
    sendEventForVirtualView(paramInt, 8);
    return true;
  }
  
  public final boolean sendEventForVirtualView(int paramInt1, int paramInt2)
  {
    if ((paramInt1 != -2147483648) && (this.mManager.isEnabled()))
    {
      ViewParent localViewParent = this.mHost.getParent();
      if (localViewParent == null) {
        return false;
      }
      AccessibilityEvent localAccessibilityEvent = createEvent(paramInt1, paramInt2);
      return localViewParent.requestSendAccessibilityEvent(this.mHost, localAccessibilityEvent);
    }
    return false;
  }
  
  class a
    implements b.a<g>
  {
    public void b(g paramg, Rect paramRect)
    {
      paramg.i(paramRect);
    }
  }
  
  class b
    implements b.b<n.h<g>, g>
  {
    public g c(n.h<g> paramh, int paramInt)
    {
      return (g)paramh.o(paramInt);
    }
    
    public int d(n.h<g> paramh)
    {
      return paramh.n();
    }
  }
  
  private class c
    extends androidx.core.view.accessibility.h
  {
    c() {}
    
    public g b(int paramInt)
    {
      return g.H(a.this.obtainAccessibilityNodeInfo(paramInt));
    }
    
    public g d(int paramInt)
    {
      if (paramInt == 2) {
        paramInt = a.this.mAccessibilityFocusedVirtualViewId;
      } else {
        paramInt = a.this.mKeyboardFocusedVirtualViewId;
      }
      if (paramInt == -2147483648) {
        return null;
      }
      return b(paramInt);
    }
    
    public boolean f(int paramInt1, int paramInt2, Bundle paramBundle)
    {
      return a.this.performAction(paramInt1, paramInt2, paramBundle);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.customview.widget.a
 * JD-Core Version:    0.7.0.1
 */