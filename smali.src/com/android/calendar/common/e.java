package com.android.calendar.common;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.calendar.homepage.AllInOneActivity.h;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.g;
import com.miui.calendar.util.g.j0;
import com.miui.calendar.util.g.y;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.view.MonthMotionContainer;
import com.miui.calendar.view.MonthPanelContainer;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Calendar;
import java.util.Date;
import miuix.animation.property.b;
import miuix.animation.property.h;
import miuix.view.HapticCompat;

public class e
{
  private static WeakReference<e> A;
  private final String a = "alpha";
  private final String b = "scaleX";
  private final String c = "scaleY";
  private final String d = "translationX";
  private final String e = "translationY";
  private final String f = "scaleStart";
  private final String g = "scaleMiddle";
  private final String h = "scaleEnd";
  private Context i;
  private Resources j;
  private AllInOneActivity.h k;
  private Animation l;
  private int m;
  private float n;
  private float o;
  private float p;
  private boolean q;
  private int[] r = new int[4];
  public int s;
  public boolean t = true;
  public float u;
  private boolean v = false;
  private boolean w = false;
  private int[] x = new int[0];
  private float y;
  private float z;
  
  private e(Context paramContext)
  {
    this.i = paramContext;
    m();
  }
  
  private int[] e(long paramLong, int paramInt)
  {
    Calendar localCalendar1 = Calendar.getInstance();
    localCalendar1.setTimeInMillis(paramLong);
    Calendar localCalendar2 = e0.s(this.i, localCalendar1);
    Object localObject = e0.b(this.i, new Date(paramLong));
    int i1 = e0.i(localCalendar1);
    int i2 = e0.i(localCalendar2);
    Calendar localCalendar3 = Calendar.getInstance();
    localCalendar3.setTimeInMillis(((Calendar)localObject).getTimeInMillis());
    int i3;
    int i4;
    if (paramInt != 1)
    {
      i3 = e0.n(this.i, localCalendar1);
      for (i4 = 0; i4 < i3; i4++)
      {
        if (e0.v(localCalendar3, localCalendar2)) {
          break label133;
        }
        localCalendar3.add(5, 7);
      }
      i4 = 0;
    }
    else
    {
      i4 = 0;
      i3 = 1;
    }
    label133:
    if (paramInt == 3) {
      f1 = this.z;
    } else {
      f1 = this.y;
    }
    float f2 = f1 / i3;
    localObject = new int[2];
    this.k.K.getMonthContainer().getLocationOnScreen((int[])localObject);
    float f3 = this.p;
    float f4 = this.n;
    float f5 = i1 - i2;
    float f6 = this.o;
    float f1 = i4;
    return new int[] { (int)(f3 + f4 + f5 * f6), (int)(f2 * f1) };
  }
  
  private void f()
  {
    if (this.k.d == null) {
      return;
    }
    Animation localAnimation = this.l;
    if (localAnimation != null)
    {
      localAnimation.setAnimationListener(null);
      this.l.scaleCurrentDuration(0.0F);
    }
    this.t = true;
    g.c(new g.y(true));
    this.k.d.setVisibility(8);
  }
  
  public static e g(Context paramContext)
  {
    try
    {
      Object localObject = A;
      if ((localObject != null) && (((Reference)localObject).get() != null))
      {
        paramContext = (e)A.get();
      }
      else
      {
        localObject = new com/android/calendar/common/e;
        ((e)localObject).<init>(paramContext.getApplicationContext());
        paramContext = new java/lang/ref/WeakReference;
        paramContext.<init>(localObject);
        A = paramContext;
        paramContext = (Context)localObject;
      }
      return paramContext;
    }
    finally {}
  }
  
  private void l(boolean paramBoolean)
  {
    z.a("Cal:D:CalendarAnimationController", "receive AgendaListLayout hideTodayView");
    this.t = true;
    this.k.K.post(new d(this, paramBoolean));
  }
  
