package com.android.calendar.homepage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.g;
import com.miui.calendar.util.g.k0;
import com.miui.calendar.util.g.l;
import com.miui.calendar.util.g.m;
import com.miui.calendar.util.g.u0;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.view.MonthMotionContainer;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Calendar;
import miuix.animation.a;
import miuix.animation.d;
import pc.c;

public class t0
{
  private static WeakReference<t0> j;
  private static int[] k = { 2131231357, 2131231359, 2131231355, 2131231353 };
  private static int[] l = { 2131232462, 2131232463, 2131232461, 2131232447 };
  private static int[] m = { 2131887595, 2131887596, 2131887594, 2131887593 };
  private static final Interpolator n = new DecelerateInterpolator(1.5F);
  private static int o;
  private static int p;
  private static int q;
  private static int r;
  private static int s;
  private static int t;
  private static int u;
  private int a;
  private int b;
  private boolean c = false;
  private boolean d = false;
  private Boolean e = Boolean.FALSE;
  private Context f;
  private Resources g;
  private AllInOneActivity.h h;
  private Boolean i = Boolean.TRUE;
  
  private t0(Context paramContext)
  {
    this.f = paramContext;
    Resources localResources = paramContext.getResources();
    this.g = localResources;
    r = localResources.getDimensionPixelSize(2131166193);
    this.a = this.g.getColor(2131100982);
    this.b = this.g.getColor(2131100982);
    s = this.g.getDimensionPixelSize(2131166191);
    t = x0.t(paramContext);
    p = this.g.getDimensionPixelSize(2131165488);
    q = this.g.getDimensionPixelSize(2131167446);
    u = this.g.getDimensionPixelSize(2131165482);
  }
  
  private void C(int paramInt)
  {
    this.h.p.setWidth(paramInt);
    this.h.q.setWidth(paramInt);
  }
  
  private void D(int paramInt)
  {
    Object localObject1 = this.h.E;
    int i1 = localObject1.length;
    for (int i2 = 0; i2 < i1; i2++) {
      localObject1[i2].setContentDescription("");
    }
    Object localObject2;
    if (paramInt != 1)
    {
      if (paramInt != 2)
      {
        if (paramInt != 3)
        {
          if (paramInt == 4)
          {
            localObject2 = this.h.E[0];
            localObject1 = this.f;
            ((View)localObject2).setContentDescription(((Context)localObject1).getString(2131886112, new Object[] { ((Context)localObject1).getString(2131887595) }));
          }
        }
        else
        {
          localObject2 = this.h.E[1];
          localObject1 = this.f;
          ((View)localObject2).setContentDescription(((Context)localObject1).getString(2131886112, new Object[] { ((Context)localObject1).getString(2131887596) }));
        }
      }
      else
      {
        localObject1 = this.h.E[2];
        localObject2 = this.f;
        ((View)localObject1).setContentDescription(((Context)localObject2).getString(2131886112, new Object[] { ((Context)localObject2).getString(2131887594) }));
      }
    }
    else
    {
      localObject2 = this.h.E[3];
      localObject1 = this.f;
      ((View)localObject2).setContentDescription(((Context)localObject1).getString(2131886112, new Object[] { ((Context)localObject1).getString(2131887593) }));
    }
  }
  
  private void F()
  {
    this.h.K.getMonthContainer().setVisibility(8);
    this.h.m.setVisibility(0);
    this.h.n.setVisibility(8);
    this.h.t.setVisibility(0);
    this.h.n.setEnabled(false);
    this.h.o.setEnabled(false);
    if ((!y.a()) && (!y.f(this.f))) {
      this.h.z.setVisibility(8);
    } else {
      this.h.z.setVisibility(0);
    }
    this.h.B.setVisibility(8);
    this.h.x.setVisibility(8);
    this.h.y.setVisibility(8);
    this.h.f.setVisibility(8);
  }
  
  private void n(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("changeView(): to ");
    localStringBuilder.append(paramInt);
    z.a("Cal:D:HomePageAnimationController", localStringBuilder.toString());
    D(paramInt);
    Utils.b1(this.f, -1);
    g.c(new g.m(paramInt, Utils.t(this.f)));
    if (paramInt == 4)
    {
      g.c(new g.l());
      g0.d("to_month_view");
    }
    else if (paramInt == 2)
    {
      g0.d("to_day_view");
    }
    else if (paramInt == 1)
    {
      g0.d("to_agenda_view");
    }
    else if (paramInt == 3)
    {
      g0.d("to_week_view");
    }
  }
  
