package com.miui.calendar.view;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.bumptech.glide.g;
import com.bumptech.glide.h;
import com.bumptech.glide.load.resource.bitmap.w;
import com.bumptech.glide.request.a;
import com.bumptech.glide.request.e;

public class OnlineImageView
  extends ImageView
{
  private int a = 0;
  private int b = 0;
  
  public OnlineImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, m1.b.C1);
    this.a = paramContext.getInt(0, 0);
    this.b = paramContext.getDimensionPixelOffset(1, 0);
    paramContext.recycle();
  }
  
  public void a(String paramString, int paramInt1, int paramInt2)
  {
    if (((getContext() instanceof Activity)) && (((Activity)getContext()).isDestroyed())) {
      return;
    }
    if (this.a > 0)
    {
      e locale = (e)((e)new e().e()).j0(new w(this.b));
      ((g)((g)((g)com.bumptech.glide.b.t(getContext()).r(paramString).d()).Y(paramInt1)).k(paramInt2)).n0(locale).x0(this);
    }
    else
    {
      ((g)((g)com.bumptech.glide.b.t(getContext()).r(paramString).Y(paramInt1)).k(paramInt2)).x0(this);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.OnlineImageView
 * JD-Core Version:    0.7.0.1
 */