  private void m()
  {
    Resources localResources = this.i.getResources();
    this.j = localResources;
    this.n = localResources.getDimension(2131166877);
    v(this.j.getDisplayMetrics().widthPixels);
    this.r[0] = this.j.getDimensionPixelSize(2131166300);
    this.r[1] = this.j.getDimensionPixelSize(2131166302);
    this.r[2] = (this.j.getDimensionPixelSize(2131166298) / 2);
    this.r[3] = this.j.getDimensionPixelSize(2131166302);
    this.q = DeviceUtils.j();
    this.y = x0.J(this.i);
    this.z = x0.I(this.i);
  }
  
  private void p()
  {
    this.v = true;
    g.c(new g.j0());
  }
  
  private void s(boolean paramBoolean)
  {
    Object localObject1 = this.k.j;
    if (localObject1 == null)
    {
      z.c("Cal:D:CalendarAnimationController", "showHideTodayView(): mViewHolder.mTodayViewContainer is null");
      return;
    }
    Object localObject2;
    Object localObject3;
    Object localObject4;
    if ((paramBoolean) && (((View)localObject1).getVisibility() == 4))
    {
      this.k.j.setVisibility(0);
      if (!DeviceUtils.K())
      {
        localObject2 = new e9.a("scaleStart");
        localObject1 = h.d;
        localObject3 = ((e9.a)localObject2).a(localObject1, 0.4000000059604645D);
        localObject2 = h.e;
        localObject4 = ((e9.a)localObject3).a(localObject2, 0.4000000059604645D);
        localObject3 = h.n;
        localObject4 = ((e9.a)localObject4).a(localObject3, 0.0D);
        e9.a locala = new e9.a("scaleMiddle").a(localObject1, 1.100000023841858D).a(localObject2, 1.100000023841858D).a(localObject3, 1.0D);
        localObject1 = new e9.a("scaleEnd").a(localObject1, 1.0D).a(localObject2, 1.0D).a(localObject3, 1.0D);
        miuix.animation.a.y(new View[] { this.k.j }).a().x(localObject4, locala, new d9.a[] { new d9.a().k(6, new float[0]) }).K(localObject1, new d9.a[] { new d9.a().j(0L).k(6, new float[0]) });
      }
    }
    else if ((!paramBoolean) && (this.k.j.getVisibility() == 0))
    {
      this.k.j.setVisibility(4);
      if (!DeviceUtils.K())
      {
        localObject2 = miuix.animation.a.y(new View[] { this.k.j }).a().set("scaleStart");
        localObject1 = h.d;
        localObject3 = ((miuix.animation.f)localObject2).m((b)localObject1, 1.0F);
        localObject2 = h.e;
        localObject3 = ((miuix.animation.f)localObject3).m((b)localObject2, 1.0F);
        localObject4 = h.n;
        ((miuix.animation.f)localObject3).m((b)localObject4, 1.0F).set("scaleEnd").m((b)localObject1, 0.4F).m((b)localObject2, 0.4F).m((b)localObject4, 0.0F).u("scaleStart").J("scaleEnd", new d9.a[] { new d9.a().k(6, new float[0]) });
      }
    }
  }
  
  private void t()
  {
    z.a("Cal:D:CalendarAnimationController", "receive AgendaListLayout showTodayView");
    s(true);
    TextView localTextView = this.k.i;
    int[] arrayOfInt = this.r;
    x0.k(localTextView, false, arrayOfInt[0], arrayOfInt[1], arrayOfInt[2], arrayOfInt[3]);
  }
  
