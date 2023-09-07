package com.miui.calendar.share;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOutlineProvider;
import m1.b;
import miuix.smooth.e;

public class BackgroundOutline
  extends ViewOutlineProvider
{
  private float mAlpha;
  private e mPathProvider = new e();
  
  private BackgroundOutline(float paramFloat)
  {
    this.mAlpha = paramFloat;
  }
  
  public BackgroundOutline(Context paramContext, int paramInt)
  {
    paramContext = paramContext.obtainStyledAttributes(paramInt, b.w);
    this.mAlpha = paramContext.getFloat(1, 1.0F);
    paramContext.recycle();
  }
  
  public void getOutline(View paramView, Outline paramOutline)
  {
    if ((paramView.getWidth() != 0) && (paramView.getHeight() != 0))
    {
      paramView.getBackground().getOutline(paramOutline);
      paramOutline.setAlpha(this.mAlpha);
    }
  }
  
  public BackgroundOutline of(float paramFloat)
  {
    return new BackgroundOutline(paramFloat);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.share.BackgroundOutline
 * JD-Core Version:    0.7.0.1
 */