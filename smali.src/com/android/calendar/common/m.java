package com.android.calendar.common;

import android.content.Context;
import android.provider.Settings.SettingNotFoundException;
import android.provider.Settings.System;
import android.view.OrientationEventListener;
import com.miui.calendar.util.z;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/common/m;", "Landroid/view/OrientationEventListener;", "", "orientation", "Lkotlin/u;", "onOrientationChanged", "Lcom/android/calendar/common/m$b;", "orientationListener", "a", "disable", "Lcom/android/calendar/common/b;", "Lcom/android/calendar/common/b;", "mActivity", "b", "I", "mOrientation", "c", "Lcom/android/calendar/common/m$b;", "mOrientationListener", "rate", "<init>", "(Lcom/android/calendar/common/b;I)V", "activity", "(Lcom/android/calendar/common/b;)V", "d", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class m
  extends OrientationEventListener
{
  public static final a d = new a(null);
  private static final String e = m.class.getSimpleName();
  private final b a;
  private int b;
  private b c;
  
  public m(b paramb)
  {
    this(paramb, 3);
  }
  
  public m(b paramb, int paramInt)
  {
    super(paramb, paramInt);
    this.a = paramb;
    this.b = -1;
  }
  
  public final void a(b paramb)
  {
    r.f(paramb, "orientationListener");
    super.enable();
    this.c = paramb;
  }
  
  public void disable()
  {
    super.disable();
    this.c = null;
  }
  
  public void onOrientationChanged(int paramInt)
  {
    if (this.a.isFinishing()) {
      return;
    }
    if (paramInt == -1)
    {
      this.b = -1;
      return;
    }
    int i = this.b;
    int j = 1;
    if ((345 <= paramInt) && (paramInt <= 2147483647)) {
      k = 1;
    } else {
      k = 0;
    }
    if (k != 0) {}
    while ((paramInt >= 0) && (paramInt < 16))
    {
      k = 1;
      break;
    }
    int k = 0;
    if (k != 0)
    {
      this.b = 0;
    }
    else
    {
      if ((75 <= paramInt) && (paramInt < 106)) {
        k = 1;
      } else {
        k = 0;
      }
      if (k != 0)
      {
        this.b = 270;
      }
      else
      {
        if ((165 <= paramInt) && (paramInt < 196)) {
          k = 1;
        } else {
          k = 0;
        }
        if (k != 0)
        {
          this.b = 180;
        }
        else
        {
          if ((255 <= paramInt) && (paramInt < 286)) {
            paramInt = j;
          } else {
            paramInt = 0;
          }
          if (paramInt != 0) {
            this.b = 90;
          }
        }
      }
    }
    if (i == this.b) {
      return;
    }
    try
    {
      if (Settings.System.getInt(this.a.getContentResolver(), "accelerometer_rotation") == 0)
      {
        z.a(e, "screen display direction is locked.");
        return;
      }
    }
    catch (Settings.SettingNotFoundException localSettingNotFoundException)
    {
      localSettingNotFoundException.printStackTrace();
      String str = e;
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("lastOrientation:");
      ((StringBuilder)localObject).append(i);
      ((StringBuilder)localObject).append(" mOrientation:");
      ((StringBuilder)localObject).append(this.b);
      ((StringBuilder)localObject).append('.');
      z.a(str, ((StringBuilder)localObject).toString());
      localObject = this.c;
      if (localObject != null) {
        ((b)localObject).p(this.b);
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/common/m$a;", "", "", "kotlin.jvm.PlatformType", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/common/m$b;", "", "", "orientation", "Lkotlin/u;", "p", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static abstract interface b
  {
    public abstract void p(int paramInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.m
 * JD-Core Version:    0.7.0.1
 */