package com.miui.support.cardview;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.Keep;
import c5.a;
import miuix.smooth.d;

@TargetApi(21)
@Keep
public class BackgroundOutline
  extends ViewOutlineProvider
{
  private float mAlpha;
  private d mPathProvider = new d();
  
  private BackgroundOutline(float paramFloat)
  {
    this.mAlpha = paramFloat;
  }
  
  public BackgroundOutline(Context paramContext, int paramInt)
  {
    paramContext = paramContext.obtainStyledAttributes(paramInt, a.a);
    this.mAlpha = paramContext.getFloat(a.b, 1.0F);
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
 * Qualified Name:     com.miui.support.cardview.BackgroundOutline
 * JD-Core Version:    0.7.0.1
 */