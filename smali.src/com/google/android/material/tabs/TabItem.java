package com.google.android.material.tabs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.z0;
import com.google.android.material.R.styleable;

public class TabItem
  extends View
{
  public final int customLayout;
  public final Drawable icon;
  public final CharSequence text;
  
  public TabItem(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TabItem(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = z0.u(paramContext, paramAttributeSet, R.styleable.TabItem);
    this.text = paramContext.p(R.styleable.TabItem_android_text);
    this.icon = paramContext.g(R.styleable.TabItem_android_icon);
    this.customLayout = paramContext.n(R.styleable.TabItem_android_layout, 0);
    paramContext.w();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.tabs.TabItem
 * JD-Core Version:    0.7.0.1
 */