  private void u(int[] paramArrayOfInt1, int[] paramArrayOfInt2, final boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    final ImageView localImageView = (ImageView)this.k.K.getMonthContainer().getSelectDayView();
    if (localImageView == null) {
      return;
    }
    this.x = paramArrayOfInt2;
    if (DeviceUtils.L())
    {
      localImageView.setVisibility(4);
      if (paramBoolean1)
      {
        this.v = false;
        this.t = true;
      }
      else
      {
        this.v = true;
      }
      if ((!paramBoolean2) || (!x0.u0()))
      {
        if (paramBoolean1) {
          HapticCompat.performHapticFeedback(localImageView, miuix.view.f.k);
        }
        if (x0.u0())
        {
          this.w = true;
        }
        else
        {
          if (!paramBoolean1) {
            HapticCompat.performHapticFeedback(localImageView, miuix.view.f.l);
          }
          p();
        }
      }
      s(paramBoolean1 ^ true);
      Utils.Y0(Utils.W());
      return;
    }
    if (paramBoolean1) {
      localImageView.setImageDrawable(e.a.b(this.i, 2131231208));
    } else {
      localImageView.setImageDrawable(e.a.b(this.i, 2131231207));
    }
    localImageView.setVisibility(0);
    this.v = false;
    this.t = true;
    AnimatorSet localAnimatorSet = new AnimatorSet();
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(localImageView, "translationX", new float[] { paramArrayOfInt1[0], paramArrayOfInt2[0] }).setDuration(200L);
    paramArrayOfInt2 = ObjectAnimator.ofFloat(localImageView, "translationY", new float[] { paramArrayOfInt1[1], paramArrayOfInt2[1] }).setDuration(200L);
    paramInt = this.x[1];
    float f1 = 1.1F;
    if (paramInt == 0) {
      f2 = 1.0F;
    } else {
      f2 = 1.1F;
    }
    paramArrayOfInt1 = ObjectAnimator.ofFloat(localImageView, "scaleX", new float[] { 1.0F, 0.5F, f2, 1.0F }).setDuration(400L);
    float f2 = f1;
    if (this.x[1] == 0) {
      f2 = 1.0F;
    }
    ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(localImageView, "scaleY", new float[] { 1.0F, 0.5F, f2, 1.0F }).setDuration(400L);
    ObjectAnimator localObjectAnimator3 = ObjectAnimator.ofFloat(localImageView, "alpha", new float[] { 1.0F, 0.2F, 1.1F, 1.0F }).setDuration(200L);
    paramArrayOfInt2.addListener(new a(paramBoolean1, localImageView));
    paramArrayOfInt1.addListener(new b());
    if ((paramBoolean2) && (x0.u0()))
    {
      localAnimatorSet.playTogether(new Animator[] { localObjectAnimator1, paramArrayOfInt2, paramArrayOfInt1, localObjectAnimator2, localObjectAnimator3 });
    }
    else
    {
      localImageView.setVisibility(4);
      if (paramBoolean1) {
        HapticCompat.performHapticFeedback(localImageView, miuix.view.f.k);
      }
      if (x0.u0())
      {
        this.w = true;
      }
      else
      {
        if (!paramBoolean1) {
          HapticCompat.performHapticFeedback(localImageView, miuix.view.f.l);
        }
        p();
      }
    }
    localAnimatorSet.start();
    s(paramBoolean1 ^ true);
    Utils.Y0(Utils.W());
  }
  
  public void d(AllInOneActivity.h paramh)
  {
    this.k = paramh;
  }
  
  public boolean h()
  {
    return this.v;
  }
  
  public void i(int paramInt, long paramLong, boolean paramBoolean)
  {
    j(paramInt, paramLong, paramBoolean, -1L);
  }
  
  public void j(int paramInt, long paramLong1, boolean paramBoolean, long paramLong2)
  {
    k(paramInt, paramLong1, paramBoolean, paramLong2, 2);
  }
  
