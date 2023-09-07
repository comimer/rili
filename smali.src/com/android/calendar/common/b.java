package com.android.calendar.common;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.Window;
import androidx.fragment.app.d;
import com.android.calendar.settings.NoPermissionCalendarActivity;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z0;
import miuix.appcompat.app.m;

public abstract class b
  extends m
{
  protected void W(int paramInt)
  {
    if (Build.VERSION.SDK_INT != 26) {
      setRequestedOrientation(paramInt);
    }
  }
  
  protected void X()
  {
    ObjectAnimator.ofFloat(getWindow().getDecorView().findViewById(16908290), "alpha", new float[] { 0.0F, 1.0F }).setDuration(500L).start();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    W(1);
    if (DeviceUtils.N(this))
    {
      getWindow().addFlags(-2147483648);
      getWindow().addFlags(134217728);
    }
    else
    {
      Window localWindow = getWindow();
      int i;
      if (x0.s0(getApplicationContext())) {
        i = -16777216;
      } else {
        i = -1;
      }
      localWindow.setNavigationBarColor(i);
    }
    super.onCreate(paramBundle);
  }
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    Object localObject = f2.b.a(paramString, paramContext, paramAttributeSet);
    if (localObject != null) {
      return localObject;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("get not config view: ");
    ((StringBuilder)localObject).append(paramString);
    Log.i("onCreateView", ((StringBuilder)localObject).toString());
    return super.onCreateView(paramString, paramContext, paramAttributeSet);
  }
  
  protected void onResume()
  {
    if ((z0.i(this)) && (!getClass().getSimpleName().equals(NoPermissionCalendarActivity.class.getSimpleName())) && (checkSelfPermission("android.permission.READ_CALENDAR") != 0)) {
      startActivity(new Intent(this, NoPermissionCalendarActivity.class));
    }
    super.onResume();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.b
 * JD-Core Version:    0.7.0.1
 */