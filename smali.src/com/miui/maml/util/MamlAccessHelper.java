package com.miui.maml.util;

import android.graphics.Rect;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityRecord;
import androidx.core.view.accessibility.g;
import androidx.core.view.accessibility.h;
import androidx.customview.widget.a;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.elements.AnimatedScreenElement;
import com.miui.maml.elements.ButtonScreenElement;
import com.miui.maml.elements.ScreenElement;
import java.util.List;

public class MamlAccessHelper
  extends a
{
  private static final String TAG = "MamlAccessHelper";
  View mHostView;
  ScreenElementRoot mRoot;
  
  public MamlAccessHelper(ScreenElementRoot paramScreenElementRoot, View paramView)
  {
    super(paramView);
    this.mRoot = paramScreenElementRoot;
    this.mHostView = paramView;
    paramScreenElementRoot.setMamlAccessHelper(this);
  }
  
  protected int getVirtualViewAt(float paramFloat1, float paramFloat2)
  {
    Object localObject = this.mRoot;
    if (localObject != null)
    {
      localObject = ((ScreenElementRoot)localObject).getAccessibleElements();
      for (int i = ((List)localObject).size() - 1; i >= 0; i--)
      {
        AnimatedScreenElement localAnimatedScreenElement = (AnimatedScreenElement)((List)localObject).get(i);
        if ((localAnimatedScreenElement.isVisible()) && (localAnimatedScreenElement.touched(paramFloat1, paramFloat2))) {
          return i;
        }
      }
    }
    return -2147483648;
  }
  
  protected void getVisibleVirtualViews(List<Integer> paramList)
  {
    Object localObject = this.mRoot;
    if (localObject != null)
    {
      localObject = ((ScreenElementRoot)localObject).getAccessibleElements();
      for (int i = 0; i < ((List)localObject).size(); i++) {
        if (((AnimatedScreenElement)((List)localObject).get(i)).isVisible()) {
          paramList.add(Integer.valueOf(i));
        }
      }
    }
  }
  
  protected boolean onPerformActionForVirtualView(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    paramBundle = this.mRoot;
    if (paramBundle != null)
    {
      if (paramInt2 != 16) {
        return false;
      }
      paramBundle = paramBundle.getAccessibleElements();
      if ((paramInt1 >= 0) && (paramInt1 < paramBundle.size()))
      {
        paramBundle = (AnimatedScreenElement)paramBundle.get(paramInt1);
        paramBundle.performAction("up");
        if ((paramBundle instanceof ButtonScreenElement)) {
          ((ButtonScreenElement)paramBundle).onActionUp();
        }
        return true;
      }
    }
    return false;
  }
  
  protected void onPopulateEventForVirtualView(int paramInt, AccessibilityEvent paramAccessibilityEvent)
  {
    Object localObject = this.mRoot;
    if (localObject != null)
    {
      localObject = ((ScreenElementRoot)localObject).getAccessibleElements();
      if ((paramInt >= 0) && (paramInt < ((List)localObject).size())) {
        paramAccessibilityEvent.setContentDescription(((AnimatedScreenElement)((List)localObject).get(paramInt)).getContentDescription());
      }
    }
  }
  
  protected void onPopulateNodeForVirtualView(int paramInt, g paramg)
  {
    Object localObject1 = this.mRoot;
    if (localObject1 != null)
    {
      Object localObject2 = ((ScreenElementRoot)localObject1).getAccessibleElements();
      localObject1 = "";
      if ((paramInt >= 0) && (paramInt < ((List)localObject2).size()))
      {
        AnimatedScreenElement localAnimatedScreenElement = (AnimatedScreenElement)((List)localObject2).get(paramInt);
        localObject2 = localAnimatedScreenElement.getContentDescription();
        if (localObject2 == null)
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append("element.getContentDescription() == null ");
          ((StringBuilder)localObject2).append(localAnimatedScreenElement.getName());
          Log.e("MamlAccessHelper", ((StringBuilder)localObject2).toString());
        }
        else
        {
          localObject1 = localObject2;
        }
        paramg.V((CharSequence)localObject1);
        paramg.a(16);
        paramg.N(new Rect((int)localAnimatedScreenElement.getAbsoluteLeft(), (int)localAnimatedScreenElement.getAbsoluteTop(), (int)(localAnimatedScreenElement.getAbsoluteLeft() + localAnimatedScreenElement.getWidth()), (int)(localAnimatedScreenElement.getAbsoluteTop() + localAnimatedScreenElement.getHeight())));
      }
      else
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("virtualViewId not found ");
        ((StringBuilder)localObject1).append(paramInt);
        Log.e("MamlAccessHelper", ((StringBuilder)localObject1).toString());
        paramg.V("");
        paramg.N(new Rect(0, 0, 0, 0));
      }
    }
  }
  
  public void performAccessibilityAction(final int paramInt1, final int paramInt2)
  {
    this.mHostView.post(new Runnable()
    {
      public void run()
      {
        MamlAccessHelper localMamlAccessHelper = MamlAccessHelper.this;
        localMamlAccessHelper.getAccessibilityNodeProvider(localMamlAccessHelper.mHostView).f(paramInt1, paramInt2, null);
      }
    });
  }
  
  public void removeRoot()
  {
    this.mRoot = null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.MamlAccessHelper
 * JD-Core Version:    0.7.0.1
 */