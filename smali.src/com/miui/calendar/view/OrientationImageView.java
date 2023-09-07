package com.miui.calendar.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import m1.b;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/view/OrientationImageView;", "Landroid/widget/ImageView;", "Lkotlin/u;", "a", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "", "I", "mOrientation", "", "b", "Ljava/lang/String;", "mPortContentDescription", "c", "mLandContentDescription", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class OrientationImageView
  extends ImageView
{
  private int a;
  private String b;
  private String c;
  public Map<Integer, View> d;
  
  public OrientationImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0, 4, null);
  }
  
  public OrientationImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.a = paramContext.getResources().getConfiguration().orientation;
    String str = paramContext.getString(2131887590);
    r.e(str, "context.getString(R.stri….switch_orientation_desc)");
    this.b = str;
    str = paramContext.getString(2131887590);
    r.e(str, "context.getString(R.stri….switch_orientation_desc)");
    this.c = str;
    float f;
    if (this.a == 1) {
      f = 0.0F;
    } else {
      f = 90.0F;
    }
    setRotation(f);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, b.D1);
    r.e(localTypedArray, "context.obtainStyledAttr…ble.OrientationImageView)");
    str = localTypedArray.getString(1);
    paramAttributeSet = str;
    if (str == null)
    {
      paramAttributeSet = paramContext.getString(2131887590);
      r.e(paramAttributeSet, "context.getString(R.stri….switch_orientation_desc)");
    }
    this.b = paramAttributeSet;
    str = localTypedArray.getString(0);
    paramAttributeSet = str;
    if (str == null)
    {
      paramAttributeSet = paramContext.getString(2131887590);
      r.e(paramAttributeSet, "context.getString(R.stri….switch_orientation_desc)");
    }
    this.c = paramAttributeSet;
    localTypedArray.recycle();
    a();
  }
  
  private final void a()
  {
    String str;
    if (this.a == 1) {
      str = this.b;
    } else {
      str = this.c;
    }
    setContentDescription(str);
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    r.f(paramConfiguration, "newConfig");
    super.onConfigurationChanged(paramConfiguration);
    int i = this.a;
    int j = paramConfiguration.orientation;
    if (i != j)
    {
      this.a = j;
      float f;
      if (j == 1) {
        f = 0.0F;
      } else {
        f = 90.0F;
      }
      setRotation(f);
      a();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.OrientationImageView
 * JD-Core Version:    0.7.0.1
 */