  public static void o()
  {
    try
    {
      j = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static t0 p(Context paramContext)
  {
    try
    {
      Object localObject1 = j;
      if (localObject1 != null) {
        localObject1 = (t0)((Reference)localObject1).get();
      } else {
        localObject1 = null;
      }
      Object localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject2 = new com/android/calendar/homepage/t0;
        ((t0)localObject2).<init>(paramContext.getApplicationContext());
        paramContext = new java/lang/ref/WeakReference;
        paramContext.<init>(localObject2);
        j = paramContext;
      }
      return localObject2;
    }
    finally {}
  }
  
  private void r(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    ((ImageView)paramView.findViewById(2131363288)).setImageResource(paramInt1);
    paramView = (TextView)paramView.findViewById(2131363299);
    paramView.setText(this.g.getString(paramInt2));
    paramView.setTextColor(paramInt3);
  }
  
  public void E(boolean paramBoolean)
  {
    this.e = Boolean.valueOf(paramBoolean);
  }
  
  public void G(int paramInt1, int paramInt2)
  {
    Object localObject = this.h;
    if (localObject != null)
    {
      localObject = ((AllInOneActivity.h)localObject).a;
      if (localObject != null)
      {
        H((View)localObject, paramInt1, paramInt2);
        H(this.h.m, paramInt1, paramInt2);
        H(this.h.B, paramInt1, paramInt2);
      }
    }
  }
  
  public void H(View paramView, int paramInt1, int paramInt2)
  {
    paramView = ObjectAnimator.ofObject(paramView, "backgroundColor", new ArgbEvaluator(), new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
    paramView.setDuration(200L);
    paramView.setInterpolator(new AccelerateDecelerateInterpolator());
    paramView.start();
  }
  
  public void I()
  {
    J(null, false);
  }
  
  public void J(final Runnable paramRunnable, final boolean paramBoolean)
  {
    if ((this.d) && (!paramBoolean)) {
      return;
    }
    if (!this.h.g(this)) {
      return;
    }
    c.c().k(new g.u0());
    paramBoolean = this.c ^ true;
    ValueAnimator localValueAnimator;
    if (paramBoolean) {
      localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
    } else {
      localValueAnimator = ValueAnimator.ofFloat(new float[] { 1.0F, 0.0F });
    }
    localValueAnimator.setDuration(300L);
    Object localObject = n;
    localValueAnimator.setInterpolator((TimeInterpolator)localObject);
    localValueAnimator.addUpdateListener(new p0(this));
    ObjectAnimator localObjectAnimator;
    if (paramBoolean) {
      localObjectAnimator = ObjectAnimator.ofFloat(this.h.D, "alpha", new float[] { 0.0F, 1.0F });
    } else {
      localObjectAnimator = ObjectAnimator.ofFloat(this.h.D, "alpha", new float[] { 1.0F, 0.0F });
    }
    localObjectAnimator.setDuration(100L);
    localObjectAnimator.setInterpolator((TimeInterpolator)localObject);
    localObjectAnimator.addListener(new a(paramBoolean));
    if (paramBoolean) {
      localObjectAnimator.setStartDelay(50L);
    }
    localObject = new AnimatorSet();
    ((AnimatorSet)localObject).playTogether(new Animator[] { localValueAnimator, localObjectAnimator });
    ((Animator)localObject).addListener(new b(paramRunnable));
    ((AnimatorSet)localObject).start();
  }
  
  public void K(int paramInt)
  {
    Object localObject = this.h;
    if ((localObject != null) && (((AllInOneActivity.h)localObject).n != null))
    {
      ((AllInOneActivity.h)localObject).j(paramInt);
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("updateActionBar viewType:");
      ((StringBuilder)localObject).append(paramInt);
      ((StringBuilder)localObject).append(" isFrom3rd:");
      ((StringBuilder)localObject).append(Utils.l0());
      ((StringBuilder)localObject).append(" isPortrait:");
      ((StringBuilder)localObject).append(this.i);
      z.a("Cal:D:HomePageAnimationController", ((StringBuilder)localObject).toString());
      if (this.e.booleanValue())
      {
        F();
        return;
      }
      int i1 = 8;
      switch (paramInt)
      {
      default: 
        break;
      case 5: 
        F();
        break;
      case 3: 
        if (this.h.K.getMonthContainer() != null) {
          this.h.K.getMonthContainer().setVisibility(0);
        }
        localObject = this.h.f;
        if (localObject != null) {
          ((View)localObject).setVisibility(0);
        }
        localObject = this.h.t;
        if (localObject != null) {
          ((View)localObject).setVisibility(8);
        }
        localObject = this.h.z;
        if (localObject != null) {
          ((View)localObject).setVisibility(8);
        }
        if (!this.i.booleanValue())
        {
          this.h.m.setVisibility(8);
          this.h.n.setVisibility(8);
          this.h.n.setEnabled(false);
          this.h.B.setVisibility(0);
          this.h.x.setVisibility(8);
          this.h.y.setVisibility(8);
        }
        else
        {
          this.h.m.setVisibility(0);
          this.h.n.setVisibility(0);
          this.h.n.setEnabled(false);
          this.h.o.setEnabled(true);
          this.h.B.setVisibility(0);
          this.h.x.setVisibility(0);
          this.h.y.setVisibility(0);
        }
        break;
      case 1: 
      case 2: 
      case 4: 
      case 6: 
        if (this.h.K.getMonthContainer() != null) {
          this.h.K.getMonthContainer().setVisibility(0);
        }
        localObject = this.h.f;
        if (localObject != null) {
          ((View)localObject).setVisibility(0);
        }
        localObject = this.h.t;
        if (localObject != null) {
          ((View)localObject).setVisibility(8);
        }
        localObject = this.h.z;
        if (localObject != null) {
          ((View)localObject).setVisibility(8);
        }
        this.h.m.setVisibility(0);
        this.h.n.setVisibility(0);
        localObject = this.h.n;
        boolean bool;
        if (4 == paramInt) {
          bool = true;
        } else {
          bool = false;
        }
        ((View)localObject).setEnabled(bool);
        this.h.o.setEnabled(true);
        this.h.B.setVisibility(0);
        this.h.x.setVisibility(0);
        this.h.y.setVisibility(0);
      }
      if (this.h.D != null)
      {
        if (paramInt == 3)
        {
          paramInt = i1;
          if (!this.i.booleanValue()) {}
        }
        else if (!this.c)
        {
          paramInt = i1;
        }
        else
        {
          paramInt = 0;
        }
        this.h.D.setVisibility(paramInt);
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("updateActionBar mHomepageTab visibility:");
        ((StringBuilder)localObject).append(paramInt);
        z.g("Cal:D:HomePageAnimationController", ((StringBuilder)localObject).toString());
      }
    }
  }
  
  public void L(int paramInt1, int paramInt2)
  {
    if (Utils.t(this.f) == paramInt1)
    {
      Object localObject = this.h;
      if (localObject != null)
      {
        localObject = ((AllInOneActivity.h)localObject).a;
        if (localObject != null)
        {
          ((View)localObject).setBackgroundColor(paramInt2);
          this.h.m.setBackgroundColor(paramInt2);
          this.h.B.setBackgroundColor(paramInt2);
        }
      }
    }
  }
  
  public void M(boolean paramBoolean)
  {
    this.i = Boolean.valueOf(paramBoolean);
  }
  
  public void N(int paramInt)
  {
    Object localObject = this.h;
    if (localObject != null)
    {
      localObject = ((AllInOneActivity.h)localObject).F;
      if (localObject != null)
      {
        paramInt = u + r + q - p;
        o = paramInt;
        float f1;
        if (this.c) {
          f1 = paramInt;
        } else {
          f1 = 0.0F;
        }
        ((View)localObject).setTranslationY(f1);
      }
    }
  }
  
  public void O(int paramInt)
  {
    String str = this.f.getResources().getString(x0.H(paramInt));
    this.h.p.setText(str);
    this.h.p.setTag(Integer.valueOf(paramInt));
    Q(paramInt);
  }
  
  public void P(int paramInt1, int paramInt2, float paramFloat)
  {
    String str = this.f.getResources().getString(x0.H(paramInt1));
    Object localObject = this.f.getResources().getString(x0.H(paramInt2));
    this.h.p.setText(str);
    this.h.p.setTag(Integer.valueOf(paramInt1));
    localObject = new o0(this, paramFloat, (String)localObject, paramInt2);
    if (paramFloat == 0.0F)
    {
      this.h.p.post((Runnable)localObject);
      Q(paramInt1);
    }
    else
    {
      ((Runnable)localObject).run();
    }
  }
  
  public void Q(int paramInt)
  {
    if (y.a()) {
      this.h.w.setVisibility(0);
    } else {
      this.h.w.setVisibility(8);
    }
    Object localObject = this.h.p.getTag();
    if ((localObject instanceof Integer))
    {
      float f1;
      if (((Integer)localObject).intValue() == paramInt) {
        f1 = this.h.p.getPaint().measureText(this.h.p.getText().toString());
      } else {
        f1 = this.h.q.getPaint().measureText(this.h.q.getText().toString());
      }
      C((int)f1);
    }
  }
  
  public void R(int paramInt)
  {
    if (this.h.D == null) {
      return;
    }
    int i1 = Utils.r(this.f);
    if (i1 == paramInt) {
      return;
    }
    this.h.E[paramInt].findViewById(2131362675).setVisibility(0);
    this.h.E[paramInt].findViewById(2131362676).setVisibility(8);
    this.h.E[i1].findViewById(2131362675).setVisibility(8);
    this.h.E[i1].findViewById(2131362676).setVisibility(0);
  }
  
  public void S(Calendar paramCalendar, boolean paramBoolean)
  {
    int i1 = paramCalendar.get(1);
    this.h.K.post(new m0(this, String.valueOf(i1)));
    if (paramBoolean)
    {
      int i2 = paramCalendar.getMinimalDaysInFirstWeek();
      paramCalendar.setMinimalDaysInFirstWeek(4);
      i1 = paramCalendar.get(3);
      paramCalendar.setMinimalDaysInFirstWeek(i2);
      paramCalendar = this.f.getResources().getString(2131887060, new Object[] { Integer.valueOf(i1) });
      this.h.H.setText(paramCalendar);
    }
    else
    {
      Object localObject1 = Calendar.getInstance();
      i1 = s0.m(paramCalendar) - s0.m((Calendar)localObject1);
      if (i1 == 0) {
        localObject1 = this.f.getString(2131886709);
      } else if (i1 > 0) {
        localObject1 = this.f.getResources().getString(2131887025);
      } else {
        localObject1 = this.f.getResources().getString(2131887024);
      }
      Object localObject2 = s0.j(this.f, paramCalendar);
      if ((y.o(this.f)) && (!s0.A(paramCalendar)) && (!TextUtils.isEmpty((CharSequence)localObject2)))
      {
        paramCalendar = this.h.H;
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("");
        ((StringBuilder)localObject2).append(Math.abs(i1));
        ((StringBuilder)localObject2).append((String)localObject1);
        paramCalendar.setText(((StringBuilder)localObject2).toString());
      }
      else
      {
        this.h.H.setText(Utils.p(this.f, paramCalendar.getTimeInMillis(), paramCalendar.getTimeInMillis(), 32770));
      }
    }
  }
  
  public void T(int paramInt)
  {
    this.h.K.post(new n0(this, paramInt));
    this.h.r.setText(String.valueOf(paramInt));
  }
  
  public void m(AllInOneActivity.h paramh)
  {
    this.h = paramh;
  }
  
  public void q()
  {
    int i1 = this.g.getColor(2131099991);
    int i2 = this.g.getColor(2131099992);
    int i3 = Utils.r(this.f);
    for (int i4 = 0; i4 < 4; i4++)
    {
      r(this.h.E[i4].findViewById(2131362676), l[i4], m[i4], i2);
      r(this.h.E[i4].findViewById(2131362675), k[i4], m[i4], i1);
      if (i3 == i4)
      {
        localObject = this.h.E[i4];
        Context localContext = this.f;
        ((View)localObject).setContentDescription(localContext.getString(2131886112, new Object[] { localContext.getString(m[i4]) }));
        this.h.E[i4].findViewById(2131362675).setVisibility(0);
        this.h.E[i4].findViewById(2131362676).setVisibility(8);
      }
      Object localObject = a.y(new View[] { (ImageView)this.h.E[i4].findViewById(2131363288) });
      this.h.E[i4].setOnTouchListener(new q0((d)localObject));
      this.h.E[i4].setOnClickListener(new r0(this, i4));
    }
  }
  
  public boolean s()
  {
    return this.d;
  }
  
  public boolean t()
  {
    return this.c;
  }
  
  public boolean u()
  {
    return this.e.booleanValue();
  }
  
  class a
    extends AnimatorListenerAdapter
  {
    a(boolean paramBoolean) {}
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      t0.i(t0.this, paramBoolean);
      if (!t0.h(t0.this)) {
        t0.j(t0.this).D.setVisibility(8);
      }
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      super.onAnimationStart(paramAnimator);
      if (!t0.h(t0.this)) {
        t0.j(t0.this).D.setVisibility(0);
      }
    }
  }
  
  class b
    extends AnimatorListenerAdapter
  {
    b(Runnable paramRunnable) {}
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      t0.k(t0.this, false);
      if (Utils.t(t0.l(t0.this)) == 6) {
        g.c(new g.m(4, 6));
      }
      g.c(new g.k0());
      paramAnimator = paramRunnable;
      if (paramAnimator != null) {
        paramAnimator.run();
      }
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      t0.k(t0.this, true);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.t0
 * JD-Core Version:    0.7.0.1
 */