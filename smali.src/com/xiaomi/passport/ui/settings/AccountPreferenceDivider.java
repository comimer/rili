package com.xiaomi.passport.ui.settings;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import n5.b;

public class AccountPreferenceDivider
  extends RelativeLayout
{
  public AccountPreferenceDivider(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private void a()
  {
    Object localObject = new View(getContext());
    ((View)localObject).setBackground(new ColorDrawable(getResources().getColor(b.d)));
    setAlpha(0.1F);
    addView((View)localObject);
    localObject = (RelativeLayout.LayoutParams)((View)localObject).getLayoutParams();
    ((RelativeLayout.LayoutParams)localObject).width = -1;
    ((RelativeLayout.LayoutParams)localObject).height = 1;
    ((RelativeLayout.LayoutParams)localObject).addRule(13);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.settings.AccountPreferenceDivider
 * JD-Core Version:    0.7.0.1
 */