package com.android.calendar.homepage;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetrics;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.animation.DecelerateInterpolator;
import androidx.core.view.a0;
import androidx.customview.widget.a;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.DaysOffUtils;
import com.miui.calendar.util.HolidayPatch;
import com.miui.calendar.util.HolidayPatchItem;
import com.miui.calendar.util.j0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.w;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import z3.b;

public class c0
  extends View
{
  public static int D0;
  public static int E0;
  private boolean A0 = false;
  private h1.b B0;
  private d0 C0;
  private Typeface D = w.d();
  private int E;
  private int F;
  private int G;
  private int H;
  private int I;
  private int J;
  private int K;
  private int L;
  private int M;
  private int N;
  private int O;
  private int P;
  private int Q;
  private int R;
  private int S;
  private float T;
  private float U;
  private float V;
  private float W;
  protected int a = 7;
  private float a0;
  protected Context b;
  private float b0;
  protected com.android.calendar.common.e c;
  private float c0;
  protected Calendar d;
  private float d0;
  protected Calendar e;
  private float e0;
  protected Calendar f;
  private float f0;
  protected int g = -1;
  private float g0;
  protected int h = 5;
  private float h0;
  int[] i = new int[7];
  private float i0;
  boolean[] j = new boolean[7];
  private float j0;
  boolean[] k = new boolean[7];
  private String k0;
  protected float l;
  private String l0;
  protected float m;
  private Typeface m0;
  protected int n;
  private boolean n0;
  protected float o;
  private boolean o0 = true;
  protected float p;
  private boolean p0;
  protected float q;
  private boolean q0;
  protected final Paint r = new Paint();
  private ValueAnimator r0;
  private h s0;
  private g t0;
  private float u0 = 0.0F;
  protected final Paint v = new Paint();
  private float v0 = 0.0F;
  protected final Paint w = new Paint();
  private boolean w0 = false;
  private List<List<k>> x;
  private boolean x0 = false;
  protected k y;
  private boolean y0 = true;
  protected k z;
  private boolean z0 = false;
  
  public c0(Context paramContext, float paramFloat, Calendar paramCalendar1, Calendar paramCalendar2)
  {
    this(paramContext, paramFloat, paramCalendar1, paramCalendar2, null, 7);
  }
  
  public c0(Context paramContext, float paramFloat, Calendar paramCalendar1, Calendar paramCalendar2, Calendar paramCalendar3)
  {
    this(paramContext, paramFloat, paramCalendar1, paramCalendar2, paramCalendar3, 7);
  }
  
  public c0(Context paramContext, float paramFloat, Calendar paramCalendar1, Calendar paramCalendar2, Calendar paramCalendar3, int paramInt)
  {
    super(paramContext);
    this.a = paramInt;
    T(paramContext);
    this.l = paramFloat;
    setWeekFirstDay(paramCalendar1);
    setSelectedDay(paramCalendar2);
    this.f = paramCalendar3;
    e0();
  }
  
  private ArrayList<k> P()
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject = new a(2);
    this.y = ((k)localObject);
    localArrayList.add(localObject);
    localObject = new b(8);
    this.z = ((k)localObject);
    localArrayList.add(localObject);
    localObject = new c(1);
    localArrayList.add(localObject);
    localArrayList.add(new d(4, (l)localObject));
    localArrayList.add(new e(5, (l)localObject));
    if (this.p0) {
      localArrayList.add(new f(6, (l)localObject));
    }
    return localArrayList;
  }
  
  private void T(Context paramContext)
  {
    this.b = paramContext;
    this.c = com.android.calendar.common.e.g(paramContext);
    paramContext = paramContext.getResources();
    this.n = paramContext.getConfiguration().orientation;
    float f1 = paramContext.getDimension(2131166877);
    this.o = f1;
    this.p = f1;
    this.E = paramContext.getColor(2131100686);
    this.F = paramContext.getColor(2131100689);
    this.G = paramContext.getColor(2131100687);
    this.I = paramContext.getColor(2131100683);
    this.J = paramContext.getColor(2131100685);
    D0 = paramContext.getColor(2131100673);
    this.M = paramContext.getColor(2131100677);
    this.N = paramContext.getColor(2131100678);
    this.O = paramContext.getColor(2131100690);
    this.P = paramContext.getColor(2131100698);
    this.Q = paramContext.getColor(2131100694);
    this.R = paramContext.getColor(2131100695);
    this.K = paramContext.getColor(2131100684);
    E0 = paramContext.getColor(2131100691);
    this.L = paramContext.getColor(2131100682);
    this.H = paramContext.getColor(2131100696);
    this.S = paramContext.getColor(2131100681);
    this.T = paramContext.getDimension(2131167368);
    this.U = paramContext.getDimension(2131166883);
    this.V = paramContext.getDimension(2131165806);
    this.W = x0.O(this.b, 9.0F);
    this.a0 = x0.O(this.b, 7.0F);
    this.c0 = (x0.j0(this.b) / 2.0F - 1.0F);
    this.d0 = x0.O(this.b, 18.0F);
    this.e0 = paramContext.getDimension(2131166878);
    this.b0 = paramContext.getDimension(2131167600);
    this.f0 = paramContext.getDimension(2131166882);
    this.g0 = paramContext.getDimension(2131166881);
    this.h0 = paramContext.getDimension(2131166880);
    this.i0 = paramContext.getDimension(2131165805);
    d0();
    if (x0.p0()) {
      paramContext = null;
    } else {
      paramContext = w.d();
    }
    this.m0 = paramContext;
    this.r.setAntiAlias(true);
    this.r.setStyle(Paint.Style.FILL);
    this.r.setTextAlign(Paint.Align.CENTER);
    this.v.setAntiAlias(true);
    this.w.setAntiAlias(true);
    this.n0 = y.q(this.b);
    this.p0 = y.t(this.b);
    this.q0 = y.a;
    this.x = new ArrayList();
    for (int i1 = 0; i1 < this.a; i1++) {
      this.x.add(P());
    }
  }
  
  private void Z()
  {
    this.n0 = y.q(this.b);
  }
  
  private void d0()
  {
    Resources localResources = getResources();
    int i1;
    if (y.f(getContext())) {
      i1 = 2131887398;
    } else {
      i1 = 2131887397;
    }
    this.k0 = localResources.getString(i1);
    localResources = getResources();
    if (y.f(getContext())) {
      i1 = 2131887854;
    } else {
      i1 = 2131887853;
    }
    this.l0 = localResources.getString(i1);
  }
  
  private void e0()
  {
    d0 locald0 = new d0(this);
    this.C0 = locald0;
    a0.l0(this, locald0);
  }
  
  private void f0()
  {
    this.w0 = false;
  }
  
  private void j0()
  {
    if (this.q0)
    {
      Calendar localCalendar = (Calendar)this.d.clone();
      for (int i1 = 0; i1 < this.a; i1++)
      {
        ArrayList localArrayList = z3.d.h(this.b).g(localCalendar.getTimeInMillis() + localCalendar.get(15));
        boolean[] arrayOfBoolean = this.k;
        int i2;
        if ((localArrayList != null) && (localArrayList.size() != 0)) {
          i2 = 1;
        } else {
          i2 = 0;
        }
        arrayOfBoolean[i1] = i2;
        localCalendar.add(5, 1);
      }
    }
  }
  
  private void k0()
  {
    if (this.p0)
    {
      Calendar localCalendar = (Calendar)this.d.clone();
      for (int i1 = 0; i1 < this.a; i1++)
      {
        this.i[i1] = DaysOffUtils.g(this.b).e(localCalendar.get(1), localCalendar.get(6));
        localCalendar.add(5, 1);
      }
    }
  }
  
  public void N()
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("cancelAnim mAnimator:");
    ((StringBuilder)localObject).append(this.r0);
    ((StringBuilder)localObject).append(" mNeedShowWholeAnim:");
    ((StringBuilder)localObject).append(this.w0);
    z.a("Cal:D:BaseWeekView", ((StringBuilder)localObject).toString());
    if (!this.w0)
    {
      localObject = this.r0;
      if ((localObject != null) && (((ValueAnimator)localObject).isStarted())) {
        this.r0.cancel();
      }
      return;
    }
    localObject = this.r0;
    if (localObject == null) {
      return;
    }
    ((ValueAnimator)localObject).cancel();
  }
  
  public void O()
  {
    this.t0 = null;
    this.r0 = null;
    this.s0 = null;
    this.x0 = false;
    this.v0 = 0.0F;
    this.u0 = 0.0F;
  }
  
  public int Q(float paramFloat)
  {
    float f1 = this.o;
    if ((paramFloat >= f1) && (paramFloat <= this.m - this.p))
    {
      float f2 = this.q;
      if (f2 != 0.0F) {
        return (int)((paramFloat - f1) / f2);
      }
    }
    return -1;
  }
  
  public String R(int paramInt)
  {
    Object localObject = new j(paramInt);
    String str1;
    if (Utils.t(this.b) == 3)
    {
      int i1 = ((j)localObject).b.getMinimalDaysInFirstWeek();
      ((j)localObject).b.setMinimalDaysInFirstWeek(4);
      paramInt = ((j)localObject).b.get(3);
      ((j)localObject).b.setMinimalDaysInFirstWeek(i1);
      str1 = this.b.getResources().getQuantityString(2131755095, paramInt, new Object[] { Integer.valueOf(paramInt) }).toLowerCase();
    }
    else
    {
      str1 = s0.j(this.b, ((j)localObject).b);
      if ((!y.o(this.b)) || (s0.A(((j)localObject).b)) || (TextUtils.isEmpty(str1))) {
        if (!s0.A(((j)localObject).b))
        {
          if (y.a()) {
            str1 = Utils.p(this.b, ((j)localObject).b.getTimeInMillis(), ((j)localObject).b.getTimeInMillis(), 32770);
          } else {
            str1 = "";
          }
        }
        else {
          str1 = this.b.getResources().getString(2131887416);
        }
      }
    }
    String str2;
    if (y.a()) {
      str2 = String.format(getResources().getString(2131887613), new Object[] { DateUtils.formatDateTime(this.b, ((j)localObject).b.getTimeInMillis(), 4), a4.d.g(((j)localObject).b) });
    } else {
      str2 = String.format(getResources().getString(2131887613), new Object[] { DateUtils.formatDateTime(this.b, ((j)localObject).b.getTimeInMillis(), 4), "" });
    }
    String str3 = DateUtils.formatDateTime(this.b, ((j)localObject).b.getTimeInMillis(), 2);
    localObject = b.f(getContext(), ((j)localObject).b);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(str1);
    localStringBuilder.append(str2);
    localStringBuilder.append(str3);
    localStringBuilder.append((String)localObject);
    return localStringBuilder.toString();
  }
  
  public Calendar S(float paramFloat)
  {
    if ((paramFloat >= this.o) && (paramFloat <= this.m - this.p))
    {
      float f1 = paramFloat;
      if (x0.x0()) {
        f1 = this.m - paramFloat;
      }
      Calendar localCalendar = (Calendar)this.d.clone();
      localCalendar.add(5, (int)((f1 - this.o) / this.q));
      return localCalendar;
    }
    return null;
  }
  
  public void U()
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("initAnimValues mAnimator:");
    ((StringBuilder)localObject).append(this.r0);
    z.a("Cal:D:BaseWeekView", ((StringBuilder)localObject).toString());
    if (this.r0 != null) {
      return;
    }
    this.s0 = new h(this.b, this);
    this.t0 = new g(this);
    localObject = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F, 1.0F, 1.0F, 1.0F, 1.0F, 1.0F, 1.0F, 1.0F, 1.0F });
    this.r0 = ((ValueAnimator)localObject);
    ((ValueAnimator)localObject).setStartDelay(2000L);
    this.r0.setDuration(4500L);
    this.r0.setInterpolator(new DecelerateInterpolator(1.5F));
    this.r0.setRepeatCount(-1);
    this.r0.setRepeatMode(1);
    this.r0.addUpdateListener(this.s0);
    this.r0.addListener(this.t0);
  }
  
  boolean V()
  {
    return this.c.t ^ true;
  }
  
  protected void W() {}
  
  public void X()
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("pauseAnim mAnimator:");
    ((StringBuilder)localObject).append(this.r0);
    ((StringBuilder)localObject).append(" mNeedShowWholeAnim:");
    ((StringBuilder)localObject).append(this.w0);
    z.a("Cal:D:BaseWeekView", ((StringBuilder)localObject).toString());
    if (!this.w0)
    {
      localObject = this.r0;
      if ((localObject != null) && (((ValueAnimator)localObject).isStarted())) {
        this.r0.pause();
      }
      return;
    }
    localObject = this.r0;
    if (localObject == null) {
      return;
    }
    ((ValueAnimator)localObject).pause();
  }
  
  public void Y()
  {
    Z();
    f0();
    k0();
    j0();
    d0();
    c0();
    invalidate();
  }
  
  protected void a0()
  {
    boolean bool = x0.x0();
    for (int i1 = 0;; i1++)
    {
      int i2 = this.a;
      if (i1 >= i2) {
        break;
      }
      if (bool) {
        i2 = i2 - i1 - 1;
      } else {
        i2 = i1;
      }
      j localj = new j(i2);
      Iterator localIterator = ((List)getPaintInfos().get(i1)).iterator();
      while (localIterator.hasNext())
      {
        k localk = (k)localIterator.next();
        i2 = localk.d;
        if ((i2 == 1) || (i2 == 2)) {
          localk.b(localj);
        }
      }
    }
  }
  
  public void b0()
  {
    f0();
    k0();
    j0();
    a0();
    invalidate();
  }
  
  protected void c0()
  {
    boolean bool = x0.x0();
    for (int i1 = 0;; i1++)
    {
      int i2 = this.a;
      if (i1 >= i2) {
        break;
      }
      if (bool) {
        i2 = i2 - i1 - 1;
      } else {
        i2 = i1;
      }
      j localj = new j(i2);
      Iterator localIterator = ((List)getPaintInfos().get(i1)).iterator();
      while (localIterator.hasNext()) {
        ((k)localIterator.next()).b(localj);
      }
    }
  }
  
  protected boolean dispatchHoverEvent(MotionEvent paramMotionEvent)
  {
    d0 locald0 = this.C0;
    if ((locald0 != null) && (locald0.dispatchHoverEvent(paramMotionEvent))) {
      return true;
    }
    return super.dispatchHoverEvent(paramMotionEvent);
  }
  
  public void g0()
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("resumeAnim mAnimator:");
    ((StringBuilder)localObject).append(this.r0);
    ((StringBuilder)localObject).append(" mNeedShowWholeAnim:");
    ((StringBuilder)localObject).append(this.w0);
    z.a("Cal:D:BaseWeekView", ((StringBuilder)localObject).toString());
    if (!this.w0) {
      return;
    }
    localObject = this.r0;
    if (localObject == null)
    {
      U();
      this.r0.start();
      return;
    }
    if (!((ValueAnimator)localObject).isStarted())
    {
      this.r0.start();
      return;
    }
    if (this.r0.isPaused()) {
      this.r0.resume();
    }
  }
  
  public float getDayWidth()
  {
    return this.q;
  }
  
  protected float getDrawCenterYOffset()
  {
    return this.j0;
  }
  
  public float getEndPadding()
  {
    return this.p;
  }
  
  protected List<List<k>> getPaintInfos()
  {
    return this.x;
  }
  
  public float getStartPadding()
  {
    return this.o;
  }
  
  public Calendar getWeekFirstDay()
  {
    return this.d;
  }
  
  public float getWeekHeight()
  {
    return this.l;
  }
  
  public void h0(int paramInt)
  {
    if ((paramInt < this.a) && (paramInt >= 0) && (this.A0))
    {
      Calendar localCalendar = new j(paramInt).b;
      if (localCalendar != null)
      {
        h1.b localb = this.B0;
        if ((localb != null) && (Build.VERSION.SDK_INT <= 30)) {
          localb.a(localCalendar);
        }
      }
    }
  }
  
  public void i0()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("startAnim mAnimator:");
    localStringBuilder.append(this.r0);
    localStringBuilder.append(" mNeedShowWholeAnim:");
    localStringBuilder.append(this.w0);
    z.a("Cal:D:BaseWeekView", localStringBuilder.toString());
    if (!this.w0) {
      return;
    }
    if (this.r0 == null) {
      U();
    }
    if (!this.r0.isStarted()) {
      this.r0.start();
    } else if (!this.r0.isRunning()) {
      this.r0.resume();
    } else if (this.r0.isPaused()) {
      this.r0.resume();
    }
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    int i1 = this.n;
    int i2 = paramConfiguration.orientation;
    if (i1 != i2)
    {
      this.n = i2;
      W();
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    for (int i1 = 0; i1 < this.a; i1++)
    {
      float f1 = this.o;
      float f2 = this.q;
      float f3 = i1;
      float f4 = f2 / 2.0F;
      float f5 = this.l / 2.0F;
      float f6 = getDrawCenterYOffset();
      Iterator localIterator = ((List)getPaintInfos().get(i1)).iterator();
      while (localIterator.hasNext())
      {
        k localk = (k)localIterator.next();
        if (localk.a) {
          localk.a(paramCanvas, localk.b + (f1 + f3 * f2 + f4), localk.c + (f5 + f6));
        }
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(View.MeasureSpec.getSize(paramInt1), (int)this.l);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f1 = paramInt1;
    this.m = f1;
    this.q = ((f1 - this.o - this.p) / this.a);
  }
  
  public void setEvents(boolean[] paramArrayOfBoolean)
  {
    this.j = paramArrayOfBoolean;
  }
  
  public void setFocusDay(Calendar paramCalendar)
  {
    this.f = paramCalendar;
  }
  
  public void setHeight(int paramInt)
  {
    this.l = paramInt;
  }
  
  public void setMonthView(boolean paramBoolean)
  {
    this.A0 = paramBoolean;
  }
  
  public void setMonthViewTouchEventCallback(h1.b paramb)
  {
    this.B0 = paramb;
  }
  
  public void setPageSelect(boolean paramBoolean)
  {
    this.y0 = paramBoolean;
  }
  
  public void setSelectedDay(Calendar paramCalendar)
  {
    Calendar localCalendar = Calendar.getInstance();
    this.e = localCalendar;
    localCalendar.setTimeInMillis(paramCalendar.getTimeInMillis());
  }
  
  public void setShowDetails(boolean paramBoolean)
  {
    this.o0 = (paramBoolean ^ true);
  }
  
  public void setWeekFirstDay(Calendar paramCalendar)
  {
    Calendar localCalendar = Calendar.getInstance();
    this.d = localCalendar;
    localCalendar.setTimeInMillis(paramCalendar.getTimeInMillis());
  }
  
  public void setWeekNum(int paramInt)
  {
    this.h = paramInt;
  }
  
  public void setWeekView(boolean paramBoolean)
  {
    this.z0 = paramBoolean;
  }
  
  class a
    extends c0.i
  {
    a(int paramInt)
    {
      super(paramInt);
    }
    
    void b(c0.j paramj)
    {
      if ((paramj.e) && (paramj.c))
      {
        this.a = true;
        this.f = c0.a(c0.this);
        this.b = 0.0F;
        this.c = 0.0F;
        if ((paramj.d) && (!c0.this.V()))
        {
          this.h = Paint.Style.FILL;
          this.g = c0.E0;
        }
        else if ((!paramj.d) && (!Utils.o0(c0.this.getContext())))
        {
          this.h = Paint.Style.FILL;
          this.g = c0.D0;
        }
        else
        {
          this.a = false;
        }
      }
      else
      {
        this.a = false;
      }
    }
  }
  
  class b
    extends c0.i
  {
    b(int paramInt)
    {
      super(paramInt);
    }
    
    void b(c0.j paramj)
    {
      if (paramj.k)
      {
        this.a = true;
        this.f = c0.a(c0.this);
        this.b = 0.0F;
        this.c = 0.0F;
        this.h = Paint.Style.FILL;
        this.g = c0.b(c0.this);
      }
      else
      {
        this.a = false;
      }
    }
  }
  
  class c
    extends c0.l
  {
    c(int paramInt)
    {
      super(paramInt);
    }
    
    void b(c0.j paramj)
    {
      this.a = true;
      this.f = String.valueOf(paramj.b.get(5));
      this.g = c0.n(c0.this);
      this.i = c0.y(c0.this);
      if (!paramj.e)
      {
        this.h = c0.H(c0.this);
      }
      else
      {
        boolean bool = paramj.c;
        if ((bool) && (paramj.d))
        {
          int i;
          if (c0.this.V()) {
            i = c0.I(c0.this);
          } else {
            i = c0.J(c0.this);
          }
          this.h = i;
        }
        else if ((!bool) && (paramj.d))
        {
          this.h = c0.I(c0.this);
        }
        else
        {
          this.h = c0.K(c0.this);
        }
      }
      paramj = c();
      float f = paramj.bottom;
      this.c = ((f - paramj.top) / 2.0F - f);
      if (c0.L(c0.this)) {
        this.c -= c0.M(c0.this);
      }
      this.b = 0.0F;
    }
  }
  
  class d
    extends c0.l
  {
    d(int paramInt, c0.l paraml)
    {
      super(paramInt);
    }
    
    void b(c0.j paramj)
    {
      this.a = c0.L(c0.this);
      this.j = false;
      this.i = c0.c(c0.this);
      this.l = s0.y(paramj.b, c0.this.d);
      Object localObject1 = c0.this;
      this.k = b.c(((c0)localObject1).b, paramj.b, ((View)localObject1).getResources());
      localObject1 = new ArrayList();
      Object localObject2 = this.k;
      int i;
      if ((localObject2 != null) && (((List)localObject2).size() > 0)) {
        for (i = 0; i < this.k.size(); i++)
        {
          localObject2 = (String)this.k.get(i);
          if ((!TextUtils.isEmpty((CharSequence)localObject2)) && (z3.e.h.contains(localObject2))) {
            ((ArrayList)localObject1).add(localObject2);
          }
        }
      }
      if ((((ArrayList)localObject1).size() >= 2) && (this.k != null))
      {
        this.j = true;
        c0.e(c0.this, true);
        this.k.clear();
        this.k.addAll((Collection)localObject1);
      }
      this.f = "";
      if (j0.c(c0.this.b) > 0) {
        localObject1 = j0.a(c0.this.b);
      } else {
        localObject1 = null;
      }
      if ((localObject1 != null) && (((HolidayPatch)localObject1).getHolidays() != null) && (((HolidayPatch)localObject1).getHolidays().size() > 0))
      {
        localObject2 = paramj.b;
        int j = ((Calendar)localObject2).get(1);
        int k = ((Calendar)localObject2).get(2);
        int m = ((Calendar)localObject2).get(5);
        localObject1 = ((HolidayPatch)localObject1).getHolidays().iterator();
        i = 0;
        for (int n = i;; n = i2)
        {
          do
          {
            i1 = i;
            i2 = n;
            if (!((Iterator)localObject1).hasNext()) {
              break;
            }
            localObject3 = (HolidayPatchItem)((Iterator)localObject1).next();
          } while ((localObject3 == null) || (j != ((HolidayPatchItem)localObject3).getYear()) || ((k + 1) * 100 + m != ((HolidayPatchItem)localObject3).getDay()));
          Object localObject3 = (ArrayList)((HolidayPatchItem)localObject3).getHolidays();
          i1 = i;
          i2 = n;
          if (localObject3 != null)
          {
            ((List)localObject3).removeAll(Collections.singleton(null));
            if (((List)localObject3).size() >= 2)
            {
              this.j = true;
              c0.e(c0.this, true);
            }
            if (((List)localObject3).size() >= 1) {
              i = 1;
            }
            i1 = i;
            i2 = n;
            if (((List)localObject3).size() == 0)
            {
              ((List)localObject3).add(b.g((Calendar)localObject2, c0.this.b.getResources()));
              i2 = 1;
              i1 = i;
            }
          }
          this.k = ((List)localObject3);
          i = i1;
        }
      }
      int i1 = 0;
      int i2 = i1;
      localObject1 = this.k;
      if ((localObject1 != null) && (((List)localObject1).size() > 0)) {
        this.f = ((String)this.k.get(0));
      }
      this.g = c0.f(c0.this);
      if (!paramj.e)
      {
        this.h = c0.g(c0.this);
      }
      else if ((paramj.c) && (paramj.d))
      {
        if (c0.this.V()) {
          i = c0.I(c0.this);
        } else {
          i = c0.J(c0.this);
        }
        this.h = i;
      }
      else
      {
        localObject1 = c0.this;
        if (((b.d(((c0)localObject1).b, paramj.b, ((View)localObject1).getResources())) || (i1 != 0)) && (i2 == 0)) {
          this.h = c0.h(c0.this);
        } else {
          this.h = c0.i(c0.this);
        }
      }
      paramj = c();
      this.b = 0.0F;
      this.c = ((int)(this.p.c + c0.j(c0.this) - paramj.ascent - paramj.leading));
    }
  }
  
  class e
    extends c0.i
  {
    e(int paramInt, c0.l paraml)
    {
      super(paramInt);
    }
    
    void b(c0.j paramj)
    {
      if ((paramj.f) && (c0.k(c0.this)))
      {
        this.a = true;
        this.f = c0.l(c0.this);
        this.h = Paint.Style.FILL;
        int i;
        if (paramj.e) {
          i = c0.m(c0.this);
        } else {
          i = c0.o(c0.this);
        }
        this.g = i;
        if ((paramj.c) && (paramj.d))
        {
          if (c0.this.V()) {
            i = c0.I(c0.this);
          } else {
            i = c0.J(c0.this);
          }
          this.g = i;
        }
        this.b = 0.0F;
        paramj = this.k.c();
        this.c = (-this.k.g - paramj.leading);
      }
      else
      {
        this.a = false;
      }
    }
  }
  
  class f
    extends c0.l
  {
    f(int paramInt, c0.l paraml)
    {
      super(paramInt);
    }
    
    void b(c0.j paramj)
    {
      boolean bool = paramj.h;
      if ((!bool) && (!paramj.g))
      {
        this.a = false;
      }
      else
      {
        this.a = true;
        if (bool) {
          localObject = c0.p(c0.this);
        } else {
          localObject = c0.q(c0.this);
        }
        this.f = ((String)localObject);
        this.g = c0.r(c0.this);
        int i;
        if (paramj.e)
        {
          if (paramj.h) {
            i = c0.s(c0.this);
          } else {
            i = c0.t(c0.this);
          }
          this.h = i;
        }
        else
        {
          if (paramj.h) {
            i = c0.u(c0.this);
          } else {
            i = c0.v(c0.this);
          }
          this.h = i;
        }
        if ((paramj.c) && (paramj.d))
        {
          if (c0.this.V()) {
            i = c0.I(c0.this);
          } else {
            i = c0.J(c0.this);
          }
          this.h = i;
        }
        paramj = this.p.c();
        Object localObject = c();
        this.c = (this.p.c + paramj.top - ((Paint.FontMetrics)localObject).top + c0.w(c0.this));
        this.b = ((this.p.d() + d()) / 2.0F + c0.x(c0.this));
      }
    }
  }
  
  private static class g
    implements Animator.AnimatorListener
  {
    private WeakReference<c0> a;
    
    public g(c0 paramc0)
    {
      this.a = new WeakReference(paramc0);
    }
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      paramAnimator = (c0)this.a.get();
      if (paramAnimator != null)
      {
        c0.G(paramAnimator, false);
        c0.A(paramAnimator, 0.0F);
        c0.D(paramAnimator, 0.0F);
      }
    }
    
    public void onAnimationEnd(Animator paramAnimator) {}
    
    public void onAnimationRepeat(Animator paramAnimator)
    {
      paramAnimator = (c0)this.a.get();
      if (paramAnimator != null)
      {
        c0.B(paramAnimator);
        c0.G(paramAnimator, false);
      }
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      paramAnimator = (c0)this.a.get();
      if (paramAnimator != null)
      {
        c0.G(paramAnimator, false);
        c0.A(paramAnimator, 0.0F);
        c0.D(paramAnimator, 0.0F);
      }
    }
  }
  
  private static class h
    implements ValueAnimator.AnimatorUpdateListener
  {
    private WeakReference<Context> a;
    private WeakReference<c0> b;
    
    public h(Context paramContext, c0 paramc0)
    {
      this.a = new WeakReference(paramContext);
      this.b = new WeakReference(paramc0);
    }
    
    public void onAnimationUpdate(ValueAnimator paramValueAnimator)
    {
      c0 localc0 = (c0)this.b.get();
      if (localc0 != null)
      {
        c0.D(localc0, ((Float)paramValueAnimator.getAnimatedValue()).floatValue());
        if (!c0.d(localc0))
        {
          paramValueAnimator.pause();
          return;
        }
        if ((this.a.get() != null) && (Utils.t((Context)this.a.get()) == 4) && (!c0.E(localc0)))
        {
          paramValueAnimator.pause();
          return;
        }
        if (c0.C(localc0) < 1.0D) {
          c0.G(localc0, false);
        }
        if (!c0.F(localc0))
        {
          if (c0.C(localc0) == 1.0D) {
            c0.G(localc0, true);
          }
          localc0.postInvalidate();
        }
      }
    }
  }
  
  protected abstract class i
    extends c0.k
  {
    float f;
    int g;
    Paint.Style h;
    float i;
    
    public i(int paramInt)
    {
      super(paramInt);
    }
    
    protected void a(Canvas paramCanvas, float paramFloat1, float paramFloat2)
    {
      c0.this.v.setColor(this.g);
      if (this.h == null) {
        this.h = Paint.Style.FILL;
      }
      c0.this.v.setStyle(this.h);
      if (this.h == Paint.Style.STROKE) {
        c0.this.v.setStrokeWidth(this.i);
      }
      paramCanvas.drawCircle(paramFloat1, paramFloat2, this.f, c0.this.v);
    }
  }
  
  protected class j
  {
    int a;
    Calendar b;
    boolean c;
    boolean d;
    boolean e;
    boolean f;
    boolean g;
    boolean h;
    boolean i;
    boolean j;
    boolean k;
    
    public j(int paramInt)
    {
      this.a = paramInt;
      Calendar localCalendar = (Calendar)c0.this.d.clone();
      this.b = localCalendar;
      localCalendar.add(5, paramInt);
      this.c = s0.u(this.b, c0.this.e);
      this.d = s0.A(this.b);
      localCalendar = c0.this.f;
      boolean bool;
      if ((localCalendar != null) && (localCalendar.get(2) != this.b.get(2))) {
        bool = false;
      } else {
        bool = true;
      }
      this.e = bool;
      this.f = c0.this.j[paramInt];
      int m = c0.this.i[paramInt];
      if (m == 1) {
        bool = true;
      } else {
        bool = false;
      }
      this.g = bool;
      if (m == 2) {
        bool = true;
      } else {
        bool = false;
      }
      this.h = bool;
      this.i = (c0.this.c.t ^ true);
      this.j = c0.this.k[paramInt];
      this.k = false;
    }
  }
  
  protected abstract class k
  {
    boolean a;
    float b;
    float c;
    int d;
    
    public k(int paramInt)
    {
      this.d = paramInt;
    }
    
    abstract void a(Canvas paramCanvas, float paramFloat1, float paramFloat2);
    
    abstract void b(c0.j paramj);
  }
  
  protected abstract class l
    extends c0.k
  {
    String f;
    float g;
    int h;
    Typeface i;
    boolean j = false;
    List<String> k;
    boolean l = false;
    private boolean m = false;
    private Paint.FontMetrics n = null;
    
    public l(int paramInt)
    {
      super(paramInt);
    }
    
    void a(Canvas paramCanvas, float paramFloat1, float paramFloat2)
    {
      e();
      c0.this.r.setTextSize(this.g);
      c0.this.r.setColor(this.h);
      Object localObject1;
      Object localObject2;
      float f3;
      float f4;
      if (this.j)
      {
        localObject1 = this.k;
        if ((localObject1 != null) && (((List)localObject1).size() != 0) && (this.k.size() != 1))
        {
          if (this.k.size() > 2) {
            this.k = this.k.subList(0, 2);
          }
          localObject2 = (String)this.k.get((int)c0.z(c0.this) % this.k.size());
          localObject1 = (String)this.k.get((int)(c0.z(c0.this) + 1.0F) % this.k.size());
          Object localObject3 = new Rect();
          if (((String)localObject2).length() > ((String)localObject1).length()) {
            c0.this.r.getTextBounds((String)localObject2, 0, ((String)localObject2).length(), (Rect)localObject3);
          } else {
            c0.this.r.getTextBounds((String)localObject1, 0, ((String)localObject1).length(), (Rect)localObject3);
          }
          ((Rect)localObject3).top -= 2;
          ((Rect)localObject3).bottom += 2;
          ((Rect)localObject3).left -= 2;
          ((Rect)localObject3).right += 2;
          float f1 = ((Rect)localObject3).width();
          float f2 = ((Rect)localObject3).height();
          int i1 = Math.max(((String)localObject2).length(), ((String)localObject1).length());
          f3 = c0.C(c0.this) * f2;
          paramCanvas.save();
          f4 = ((Rect)localObject3).left;
          f1 /= 2.0F;
          paramCanvas.clipRect(f4 + paramFloat1 - f1 - 1.0F, ((Rect)localObject3).top + paramFloat2, ((Rect)localObject3).right + paramFloat1 - f1 - 1.0F, ((Rect)localObject3).bottom + paramFloat2);
          if (i1 >= 4)
          {
            f1 = c0.this.r.getLetterSpacing();
            if (((String)localObject2).length() >= 4)
            {
              c0 localc0 = c0.this;
              localObject3 = localc0.r;
              if (localc0.h == 5) {
                f4 = -0.15F;
              } else {
                f4 = -0.1F;
              }
              ((Paint)localObject3).setLetterSpacing(f4);
            }
            else
            {
              c0.this.r.setLetterSpacing(f1);
            }
            paramCanvas.drawText((String)localObject2, paramFloat1, paramFloat2 - f3, c0.this.r);
            if (((String)localObject1).length() >= 4)
            {
              localObject3 = c0.this;
              localObject2 = ((c0)localObject3).r;
              if (((c0)localObject3).h == 5) {
                f4 = -0.15F;
              } else {
                f4 = -0.1F;
              }
              ((Paint)localObject2).setLetterSpacing(f4);
            }
            else
            {
              c0.this.r.setLetterSpacing(f1);
            }
            paramCanvas.drawText((String)localObject1, paramFloat1, paramFloat2 + f2 - f3, c0.this.r);
            c0.this.r.setLetterSpacing(f1);
          }
          else
          {
            paramCanvas.drawText((String)localObject2, paramFloat1, paramFloat2 - f3, c0.this.r);
            paramCanvas.drawText((String)localObject1, paramFloat1, paramFloat2 + f2 - f3, c0.this.r);
          }
          paramCanvas.restore();
          if ((Utils.t(c0.this.b) != 4) || (c0.E(c0.this))) {
            c0.this.i0();
          }
        }
        else if (this.f.length() >= 4)
        {
          f3 = c0.this.r.getLetterSpacing();
          localObject1 = c0.this;
          localObject2 = ((c0)localObject1).r;
          if (((c0)localObject1).h == 5) {
            f4 = -0.15F;
          } else {
            f4 = -0.1F;
          }
          ((Paint)localObject2).setLetterSpacing(f4);
          paramCanvas.drawText(this.f, paramFloat1, paramFloat2, c0.this.r);
          c0.this.r.setLetterSpacing(f3);
        }
        else
        {
          paramCanvas.drawText(this.f, paramFloat1, paramFloat2, c0.this.r);
        }
      }
      else
      {
        localObject1 = this.f;
        if (localObject1 == null) {
          return;
        }
        if (((String)localObject1).length() >= 4)
        {
          f3 = c0.this.r.getLetterSpacing();
          localObject2 = c0.this;
          localObject1 = ((c0)localObject2).r;
          if (((c0)localObject2).h == 5) {
            f4 = -0.15F;
          } else {
            f4 = -0.1F;
          }
          ((Paint)localObject1).setLetterSpacing(f4);
          paramCanvas.drawText(this.f, paramFloat1, paramFloat2, c0.this.r);
          c0.this.r.setLetterSpacing(f3);
        }
        else if ((!c0.p(c0.this).equals(this.f)) && (!c0.q(c0.this).equals(this.f)))
        {
          paramCanvas.drawText(this.f, paramFloat1, paramFloat2, c0.this.r);
        }
        else
        {
          paramCanvas.drawText(this.f, paramFloat1 - 4.0F, paramFloat2 + 8.0F, c0.this.r);
        }
      }
    }
    
    Paint.FontMetrics c()
    {
      Paint.FontMetrics localFontMetrics = this.n;
      if (localFontMetrics != null) {
        return localFontMetrics;
      }
      e();
      c0.this.r.setTextSize(this.g);
      localFontMetrics = c0.this.r.getFontMetrics();
      this.n = localFontMetrics;
      return localFontMetrics;
    }
    
    float d()
    {
      c0.this.r.setTextSize(this.g);
      return c0.this.r.measureText(this.f);
    }
    
    void e()
    {
      if (this.m) {
        return;
      }
      Typeface localTypeface = this.i;
      if (localTypeface != null)
      {
        c0.this.r.setTypeface(localTypeface);
        this.m = true;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.c0
 * JD-Core Version:    0.7.0.1
 */