  public void k(int paramInt1, long paramLong1, boolean paramBoolean, long paramLong2, int paramInt2)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("goTo()-----3 viewType=");
    ((StringBuilder)localObject).append(paramInt1);
    ((StringBuilder)localObject).append(",timeInMills=");
    ((StringBuilder)localObject).append(paramLong1);
    ((StringBuilder)localObject).append(",doAnimation=");
    ((StringBuilder)localObject).append(paramBoolean);
    ((StringBuilder)localObject).append(",duration=");
    ((StringBuilder)localObject).append(paramLong2);
    ((StringBuilder)localObject).append(",mFeatureWholeAnim=");
    ((StringBuilder)localObject).append(this.q);
    ((StringBuilder)localObject).append(" expandStatus:");
    ((StringBuilder)localObject).append(paramInt2);
    z.a("Cal:D:CalendarAnimationController", ((StringBuilder)localObject).toString());
    if ((paramInt1 != 6) && (this.k.i != null) && (paramInt1 != 1))
    {
      int[] arrayOfInt = e(Utils.I(), paramInt2);
      localObject = e(paramLong1, paramInt2);
      if (s0.u(Utils.H(), Utils.V())) {
        return;
      }
      u(arrayOfInt, (int[])localObject, s0.z(paramLong1), s0.w(Utils.H(), Utils.V()), paramInt1);
    }
    else
    {
      localObject = this.l;
      if ((localObject != null) && (((Animation)localObject).hasStarted()) && (!this.l.hasEnded())) {
        f();
      }
      y(paramInt1, paramLong1);
    }
  }
  
  public void q()
  {
    Object localObject = this.k;
    if ((localObject != null) && (((AllInOneActivity.h)localObject).d != null)) {
      f();
    }
    localObject = this.l;
    if (localObject != null) {
      ((Animation)localObject).cancel();
    }
    this.l = null;
  }
  
  public void r()
  {
    if (this.w) {
      p();
    }
  }
  
  public void v(int paramInt)
  {
    if (paramInt != this.m)
    {
      this.m = paramInt;
      float f1 = (paramInt - this.n * 2.0F) / 7.0F;
      this.o = f1;
      this.p = ((f1 - x0.j0(this.i)) / 2.0F);
    }
  }
  
  public void w()
  {
    if (!this.v) {
      return;
    }
    View localView = this.k.K.getMonthContainer().getSelectDayView();
    if (localView == null) {
      return;
    }
    localView.setVisibility(4);
    this.v = false;
  }
  
  public void x(Calendar paramCalendar)
  {
    this.k.K.post(new c(this, paramCalendar));
  }
  
  public void y(int paramInt, long paramLong)
  {
    z.a("Cal:D:CalendarAnimationController", "updateTodayView  -------------start");
    Calendar localCalendar1 = Calendar.getInstance();
    int i1 = e0.i(localCalendar1);
    Calendar localCalendar2 = Calendar.getInstance();
    localCalendar2.setTimeInMillis(paramLong);
    int i2 = e0.i(localCalendar2);
    if (paramInt == 3)
    {
      if (e0.i(e0.s(this.i, localCalendar1)) == e0.i(e0.s(this.i, localCalendar2))) {
        l(false);
      } else {
        t();
      }
    }
    else if (i1 == i2) {
      l(false);
    } else {
      t();
    }
    x(localCalendar1);
    z.a("Cal:D:CalendarAnimationController", "updateTodayView  -------------end");
  }
  
  class a
    implements Animator.AnimatorListener
  {
    a(boolean paramBoolean, ImageView paramImageView) {}
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      paramAnimator.removeAllListeners();
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      if (!paramBoolean1) {
        HapticCompat.performHapticFeedback(localImageView, miuix.view.f.l);
      } else {
        HapticCompat.performHapticFeedback(localImageView, miuix.view.f.k);
      }
      paramAnimator.removeAllListeners();
    }
    
    public void onAnimationRepeat(Animator paramAnimator) {}
    
    public void onAnimationStart(Animator paramAnimator) {}
  }
  
  class b
    implements Animator.AnimatorListener
  {
    b() {}
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      z.a("Cal:D:CalendarAnimationController", "scaleXAnimator onAnimationCancel");
      paramAnimator.removeAllListeners();
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      e.c(e.this);
      paramAnimator.removeAllListeners();
    }
    
    public void onAnimationRepeat(Animator paramAnimator)
    {
      z.a("Cal:D:CalendarAnimationController", "scaleXAnimator onAnimationRepeat");
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      z.a("Cal:D:CalendarAnimationController", "scaleXAnimator onAnimationStart");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.e
 * JD-Core Version:    0.7.0.1
 */