package com.android.calendar.homepage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewStub;
import android.view.ViewStub.OnInflateListener;
import android.widget.FrameLayout;
import com.miui.calendar.util.z;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public class HomePageContainer
  extends FrameLayout
{
  private int a;
  private View b;
  private View c;
  private View d;
  private a e;
  private int f;
  
  public HomePageContainer(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public HomePageContainer(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void b(MotionEvent paramMotionEvent)
  {
    paramMotionEvent.setLocation(paramMotionEvent.getX(), paramMotionEvent.getY());
    this.b.dispatchTouchEvent(paramMotionEvent);
  }
  
  private void c(MotionEvent paramMotionEvent)
  {
    if (this.c == null) {
      return;
    }
    paramMotionEvent.setLocation(paramMotionEvent.getX(), paramMotionEvent.getY() - this.f);
    this.c.dispatchTouchEvent(paramMotionEvent);
  }
  
  private void d(MotionEvent paramMotionEvent)
  {
    paramMotionEvent.setLocation(paramMotionEvent.getX(), paramMotionEvent.getY() - this.d.getTranslationY());
    this.d.dispatchTouchEvent(paramMotionEvent);
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    int i;
    if ((paramMotionEvent.getAction() & 0xFF) != 0)
    {
      i = this.a;
      if (i == 0) {
        b(paramMotionEvent);
      } else if (i == 1) {
        c(paramMotionEvent);
      } else {
        d(paramMotionEvent);
      }
    }
    else
    {
      int j = (int)paramMotionEvent.getX();
      i = (int)paramMotionEvent.getY();
      Rect localRect = new Rect();
      Object localObject1 = this.b;
      if ((localObject1 != null) && (((View)localObject1).getVisibility() == 0)) {
        this.b.getGlobalVisibleRect(localRect);
      }
      localObject1 = new Rect();
      Object localObject2 = this.c;
      if ((localObject2 != null) && (((View)localObject2).getVisibility() == 0)) {
        this.c.getGlobalVisibleRect((Rect)localObject1);
      }
      localObject2 = new Rect();
      this.d.getGlobalVisibleRect((Rect)localObject2);
      if (localRect.contains(j, i))
      {
        this.a = 0;
        b(paramMotionEvent);
      }
      else if (((Rect)localObject1).contains(j, i))
      {
        this.a = 1;
        c(paramMotionEvent);
      }
      else
      {
        this.a = 2;
        d(paramMotionEvent);
      }
    }
    return true;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.b = findViewById(2131361949);
    ViewStub localViewStub = (ViewStub)findViewById(2131363536);
    this.d = findViewById(2131362741);
    a locala = new a(this);
    this.e = locala;
    if (localViewStub != null) {
      localViewStub.setOnInflateListener(locala);
    }
    this.f = getResources().getDimensionPixelOffset(2131165482);
  }
  
  protected void onDetachedFromWindow()
  {
    if (this.e != null) {
      this.e = null;
    }
    super.onDetachedFromWindow();
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
  }
  
  private static class a
    implements ViewStub.OnInflateListener
  {
    private WeakReference<HomePageContainer> a;
    
    a(HomePageContainer paramHomePageContainer)
    {
      this.a = new WeakReference(paramHomePageContainer);
    }
    
    public void onInflate(ViewStub paramViewStub, View paramView)
    {
      WeakReference localWeakReference = this.a;
      if ((localWeakReference != null) && (localWeakReference.get() != null))
      {
        if (paramViewStub.getId() == 2131363536) {
          HomePageContainer.a((HomePageContainer)this.a.get(), paramView);
        }
        return;
      }
      z.c("Cal:D:HomePageContainer", "onInflate mHomePageContainerWeakReference is null");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.HomePageContainer
 * JD-Core Version:    0.7.0.1
 */