package com.miui.calendar.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Outline;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import java.util.Map;
import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lcom/miui/calendar/view/CardView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "onTouchEvent", "", "event", "Landroid/view/MotionEvent;", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
public final class CardView
  extends FrameLayout
{
  public Map<Integer, View> a;
  
  public CardView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    float f = getResources().getDimension(2131166036);
    setClipToOutline(true);
    setOutlineProvider(new a(f));
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    super.onTouchEvent(paramMotionEvent);
    return true;
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/miui/calendar/view/CardView$a", "Landroid/view/ViewOutlineProvider;", "Landroid/view/View;", "view", "Landroid/graphics/Outline;", "outline", "Lkotlin/u;", "getOutline", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a
    extends ViewOutlineProvider
  {
    a(float paramFloat) {}
    
    public void getOutline(View paramView, Outline paramOutline)
    {
      if (paramView != null)
      {
        float f = this.a;
        if (paramOutline != null) {
          paramOutline.setRoundRect(0, 0, paramView.getWidth(), paramView.getHeight(), f);
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.CardView
 * JD-Core Version:    0.7.0.1
 */