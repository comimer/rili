package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.a;
import androidx.core.view.a0;
import androidx.core.view.accessibility.g;
import androidx.core.view.accessibility.h;
import java.util.Map;
import java.util.WeakHashMap;

public class m
  extends a
{
  private final a mItemDelegate;
  final RecyclerView mRecyclerView;
  
  public m(RecyclerView paramRecyclerView)
  {
    this.mRecyclerView = paramRecyclerView;
    paramRecyclerView = getItemDelegate();
    if ((paramRecyclerView != null) && ((paramRecyclerView instanceof a))) {
      this.mItemDelegate = ((a)paramRecyclerView);
    } else {
      this.mItemDelegate = new a(this);
    }
  }
  
  public a getItemDelegate()
  {
    return this.mItemDelegate;
  }
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    if (((paramView instanceof RecyclerView)) && (!shouldIgnore()))
    {
      paramView = (RecyclerView)paramView;
      if (paramView.getLayoutManager() != null) {
        paramView.getLayoutManager().onInitializeAccessibilityEvent(paramAccessibilityEvent);
      }
    }
  }
  
  public void onInitializeAccessibilityNodeInfo(View paramView, g paramg)
  {
    super.onInitializeAccessibilityNodeInfo(paramView, paramg);
    if ((!shouldIgnore()) && (this.mRecyclerView.getLayoutManager() != null)) {
      this.mRecyclerView.getLayoutManager().onInitializeAccessibilityNodeInfo(paramg);
    }
  }
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.performAccessibilityAction(paramView, paramInt, paramBundle)) {
      return true;
    }
    if ((!shouldIgnore()) && (this.mRecyclerView.getLayoutManager() != null)) {
      return this.mRecyclerView.getLayoutManager().performAccessibilityAction(paramInt, paramBundle);
    }
    return false;
  }
  
  boolean shouldIgnore()
  {
    return this.mRecyclerView.hasPendingAdapterUpdates();
  }
  
  public static class a
    extends a
  {
    final m a;
    private Map<View, a> b = new WeakHashMap();
    
    public a(m paramm)
    {
      this.a = paramm;
    }
    
    a a(View paramView)
    {
      return (a)this.b.remove(paramView);
    }
    
    void b(View paramView)
    {
      a locala = a0.k(paramView);
      if ((locala != null) && (locala != this)) {
        this.b.put(paramView, locala);
      }
    }
    
    public boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      a locala = (a)this.b.get(paramView);
      if (locala != null) {
        return locala.dispatchPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
      }
      return super.dispatchPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
    }
    
    public h getAccessibilityNodeProvider(View paramView)
    {
      a locala = (a)this.b.get(paramView);
      if (locala != null) {
        return locala.getAccessibilityNodeProvider(paramView);
      }
      return super.getAccessibilityNodeProvider(paramView);
    }
    
    public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      a locala = (a)this.b.get(paramView);
      if (locala != null) {
        locala.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
      } else {
        super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
      }
    }
    
    public void onInitializeAccessibilityNodeInfo(View paramView, g paramg)
    {
      if ((!this.a.shouldIgnore()) && (this.a.mRecyclerView.getLayoutManager() != null))
      {
        this.a.mRecyclerView.getLayoutManager().onInitializeAccessibilityNodeInfoForItem(paramView, paramg);
        a locala = (a)this.b.get(paramView);
        if (locala != null) {
          locala.onInitializeAccessibilityNodeInfo(paramView, paramg);
        } else {
          super.onInitializeAccessibilityNodeInfo(paramView, paramg);
        }
      }
      else
      {
        super.onInitializeAccessibilityNodeInfo(paramView, paramg);
      }
    }
    
    public void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      a locala = (a)this.b.get(paramView);
      if (locala != null) {
        locala.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
      } else {
        super.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
      }
    }
    
    public boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      a locala = (a)this.b.get(paramViewGroup);
      if (locala != null) {
        return locala.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
      }
      return super.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
    }
    
    public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
    {
      if ((!this.a.shouldIgnore()) && (this.a.mRecyclerView.getLayoutManager() != null))
      {
        a locala = (a)this.b.get(paramView);
        if (locala != null)
        {
          if (locala.performAccessibilityAction(paramView, paramInt, paramBundle)) {
            return true;
          }
        }
        else if (super.performAccessibilityAction(paramView, paramInt, paramBundle)) {
          return true;
        }
        return this.a.mRecyclerView.getLayoutManager().performAccessibilityActionForItem(paramView, paramInt, paramBundle);
      }
      return super.performAccessibilityAction(paramView, paramInt, paramBundle);
    }
    
    public void sendAccessibilityEvent(View paramView, int paramInt)
    {
      a locala = (a)this.b.get(paramView);
      if (locala != null) {
        locala.sendAccessibilityEvent(paramView, paramInt);
      } else {
        super.sendAccessibilityEvent(paramView, paramInt);
      }
    }
    
    public void sendAccessibilityEventUnchecked(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      a locala = (a)this.b.get(paramView);
      if (locala != null) {
        locala.sendAccessibilityEventUnchecked(paramView, paramAccessibilityEvent);
      } else {
        super.sendAccessibilityEventUnchecked(paramView, paramAccessibilityEvent);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.m
 * JD-Core Version:    0.7.0.1
 */