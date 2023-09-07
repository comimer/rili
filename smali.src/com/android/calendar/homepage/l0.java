package com.android.calendar.homepage;

import a2.b.a;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetrics;
import android.graphics.Paint.Style;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.PathEffect;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.provider.CalendarContract.Calendars;
import android.provider.CalendarContract.Events;
import android.provider.CalendarContract.Reminders;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.StyleSpan;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnCreateContextMenuListener;
import android.view.View.OnLongClickListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityRecord;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.EdgeEffect;
import android.widget.ImageView;
import android.widget.OverScroller;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.ViewAnimator;
import android.widget.ViewSwitcher;
import b2.a;
import com.android.calendar.common.Utils;
import com.android.calendar.common.Utils.DisplayType;
import com.android.calendar.common.event.schema.EmptyEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.common.event.schema.Reminder;
import com.android.calendar.common.k;
import com.android.calendar.event.j;
import com.miui.calendar.util.b0;
import com.miui.calendar.util.c1;
import com.miui.calendar.util.g;
import com.miui.calendar.util.g.a0;
import com.miui.calendar.util.g.m;
import com.miui.calendar.util.g.q;
import com.miui.calendar.util.g.s0;
import com.miui.calendar.util.g.x0;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.w;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Formatter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import miuix.appcompat.app.l;
import miuix.appcompat.app.l.b;

public class l0
  extends View
  implements View.OnCreateContextMenuListener, ScaleGestureDetector.OnScaleGestureListener, View.OnClickListener, View.OnLongClickListener
{
  private static float A3 = 0.0F;
  private static boolean A4 = true;
  private static float B3 = 0.0F;
  protected static int B4 = 45;
  private static float C3 = 0.0F;
  private static int C4 = 0;
  private static float D3 = 0.0F;
  private static int D4 = 45;
  private static float E3 = 0.0F;
  private static boolean E4 = false;
  private static float F3 = 0.0F;
  private static int F4 = 0;
  private static int G3 = 0;
  private static float H3 = 0.0F;
  protected static float I3 = 0.0F;
  protected static float J3 = 0.0F;
  private static int K3 = 0;
  private static int L3 = 0;
  private static float M3 = 0.0F;
  private static float N3 = 0.0F;
  private static int O3 = 0;
  private static int P3 = 0;
  private static int Q3 = 0;
  private static int R3 = 0;
  private static int S3 = 0;
  private static String T2 = "Cal:D:DayView";
  private static int T3 = 0;
  private static boolean U2 = false;
  private static int U3 = 0;
  private static boolean V2 = false;
  private static int V3 = 0;
  private static float W2 = 0.0F;
  private static int W3 = 0;
  private static int X2 = 42;
  private static int X3 = 0;
  private static int Y2 = 150;
  private static int Y3 = 0;
  private static int Z2 = 100;
  private static int Z3;
  private static final String[] a3 = { "_id", "calendar_access_level", "ownerAccount" };
  private static int a4;
  private static int b3 = 128;
  private static int b4;
  private static int c3;
  private static int c4;
  protected static StringBuilder d3 = new StringBuilder(50);
  private static int d4;
  protected static Formatter e3 = new Formatter(d3, Locale.getDefault());
  private static int e4;
  private static PathEffect f3 = new DashPathEffect(new float[] { 18.0F, 12.0F }, 0.0F);
  private static int f4;
  private static int g3;
  private static int g4;
  protected static int h3 = 1;
  private static int h4;
  private static int i3 = 34;
  private static int i4;
  private static float j3 = 28.0F;
  private static int j4;
  private static int k3 = (int)(28.0F * 4.0F);
  private static int k4;
  private static int l3 = 180;
  private static int l4;
  private static int m3 = 1;
  private static int m4;
  private static int n3 = 1;
  private static int n4;
  private static int o3 = 34;
  private static int o4;
  protected static int p3 = 3;
  protected static int p4;
  private static int q3 = 2;
  private static int q4;
  private static int r3 = 4;
  private static int r4;
  private static int s3 = 2 + 4;
  private static Drawable s4;
  private static int t3 = 4;
  private static int t4;
  private static int u3 = 0;
  private static Drawable u4;
  private static int v3 = 5;
  protected static int v4;
  private static int w3 = 6;
  private static int w4;
  private static int x3 = 3;
  protected static int x4;
  private static int y3 = 22;
  protected static int y4;
  private static int z3 = 28;
  private static int z4;
  private final Rect A0 = new Rect();
  private final Rect A1 = new Rect();
  protected int A2;
  protected final Rect B0 = new Rect();
  protected final Resources B1;
  protected int B2;
  private final Rect C0 = new Rect();
  protected final Drawable C1;
  protected int C2;
  private int D;
  protected final Paint D0 = new Paint();
  protected final Drawable D1;
  protected int D2;
  private long E;
  protected final Paint E0 = new Paint();
  protected final Drawable E1;
  protected int E2;
  protected int F = 127;
  private final Paint F0 = new Paint();
  protected final Drawable F1;
  protected int F2;
  protected int G = 255;
  private float[] G0;
  protected Drawable G1;
  protected int G2;
  private ObjectAnimator H;
  private int H0;
  protected String H1;
  protected int H2;
  private final Runnable I = new a();
  private PopupWindow I0;
  protected String I1;
  protected int I2;
  private final Runnable J = new b();
  private View J0;
  private final com.android.calendar.event.b J1;
  protected int J2 = 0;
  AnimatorListenerAdapter K = new c();
  private final m K0 = new m();
  private final j K1 = new j(null);
  protected int K2;
  private long L;
  protected boolean L0 = true;
  ScaleGestureDetector L1;
  protected int L2;
  private j M;
  protected final j0 M0;
  private int M1 = 0;
  protected int M2 = 0;
  private Event N;
  private int N0 = 6;
  protected int N1 = 0;
  protected int N2;
  private Event O;
  private int O0 = 6;
  public int O1 = 0;
  private final Pattern O2 = Pattern.compile("[\t\n],");
  private l P;
  private int P0 = 6;
  private boolean P1 = false;
  Handler P2 = new Handler();
  private int Q = 0;
  private int Q0 = 6;
  protected boolean Q1 = false;
  private boolean Q2 = false;
  protected ArrayList<l> R = new ArrayList();
  private float R0 = 0.0F;
  private boolean R1 = false;
  Runnable R2 = new f();
  private HashSet<Long> S = new HashSet();
  private int S0;
  private float S1;
  private VelocityTracker S2 = null;
  private long T;
  protected int T0;
  private float T1;
  private ArrayList<l> U = new ArrayList();
  private int U0;
  ObjectAnimator U1;
  private StaticLayout[] V = null;
  protected int V0;
  ObjectAnimator V1;
  private StaticLayout[] W = null;
  protected int W0;
  ObjectAnimator W1;
  private int X0 = -1;
  private boolean X1 = false;
  protected int Y0;
  private boolean Y1 = false;
  private int Z0;
  protected final ViewSwitcher Z1;
  private boolean a;
  protected int a0;
  private int a1;
  private final GestureDetector a2;
  private boolean b = false;
  protected int b0;
  private float b1 = 0.0F;
  private final OverScroller b2;
  protected boolean c = true;
  private int c0;
  private int c1;
  private final EdgeEffect c2;
  private Handler d;
  protected int d0;
  private float d1 = 0.0F;
  private final EdgeEffect d2;
  private long e;
  protected int e0;
  private boolean e1 = true;
  private boolean e2;
  protected Context f;
  protected int f0;
  protected int f1;
  private final int f2;
  private final k g = new k(null);
  protected int g0;
  private int g1;
  private float g2;
  private final o h = new o(null);
  private int h0;
  protected int h1;
  private final p h2;
  r0 i;
  private int i0;
  private int i1 = 0;
  private AccessibilityManager i2 = null;
  protected r0 j;
  private int j0;
  private int j1 = (int)j3;
  private boolean j2 = false;
  private final q k = new q();
  private int k0;
  private int k1;
  private boolean k2 = false;
  protected int l;
  private int l0;
  private int l1 = 4;
  private final String l2;
  protected int m;
  private int m0;
  protected int m1 = 7;
  private final String m2;
  private final Typeface n = Typeface.DEFAULT_BOLD;
  private int n0;
  private int n1 = 10;
  private c1 n2;
  protected int o;
  private int o0;
  private int o1;
  private boolean o2 = false;
  private int p = -1;
  private float p0 = 0.0F;
  protected int p1 = -1;
  private c1 p2;
  private int q;
  private float q0 = 0.0F;
  private int q1;
  private boolean q2 = false;
  private int[] r;
  boolean r0;
  protected String[] r1;
  private boolean r2 = false;
  private int s0;
  private String[] s1;
  protected int s2;
  private int t0;
  private String[] t1;
  protected int t2;
  private l u0;
  protected boolean u1;
  protected int u2;
  private boolean[] v;
  private int v0;
  protected final ArrayList<l> v1 = new ArrayList();
  protected int v2 = 0;
  private String w;
  private int w0;
  private boolean w1;
  protected int w2;
  private l x;
  private l x0;
  private boolean x1;
  protected boolean x2;
  private l y;
  private int y0;
  private l y1;
  protected int y2;
  private l z;
  protected final Rect z0 = new Rect();
  private l z1;
  protected int z2;
  
  static
  {
    A3 = 14.0F;
    B3 = 22.0F;
    C3 = 10.0F;
    D3 = 32.0F;
    E3 = 12.0F;
    F3 = 12.0F;
    G3 = 8;
    H3 = 12.0F;
    I3 = 36.0F;
    J3 = 9.0F;
    K3 = 96;
    L3 = 8;
    M3 = 24.0F;
    N3 = 24.0F / 2.0F;
    O3 = 0;
    P3 = 0;
    Q3 = 1;
    R3 = 0;
    S3 = 2;
    T3 = 10;
    U3 = 8;
    V3 = 230;
    W3 = 200;
    X3 = 2;
    Y3 = 2;
    Z3 = 1;
    a4 = 2;
    b4 = 2;
    c4 = 10;
    d4 = 10;
    e4 = 4;
    f4 = 12;
    w4 = 76;
    x4 = 0;
    z4 = 32;
  }
  
  public l0(Context paramContext, ViewSwitcher paramViewSwitcher, int paramInt)
  {
    super(paramContext);
    this.f = paramContext;
    this.n2 = new c1(this);
    this.p2 = new c1(this);
    v1();
    Object localObject = paramContext.getResources();
    this.B1 = ((Resources)localObject);
    this.l2 = ((Resources)localObject).getString(2131886536);
    this.m2 = ((Resources)localObject).getString(2131886425);
    this.m1 = paramInt;
    D3 = (int)((Resources)localObject).getDimension(2131165777);
    A3 = (int)((Resources)localObject).getDimension(2131165802);
    B3 = (int)((Resources)localObject).getDimension(2131167368);
    C3 = (int)((Resources)localObject).getDimension(2131166883);
    D4 = (int)((Resources)localObject).getDimension(2131167120);
    x3 = (int)((Resources)localObject).getDimension(2131165799);
    y3 = (int)((Resources)localObject).getDimension(2131165801);
    z3 = (int)((Resources)localObject).getDimension(2131165800);
    c4 = (int)((Resources)localObject).getDimension(2131165481);
    H3 = (int)((Resources)localObject).getDimension(2131166212);
    J3 = (int)((Resources)localObject).getDimension(2131165489);
    if (G1()) {
      paramInt = 2131166304;
    } else {
      paramInt = 2131166303;
    }
    K3 = (int)((Resources)localObject).getDimension(paramInt);
    q3 = (int)((Resources)localObject).getDimension(2131166210);
    r3 = (int)((Resources)localObject).getDimension(2131166211);
    F3 = (int)((Resources)localObject).getDimension(2131165803);
    f4 = (int)((Resources)localObject).getDimension(2131167076);
    float f5 = ((Resources)localObject).getDimension(2131165710);
    M3 = f5;
    N3 = f5 / 2.0F;
    f5 = i3;
    j3 = f5;
    k3 = (int)(f5 * 4.0F);
    paramInt = getEventTextTopMargin();
    X3 = paramInt;
    Y3 = paramInt;
    a4 = paramInt;
    b4 = paramInt;
    paramInt = getEventTextLeftMargin();
    this.N0 = paramInt;
    this.O0 = paramInt;
    this.P0 = paramInt;
    this.Q0 = paramInt;
    this.H2 = ((int)x0.O(paramContext, 2.0F));
    this.B2 = ((int)x0.O(paramContext, 16.0F));
    this.C2 = ((int)x0.O(paramContext, 14.0F));
    paramInt = (int)x0.O(paramContext, 10.0F);
    this.F2 = paramInt;
    this.E2 = paramInt;
    this.G2 = ((Resources)localObject).getDimensionPixelSize(2131165788);
    this.y2 = ((int)x0.O(paramContext, 4.0F));
    this.z2 = ((Resources)localObject).getColor(2131100943);
    this.A2 = ((Resources)localObject).getColor(2131099969);
    this.I2 = getTimeLineHourWidth();
    this.D2 = getEventsEndMargin();
    this.K2 = getResources().getColor(2131099863);
    this.L2 = getResources().getColor(2131099864);
    if (W2 == 0.0F)
    {
      f5 = ((Resources)localObject).getDisplayMetrics().density;
      W2 = f5;
      if (f5 != 1.0F)
      {
        i3 = (int)(i3 * f5);
        o3 = (int)(o3 * f5);
        E3 *= f5;
        p3 = (int)(p3 * f5);
        t3 = (int)(t3 * f5);
        L3 = (int)(L3 * f5);
        float f6 = j3 * f5;
        j3 = f6;
        k3 = (int)(k3 * f5);
        this.j1 = ((int)f6);
        Z2 = (int)(Z2 * f5);
        Y2 = (int)(Y2 * f5);
        X2 = (int)(X2 * f5);
        B4 = (int)(B4 * f5);
        u3 = (int)(u3 * f5);
        v3 = (int)(v3 * f5);
        w3 = (int)(w3 * f5);
        Z3 = (int)(Z3 * f5);
        S3 = (int)(S3 * f5);
        d4 = (int)(d4 * f5);
        e4 = (int)(e4 * f5);
        G3 = (int)(G3 * f5);
      }
    }
    g3 = ((Resources)localObject).getDimensionPixelSize(2131167445);
    if (!G1()) {
      paramInt = D4;
    } else {
      paramInt = C4;
    }
    B4 = paramInt;
    this.C1 = ((Resources)localObject).getDrawable(2131232470);
    this.D1 = ((Resources)localObject).getDrawable(2131232471);
    this.E1 = ((Resources)localObject).getDrawable(2131231300);
    this.F1 = ((Resources)localObject).getDrawable(2131231265);
    t4 = ((Resources)localObject).getColor(2131100753);
    u4 = ((Resources)localObject).getDrawable(2131231455);
    this.G1 = ((Resources)localObject).getDrawable(2131232352);
    localObject = new j0();
    this.M0 = ((j0)localObject);
    ((j0)localObject).g(N3);
    ((j0)localObject).e(this.F2 / 2.0F);
    ((j0)localObject).h(G1());
    ((j0)localObject).d(this.F2 / 2);
    this.J1 = new com.android.calendar.event.b(paramContext, null, false);
    this.e = -1L;
    this.Z1 = paramViewSwitcher;
    this.a2 = new GestureDetector(paramContext, new i(this));
    this.L1 = new ScaleGestureDetector(getContext(), this);
    paramInt = x4;
    if (paramInt == 0)
    {
      paramInt = a.a(this.f, "preferences_default_cell_height", X2);
      x4 = paramInt;
      this.Y0 = paramInt;
      y4 = paramInt + h3;
    }
    else
    {
      this.Y0 = paramInt;
    }
    this.b2 = new OverScroller(paramContext);
    this.h2 = new p();
    this.c2 = new EdgeEffect(paramContext);
    this.d2 = new EdgeEffect(paramContext);
    paramViewSwitcher = ViewConfiguration.get(paramContext);
    c3 = ViewConfiguration.getTapTimeout();
    this.f2 = paramViewSwitcher.getScaledOverflingDistance();
    this.N2 = getResources().getConfiguration().orientation;
    u1(paramContext);
  }
  
  private void A0()
  {
    Object localObject1;
    Object localObject2;
    if (this.S.isEmpty())
    {
      localObject1 = this.R.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (l)((Iterator)localObject1).next();
        this.S.add(Long.valueOf(((l)localObject2).a.getId()));
      }
      this.T = -1L;
    }
    else
    {
      for (int i5 = 0; i5 < this.R.size(); i5++)
      {
        localObject1 = ((l)this.R.get(i5)).a;
        if (!this.S.contains(Long.valueOf(((Event)localObject1).getId())))
        {
          this.S.add(Long.valueOf(((Event)localObject1).getId()));
          this.T = ((Event)localObject1).getId();
          localObject1 = T2;
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append("checkEventNewId(): mEventNewId = ");
          ((StringBuilder)localObject2).append(this.T);
          z.a((String)localObject1, ((StringBuilder)localObject2).toString());
        }
      }
    }
  }
  
  private boolean A1()
  {
    if ((this.m0 >= this.o1) && (!this.Y1))
    {
      l locall = this.y1;
      if (locall != null)
      {
        if (m1(this.f, locall.a) != 2)
        {
          t0.f(this.f, 2131886264);
          return false;
        }
        int i5;
        if ((this.y1.a.getEx().isSolarRepeating()) && (this.y1.a.getEx().getStartJulianDay() != this.y1.a.getEx().getEndJulianDay())) {
          i5 = 1;
        } else {
          i5 = 0;
        }
        if (i5 != 0)
        {
          t0.f(this.f, 2131886265);
          return false;
        }
      }
      return true;
    }
    t0.f(this.f, 2131886263);
    return false;
  }
  
  private boolean B1(int paramInt1, int paramInt2)
  {
    if (this.k1 <= this.l1) {
      return false;
    }
    int i5 = this.o1;
    if (paramInt1 <= this.I2)
    {
      paramInt1 = B4;
      if ((paramInt2 > paramInt1) && (paramInt2 < paramInt1 + this.h1)) {
        break label75;
      }
    }
    label75:
    return (!E4) && (this.i1 == 0) && (paramInt2 < i5) && (paramInt2 >= i5 - j3);
  }
  
  private boolean C1()
  {
    boolean bool;
    if (((Utils.t(this.f) == 3) && (G1())) || ((Utils.t(this.f) == 2) && (!G1()))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean D1(int paramInt1, int paramInt2)
  {
    int i5 = B4 + this.h1;
    int i6 = this.I2;
    int i7;
    if (G1()) {
      i7 = G0(this.m1);
    } else {
      i7 = this.W0;
    }
    if ((paramInt2 < i5) && (paramInt1 < i7) && ((this.k1 > this.l1) || (paramInt1 > i6))) {
      return true;
    }
    return (paramInt2 >= i5) && (paramInt1 > i6) && (paramInt1 < i7);
  }
  
  private boolean F1()
  {
    boolean bool;
    if ((this.j2) && (this.i2.isTouchExplorationEnabled())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void H0()
  {
    ArrayList localArrayList = this.R;
    int i5 = localArrayList.size();
    int[] arrayOfInt1 = new int[this.q - this.o + 1];
    Arrays.fill(arrayOfInt1, 0);
    int i6 = 0;
    int i8;
    for (int i7 = i6; i6 < i5; i7 = i8)
    {
      Object localObject = ((l)localArrayList.get(i6)).a;
      i8 = i7;
      if (((Event)localObject).getEx().getStartJulianDay() <= this.q) {
        if (((Event)localObject).getEx().getEndJulianDay() < this.o)
        {
          i8 = i7;
        }
        else if (f.a((Event)localObject))
        {
          i8 = i7;
        }
        else
        {
          if (f.a((Event)localObject))
          {
            i8 = Math.max(((Event)localObject).getEx().getStartJulianDay(), this.o);
            int i9 = Math.min(((Event)localObject).getEx().getEndJulianDay(), this.q);
            while (i8 <= i9)
            {
              i10 = i8 - this.o;
              i11 = arrayOfInt1[i10] + 1;
              arrayOfInt1[i10] = i11;
              i10 = i7;
              if (i7 < i11) {
                i10 = i11;
              }
              i8++;
              i7 = i10;
            }
            i9 = ((Event)localObject).getEx().getStartJulianDay() - this.o;
            i11 = ((Event)localObject).getEx().getEndJulianDay() - ((Event)localObject).getEx().getStartJulianDay() + 1;
            i10 = i9;
            i8 = i11;
            if (i9 < 0)
            {
              i8 = i11 + i9;
              i10 = 0;
            }
            int i12 = this.m1;
            i9 = i10;
            i11 = i8;
            if (i10 + i8 > i12)
            {
              i11 = i12 - i10;
              i9 = i10;
            }
            for (;;)
            {
              i8 = i7;
              if (i11 <= 0) {
                break;
              }
              this.v[i9] = true;
              i9++;
              i11--;
            }
          }
          int i10 = ((Event)localObject).getEx().getStartJulianDay() - this.o;
          i8 = ((Event)localObject).getEx().getStartMinute() / 60;
          if (i10 >= 0)
          {
            int[] arrayOfInt2 = this.r;
            if (i8 < arrayOfInt2[i10]) {
              arrayOfInt2[i10] = i8;
            }
          }
          i10 = ((Event)localObject).getEx().getEndJulianDay() - this.o;
          int i11 = ((Event)localObject).getEx().getEndMinute() / 60;
          i8 = i7;
          if (i10 < this.m1)
          {
            localObject = this.r;
            i8 = i7;
            if (i11 < localObject[i10])
            {
              localObject[i10] = i11;
              i8 = i7;
            }
          }
        }
      }
      i6++;
    }
    this.k1 = i7;
    w1();
  }
  
  private void I0()
  {
    Object localObject1 = T2;
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("computeFirstHour ---1 mFirstHour:");
    ((StringBuilder)localObject2).append(this.p1);
    ((StringBuilder)localObject2).append(" mViewStartY:");
    ((StringBuilder)localObject2).append(this.T0);
    ((StringBuilder)localObject2).append(" hashCode:");
    ((StringBuilder)localObject2).append(hashCode());
    z.a((String)localObject1, ((StringBuilder)localObject2).toString());
    int i5 = this.T0;
    int i6 = x4;
    int i7 = h3;
    i7 = Math.max(0, (i5 + i6 + i7 - 1) / (i6 + i7));
    this.p1 = i7;
    this.q1 = (i7 * (x4 + h3) - this.T0);
    localObject2 = T2;
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("computeFirstHour ---2 mFirstHour:");
    ((StringBuilder)localObject1).append(this.p1);
    ((StringBuilder)localObject1).append(" mFirstHourOffset:");
    ((StringBuilder)localObject1).append(this.q1);
    z.a((String)localObject2, ((StringBuilder)localObject1).toString());
  }
  
  private void J0()
  {
    Object localObject1 = this;
    int i5 = ((l0)localObject1).v1.size();
    if ((i5 != 0) && (((l0)localObject1).y1 == null))
    {
      for (int i6 = 0; i6 < i5; i6++)
      {
        localObject2 = (l)((l0)localObject1).v1.get(i6);
        ((l)localObject2).j = null;
        ((l)localObject2).k = null;
        ((l)localObject2).i = null;
        ((l)localObject2).h = null;
      }
      Object localObject2 = (l)((l0)localObject1).v1.get(0);
      Rect localRect = getCurrentSelectionPosition();
      Object localObject3 = ((l0)localObject1).z1;
      int i7;
      int i9;
      int i12;
      if (localObject3 != null)
      {
        i7 = (int)((l)localObject3).d;
        i8 = (int)((l)localObject3).e;
        i9 = (int)((l)localObject3).b;
        i10 = (int)((l)localObject3).c;
        localObject3 = ((l0)localObject1).A1;
        i11 = ((Rect)localObject3).bottom;
        if (i7 < i11)
        {
          i12 = ((Rect)localObject3).top;
          if ((i8 > i12) && (i10 > ((Rect)localObject3).left) && (i9 < ((Rect)localObject3).right))
          {
            i6 = i7;
            if (i7 < i12) {
              i6 = i12;
            }
            i7 = i10;
            i12 = i6;
            i13 = i8;
            i14 = i9;
            if (i8 <= i11) {
              break label303;
            }
            i7 = i10;
            i14 = i9;
            break label264;
          }
        }
        ((l0)localObject1).z1 = null;
        i6 = ((Rect)localObject3).top;
        i14 = ((Rect)localObject3).left;
        i7 = ((Rect)localObject3).right;
        label264:
        i13 = i11;
        i12 = i6;
      }
      else
      {
        localObject1 = ((l0)localObject1).A1;
        i12 = ((Rect)localObject1).top;
        i13 = ((Rect)localObject1).bottom;
        i14 = ((Rect)localObject1).left;
        i7 = ((Rect)localObject1).right;
      }
      label303:
      if (i14 >= localRect.right)
      {
        i6 = (i12 + i13) / 2;
        i9 = 8;
      }
      else if (i7 <= localRect.left)
      {
        i6 = (i12 + i13) / 2;
        i9 = 4;
      }
      else if (i13 <= localRect.top)
      {
        i6 = (i14 + i7) / 2;
        i9 = 1;
      }
      else if (i12 >= localRect.bottom)
      {
        i6 = (i14 + i7) / 2;
        i9 = 2;
      }
      else
      {
        i6 = 0;
        i9 = i6;
      }
      int i10 = 0;
      int i15 = 100000;
      int i16 = i15;
      int i17 = i9;
      int i11 = i6;
      int i8 = i14;
      int i18 = i13;
      int i19 = i12;
      int i20 = i7;
      int i14 = i16;
      int i13 = i15;
      for (;;)
      {
        localObject1 = this;
        if (i10 >= i5) {
          break;
        }
        l locall = (l)((l0)localObject1).v1.get(i10);
        int i21 = locall.a.getEx().getStartMinute();
        int i22 = locall.a.getEx().getEndMinute();
        int i23 = (int)locall.b;
        int i24 = (int)locall.c;
        i9 = (int)locall.d;
        i6 = localRect.top;
        i15 = i9;
        if (i9 < i6) {
          i15 = i6;
        }
        i9 = (int)locall.e;
        i6 = localRect.bottom;
        i16 = i9;
        if (i9 > i6) {
          i16 = i6;
        }
        if (i17 == 1)
        {
          if (i23 >= i11) {
            i6 = i23 - i11;
          } else if (i24 <= i11) {
            i6 = i11 - i24;
          } else {
            i6 = 0;
          }
          i9 = i15 - i18;
        }
        for (;;)
        {
          break;
          if (i17 == 2)
          {
            if (i23 >= i11) {
              i6 = i23 - i11;
            }
            for (;;)
            {
              break;
              if (i24 <= i11) {
                i6 = i11 - i24;
              } else {
                i6 = 0;
              }
            }
            i9 = i19 - i16;
          }
          else if (i17 == 4)
          {
            if (i16 <= i11) {
              i6 = i11 - i16;
            }
            for (;;)
            {
              break;
              if (i15 >= i11) {
                i6 = i15 - i11;
              } else {
                i6 = 0;
              }
            }
            i9 = i23 - i20;
          }
          else if (i17 == 8)
          {
            if (i16 <= i11) {
              i6 = i11 - i16;
            }
            for (;;)
            {
              break;
              if (i15 >= i11) {
                i6 = i15 - i11;
              } else {
                i6 = 0;
              }
            }
            i9 = i8 - i24;
          }
          else
          {
            i9 = 0;
            i6 = 0;
          }
        }
        Object localObject4;
        if (i6 >= i13)
        {
          i12 = i13;
          i7 = i14;
          localObject4 = localObject2;
          if (i6 == i13)
          {
            i12 = i13;
            i7 = i14;
            localObject4 = localObject2;
            if (i9 >= i14) {}
          }
        }
        else
        {
          localObject4 = locall;
          i7 = i9;
          i12 = i6;
        }
        i9 = 10000;
        int i25 = 10000;
        i13 = i25;
        i6 = i13;
        int i26 = 0;
        Object localObject5 = null;
        localObject3 = null;
        localObject2 = null;
        Object localObject6 = null;
        int i27 = i10;
        while (i26 < i5)
        {
          int i28;
          Object localObject7;
          Object localObject8;
          Object localObject9;
          int i29;
          if (i26 == i27)
          {
            i10 = i13;
            i28 = i9;
            localObject7 = localObject5;
            localObject8 = localObject3;
            localObject9 = localObject6;
            i29 = i6;
          }
          else
          {
            localObject1 = (l)this.v1.get(i26);
            i28 = (int)((l)localObject1).b;
            int i30 = (int)((l)localObject1).c;
            int i31;
            if (((l)localObject1).a.getEx().getEndMinute() <= i21)
            {
              if ((i28 < i24) && (i30 > i23))
              {
                i29 = i21 - ((l)localObject1).a.getEx().getEndMinute();
                if (i29 >= i9)
                {
                  if (i29 == i9)
                  {
                    i10 = (i23 + i24) / 2;
                    i14 = (int)localObject5.b;
                    i31 = (int)localObject5.c;
                    if (i31 <= i10) {
                      i14 = i10 - i31;
                    } else if (i14 >= i10) {
                      i14 -= i10;
                    } else {
                      i14 = 0;
                    }
                    if (i30 <= i10) {
                      i10 -= i30;
                    } else if (i28 >= i10) {
                      i10 = i28 - i10;
                    } else {
                      i10 = 0;
                    }
                    if (i10 >= i14) {}
                  }
                }
                else
                {
                  localObject5 = localObject1;
                  i14 = i29;
                  break label1109;
                }
                i14 = i9;
                label1109:
                i9 = i6;
                break label1299;
              }
            }
            else if ((((l)localObject1).a.getEx().getStartMinute() >= i22) && (i28 < i24) && (i30 > i23))
            {
              i29 = ((l)localObject1).a.getEx().getStartMinute() - i22;
              if (i29 >= i6)
              {
                if (i29 == i6)
                {
                  i10 = (i23 + i24) / 2;
                  i14 = (int)((l)localObject3).b;
                  i31 = (int)((l)localObject3).c;
                  if (i31 <= i10) {
                    i14 = i10 - i31;
                  } else if (i14 >= i10) {
                    i14 -= i10;
                  } else {
                    i14 = 0;
                  }
                  if (i30 <= i10) {
                    i10 -= i30;
                  } else if (i28 >= i10) {
                    i10 = i28 - i10;
                  } else {
                    i10 = 0;
                  }
                  if (i10 >= i14) {}
                }
              }
              else
              {
                localObject3 = localObject1;
                i6 = i29;
              }
            }
            i14 = i9;
            i9 = i6;
            label1299:
            if (i28 >= i24)
            {
              i10 = (i15 + i16) / 2;
              i29 = (int)((l)localObject1).e;
              i6 = (int)((l)localObject1).d;
              if (i29 <= i10) {
                i6 = i10 - i29;
              } else if (i6 >= i10) {
                i6 -= i10;
              } else {
                i6 = 0;
              }
              if (i6 >= i13)
              {
                i10 = i13;
                localObject9 = localObject6;
                if (i6 == i13)
                {
                  i10 = i13;
                  localObject9 = localObject6;
                  if (i28 - i24 >= (int)localObject6.b - i24) {}
                }
              }
              else
              {
                localObject9 = localObject1;
                i10 = i6;
              }
            }
            do
            {
              do
              {
                i28 = i14;
                localObject7 = localObject5;
                localObject8 = localObject3;
                i29 = i9;
                break;
                i10 = i13;
                localObject9 = localObject6;
              } while (i30 > i23);
              i6 = (i15 + i16) / 2;
              i29 = (int)((l)localObject1).e;
              i10 = (int)((l)localObject1).d;
              if (i29 <= i6) {
                i6 -= i29;
              } else if (i10 >= i6) {
                i6 = i10 - i6;
              } else {
                i6 = 0;
              }
              if (i6 < i25) {
                break;
              }
              i10 = i13;
              localObject9 = localObject6;
            } while (i6 != i25);
            Object localObject10 = localObject2;
            i10 = i13;
            i28 = i14;
            localObject7 = localObject5;
            localObject8 = localObject3;
            localObject2 = localObject10;
            localObject9 = localObject6;
            i29 = i9;
            if (i23 - i30 < i23 - (int)localObject10.c)
            {
              localObject2 = localObject1;
              i29 = i9;
              localObject9 = localObject6;
              localObject8 = localObject3;
              localObject7 = localObject5;
              i28 = i14;
              i10 = i13;
              i25 = i6;
            }
          }
          i26++;
          i13 = i10;
          i9 = i28;
          localObject5 = localObject7;
          localObject3 = localObject8;
          localObject6 = localObject9;
          i6 = i29;
        }
        locall.j = localObject5;
        locall.k = ((l)localObject3);
        locall.i = ((l)localObject2);
        locall.h = localObject6;
        i10 = i27 + 1;
        localObject2 = localObject4;
        i13 = i12;
        i14 = i7;
      }
      ((l0)localObject1).setSelectedEvent((l)localObject2);
    }
  }
  
  private int K0(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt3 = paramInt1 - paramInt3;
    paramInt1 = Math.abs(paramInt3);
    paramInt3 = Math.abs(paramInt3);
    paramInt2 -= paramInt4;
    return (int)Math.sqrt(paramInt1 * paramInt3 + Math.abs(paramInt2) * Math.abs(paramInt2));
  }
  
  private void K1()
  {
    if (G1()) {
      t0(this.i);
    }
    int i5 = r0.n(this.i.P(false), this.i.l());
    this.o = i5;
    this.q = (i5 + this.m1 - 1);
  }
  
  private void L0(ArrayList<l> paramArrayList, long paramLong)
  {
    if (paramArrayList == null) {
      return;
    }
    P0(paramArrayList, paramLong, false);
    P0(paramArrayList, paramLong, true);
  }
  
  private void M0(long paramLong1, long paramLong2, boolean paramBoolean)
  {
    Utils.B0(this.f, paramLong1, paramLong2, paramBoolean);
    post(new k0(this));
  }
  
  private void N0()
  {
    final boolean bool1 = TextUtils.isEmpty(this.N.getEx().getSyncId());
    boolean bool2 = this.N.getEx().isFirstEventInSeries();
    int i5 = 1;
    if (bool1)
    {
      if (bool2) {
        localObject = new CharSequence[1];
      } else {
        localObject = new CharSequence[2];
      }
      i5 = 0;
    }
    else
    {
      if (bool2) {
        localObject = new CharSequence[2];
      } else {
        localObject = new CharSequence[3];
      }
      localObject[0] = this.f.getText(2131886925);
    }
    localObject[i5] = this.f.getText(2131886923);
    if (!bool2) {
      localObject[(i5 + 1)] = this.f.getText(2131886924);
    }
    l locall = this.P;
    if (locall != null)
    {
      locall.dismiss();
      this.P = null;
    }
    Object localObject = new l.b(this.f).F(2131886495).l((CharSequence[])localObject, new g(bool1)).J();
    this.P = ((l)localObject);
    ((Dialog)localObject).setOnCancelListener(new h());
  }
  
  private long N1(Event paramEvent, Iterator<l> paramIterator, long paramLong)
  {
    while (paramIterator.hasNext())
    {
      l locall = (l)paramIterator.next();
      if (locall.a.getEx().getEndJulianDay() < paramEvent.getEx().getStartJulianDay())
      {
        paramLong &= 1L << locall.f;
        paramIterator.remove();
      }
    }
    return paramLong;
  }
  
  private float O0(float paramFloat)
  {
    return (float)Math.sin((float)((paramFloat - 0.5F) * 0.47123891676382D));
  }
  
  private long O1(l paraml, Iterator<l> paramIterator, long paramLong1, long paramLong2)
  {
    long l5 = paraml.a.getStartTimeMillis();
    while (paramIterator.hasNext())
    {
      paraml = (l)paramIterator.next();
      long l6 = Math.max(paraml.a.getEndTimeMillis() - paraml.a.getStartTimeMillis(), paramLong1);
      if (paraml.a.getStartTimeMillis() + l6 <= l5)
      {
        paramLong2 &= 1L << paraml.f;
        paramIterator.remove();
      }
    }
    return paramLong2;
  }
  
  private void P0(ArrayList<l> paramArrayList, long paramLong, boolean paramBoolean)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    long l5;
    if (paramLong < 0L) {
      l5 = 0L;
    } else {
      l5 = paramLong;
    }
    Iterator localIterator1 = paramArrayList.iterator();
    paramLong = 0L;
    int i5 = 0;
    while (localIterator1.hasNext())
    {
      paramArrayList = (l)localIterator1.next();
      if (f.a(paramArrayList.a) == paramBoolean)
      {
        if (!paramBoolean) {
          paramLong = O1(paramArrayList, localArrayList1.iterator(), l5, paramLong);
        } else {
          paramLong = N1(paramArrayList.a, localArrayList1.iterator(), paramLong);
        }
        int i6;
        if (localArrayList1.isEmpty())
        {
          Iterator localIterator2 = localArrayList2.iterator();
          while (localIterator2.hasNext()) {
            ((l)localIterator2.next()).g = i5;
          }
          localArrayList2.clear();
          i6 = 0;
          paramLong = 0L;
        }
        else
        {
          i6 = i5;
        }
        int i7 = i1(paramLong);
        i5 = i7;
        if (i7 == 64) {
          i5 = 63;
        }
        paramLong |= 1L << i5;
        paramArrayList.f = i5;
        localArrayList1.add(paramArrayList);
        localArrayList2.add(paramArrayList);
        i7 = localArrayList1.size();
        i5 = i6;
        if (i6 < i7) {
          i5 = i7;
        }
      }
    }
    paramArrayList = localArrayList2.iterator();
    while (paramArrayList.hasNext()) {
      ((l)paramArrayList.next()).g = i5;
    }
  }
  
  private void P1()
  {
    int i5 = this.b0;
    int i6 = this.p1;
    if (i5 < i6 + 1)
    {
      setSelectedHour(i6 + 1);
      setSelectedEvent(null);
      this.v1.clear();
      this.w1 = true;
    }
    else
    {
      int i7 = this.n1;
      if (i5 > i6 + i7 - 3)
      {
        setSelectedHour(i6 + i7 - 3);
        setSelectedEvent(null);
        this.v1.clear();
        this.w1 = true;
      }
    }
  }
  
  private void Q0(MotionEvent paramMotionEvent)
  {
    if ((this.R1) && (getTouchArea() == 0))
    {
      t1();
      return;
    }
    int i5 = 1;
    this.M1 = 1;
    this.S0 = 0;
    this.a = false;
    this.d.removeCallbacks(this.g);
    int i6 = (int)paramMotionEvent.getX();
    int i7 = (int)paramMotionEvent.getY();
    l locall = this.y1;
    int i8 = this.a0;
    int i9 = this.b0;
    int i10 = this.c0;
    boolean bool = this.r0;
    int i11 = this.h0;
    int i12 = this.i0;
    if ((D1((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) && (V1(i6, i7, false)))
    {
      if ((this.O1 == 0) || (i8 != this.a0) || (i9 != this.b0)) {
        i5 = 0;
      }
      if (i5 == 0)
      {
        paramMotionEvent = this.y1;
        if ((paramMotionEvent != null) && (!this.R1))
        {
          this.y = paramMotionEvent;
          this.E = System.currentTimeMillis();
          postDelayed(this.I, c3);
          break label212;
        }
      }
      h1();
    }
    label212:
    this.y1 = locall;
    this.a0 = i8;
    this.b0 = i9;
    this.c0 = i10;
    this.r0 = bool;
    this.h0 = i11;
    this.i0 = i12;
    invalidate();
  }
  
  private void R1()
  {
    if (TextUtils.isEmpty(this.N.getEx().getRrule())) {
      this.Q = 3;
    } else if (this.Q == 1) {
      this.N.getEx().setRrule(null);
    }
    this.M.o(this.N, this.O, this.Q, false);
    g0.d("drag_event_rectangle");
  }
  
  private void S0()
  {
    E4 ^= true;
    long l5 = 0L;
    ValueAnimator.setFrameDelay(0L);
    int i5;
    if (this.i1 == 0)
    {
      if (E4) {
        i5 = this.h1 - (int)j3;
      } else {
        i5 = this.h1;
      }
      this.i1 = i5;
    }
    this.X1 = true;
    ObjectAnimator localObjectAnimator = this.U1;
    if (localObjectAnimator != null) {
      localObjectAnimator.cancel();
    }
    localObjectAnimator = this.V1;
    if (localObjectAnimator != null) {
      localObjectAnimator.cancel();
    }
    localObjectAnimator = this.W1;
    if (localObjectAnimator != null) {
      localObjectAnimator.cancel();
    }
    int i6 = 0;
    this.X1 = false;
    this.U1 = getAllDayAnimator();
    this.V1 = getAllDayEventAnimator();
    boolean bool = E4;
    if (bool) {
      i5 = 76;
    } else {
      i5 = 0;
    }
    if (!bool) {
      i6 = 76;
    }
    this.W1 = ObjectAnimator.ofInt(this, "moreAllDayEventsTextAlpha", new int[] { i5, i6 });
    localObjectAnimator = this.U1;
    long l6;
    if (E4) {
      l6 = 200L;
    } else {
      l6 = 0L;
    }
    localObjectAnimator.setStartDelay(l6);
    this.U1.start();
    localObjectAnimator = this.W1;
    if (E4) {
      l6 = 0L;
    } else {
      l6 = 400L;
    }
    localObjectAnimator.setStartDelay(l6);
    this.W1.setDuration(200L);
    this.W1.start();
    localObjectAnimator = this.V1;
    if (localObjectAnimator != null)
    {
      l6 = l5;
      if (E4) {
        l6 = 200L;
      }
      localObjectAnimator.setStartDelay(l6);
      this.V1.start();
    }
  }
  
  private void S1(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    Rect localRect = this.A1;
    localRect.left = ((int)paramFloat1);
    localRect.right = ((int)paramFloat3);
    localRect.top = ((int)paramFloat2);
    localRect.bottom = ((int)paramFloat4);
  }
  
  private void T0(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    y0();
    t1();
    h1();
    boolean bool = true;
    this.a = true;
    int i5 = this.M1;
    if ((i5 & 0x40) != 0)
    {
      this.M1 = 0;
      if (U2)
      {
        String str = T2;
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("doFling: velocityX ");
        localStringBuilder.append(paramFloat1);
        Log.d(str, localStringBuilder.toString());
      }
      if ((int)paramMotionEvent2.getX() - (int)paramMotionEvent1.getX() >= 0) {
        bool = false;
      }
      a2(bool, this.S0, this.W0, paramFloat1);
      this.S0 = 0;
      return;
    }
    if ((i5 & 0x20) == 0)
    {
      if (U2) {
        Log.d(T2, "doFling: no fling");
      }
      return;
    }
    this.M1 = 0;
    this.S0 = 0;
    if (U2)
    {
      paramMotionEvent1 = T2;
      paramMotionEvent2 = new StringBuilder();
      paramMotionEvent2.append("doFling: mViewStartY");
      paramMotionEvent2.append(this.T0);
      paramMotionEvent2.append(" velocityY ");
      paramMotionEvent2.append(paramFloat2);
      Log.d(paramMotionEvent1, paramMotionEvent2.toString());
    }
    this.P1 = true;
    paramMotionEvent1 = this.b2;
    int i6 = this.T0;
    int i7 = (int)-paramFloat2;
    i5 = this.U0;
    int i8 = this.f2;
    paramMotionEvent1.fling(0, i6, 0, i7, 0, 0, 0, i5, i8, i8);
    if ((paramFloat2 > 0.0F) && (this.T0 != 0)) {
      this.e2 = true;
    } else if ((paramFloat2 < 0.0F) && (this.T0 != this.U0)) {
      this.e2 = true;
    }
    this.d.post(this.g);
  }
  
  private void T1(boolean paramBoolean)
  {
    if (!this.j2) {
      return;
    }
    int i5 = this.v0;
    int i6 = this.s0;
    if (i5 != i6) {
      i5 = 1;
    } else {
      i5 = 0;
    }
    int i7 = this.w0;
    int i8 = this.t0;
    if (i7 != i8) {
      i7 = 1;
    } else {
      i7 = 0;
    }
    if ((i5 != 0) || (i7 != 0) || (this.x0 != this.u0))
    {
      this.v0 = i6;
      this.w0 = i8;
      this.x0 = this.u0;
      Object localObject1 = new StringBuilder();
      if (i5 != 0) {
        ((StringBuilder)localObject1).append(getSelectedTimeForAccessibility().e("EEEE "));
      }
      Object localObject2;
      Object localObject3;
      if (i7 != 0)
      {
        localObject2 = getSelectedTimeForAccessibility();
        if (this.u1) {
          localObject3 = "H";
        } else {
          localObject3 = "Ka";
        }
        ((StringBuilder)localObject1).append(((r0)localObject2).e((String)localObject3));
      }
      if ((i5 != 0) || (i7 != 0)) {
        ((StringBuilder)localObject1).append(". ");
      }
      if (paramBoolean)
      {
        if (this.w == null) {
          this.w = this.f.getString(2131887621);
        }
        int i9 = this.v1.size();
        if (i9 > 0)
        {
          if (this.u0 == null)
          {
            localObject3 = this.v1.iterator();
            for (i6 = 1; ((Iterator)localObject3).hasNext(); i6 = i8)
            {
              localObject2 = (l)((Iterator)localObject3).next();
              i8 = i6;
              if (i9 > 1)
              {
                d3.setLength(0);
                ((StringBuilder)localObject1).append(e3.format(this.w, new Object[] { Integer.valueOf(i6), Integer.valueOf(i9) }));
                ((StringBuilder)localObject1).append(" ");
                i8 = i6 + 1;
              }
              u0((StringBuilder)localObject1, ((l)localObject2).a);
            }
          }
          if (i9 > 1)
          {
            d3.setLength(0);
            ((StringBuilder)localObject1).append(e3.format(this.w, new Object[] { Integer.valueOf(this.v1.indexOf(this.u0) + 1), Integer.valueOf(i9) }));
            ((StringBuilder)localObject1).append(" ");
          }
          u0((StringBuilder)localObject1, this.u0.a);
        }
        else
        {
          ((StringBuilder)localObject1).append(this.l2);
        }
      }
      if ((i5 != 0) || (i7 != 0) || (paramBoolean))
      {
        localObject3 = AccessibilityEvent.obtain(8);
        localObject1 = ((StringBuilder)localObject1).toString();
        ((AccessibilityRecord)localObject3).getText().add(localObject1);
        ((AccessibilityRecord)localObject3).setAddedCount(((CharSequence)localObject1).length());
        try
        {
          sendAccessibilityEventUnchecked((AccessibilityEvent)localObject3);
        }
        catch (Exception localException)
        {
          z.m(T2, "sendAccessibilityEventAsNeeded(): accessibility is not enabled");
          v1();
        }
      }
    }
  }
  
  private void U0(MotionEvent paramMotionEvent)
  {
    h1();
    if (this.b1 != 0.0F) {
      return;
    }
    if (!V1((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY(), false)) {
      return;
    }
    setSelectionMode(3);
    invalidate();
    performLongClick();
  }
  
  private void V0(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    y0();
    if (this.b)
    {
      this.S1 = 0.0F;
      this.T1 = 0.0F;
      this.b = false;
    }
    paramFloat1 = this.S1 + paramFloat1;
    this.S1 = paramFloat1;
    float f5 = this.T1 + paramFloat2;
    this.T1 = f5;
    int i5 = (int)paramFloat1;
    int i6 = (int)f5;
    int i7 = this.M1;
    if (i7 == 1)
    {
      i7 = Math.abs(i5);
      int i8 = Math.abs(i6);
      this.Z0 = this.T0;
      this.a1 = 0;
      if (i7 > i8)
      {
        this.M1 = 64;
        this.S0 = i5;
        y1(-i5);
      }
      else
      {
        this.M1 = 32;
      }
    }
    else if ((i7 & 0x40) != 0)
    {
      this.S0 = i5;
      if (i5 != 0)
      {
        if (i5 > 0) {
          i7 = 1;
        } else {
          i7 = -1;
        }
        if (i7 != this.a1)
        {
          y1(-i5);
          this.a1 = i7;
        }
      }
    }
    if ((this.M1 & 0x20) != 0)
    {
      i7 = this.Z0;
      this.T0 = (i6 + i7);
      i7 = (int)(i7 + paramFloat2);
      if (i7 < 0)
      {
        this.c2.onPull(paramFloat2 / this.V0);
        if (!this.d2.isFinished()) {
          this.d2.onRelease();
        }
      }
      else if (i7 > this.U0)
      {
        this.d2.onPull(paramFloat2 / this.V0);
        if (!this.c2.isFinished()) {
          this.c2.onRelease();
        }
      }
      i6 = this.T0;
      if (i6 < 0)
      {
        this.T0 = 0;
      }
      else
      {
        i7 = this.U0;
        if (i6 > i7) {
          this.T0 = i7;
        }
      }
      I0();
    }
    this.P1 = true;
    if (this.v2 == 2) {
      this.x2 = true;
    }
    t1();
    invalidate();
  }
  
  private boolean V1(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (paramInt2 < B4)
      {
        T1(false);
        return false;
      }
      T1(true);
      return true;
    }
    l locall = null;
    int i5;
    int i6;
    int i7;
    boolean bool1;
    int i8;
    int i9;
    if (paramBoolean)
    {
      locall = this.y1;
      i5 = this.a0;
      i6 = this.b0;
      i7 = this.c0;
      bool1 = this.r0;
      i8 = this.h0;
      i9 = this.i0;
    }
    else
    {
      i10 = 0;
      i11 = i10;
      i5 = i11;
      i7 = i5;
      i8 = i7;
      i9 = i8;
      bool1 = i7;
      i7 = i5;
      i6 = i11;
      i5 = i10;
    }
    int i11 = this.I2;
    int i10 = paramInt1;
    if (paramInt1 < i11) {
      i10 = i11;
    }
    int i12;
    if ((this.R1) && ((this.N1 != 1) || (this.z.a.getEx().isSolarRepeating())))
    {
      paramInt1 = this.z.a.getEx().getStartJulianDay();
    }
    else
    {
      i11 = (i10 - this.I2) / (this.y0 + 1);
      i12 = this.m1;
      paramInt1 = i11;
      if (i11 >= i12) {
        paramInt1 = i12 - 1;
      }
      i11 = paramInt1;
      if (x0.x0()) {
        i11 = this.m1 - 1 - paramInt1;
      }
      paramInt1 = i11 + this.o;
    }
    setSelectedDay(paramInt1);
    I0();
    setSelectedHour(this.p1);
    int i13 = getEventHeight();
    paramInt1 = this.o1;
    if ((paramInt2 < paramInt1) && (!this.Q1))
    {
      this.r0 = true;
    }
    else
    {
      i12 = paramInt2 - paramInt1 - this.o0;
      boolean bool2 = this.R1;
      if ((bool2) && (this.N1 != 1))
      {
        paramInt1 = this.V0 - this.h1;
        i11 = 0;
      }
      else
      {
        i11 = i13 / 2;
        if ((bool2) && (this.z.a.getEx().isSolarRepeating()))
        {
          paramInt1 = h3;
          paramInt1 = paramInt1 + (x4 + paramInt1) * 24 - this.T0 - i11;
        }
        else
        {
          paramInt1 = this.V0 - this.h1 + i11 - y4 / 4;
        }
      }
      if (i12 >= i11)
      {
        i11 = i12;
        if (i12 > paramInt1) {
          i11 = paramInt1;
        }
      }
      int i14 = this.p1;
      i12 = y4;
      int i15 = this.q1;
      paramInt1 = i14 * i12 + (i11 - i15);
      if (this.R1)
      {
        i15 = this.N1;
        if (i15 == 1)
        {
          paramInt1 -= i13 / 2;
          this.h0 = paramInt1;
          this.i0 = (paramInt1 + i13);
        }
        else if (i15 == 2)
        {
          i14 = this.z.a.getEx().getEndJulianDay();
          i13 = this.z.a.getEx().getStartJulianDay();
          i15 = this.z.a.getEx().getEndMinute();
          i12 = y4;
          i13 = ((i14 - i13) * 1440 + i15) * i12 / 60;
          this.i0 = i13;
          this.h0 = Math.min(paramInt1, i13 - i12 / 2);
        }
        else if (i15 == 3)
        {
          i13 = (int)this.z.d;
          this.h0 = i13;
          this.i0 = Math.max(paramInt1, i13 + i12 / 2);
        }
        i13 = this.p1;
        i12 = this.q1;
        paramInt1 = y4;
        setSelectedHour(i13 + (i11 - i12 + paramInt1 / 8) / paramInt1);
      }
      else if (this.Q1)
      {
        this.h0 = (paramInt1 - i12 / 2);
        this.i0 = (paramInt1 + i12 / 2);
        setSelectedHour(i14 + (i11 - i15 + i12 / 8) / i12);
      }
      else
      {
        if (i11 < i15)
        {
          setSelectedHour(this.b0 - 1);
        }
        else
        {
          setSelectedHour(this.b0 + (i11 - i15) / i12);
          paramInt1 = y4 / 2;
          this.c0 = 0;
        }
        paramInt1 = this.b0;
        i12 = y4;
        this.h0 = (paramInt1 * i12);
        this.i0 = ((paramInt1 + 1) * i12);
      }
      paramInt1 = this.h0;
      i13 = y4;
      this.d0 = ((i13 / 8 + paramInt1) / i13);
      i12 = this.i0;
      this.e0 = ((i13 / 8 + i12) / i13);
      this.f0 = ((paramInt1 + i13 / 8) % i13 * 4 / i13);
      this.g0 = ((i12 + i13 / 8) % i13 * 4 / i13);
      this.c0 = ((i11 - this.q1 + i13 / 8) % i13 * 4 / i13);
      this.r0 = false;
    }
    if ((!B1(i10, paramInt2)) && (!this.Q1)) {
      j1(i10, paramInt2);
    }
    if (paramBoolean)
    {
      this.y1 = locall;
      this.a0 = i5;
      this.b0 = i6;
      this.c0 = i7;
      this.r0 = bool1;
      this.h0 = i8;
      this.i0 = i9;
    }
    T1(true);
    return true;
  }
  
  private void W0(MotionEvent paramMotionEvent)
  {
    if ((this.e1) && (!this.P1))
    {
      int i5 = (int)paramMotionEvent.getX();
      int i6 = (int)paramMotionEvent.getY();
      int i7 = this.a0;
      int i8 = this.b0;
      if (!D1(i5, i6)) {
        return;
      }
      if (B1(i5, i6))
      {
        h1();
        S0();
        return;
      }
      if (this.R1)
      {
        t1();
        return;
      }
      if (!V1(i5, i6, false))
      {
        if (i6 < B4)
        {
          paramMotionEvent = s0.d(this.a0, TimeZone.getTimeZone(Utils.U(this.f)));
          paramMotionEvent.set(11, this.b0);
          g.c(new g.a0(paramMotionEvent));
        }
        return;
      }
      i5 = this.O1;
      boolean bool = true;
      if (i5 != 0) {
        i5 = 1;
      } else {
        i5 = 0;
      }
      if (((i5 == 0) && (!this.k2)) || (i7 != this.a0) || (i8 != this.b0)) {
        bool = false;
      }
      StringBuilder localStringBuilder;
      if ((bool) && (this.y == null) && (!this.R1))
      {
        paramMotionEvent = T2;
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("doSingleTapUp(): click on selected hour slot, pressedSelected:");
        localStringBuilder.append(bool);
        localStringBuilder.append(", mSavedClickedEvent:");
        localStringBuilder.append(this.y);
        localStringBuilder.append(", mExistingEventLongClicked:");
        localStringBuilder.append(this.R1);
        z.a(paramMotionEvent, localStringBuilder.toString());
        if (this.r0) {
          return;
        }
        setSelectionMode(2);
        M0(getSelectedHourInMillis(), 0L, false);
        g0.d("double_click_new_event");
      }
      else if (this.y1 != null)
      {
        paramMotionEvent = T2;
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("doSingleTapUp(): click on an event, mSelectedEvent:");
        localStringBuilder.append(this.y1);
        z.a(paramMotionEvent, localStringBuilder.toString());
        s0();
        t1();
        paramMotionEvent = this.y1;
        i7 = (int)((paramMotionEvent.d + paramMotionEvent.e) / 2.0F);
        i5 = i7;
        if (!paramMotionEvent.a.isAllDay()) {
          i5 = i7 + (this.o1 - this.T0);
        }
        this.D = i5;
        long l5 = c3 + 50 - (System.currentTimeMillis() - this.E);
        if (l5 > 0L) {
          postDelayed(this.J, l5);
        } else {
          post(this.J);
        }
      }
      else
      {
        z.a(T2, "doSingleTapUp(): click on blank area");
        paramMotionEvent = s0.d(this.a0, TimeZone.getTimeZone(this.i.s()));
        paramMotionEvent.set(11, this.b0);
        paramMotionEvent.set(12, 0);
        if (!this.r0) {
          W1(2, (Calendar)paramMotionEvent.clone());
        }
        this.o2 = false;
        g.c(new g.a0(paramMotionEvent));
      }
      invalidate();
    }
  }
  
  private void W1(int paramInt, Calendar paramCalendar)
  {
    this.O1 = paramInt;
    if (C1()) {
      g.c(new g.q(paramInt, paramCalendar));
    }
  }
  
  private void X0(Canvas paramCanvas)
  {
    if (!this.u1) {
      Y0(paramCanvas, this.D0);
    }
  }
  
  private void Y0(Canvas paramCanvas, Paint paramPaint)
  {
    paramPaint.setColor(l4);
    paramPaint.setTextSize(J3);
    paramPaint.setTypeface(this.n);
    paramPaint.setAntiAlias(true);
    paramPaint.setTextAlign(Paint.Align.CENTER);
    paramPaint.setFlags(0);
    String str = this.H1;
    int i5 = this.T0;
    int i6 = x4;
    int i7 = h3;
    int i8 = Math.max(0, (i5 + i6 + i7 - 1) / (i6 + i7));
    int i9 = (x4 + h3) * i8 - this.T0;
    if (i8 >= 12) {
      str = this.I1;
    }
    int i10 = l1(x0.z(this.f));
    i6 = this.o1 + i9 + p3 + this.f1 + this.g1 + t3 + h3;
    if (this.N1 == 3) {
      i5 = this.e0;
    } else {
      i5 = this.d0;
    }
    i7 = i6;
    if (E1(i8, this.T0 + i6, paramPaint)) {
      i7 = i6 + (x4 + h3);
    }
    i6 = i7;
    if (i5 == i8)
    {
      i6 = i7;
      if (this.Q1) {
        i6 = i7 + (x4 + h3);
      }
    }
    if ((i5 != i8) || (i8 != 11) || (!this.Q1)) {
      paramCanvas.drawText(str, i10, i6, paramPaint);
    }
    if ((i8 < 12) && (this.n1 + i8 > 12))
    {
      str = this.I1;
      i7 = this.o1;
      int i11 = x4;
      int i12 = h3;
      i6 = i7 + i9 + (12 - i8) * (i11 + i12) + p3 + this.f1 + this.g1 + t3 + i12;
      i7 = i6;
      if (i5 == 12)
      {
        i7 = i6;
        if (this.Q1) {
          i7 = i6 + (i11 + i12);
        }
      }
      paramCanvas.drawText(str, i10, i7, paramPaint);
    }
  }
  
  private int Y1(Rect paramRect, Paint paramPaint)
  {
    int i5 = (int)Math.ceil(-paramPaint.getFontMetrics().ascent + paramPaint.getFontMetrics().descent);
    int i6 = X3 + Y3;
    if (paramRect.height() <= i5 + i6) {
      if (paramRect.height() < i5) {
        i6 = 0;
      } else {
        i6 = paramRect.height() - i5;
      }
    }
    int i7 = paramRect.bottom;
    int i8 = paramRect.top;
    if ((i7 > i8) && (paramRect.right > paramRect.left))
    {
      i9 = X3;
      i10 = Y3;
      if ((i7 - i8 > i9 + i10) && (i6 > 0) && (i6 <= i9 + i10))
      {
        paramRect.top = (i8 + Math.max(i6 - i10, 0));
        paramRect.bottom -= Math.min(i6, Y3);
      }
    }
    else
    {
      paramRect.bottom = i8;
      paramRect.right = paramRect.left;
    }
    i7 = paramRect.right;
    int i10 = paramRect.left;
    i6 = this.N0;
    int i9 = this.O0;
    if (i7 - i10 > i6 + i9)
    {
      paramRect.left = (i10 + i6);
      paramRect.right = (i7 - i9);
    }
    return (int)Math.min(paramRect.height() - (i5 - paramPaint.getTextSize()), paramRect.width());
  }
  
  private View a2(boolean paramBoolean, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    boolean bool = paramBoolean;
    this.R0 = (paramFloat2 - paramFloat1);
    if (U2)
    {
      localObject1 = T2;
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("switchViews(");
      ((StringBuilder)localObject2).append(bool);
      ((StringBuilder)localObject2).append(") O:");
      ((StringBuilder)localObject2).append(paramFloat1);
      ((StringBuilder)localObject2).append(" Dist:");
      ((StringBuilder)localObject2).append(this.R0);
      ((StringBuilder)localObject2).append(" velocity:");
      ((StringBuilder)localObject2).append(paramFloat3);
      Log.d((String)localObject1, ((StringBuilder)localObject2).toString());
    }
    float f5 = Math.abs(paramFloat1) / paramFloat2;
    float f6 = 1.0F;
    float f7 = f5;
    if (f5 > 1.0F) {
      f7 = 1.0F;
    }
    float f8;
    if (bool)
    {
      f8 = -f7;
      f6 = 1.0F - f7;
      f5 = -1.0F;
      f7 = f8;
      f8 = f6;
    }
    else
    {
      f5 = f7;
      f8 = f7 - 1.0F;
      f7 = f5;
      f5 = f6;
    }
    Object localObject1 = new r0(this.i.s());
    ((r0)localObject1).D(Utils.W());
    paramBoolean = bool;
    if (x0.x0()) {
      paramBoolean = bool ^ true;
    }
    if (paramBoolean) {
      ((r0)localObject1).J(((r0)localObject1).q() + this.m1);
    } else {
      ((r0)localObject1).J(((r0)localObject1).q() - this.m1);
    }
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(1, f8, 1, 0.0F, 0, 0.0F, 0, 0.0F);
    Object localObject2 = new TranslateAnimation(1, f7, 1, f5, 0, 0.0F, 0, 0.0F);
    long l5 = x0(paramFloat2 - Math.abs(paramFloat1), paramFloat2, paramFloat3);
    localTranslateAnimation.setDuration(l5);
    localTranslateAnimation.setInterpolator(this.h2);
    ((Animation)localObject2).setInterpolator(this.h2);
    ((Animation)localObject2).setDuration(l5);
    ((Animation)localObject2).setAnimationListener(new n((r0)localObject1, l5, this.Z1));
    this.Z1.setInAnimation(localTranslateAnimation);
    this.Z1.setOutAnimation((Animation)localObject2);
    ((l0)this.Z1.getCurrentView()).B0();
    this.Z1.showNext();
    localObject2 = (l0)this.Z1.getCurrentView();
    ((l0)localObject2).setSelected((r0)localObject1);
    ((View)localObject2).requestFocus();
    ((l0)localObject2).L1();
    ((l0)localObject2).Q1();
    return localObject2;
  }
  
  private void b2(boolean paramBoolean)
  {
    l locall = this.y1;
    this.I0.dismiss();
    this.e = -1L;
    long l5;
    if (G1())
    {
      if (paramBoolean)
      {
        if (locall == null)
        {
          l5 = getSelectedTimeInMillis();
          M0(l5, l5 + 3600000L, this.r0);
        }
        else
        {
          s0();
          Utils.L0(this.f, locall.a.getId(), locall.a.getStartTimeMillis(), locall.a.getEndTimeMillis());
        }
      }
      else if (this.v1.size() == 1)
      {
        s0();
        Utils.L0(this.f, locall.a.getId(), locall.a.getStartTimeMillis(), locall.a.getEndTimeMillis());
      }
    }
    else if (locall == null)
    {
      l5 = getSelectedTimeInMillis();
      M0(l5, l5 + 3600000L, this.r0);
    }
    else
    {
      s0();
      Utils.L0(this.f, locall.a.getId(), locall.a.getStartTimeMillis(), locall.a.getEndTimeMillis());
    }
  }
  
  private Rect c1(l paraml, Canvas paramCanvas, Paint paramPaint, int paramInt1, int paramInt2)
  {
    int i5 = paramPaint.getAlpha();
    Rect localRect = this.z0;
    localRect.top = Math.max((int)paraml.d + O3, paramInt1);
    localRect.bottom = Math.min((int)paraml.e - P3, paramInt2);
    localRect.left = ((int)paraml.b + Q3);
    localRect.right = ((int)paraml.c);
    paramInt1 = paraml.a.getEx().getSelfAttendeeStatus();
    paramInt2 = 0;
    if (paramInt1 != 2)
    {
      if ((paramInt1 != 3) && (paramInt1 != 4))
      {
        paramPaint.setStyle(Paint.Style.FILL_AND_STROKE);
        break label154;
      }
      if (paraml != this.x) {
        paramPaint.setPathEffect(f3);
      }
    }
    if (paraml != this.x)
    {
      paramPaint.setStyle(Paint.Style.STROKE);
      paramInt1 = 1;
    }
    else
    {
      label154:
      paramInt1 = 0;
    }
    paramPaint.setAntiAlias(false);
    paramPaint.setStrokeWidth(0.0F);
    if ((paraml != this.x) && (paramInt1 == 0)) {
      Utils.h1(getResources(), paraml.a, paramPaint, Utils.DisplayType.FILL);
    } else {
      Utils.h1(getResources(), paraml.a, paramPaint, Utils.DisplayType.BORDER);
    }
    paramPaint.setAlpha(q1(paraml));
    paramInt1 = this.B2;
    float f5 = localRect.left;
    float f6 = localRect.top;
    float f7 = localRect.right;
    float f8 = localRect.bottom;
    float f9 = paramInt1;
    paramCanvas.drawRoundRect(f5, f6, f7, f8, f9, f9, paramPaint);
    paramPaint.setStyle(Paint.Style.FILL);
    if ((this.y1 == paraml) && (this.x != null))
    {
      paramInt1 = this.O1;
      if (paramInt1 == 1) {
        this.z1 = paraml;
      }
      for (paramInt1 = g4;; paramInt1 = g4)
      {
        paramInt2 = 1;
        break label357;
        if (paramInt1 != 2) {
          break;
        }
        this.z1 = paraml;
      }
      paramInt1 = 0;
      label357:
      if (paramInt2 != 0)
      {
        paramPaint.setColor(paramInt1);
        paramCanvas.drawRect(localRect, paramPaint);
      }
      paramPaint.setAntiAlias(true);
    }
    paramPaint.setPathEffect(null);
    paramPaint.setAlpha(i5);
    paramInt1 = (int)paraml.d;
    paramInt2 = O3;
    localRect.top = (paramInt1 + paramInt2);
    localRect.bottom = ((int)paraml.e - paramInt2);
    localRect.left = ((int)paraml.b + paramInt2);
    localRect.right = ((int)paraml.c - R3);
    return localRect;
  }
  
  private void d1(StaticLayout paramStaticLayout, Rect paramRect, Canvas paramCanvas, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i5;
    if (Build.VERSION.SDK_INT > 30) {
      i5 = (int)getResources().getDimension(2131165969);
    } else {
      i5 = 0;
    }
    int i6 = paramRect.right - paramRect.left;
    int i7 = paramRect.bottom;
    int i8 = paramRect.top;
    if ((paramStaticLayout != null) && (i6 >= L3))
    {
      int i9 = paramStaticLayout.getLineCount();
      int i10 = 0;
      int i12;
      for (int i11 = i10; i10 < i9; i11 = i12)
      {
        i12 = paramStaticLayout.getLineBottom(i10);
        if (i12 > i7 - i8 + i5) {
          break;
        }
        i10++;
      }
      if (i11 != 0)
      {
        i5 = paramRect.top;
        if ((i5 <= paramInt2) && (i5 + i11 >= paramInt1))
        {
          paramCanvas.save();
          if (paramBoolean) {
            paramInt1 = (paramRect.bottom - paramRect.top - i11) / 2;
          } else {
            paramInt1 = 0;
          }
          paramCanvas.translate(paramRect.left, paramRect.top + paramInt1);
          paramRect.left = 0;
          paramRect.right = i6;
          paramRect.top = 0;
          paramRect.bottom = i11;
          paramCanvas.clipRect(paramRect);
          paramStaticLayout.draw(paramCanvas);
          paramCanvas.restore();
        }
      }
    }
  }
  
  private void d2()
  {
    l locall = this.z;
    int i5 = 0;
    if (locall == null)
    {
      this.o0 = 0;
      return;
    }
    if ((this.N1 == 1) && (locall.e - getEventHeight() < this.T0 + 20))
    {
      this.o0 = k2();
      return;
    }
    int i6 = this.T0;
    int i7 = this.n0;
    int i8 = this.o1;
    int i9 = this.N1;
    float f5;
    if (i9 == 1) {
      f5 = this.z.d + getEventHeight() / 2;
    }
    for (;;)
    {
      i5 = (int)f5;
      break;
      if (i9 == 2)
      {
        f5 = this.z.d;
      }
      else
      {
        if (i9 != 3) {
          break;
        }
        f5 = this.z.e;
      }
    }
    this.o0 = (i6 + i7 - i8 - i5);
  }
  
  private boolean e2()
  {
    z.a(T2, "updateEditingEvent()");
    int i5 = getEditingEventIndex();
    if (i5 == -1) {
      return false;
    }
    l locall = (l)this.R.get(i5);
    this.z = locall;
    float f5 = locall.a.getEx().getStartMinute() * y4 / 60;
    float f6 = ((this.z.a.getEx().getEndJulianDay() - this.z.a.getEx().getStartJulianDay()) * 1440 + this.z.a.getEx().getEndMinute()) * y4 / 60;
    locall = this.z;
    locall.d = f5;
    locall.e = f6;
    return true;
  }
  
  private void f2()
  {
    int i5 = this.d0;
    int i6 = y4;
    this.j0 = (i5 * i6 + this.f0 * i6 / 4);
    this.k0 = (this.e0 * i6 + this.g0 * i6 / 4);
  }
  
  private String g1(String paramString, int paramInt)
  {
    String str = this.O2.matcher(paramString).replaceAll(",");
    int i5 = str.length();
    if (paramInt <= 0)
    {
      paramString = "";
    }
    else
    {
      paramString = str;
      if (i5 > paramInt) {
        paramString = str.substring(0, paramInt);
      }
    }
    return paramString.replace('\n', ' ');
  }
  
  private void g2()
  {
    Object localObject1 = this.y1;
    if (localObject1 != null)
    {
      int i5 = this.O1;
      if ((i5 != 0) && (i5 != 3))
      {
        if (this.e == ((l)localObject1).a.getId()) {
          return;
        }
        this.e = this.y1.a.getId();
        this.d.removeCallbacks(this.K0);
        localObject1 = this.y1.a;
        ((TextView)this.J0.findViewById(2131362430)).setText(((Event)localObject1).getTitle());
        Object localObject2 = (ImageView)this.J0.findViewById(2131363024);
        boolean bool = ((Event)localObject1).getEx().hasAlarm();
        int i6 = 0;
        if (bool) {
          i5 = 0;
        } else {
          i5 = 8;
        }
        ((ImageView)localObject2).setVisibility(i5);
        localObject2 = (ImageView)this.J0.findViewById(2131363042);
        if (((Event)localObject1).getEx().isSolarRepeating()) {
          i5 = 0;
        } else {
          i5 = 8;
        }
        ((ImageView)localObject2).setVisibility(i5);
        if (((Event)localObject1).isAllDay()) {
          i5 = 532498;
        } else {
          i5 = 529427;
        }
        int i7 = i5;
        if (DateFormat.is24HourFormat(this.f)) {
          i7 = i5 | 0x80;
        }
        localObject2 = Utils.p(this.f, ((Event)localObject1).getStartTimeMillis(), ((Event)localObject1).getEndTimeMillis(), i7);
        ((TextView)this.J0.findViewById(2131363359)).setText((CharSequence)localObject2);
        localObject2 = (TextView)this.J0.findViewById(2131363568);
        bool = TextUtils.isEmpty(((Event)localObject1).getLocation());
        i5 = i6;
        if (bool) {
          i5 = 8;
        }
        ((View)localObject2).setVisibility(i5);
        if (!bool) {
          ((TextView)localObject2).setText(((Event)localObject1).getLocation());
        }
        this.I0.showAtLocation(this, 83, this.I2, 5);
        this.d.postDelayed(this.K0, 3000L);
        return;
      }
    }
    this.I0.dismiss();
  }
  
  private ObjectAnimator getAllDayAnimator()
  {
    int i5 = Math.min(this.V0 - B4 - l3, (int)(this.k1 * j3));
    int i6 = this.i1;
    if (i6 == 0) {
      i6 = this.h1;
    }
    if (!E4) {
      i5 = (int)(k3 - j3 - 1.0F);
    }
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofInt(this, "animateDayHeight", new int[] { i6, i5 });
    localObjectAnimator.setDuration(400L);
    localObjectAnimator.addListener(new e());
    return localObjectAnimator;
  }
  
  private ObjectAnimator getAllDayEventAnimator()
  {
    int i5 = Math.min(this.V0 - B4 - l3, (int)(this.k1 * j3)) / this.k1;
    int i6 = this.j1;
    if (!E4) {
      i5 = (int)j3;
    }
    if (i6 == i5) {
      return null;
    }
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofInt(this, "animateDayEventHeight", new int[] { i6, i5 });
    localObjectAnimator.setDuration(400L);
    return localObjectAnimator;
  }
  
  private Rect getCurrentSelectionPosition()
  {
    Rect localRect = new Rect();
    int i5 = this.b0;
    int i6 = x4;
    int i7 = h3;
    i5 *= (i6 + i7);
    localRect.top = i5;
    localRect.bottom = (i5 + i6 + i7);
    i6 = this.a0 - this.o;
    localRect.left = (G0(i6) + 1);
    localRect.right = G0(i6 + 1);
    return localRect;
  }
  
  private int getEditingEventIndex()
  {
    int i5 = 0;
    while (i5 < this.R.size())
    {
      Event localEvent = ((l)this.R.get(i5)).a;
      if (((localEvent.getId() != this.z.a.getId()) && (localEvent.getId() != this.T)) || ((this.z.a.getEx().isSolarRepeating()) && (localEvent.getEx().getStartJulianDay() != this.z.a.getEx().getStartJulianDay()))) {
        i5++;
      } else {
        return i5;
      }
    }
    return -1;
  }
  
  private int getEventHeight()
  {
    if (!this.R1) {
      return y4;
    }
    return ((this.z.a.getEx().getEndJulianDay() - this.z.a.getEx().getStartJulianDay()) * 1440 + this.z.a.getEx().getEndMinute() - this.z.a.getEx().getStartMinute()) * y4 / 60;
  }
  
  private int getTouchArea()
  {
    l locall = this.z;
    int i5 = (int)locall.d;
    int i6 = (int)locall.e;
    int i7 = locall.a.getEx().getStartJulianDay() - this.o;
    int i8 = G0(i7) + 1;
    int i9 = G0(i7 + 1);
    i7 = this.m0 + this.T0 - this.h1;
    int i10 = K0(this.l0, i7, i9, i5);
    int i11 = K0(this.l0, i7, i8, i6);
    if (i10 < 50) {
      return 2;
    }
    if (i11 < 50) {
      return 3;
    }
    i11 = this.l0;
    if ((i11 >= i8) && (i11 <= i9) && (i7 >= i5) && (i7 <= i6)) {
      return 1;
    }
    return 0;
  }
  
  private void h1()
  {
    removeCallbacks(this.J);
    removeCallbacks(this.I);
    this.x = null;
    this.y = null;
  }
  
  private void h2(int paramInt)
  {
    int i5 = getEventHeight();
    int i6 = this.T0;
    float f5 = paramInt * 0.2F;
    paramInt = x4;
    i6 += (int)(paramInt * f5);
    this.T0 = i6;
    boolean bool = this.R1;
    int i7;
    if (bool)
    {
      i7 = this.N1;
      if ((i7 != 1) && (i7 != 2)) {}
    }
    else
    {
      this.h0 += (int)(paramInt * f5);
    }
    if (bool)
    {
      i7 = this.N1;
      if ((i7 != 1) && (i7 != 3)) {}
    }
    else
    {
      this.i0 += (int)(f5 * paramInt);
    }
    if (i6 < 0)
    {
      this.T0 = 0;
      V1(this.l0, i5 / 2 + this.o0, false);
    }
    else
    {
      paramInt = this.U0;
      if (i6 > paramInt)
      {
        this.T0 = paramInt;
        V1(this.l0, Math.min(this.V0 + this.h1 + i5 / 2 - y4 / 4, this.m0), false);
      }
      else
      {
        V1(this.l0, this.m0, false);
      }
    }
  }
  
  private int i1(long paramLong)
  {
    for (int i5 = 0; i5 < 64; i5++) {
      if ((1L << i5 & paramLong) == 0L) {
        return i5;
      }
    }
    return 64;
  }
  
  private void j1(int paramInt1, int paramInt2)
  {
    int i5 = this.a0;
    int i6 = this.y0;
    Object localObject1 = this.R;
    int i7 = ((ArrayList)localObject1).size();
    int i8 = this.a0 - this.o;
    if (x0.x0()) {
      i8 = G0(this.m1 - 1 - i8);
    } else {
      i8 = G0(i8);
    }
    Object localObject2 = null;
    setSelectedEvent(null);
    this.v1.clear();
    float f5;
    Object localObject3;
    float f7;
    float f8;
    if (this.r0)
    {
      f5 = 10.0F;
      float f6 = this.h1;
      i6 = B4;
      i5 = m3;
      i8 = this.l1;
      paramInt1 = i8;
      if (this.k1 > i8) {
        paramInt1 = i8 - 1;
      }
      localObject3 = this.U;
      i7 = ((ArrayList)localObject3).size();
      i8 = 0;
      for (;;)
      {
        localObject4 = localObject2;
        if (i8 >= i7) {
          break;
        }
        localObject4 = (l)((ArrayList)localObject3).get(i8);
        f7 = f5;
        localObject1 = localObject2;
        if (f.a(((l)localObject4).a)) {
          if ((!E4) && (((l)localObject4).f >= paramInt1))
          {
            f7 = f5;
            localObject1 = localObject2;
          }
          else
          {
            f7 = f5;
            localObject1 = localObject2;
            if (((l)localObject4).a.getEx().getStartJulianDay() <= this.a0)
            {
              f7 = f5;
              localObject1 = localObject2;
              if (((l)localObject4).a.getEx().getEndJulianDay() >= this.a0)
              {
                if (E4) {
                  i9 = this.k1;
                } else {
                  i9 = this.l1;
                }
                f7 = f6 / i9;
                i9 = o3;
                f8 = f7;
                if (f7 > i9) {
                  f8 = i9;
                }
                f7 = i6 + i5 + ((l)localObject4).f * f8;
                f8 += f7;
                float f9 = paramInt2;
                if ((f7 < f9) && (f8 > f9))
                {
                  this.v1.add(localObject4);
                  break;
                }
                if (f7 >= f9) {
                  f8 = f7 - f9;
                } else {
                  f8 = f9 - f8;
                }
                f7 = f5;
                localObject1 = localObject2;
                if (f8 < f5)
                {
                  localObject1 = localObject4;
                  f7 = f8;
                }
              }
            }
          }
        }
        i8++;
        f5 = f7;
        localObject2 = localObject1;
      }
      setSelectedEvent((l)localObject4);
      return;
    }
    paramInt2 += this.T0 - this.o1;
    Object localObject4 = this.z0;
    ((Rect)localObject4).left = (paramInt1 - 10);
    ((Rect)localObject4).right = (paramInt1 + 10);
    ((Rect)localObject4).top = (paramInt2 - 10);
    ((Rect)localObject4).bottom = (paramInt2 + 10);
    localObject2 = this.M0;
    for (int i9 = 0; i9 < i7; i9++)
    {
      localObject3 = (l)((ArrayList)localObject1).get(i9);
      if ((((j0)localObject2).a(i5, i8, 0, i6, (l)localObject3)) && (((j0)localObject2).b((l)localObject3, (Rect)localObject4))) {
        this.v1.add(localObject3);
      }
    }
    if (this.v1.size() > 0)
    {
      i9 = this.v1.size();
      f8 = this.W0 + this.V0;
      localObject4 = null;
      i8 = 0;
      while (i8 < i9)
      {
        localObject1 = (l)this.v1.get(i8);
        f7 = ((j0)localObject2).c(paramInt1, paramInt2, (l)localObject1);
        f5 = f8;
        if (f7 < f8)
        {
          localObject4 = localObject1;
          f5 = f7;
        }
        i8++;
        f8 = f5;
      }
      setSelectedEvent((l)localObject4);
      i8 = this.y1.a.getEx().getStartJulianDay();
      paramInt2 = this.y1.a.getEx().getEndJulianDay();
      paramInt1 = this.a0;
      if (paramInt1 < i8) {
        setSelectedDay(i8);
      } else if (paramInt1 > paramInt2) {
        setSelectedDay(paramInt2);
      }
      i9 = this.y1.a.getEx().getStartMinute() / 60;
      if (this.y1.a.getEx().getStartMinute() < this.y1.a.getEx().getEndMinute()) {
        paramInt1 = (this.y1.a.getEx().getEndMinute() - 1) / 60;
      } else {
        paramInt1 = this.y1.a.getEx().getEndMinute() / 60;
      }
      if (!this.Q1)
      {
        i6 = this.b0;
        if ((i6 < i9) && (this.a0 == i8)) {
          setSelectedHour(i9);
        } else if ((i6 > paramInt1) && (this.a0 == paramInt2)) {
          setSelectedHour(paramInt1);
        }
      }
    }
  }
  
  private void j2()
  {
    String str = Utils.U(this.f);
    this.i.L(str);
    this.i.y(true);
    this.j.O(str);
    invalidate();
  }
  
  private int k1(int paramInt)
  {
    int i5 = getEventHeight();
    int i6 = this.N1;
    if (i6 == 2)
    {
      i5 = this.h1;
      if ((paramInt < i5) && (this.T0 > 0)) {
        return -1;
      }
      int i7 = this.V0;
      i6 = y4;
      if (paramInt > i7 - i6 / 2)
      {
        paramInt = this.T0;
        if ((paramInt < this.U0 + i5) && (this.i0 > paramInt + i7 - i5 - i6 / 2)) {
          return 1;
        }
      }
    }
    else if (i6 == 3)
    {
      if ((paramInt > this.V0) && (this.T0 < this.h1 + this.U0)) {
        return 1;
      }
      if (paramInt < this.h1 + y4 / 2)
      {
        paramInt = this.T0;
        if ((paramInt > 0) && (this.h0 < paramInt + 20)) {
          return -1;
        }
      }
    }
    else if (this.Q1)
    {
      i6 = this.h1;
      if ((paramInt < i5 / 2 + i6) && (this.T0 > 0)) {
        return -1;
      }
      if ((paramInt + this.o0 > this.V0 - y4 / 2) && (this.T0 < i6 + this.U0)) {
        return 1;
      }
    }
    return 0;
  }
  
  private int k2()
  {
    int i5 = this.z.a.getEx().getStartMinute() / 60 * y4;
    l locall = this.z;
    float f5 = locall.d;
    if ((int)f5 - 20 < i5)
    {
      this.T0 = ((int)f5 - 20);
      i5 = this.m0 - (getEventHeight() / 2 + 20 + this.h1);
    }
    else
    {
      this.T0 = i5;
      i5 = (int)(this.m0 - (locall.e - getEventHeight() / 2 - i5 + this.h1));
    }
    if (this.T0 < 0)
    {
      this.T0 = 0;
      i5 = this.m0 - (getEventHeight() / 2 + this.h1);
    }
    return i5;
  }
  
  private static int m1(Context paramContext, Event paramEvent)
  {
    paramContext = paramContext.getContentResolver();
    Object localObject = paramContext.query(ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, paramEvent.getId()), new String[] { "calendar_id" }, null, null, null);
    if (localObject == null) {
      return 0;
    }
    if (((Cursor)localObject).getCount() == 0)
    {
      ((Cursor)localObject).close();
      return 0;
    }
    ((Cursor)localObject).moveToFirst();
    long l5 = ((Cursor)localObject).getLong(0);
    ((Cursor)localObject).close();
    Uri localUri = CalendarContract.Calendars.CONTENT_URI;
    localObject = String.format(Locale.ENGLISH, "_id=%d", new Object[] { Long.valueOf(l5) });
    localObject = paramContext.query(localUri, a3, (String)localObject, null, null);
    if (localObject != null) {}
    try
    {
      if (((Cursor)localObject).moveToFirst())
      {
        i5 = ((Cursor)localObject).getInt(1);
        paramContext = ((Cursor)localObject).getString(2);
      }
      else
      {
        paramContext = null;
        i5 = 0;
      }
      ((Cursor)localObject).close();
    }
    finally
    {
      ((Cursor)localObject).close();
    }
    int i5 = 0;
    if (i5 < 500) {
      return 0;
    }
    if (paramEvent.getEx().isGuestsCanModify()) {
      return 2;
    }
    if ((!TextUtils.isEmpty(paramContext)) && (paramContext.equalsIgnoreCase(paramEvent.getEx().getOrganizer()))) {
      return 2;
    }
    return 1;
  }
  
  private StaticLayout n1(StaticLayout[] paramArrayOfStaticLayout, int paramInt, Event paramEvent, Paint paramPaint, Rect paramRect)
  {
    if ((paramInt >= 0) && (paramInt < paramArrayOfStaticLayout.length))
    {
      Object localObject = paramArrayOfStaticLayout[paramInt];
      if ((localObject == null) || (paramRect.width() != ((Layout)localObject).getWidth()) || (this.b1 != 0.0F))
      {
        localObject = new SpannableStringBuilder();
        if (paramEvent.getTitle() != null)
        {
          ((SpannableStringBuilder)localObject).append(g1(com.android.calendar.event.e0.d(this.f, paramEvent.getTitle()), 499));
          ((SpannableStringBuilder)localObject).setSpan(new StyleSpan(0), 0, ((SpannableStringBuilder)localObject).length(), 0);
          ((SpannableStringBuilder)localObject).setSpan(p1(paramPaint), 0, ((SpannableStringBuilder)localObject).length(), 0);
          ((SpannableStringBuilder)localObject).append('\n');
        }
        if (paramEvent.getLocation() != null)
        {
          int i5 = ((SpannableStringBuilder)localObject).length();
          ((SpannableStringBuilder)localObject).append(g1(paramEvent.getLocation(), 500 - ((SpannableStringBuilder)localObject).length()));
          ((SpannableStringBuilder)localObject).setSpan(o1(paramPaint), i5, ((SpannableStringBuilder)localObject).length(), 0);
        }
        paramPaint.setFlags(0);
        localObject = new StaticLayout((CharSequence)localObject, 0, ((SpannableStringBuilder)localObject).length(), new TextPaint(paramPaint), paramRect.width(), Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false, null, paramRect.width());
        paramArrayOfStaticLayout[paramInt] = localObject;
      }
      ((Layout)localObject).getPaint().setAlpha(this.G);
      return localObject;
    }
    return null;
  }
  
  private void s0()
  {
    if (!this.j2) {
      return;
    }
    AccessibilityManager localAccessibilityManager = this.i2;
    if (localAccessibilityManager == null)
    {
      localAccessibilityManager = (AccessibilityManager)this.f.getSystemService("accessibility");
      this.i2 = localAccessibilityManager;
      if ((localAccessibilityManager != null) && (localAccessibilityManager.isEnabled())) {
        this.i2.interrupt();
      } else {
        this.j2 = false;
      }
    }
    else
    {
      localAccessibilityManager.interrupt();
    }
  }
  
  private void setSelectedDay(int paramInt)
  {
    this.a0 = paramInt;
    this.s0 = paramInt;
  }
  
  private void setSelectedEvent(l paraml)
  {
    this.y1 = paraml;
    this.u0 = paraml;
  }
  
  private void setSelectedHour(int paramInt)
  {
    this.b0 = paramInt;
    this.t0 = paramInt;
  }
  
  private void setSelectionMode(int paramInt)
  {
    this.O1 = paramInt;
    if (C1()) {
      g.c(new g.q(paramInt));
    }
  }
  
  private void setupAllDayTextRect(Rect paramRect)
  {
    int i5 = paramRect.bottom;
    int i6 = paramRect.top;
    if (i5 > i6)
    {
      int i7 = paramRect.right;
      int i8 = paramRect.left;
      if (i7 > i8)
      {
        int i9 = a4;
        int i10 = b4;
        if (i5 - i6 > i9 + i10)
        {
          paramRect.top = (i6 + i9);
          paramRect.bottom = (i5 - i10);
        }
        i9 = this.P0;
        i6 = this.Q0;
        if (i7 - i8 > i9 + i6)
        {
          paramRect.left = (i8 + i9);
          paramRect.right = (i7 - i6);
        }
        return;
      }
    }
    paramRect.bottom = i6;
    paramRect.right = paramRect.left;
  }
  
  private void t0(r0 paramr0)
  {
    int i5 = paramr0.t() - this.H0;
    if (i5 != 0)
    {
      int i6 = i5;
      if (i5 < 0) {
        i6 = i5 + 7;
      }
      paramr0.J(paramr0.q() - i6);
      paramr0.y(true);
    }
  }
  
  private void u0(StringBuilder paramStringBuilder, Event paramEvent)
  {
    paramStringBuilder.append(paramEvent.getTitle());
    if ((!TextUtils.isEmpty(paramEvent.getLocation())) && (!paramEvent.getTitle().endsWith(paramEvent.getLocation())))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(", ");
      localStringBuilder.append(paramEvent.getLocation());
      paramStringBuilder.append(localStringBuilder.toString());
    }
    paramStringBuilder.append(". ");
    int i5;
    if (paramEvent.isAllDay())
    {
      i5 = 8210;
    }
    else
    {
      i5 = 17;
      if (DateFormat.is24HourFormat(this.f)) {
        i5 = 145;
      }
    }
    paramStringBuilder.append(Utils.p(this.f, paramEvent.getStartTimeMillis(), paramEvent.getEndTimeMillis(), i5));
    paramStringBuilder.append(". ");
  }
  
  private void v0(Context paramContext, Event paramEvent)
  {
    Cursor localCursor = paramContext.getContentResolver().query(ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, paramEvent.getId()), j.e, null, null, null);
    if (localCursor != null) {
      try
      {
        Object localObject = new com/android/calendar/common/event/schema/EmptyEvent;
        ((EmptyEvent)localObject).<init>();
        this.N = ((Event)localObject);
        localObject = new com/android/calendar/common/event/schema/EmptyEvent;
        ((EmptyEvent)localObject).<init>();
        this.O = ((Event)localObject);
        j.t(this.N, localCursor);
        j.t(this.O, localCursor);
        localObject = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, this.z.a.getId());
        this.O.getEx().setUri(((Uri)localObject).toString());
        this.N.getEx().setUri(((Uri)localObject).toString());
        this.N.getEx().setOriginalStart(this.N.getEx().getStart());
        this.N.getEx().setOriginalEnd(this.N.getEx().getEnd());
        localObject = this.N.getEx();
        boolean bool;
        if (this.N.getEx().getOriginalStart() == this.O.getEx().getStart()) {
          bool = true;
        } else {
          bool = false;
        }
        ((EventEx)localObject).setFirstEventInSeries(bool);
        long l5 = r1(this.d0, this.f0);
        long l6 = r1(this.e0, this.g0);
        this.N.getEx().setStart(this.N.getEx().getStart() + l5 - this.z.a.getStartTimeMillis());
        this.N.getEx().setEnd(this.N.getEx().getEnd() + l6 - this.z.a.getEndTimeMillis());
        b0.e(this.f, this.N);
        w0(paramContext, paramEvent);
      }
      finally
      {
        localCursor.close();
      }
    }
  }
  
  private void v1()
  {
    AccessibilityManager localAccessibilityManager = (AccessibilityManager)this.f.getSystemService("accessibility");
    this.i2 = localAccessibilityManager;
    boolean bool;
    if ((localAccessibilityManager != null) && (localAccessibilityManager.isEnabled())) {
      bool = true;
    } else {
      bool = false;
    }
    this.j2 = bool;
    this.k2 = F1();
  }
  
  private void w0(Context paramContext, Event paramEvent)
  {
    if (paramEvent.getEx().hasAlarm())
    {
      paramContext = paramContext.getContentResolver();
      paramEvent = Long.toString(paramEvent.getId());
      paramContext = paramContext.query(CalendarContract.Reminders.CONTENT_URI, j.f, "event_id=?", new String[] { paramEvent }, null);
      if (paramContext != null) {
        try
        {
          while (paramContext.moveToNext())
          {
            paramEvent = Reminder.valueOf(paramContext.getInt(1), paramContext.getInt(2));
            this.N.getEx().addReminder(paramEvent);
            this.O.getEx().addReminder(paramEvent);
          }
          if (!paramContext.isClosed()) {
            paramContext.close();
          }
        }
        finally
        {
          if (!paramContext.isClosed()) {
            paramContext.close();
          }
        }
      }
    }
  }
  
  private long x0(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f5 = paramFloat2 / 2.0F;
    float f6 = paramFloat1 / paramFloat2;
    paramFloat2 = O0(f6);
    float f7 = f5 * paramFloat2 + f5;
    paramFloat3 = Math.max(2200.0F, Math.abs(paramFloat3));
    long l5 = Math.round(Math.abs(f7 / paramFloat3) * 1000.0F) * 6;
    if (U2)
    {
      String str = T2;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("halfScreenSize:");
      localStringBuilder.append(f5);
      localStringBuilder.append(" delta:");
      localStringBuilder.append(paramFloat1);
      localStringBuilder.append(" distanceRatio:");
      localStringBuilder.append(f6);
      localStringBuilder.append(" distance:");
      localStringBuilder.append(f7);
      localStringBuilder.append(" velocity:");
      localStringBuilder.append(paramFloat3);
      localStringBuilder.append(" duration:");
      localStringBuilder.append(l5);
      localStringBuilder.append(" distanceInfluenceForSnapDuration:");
      localStringBuilder.append(paramFloat2);
      Log.e(str, localStringBuilder.toString());
    }
    return l5;
  }
  
  private void x1()
  {
    int i5 = (int)(this.X0 * 0.4D);
    float f5 = this.j.o() / 60.0F;
    int i6 = x4;
    int i7 = (int)(f5 * i6);
    int i8 = h3;
    int i9 = (i5 - i7) / (i6 + i8);
    int i10 = this.b0 - i9;
    this.p1 = i10;
    if (i10 < 0)
    {
      this.p1 = 0;
    }
    else
    {
      int i11 = this.n1;
      if (i10 + i11 > 24) {
        this.p1 = (24 - i11);
      }
    }
    i10 = i5 - i9 * (i8 + i6) - i7;
    this.q1 = i10;
    if (i10 < 0) {
      this.q1 = 0;
    } else if (i10 > i6) {
      this.q1 = i6;
    }
  }
  
  private void y0()
  {
    Animation localAnimation = this.Z1.getInAnimation();
    if (localAnimation != null) {
      localAnimation.scaleCurrentDuration(0.0F);
    }
    localAnimation = this.Z1.getOutAnimation();
    if (localAnimation != null) {
      localAnimation.scaleCurrentDuration(0.0F);
    }
  }
  
  private boolean y1(int paramInt)
  {
    l0 locall0 = (l0)this.Z1.getNextView();
    r0 localr0 = locall0.i;
    localr0.E(this.i);
    boolean bool1 = x0.x0();
    boolean bool2 = false;
    if (bool1)
    {
      if (paramInt > 0)
      {
        localr0.J(localr0.q() + this.m1);
        locall0.setSelectedDay(this.a0 + this.m1);
      }
      else
      {
        localr0.J(localr0.q() - this.m1);
        locall0.setSelectedDay(this.a0 - this.m1);
        break label161;
      }
    }
    else
    {
      if (paramInt > 0)
      {
        localr0.J(localr0.q() - this.m1);
        locall0.setSelectedDay(this.a0 - this.m1);
        break label161;
      }
      localr0.J(localr0.q() + this.m1);
      locall0.setSelectedDay(this.a0 + this.m1);
    }
    bool2 = true;
    label161:
    localr0.y(true);
    z1(locall0);
    locall0.layout(getLeft(), getTop(), getRight(), getBottom());
    locall0.L1();
    return bool2;
  }
  
  private void z1(l0 paraml0)
  {
    paraml0.setSelectedHour(this.b0);
    paraml0.v1.clear();
    paraml0.w1 = true;
    paraml0.p1 = this.p1;
    paraml0.q1 = this.q1;
    paraml0.M1(getWidth(), getHeight());
    paraml0.w1();
    paraml0.setSelectedEvent(null);
    paraml0.z1 = null;
    paraml0.H0 = this.H0;
    if (paraml0.R.size() > 0) {
      paraml0.r0 = this.r0;
    } else {
      paraml0.r0 = false;
    }
    paraml0.K1();
  }
  
  public void B0()
  {
    Object localObject = this.I0;
    if (localObject != null) {
      ((PopupWindow)localObject).dismiss();
    }
    this.c = true;
    this.e = -1L;
    localObject = this.d;
    if (localObject != null)
    {
      ((Handler)localObject).removeCallbacks(this.K0);
      this.d.removeCallbacks(this.k);
    }
    a.i(this.f, "preferences_default_cell_height", x4);
    h1();
    this.L0 = false;
    this.P1 = false;
  }
  
  void C0()
  {
    this.L = 0L;
  }
  
  protected void D0(Paint paramPaint)
  {
    if ((paramPaint.getFlags() & 0x10) != 0) {
      paramPaint.setFlags(paramPaint.getFlags() & 0xFFFFFFEF);
    }
  }
  
  public int E0(r0 paramr0)
  {
    int i5 = this.i.m();
    int i6 = this.i.o();
    int i7 = this.i.r();
    Object localObject = this.i;
    int i8 = 0;
    ((r0)localObject).F(0);
    this.i.H(0);
    this.i.K(0);
    if (U2)
    {
      String str = T2;
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Begin ");
      ((StringBuilder)localObject).append(this.i.toString());
      Log.d(str, ((StringBuilder)localObject).toString());
      str = T2;
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Diff  ");
      ((StringBuilder)localObject).append(paramr0.toString());
      Log.d(str, ((StringBuilder)localObject).toString());
    }
    int i9 = r0.d(paramr0, this.i);
    if (i9 > 0)
    {
      localObject = this.i;
      ((r0)localObject).J(((r0)localObject).q() + this.m1);
      this.i.y(true);
      i9 = r0.d(paramr0, this.i);
      if (U2)
      {
        localObject = T2;
        paramr0 = new StringBuilder();
        paramr0.append("End   ");
        paramr0.append(this.i.toString());
        Log.d((String)localObject, paramr0.toString());
      }
      paramr0 = this.i;
      paramr0.J(paramr0.q() - this.m1);
      this.i.y(true);
      if (i9 >= 0) {
        if (i9 == 0) {
          i8 = 1;
        } else {
          i8 = i9;
        }
      }
    }
    else
    {
      i8 = i9;
    }
    if (U2)
    {
      localObject = T2;
      paramr0 = new StringBuilder();
      paramr0.append("Diff: ");
      paramr0.append(i8);
      Log.d((String)localObject, paramr0.toString());
    }
    this.i.F(i5);
    this.i.H(i6);
    this.i.K(i7);
    return i8;
  }
  
  protected boolean E1(int paramInt, float paramFloat, Paint paramPaint)
  {
    return false;
  }
  
  protected int F0(int paramInt)
  {
    if (x0.x0()) {
      return G0(this.m1 - paramInt);
    }
    return G0(paramInt);
  }
  
  protected int G0(int paramInt)
  {
    int i5 = paramInt * getEffectiveWidth() / this.m1;
    if (x0.x0()) {
      paramInt = this.D2;
    } else {
      paramInt = this.I2;
    }
    return i5 + paramInt;
  }
  
  protected boolean G1()
  {
    int i5 = this.m1;
    boolean bool = true;
    if (i5 <= 1) {
      bool = false;
    }
    return bool;
  }
  
  public boolean I1()
  {
    return false;
  }
  
  protected void J1()
  {
    this.I2 = getTimeLineHourWidth();
    this.D2 = getEventsEndMargin();
  }
  
  void L1()
  {
    j2();
    setSelectedEvent(null);
    this.z1 = null;
    this.v1.clear();
    r0 localr0 = new r0(Utils.U(this.f));
    localr0.E(this.i);
    localr0.F(0);
    localr0.H(0);
    localr0.K(0);
    long l5 = localr0.y(true);
    if (l5 == this.L) {
      return;
    }
    this.L = l5;
    a2.b.a(this.f).b(this.m1, this.o, new d());
  }
  
  protected void M1(int paramInt1, int paramInt2)
  {
    paramInt1 = (int)(j3 * 4.0F);
    k3 = paramInt1;
    paramInt1 = Math.min(paramInt1, paramInt2 / 6);
    k3 = paramInt1;
    paramInt1 = Math.max(paramInt1, (int)j3 * 2);
    k3 = paramInt1;
    this.l1 = ((int)(paramInt1 / j3));
    for (paramInt1 = 0; paramInt1 < this.m1; paramInt1++)
    {
      this.r[paramInt1] = 25;
      this.v[paramInt1] = false;
    }
    paramInt1 = this.k1;
    int i5 = this.f1;
    int i6 = this.g1;
    int i7 = p3;
    int i8 = t3;
    int i9 = Math.max((paramInt2 - B4) / 24, (int)M3);
    z4 = i9;
    i5 = Math.max(i9, i5 + i6 + i7 * 2 + i8);
    z4 = i5;
    if (x4 < i5) {
      x4 = i5;
    }
    i5 = B4;
    this.o1 = i5;
    if (paramInt1 > 0)
    {
      i5 = paramInt2 - i5 - l3;
      if (paramInt1 == 1)
      {
        paramInt1 = i3;
      }
      else
      {
        i9 = this.l1;
        if (paramInt1 <= i9)
        {
          i8 = o3 * paramInt1;
          i5 = k3;
          paramInt1 = i8;
          if (i8 > i5) {
            paramInt1 = i5;
          }
        }
        else
        {
          for (;;)
          {
            break;
            i8 = this.i1;
            if (i8 != 0)
            {
              paramInt1 = Math.max(i8, k3);
            }
            else
            {
              float f5 = paramInt1;
              float f6 = j3;
              i8 = (int)(f5 * f6);
              if ((!E4) && (i8 > k3))
              {
                paramInt1 = (int)(i9 * f6);
              }
              else
              {
                paramInt1 = i8;
                if (i8 > i5) {
                  paramInt1 = i5;
                }
              }
            }
          }
        }
      }
      this.o1 = (B4 + paramInt1 + m3);
    }
    else
    {
      this.r0 = false;
      paramInt1 = 0;
    }
    this.h1 = paramInt1;
    this.X0 = (paramInt2 - this.o1 - this.M2);
    paramInt1 = this.E1.getIntrinsicWidth();
    this.C0.left = Math.max((this.I2 - paramInt1) / 2, this.P0);
    Object localObject1 = this.C0;
    ((Rect)localObject1).right = Math.min(((Rect)localObject1).left + paramInt1, this.I2 - this.Q0);
    localObject1 = this.C0;
    paramInt1 = this.o1 - c4;
    ((Rect)localObject1).bottom = paramInt1;
    ((Rect)localObject1).top = (paramInt1 - this.E1.getIntrinsicHeight());
    i5 = this.X0;
    paramInt1 = x4;
    this.n1 = (i5 / (h3 + paramInt1));
    this.M0.f(paramInt1);
    long l5 = (M3 * 60000.0F / (x4 / 60.0F));
    L0(this.R, l5);
    paramInt1 = h3;
    this.U0 = (paramInt1 + (x4 + paramInt1) * 24 - this.X0);
    localObject1 = T2;
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("mMaxViewStartY:");
    ((StringBuilder)localObject2).append(this.U0);
    ((StringBuilder)localObject2).append(" mGridAreaHeight:");
    ((StringBuilder)localObject2).append(this.X0);
    ((StringBuilder)localObject2).append(" firstCell:");
    ((StringBuilder)localObject2).append(this.o1);
    ((StringBuilder)localObject2).append(" height:");
    ((StringBuilder)localObject2).append(paramInt2);
    ((StringBuilder)localObject2).append(" hashCode:");
    ((StringBuilder)localObject2).append(hashCode());
    z.a((String)localObject1, ((StringBuilder)localObject2).toString());
    if (U2)
    {
      localObject1 = T2;
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("mViewStartY: ");
      ((StringBuilder)localObject2).append(this.T0);
      Log.e((String)localObject1, ((StringBuilder)localObject2).toString());
      localObject2 = T2;
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("mMaxViewStartY: ");
      ((StringBuilder)localObject1).append(this.U0);
      Log.e((String)localObject2, ((StringBuilder)localObject1).toString());
    }
    paramInt1 = this.T0;
    paramInt2 = this.U0;
    if (paramInt1 > paramInt2)
    {
      this.T0 = paramInt2;
      I0();
    }
    if ((this.X0 > 0) && (this.p1 == -1)) {
      x1();
    }
    paramInt2 = this.q1;
    i5 = x4;
    paramInt1 = h3;
    if (paramInt2 >= i5 + paramInt1) {
      this.q1 = (i5 + paramInt1 - 1);
    }
    this.T0 = (this.p1 * (i5 + paramInt1) - this.q1 + this.w2);
    localObject2 = T2;
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(hashCode());
    ((StringBuilder)localObject1).append(" remeasure ---- 1 ----- mViewStartY:");
    ((StringBuilder)localObject1).append(this.T0);
    ((StringBuilder)localObject1).append(" mFirstHour:");
    ((StringBuilder)localObject1).append(this.p1);
    ((StringBuilder)localObject1).append(" mFirstCell:");
    ((StringBuilder)localObject1).append(this.o1);
    ((StringBuilder)localObject1).append(" mFirstHourOffset:");
    ((StringBuilder)localObject1).append(this.q1);
    ((StringBuilder)localObject1).append(" mCurAllDayOffset:");
    ((StringBuilder)localObject1).append(this.s2);
    ((StringBuilder)localObject1).append(" mSwitchDeltaY:");
    ((StringBuilder)localObject1).append(this.w2);
    ((StringBuilder)localObject1).append(" mAllDayPagerState");
    ((StringBuilder)localObject1).append(this.v2);
    ((StringBuilder)localObject1).append(" mUserScrolled:");
    ((StringBuilder)localObject1).append(this.x2);
    z.a((String)localObject2, ((StringBuilder)localObject1).toString());
    if (!I1()) {
      this.T0 = Math.min(this.T0 + this.s2, this.U0);
    }
    if (this.T0 < 0) {
      this.T0 = 0;
    }
    localObject2 = T2;
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(hashCode());
    ((StringBuilder)localObject1).append(" remeasure ---- 2 ----- mViewStartY:");
    ((StringBuilder)localObject1).append(this.T0);
    ((StringBuilder)localObject1).append(" mFirstHour:");
    ((StringBuilder)localObject1).append(this.p1);
    ((StringBuilder)localObject1).append(" mFirstCell:");
    ((StringBuilder)localObject1).append(this.o1);
    ((StringBuilder)localObject1).append(" mFirstHourOffset:");
    ((StringBuilder)localObject1).append(this.q1);
    z.a((String)localObject2, ((StringBuilder)localObject1).toString());
    this.s2 = 0;
    this.w2 = 0;
    paramInt1 = this.m1;
    paramInt2 = this.y0;
    localObject1 = this.y1;
    if ((localObject1 != null) && (this.e != ((l)localObject1).a.getId())) {
      this.I0.dismiss();
    }
    this.I0.setWidth(paramInt1 * (paramInt2 + 1) - 20);
    this.I0.setHeight(-2);
  }
  
  public void Q1()
  {
    this.c = false;
    Handler localHandler = this.d;
    if (localHandler != null)
    {
      localHandler.removeCallbacks(this.k);
      this.d.post(this.k);
    }
  }
  
  protected void R0(Canvas paramCanvas)
  {
    Paint localPaint = this.D0;
    Rect localRect = this.z0;
    f1(localRect, paramCanvas, localPaint);
    int i5 = this.o;
    localPaint.setAntiAlias(false);
    int i6 = localPaint.getAlpha();
    localPaint.setAlpha(this.G);
    int i7 = 0;
    while (i7 < this.m1)
    {
      e1(i5, i7, h3, paramCanvas, localPaint);
      if (i5 == this.l)
      {
        int i8 = this.j.m() * (x4 + h3) + this.j.o() * x4 / 60 + 1;
        int i9 = this.T0;
        if ((i8 >= i9) && (i8 < i9 + this.V0 - 2)) {
          a1(localRect, i7, i8, paramCanvas, localPaint);
        }
      }
      i7++;
      i5++;
    }
    localPaint.setAntiAlias(true);
    localPaint.setAlpha(i6);
    b1(localRect, paramCanvas, localPaint);
  }
  
  void U1(int paramInt1, int paramInt2)
  {
    this.p1 = paramInt1;
    this.q1 = paramInt2;
  }
  
  protected void X1()
  {
    this.E0.setTextSize(F3);
    this.E0.setTypeface(w.c());
    this.E0.setTextAlign(Paint.Align.LEFT);
    this.E0.setAntiAlias(true);
  }
  
  protected void Z0(Rect paramRect, Canvas paramCanvas, Paint paramPaint)
  {
    int i5 = this.l - this.o;
    boolean bool = G1();
    int i6 = 0;
    int i7;
    if ((!bool) && (i5 == 0))
    {
      i6 = this.j.m() * (x4 + h3) + this.j.o() * x4 / 60 + 1;
      i7 = this.T0;
      if (i6 > i7)
      {
        i7 = Math.min(i6, i7 + this.V0);
        paramRect.left = 0;
        paramRect.right = this.W0;
        paramRect.top = this.T0;
        paramRect.bottom = i7;
        paramPaint.setColor(p4);
        paramCanvas.drawRect(paramRect, paramPaint);
      }
    }
    else
    {
      Rect localRect;
      if ((i5 >= 0) && (i5 < this.m1))
      {
        int i8 = this.j.m() * (x4 + h3) + this.j.o() * x4 / 60 + 1;
        int i9 = this.T0;
        i7 = i8;
        if (i8 > i9)
        {
          i8 = Math.min(i8, i9 + this.V0);
          if (x0.x0()) {
            i7 = G0(this.m1 - 1 - i5);
          } else {
            i7 = G0(i5);
          }
          paramRect.left = i7;
          if (x0.x0()) {
            i7 = this.m1 - i5;
          } else {
            i7 = i5 + 1;
          }
          paramRect.right = G0(i7);
          paramRect.top = this.T0;
          paramRect.bottom = i8;
          paramPaint.setColor(p4);
          paramCanvas.drawRect(paramRect, paramPaint);
          i7 = i8;
        }
        if (x0.x0()) {
          i6 = G0(this.m1 - i5);
        }
        paramRect.left = i6;
        if (x0.x0()) {
          i6 = this.W0;
        } else {
          i6 = G0(i5);
        }
        paramRect.right = i6;
        localRect = this.A0;
        paramRect.top = localRect.top;
        if (i5 > 0) {
          i7 = localRect.bottom;
        }
        paramRect.bottom = i7;
        paramPaint.setColor(p4);
        paramCanvas.drawRect(paramRect, paramPaint);
      }
      else if (i5 > 0)
      {
        paramRect.left = 0;
        paramRect.right = this.W0;
        localRect = this.A0;
        paramRect.top = localRect.top;
        paramRect.bottom = localRect.bottom;
        paramPaint.setColor(p4);
        paramCanvas.drawRect(paramRect, paramPaint);
      }
    }
    paramPaint.setAntiAlias(true);
  }
  
  public void Z1()
  {
    ObjectAnimator localObjectAnimator = this.H;
    if (localObjectAnimator != null) {
      localObjectAnimator.cancel();
    }
    this.G = 255;
  }
  
  protected void a1(Rect paramRect, int paramInt1, int paramInt2, Canvas paramCanvas, Paint paramPaint)
  {
    int i5 = F0(paramInt1);
    if (x0.x0()) {
      i6 = this.E2;
    } else {
      i6 = 0;
    }
    int i6 = i5 - i6;
    paramRect.left = i6;
    i5 = F0(paramInt1 + 1);
    if (x0.x0()) {
      paramInt1 = this.E2 / 2;
    } else {
      paramInt1 = -this.E2;
    }
    paramRect.right = (i5 + paramInt1);
    paramInt1 = this.y2;
    i5 = paramInt2 - paramInt1;
    paramRect.top = i5;
    paramRect.bottom = (i5 + paramInt1 * 2);
    paramPaint.setColor(this.L2);
    paramPaint.setStyle(Paint.Style.STROKE);
    paramPaint.setStrokeWidth(this.H2);
    paramPaint.setAntiAlias(true);
    paramCanvas.drawRoundRect(paramRect.left, paramRect.top, paramRect.right, paramRect.bottom, 1.0F, 1.0F, paramPaint);
    paramInt1 = paramRect.left;
    i5 = this.H2;
    paramRect.left = (paramInt1 + i5);
    paramRect.right -= i5;
    paramRect.top += 1;
    paramRect.bottom -= 1;
    paramPaint.setColor(this.K2);
    paramPaint.setStyle(Paint.Style.FILL);
    paramCanvas.drawRoundRect(paramRect.left, paramRect.top, paramRect.right, paramRect.bottom, 1.0F, 1.0F, paramPaint);
    float f5 = this.C2 / 2.0F + this.H2;
    float f6 = i6;
    float f7 = f5;
    if (x0.x0()) {
      f7 = -f5 / 2.0F;
    }
    f5 = f6 + f7;
    f7 = paramInt2;
    paramPaint.setColor(this.L2);
    paramPaint.setStyle(Paint.Style.STROKE);
    paramPaint.setStrokeWidth(this.H2);
    paramCanvas.drawCircle(f5, f7, this.C2 / 2.0F + this.H2, paramPaint);
    paramPaint.setColor(this.K2);
    paramPaint.setStyle(Paint.Style.FILL);
    paramCanvas.drawCircle(f5, f7, this.C2 / 2.0F + 1.5F, paramPaint);
  }
  
  protected void b1(Rect paramRect, Canvas paramCanvas, Paint paramPaint)
  {
    if ((this.O1 != 0) && (!this.r0))
    {
      boolean bool = this.R1;
      long l5 = 300L;
      if ((!bool) && (!this.o2))
      {
        this.n2.d(new OvershootInterpolator(), 300L, new float[] { 0.75F, 1.0F });
        this.o2 = true;
      }
      if ((this.q2) && (!this.r2))
      {
        if (this.R1) {
          l5 = 50L;
        }
        this.p2.d(new LinearInterpolator(), l5, new float[] { 0.0F, 1.0F });
        this.r2 = true;
      }
      int i5 = this.a0 - this.o;
      int i6 = this.F2;
      paramRect.top = this.h0;
      paramRect.bottom = (this.i0 - i6 / 2);
      paramRect.left = (G0(i5) + 1);
      paramRect.right = (G0(i5 + 1) - this.F2);
      if (x0.x0())
      {
        paramRect.left = (G0(this.m1 - 1 - i5) + 1);
        paramRect.right = G0(this.m1 - i5);
      }
      S1(paramRect.left, paramRect.top, paramRect.right, paramRect.bottom);
      paramPaint.setColor(m4);
      paramRect.top += h3;
      paramRect.right -= 1;
      if (this.n2.f()) {
        f5 = this.n2.e();
      } else {
        f5 = 1.0F;
      }
      i6 = paramRect.right;
      i5 = paramRect.left;
      int i7 = paramRect.bottom;
      int i8 = paramRect.top;
      float f6 = i6 - i5;
      float f7 = f5 - 1.0F;
      float f5 = f6 * f7 / 2.0F;
      f6 = (i7 - i8) * f7 / 2.0F;
      paramRect.left = ((int)(i5 - f5));
      paramRect.right = ((int)(i6 + f5));
      paramRect.bottom = ((int)(i7 + f6));
      paramRect.top = ((int)(i8 - f6));
      i5 = paramPaint.getAlpha();
      paramPaint.setAntiAlias(false);
      f5 = 0.0F;
      paramPaint.setStrokeWidth(0.0F);
      if (this.p2.f()) {
        f5 = this.p2.e();
      } else if (this.r2) {
        f5 = 1.0F;
      }
      if (this.R1)
      {
        paramRect.top = ((int)(paramRect.top + (this.j0 - this.h0) * f5));
        paramRect.bottom = ((int)(paramRect.bottom + f5 * (this.k0 - this.i0)));
        Utils.h1(getResources(), this.z.a, paramPaint, Utils.DisplayType.TEXT);
        paramPaint.setAlpha(255);
      }
      else
      {
        f7 = this.p0 * f5 * 0.2F;
        f6 = this.q0 * f5 * 0.2F;
        paramRect.left = ((int)(paramRect.left + f7));
        paramRect.right = ((int)(paramRect.right + f7));
        paramRect.top = ((int)(paramRect.top + f6));
        paramRect.bottom = ((int)(paramRect.bottom + f6));
        paramPaint.setAlpha((int)(i5 * (1.0F - f5)));
      }
      f5 = this.B2;
      paramCanvas.drawRoundRect(paramRect.left, paramRect.top, paramRect.right, paramRect.bottom, f5, f5, paramPaint);
      if (this.R1)
      {
        Utils.h1(getResources(), this.z.a, paramPaint, Utils.DisplayType.ACCOUNT);
        paramCanvas.drawCircle(paramRect.right, paramRect.top, T3, paramPaint);
        paramCanvas.drawCircle(paramRect.left, paramRect.bottom, T3, paramPaint);
        paramPaint.setColor(-1);
        paramCanvas.drawCircle(paramRect.right, paramRect.top, U3, paramPaint);
        paramCanvas.drawCircle(paramRect.left, paramRect.bottom, U3, paramPaint);
      }
      paramPaint.setAlpha(i5);
      Object localObject;
      if (this.R1)
      {
        paramPaint.setStyle(Paint.Style.FILL);
        paramPaint.setTextAlign(Paint.Align.LEFT);
        i5 = Y1(paramRect, paramPaint);
        f6 = paramPaint.getTextSize();
        f5 = i5;
        if (f5 < paramPaint.getTextSize()) {
          paramPaint.setTextSize(f5);
        }
        localObject = n1(this.V, getEditingEventIndex(), this.z.a, paramPaint, paramRect);
        if (localObject == null)
        {
          z.c(T2, "drawDraggingRect(): layout is NULL, return");
          return;
        }
        ((Layout)localObject).getPaint().setColor(-1);
        i5 = this.T0;
        d1((StaticLayout)localObject, paramRect, paramCanvas, i5 + 4, i5 + this.V0 - B4 - this.h1, false);
        paramPaint.setTextSize(f6);
      }
      else
      {
        paramPaint.setColor(t4);
        if (G1())
        {
          i5 = paramRect.right;
          i6 = paramRect.left;
          i5 = i6 + (i5 - i6 - u4.getIntrinsicWidth()) / 2;
          i6 = paramRect.top + (x4 - u4.getIntrinsicHeight()) / 2;
          paramRect = u4;
          paramRect.setBounds(i5, i6, paramRect.getIntrinsicWidth() + i5, u4.getIntrinsicHeight() + i6);
          u4.draw(paramCanvas);
        }
        else
        {
          paramPaint.setStyle(Paint.Style.FILL);
          paramPaint.setTextSize(f4);
          paramPaint.setTextAlign(Paint.Align.LEFT);
          paramPaint.setTypeface(Typeface.defaultFromStyle(1));
          localObject = this.m2;
          f5 = paramRect.left + this.N0;
          f6 = paramRect.top;
          f7 = Math.abs(paramPaint.getFontMetrics().ascent);
          if (G1()) {
            i5 = X3;
          } else {
            i5 = this.G2;
          }
          paramCanvas.drawText((String)localObject, f5, f6 + f7 + i5, paramPaint);
        }
      }
    }
  }
  
  public void c2(int paramInt1, int paramInt2, int paramInt3)
  {
    this.t2 = paramInt1;
    this.u2 = paramInt2;
    this.v2 = paramInt3;
    String str = T2;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("updateAllDayHeight mCurAllDayOffset:");
    localStringBuilder.append(this.s2);
    localStringBuilder.append(" mCurAllDayCollapseHeight:");
    localStringBuilder.append(this.t2);
    localStringBuilder.append(" mCurAllDayExpandHeight:");
    localStringBuilder.append(this.u2);
    z.a(str, localStringBuilder.toString());
  }
  
  protected void e1(int paramInt1, int paramInt2, int paramInt3, Canvas paramCanvas, Paint paramPaint)
  {
    if (x0.x0()) {
      paramInt2 = G0(this.m1 - 1 - paramInt2);
    } else {
      paramInt2 = G0(paramInt2);
    }
    paramInt2++;
    int i5 = getCellWidth();
    int i6 = x4;
    Rect localRect1 = this.B0;
    int i7 = paramInt3 + this.b0 * (h3 + i6);
    localRect1.top = i7;
    localRect1.bottom = (i7 + i6);
    localRect1.left = paramInt2;
    localRect1.right = (paramInt2 + i5);
    ArrayList localArrayList = this.R;
    int i8 = localArrayList.size();
    j0 localj0 = this.M0;
    int i9 = this.T0 + this.V0 - B4 - this.h1;
    Paint localPaint = this.E0;
    i6 = localPaint.getAlpha();
    for (i7 = 0; i7 < i8; i7++)
    {
      l locall = (l)localArrayList.get(i7);
      localPaint.setAlpha(q1(locall));
      if ((localj0.a(paramInt1, paramInt2, paramInt3, i5, locall)) && (locall.e >= this.T0) && (locall.d <= i9))
      {
        if ((paramInt1 == this.a0) && (!this.r0) && (this.w1) && (localj0.b(locall, localRect1))) {
          this.v1.add(locall);
        }
        Rect localRect2 = c1(locall, paramCanvas, paramPaint, this.T0, i9);
        if ((localRect2.top <= i9) && (localRect2.bottom >= this.T0))
        {
          int i10 = Y1(localRect2, localPaint);
          if (i10 >= G3)
          {
            float f5 = localPaint.getTextSize();
            float f6 = i10;
            if (f6 < f5) {
              localPaint.setTextSize(f6);
            }
            StaticLayout localStaticLayout = n1(this.V, i7, locall.a, localPaint, localRect2);
            Utils.h1(getResources(), locall.a, localStaticLayout.getPaint(), Utils.DisplayType.TEXT);
            localStaticLayout.getPaint().setAlpha(q1(locall));
            i10 = this.T0;
            d1(localStaticLayout, localRect2, paramCanvas, i10 + 4, i10 + this.V0 - B4 - this.h1, false);
            localPaint.setTextSize(f5);
          }
        }
      }
    }
    localPaint.setAlpha(i6);
    if ((paramInt1 == this.a0) && (!this.r0) && (isFocused()) && (this.O1 != 0)) {
      J0();
    }
  }
  
  protected void f1(Rect paramRect, Canvas paramCanvas, Paint paramPaint)
  {
    z.a(T2, "drawHours");
    setupHourTextPaint(paramPaint);
    D0(paramPaint);
    int i5 = 0;
    this.J2 = 0;
    int i6 = l1(x0.z(this.f));
    int i7 = h3 + this.f1 + p3;
    int i8;
    if (this.N1 == 3)
    {
      this.m = this.e0;
      i8 = this.g0;
    }
    else
    {
      this.m = this.d0;
      i8 = this.f0;
    }
    while (i5 < 24)
    {
      paramRect = this.r1[i5];
      float f5;
      if ((this.Q1) && (this.m == i5))
      {
        f5 = i6;
        paramCanvas.drawText(paramRect, f5, i7, paramPaint);
        int i9 = (x4 + h3) * 2 / 5;
        DecimalFormat localDecimalFormat = new DecimalFormat("00");
        paramRect = new StringBuilder();
        paramRect.append(":");
        paramRect.append(localDecimalFormat.format(i8 * 15));
        paramCanvas.drawText(paramRect.toString(), f5, i9 + i7, paramPaint);
      }
      else
      {
        f5 = i7;
        if (!E1(i5, f5, paramPaint)) {
          paramCanvas.drawText(paramRect, i6, f5, paramPaint);
        } else {
          this.J2 = i5;
        }
      }
      i7 += x4 + h3;
      i5++;
    }
  }
  
  protected int getCellWidth()
  {
    return G0(2) - G0(1);
  }
  
  protected int getEffectiveWidth()
  {
    return this.W0 - this.I2 - this.D2;
  }
  
  protected int getEventTextLeftMargin()
  {
    Context localContext = getContext();
    int i5;
    if (G1()) {
      i5 = 3;
    } else {
      i5 = 2;
    }
    return x0.u(localContext, i5);
  }
  
  protected int getEventTextTopMargin()
  {
    Context localContext = getContext();
    int i5;
    if (G1()) {
      i5 = 3;
    } else {
      i5 = 2;
    }
    return x0.v(localContext, i5);
  }
  
  public int getEventsAlpha()
  {
    return this.G;
  }
  
  protected int getEventsEndMargin()
  {
    return x0.w(getContext());
  }
  
  int getFirstVisibleHour()
  {
    return this.p1;
  }
  
  int getFirstVisibleHourOffset()
  {
    return this.q1;
  }
  
  protected String[] getHourStrs()
  {
    String[] arrayOfString;
    if (this.u1) {
      arrayOfString = e0.b;
    } else {
      arrayOfString = e0.a;
    }
    return arrayOfString;
  }
  
  int getNumHours()
  {
    return this.n1;
  }
  
  long getSelectedHourInMillis()
  {
    r0 localr0 = new r0(this.i);
    localr0.G(this.a0);
    localr0.F(this.b0);
    return localr0.y(true);
  }
  
  r0 getSelectedTime()
  {
    r0 localr0 = new r0(this.i);
    localr0.G(this.a0);
    localr0.F(this.b0);
    localr0.y(true);
    return localr0;
  }
  
  r0 getSelectedTimeForAccessibility()
  {
    r0 localr0 = new r0(this.i);
    localr0.G(this.s0);
    localr0.F(this.t0);
    localr0.y(true);
    return localr0;
  }
  
  long getSelectedTimeInMillis()
  {
    r0 localr0 = new r0(this.i);
    localr0.G(this.a0);
    localr0.F(this.b0);
    localr0.H(this.c0 * 60 / 4);
    return localr0.y(true);
  }
  
  protected int getTimeLineHourWidth()
  {
    return x0.x(getContext());
  }
  
  public void i2(int paramInt1, int paramInt2)
  {
    this.w2 = paramInt1;
    this.v2 = paramInt2;
    z.a(T2, "updateSwitchDeltaHeight mSwitchDeltaY:$mSwitchDeltaY mAllDayPagerState:$mAllDayPagerState");
  }
  
  protected int l1(int paramInt)
  {
    if (x0.x0()) {
      paramInt = this.W0 - paramInt;
    }
    return paramInt;
  }
  
  protected AbsoluteSizeSpan o1(Paint paramPaint)
  {
    return new AbsoluteSizeSpan((int)(paramPaint.getTextSize() * 0.8D));
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.d == null)
    {
      Handler localHandler = getHandler();
      this.d = localHandler;
      localHandler.post(this.k);
    }
    this.M = new j(this.f);
  }
  
  public void onClick(View paramView)
  {
    if (paramView == this.J0) {
      b2(true);
    }
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    int i5 = this.N2;
    int i6 = paramConfiguration.orientation;
    if (i5 != i6)
    {
      this.N2 = i6;
      J1();
      invalidate();
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    if (this.O1 != 3)
    {
      setSelectionMode(3);
      invalidate();
    }
    long l5 = getSelectedTimeInMillis();
    paramContextMenu.setHeaderTitle(Utils.p(this.f, l5, l5, 5123));
    int i5 = this.v1.size();
    if (!G1())
    {
      if (i5 >= 1)
      {
        paramView = paramContextMenu.add(0, 5, 0, 2131886560);
        paramView.setOnMenuItemClickListener(this.K1);
        paramView.setIcon(17301569);
        i5 = m1(this.f, this.y1.a);
        if (i5 == 2)
        {
          paramView = paramContextMenu.add(0, 7, 0, 2131886540);
          paramView.setOnMenuItemClickListener(this.K1);
          paramView.setIcon(17301566);
          paramView.setAlphabeticShortcut('e');
        }
        if (i5 >= 1)
        {
          paramView = paramContextMenu.add(0, 8, 0, 2131886539);
          paramView.setOnMenuItemClickListener(this.K1);
          paramView.setIcon(17301564);
        }
        paramContextMenu = paramContextMenu.add(0, 6, 0, 2131886536);
        paramContextMenu.setOnMenuItemClickListener(this.K1);
        paramContextMenu.setIcon(17301555);
        paramContextMenu.setAlphabeticShortcut('n');
      }
      else
      {
        paramContextMenu = paramContextMenu.add(0, 6, 0, 2131886536);
        paramContextMenu.setOnMenuItemClickListener(this.K1);
        paramContextMenu.setIcon(17301555);
        paramContextMenu.setAlphabeticShortcut('n');
      }
    }
    else
    {
      if (i5 >= 1)
      {
        paramView = paramContextMenu.add(0, 5, 0, 2131886560);
        paramView.setOnMenuItemClickListener(this.K1);
        paramView.setIcon(17301569);
        i5 = m1(this.f, this.y1.a);
        if (i5 == 2)
        {
          paramView = paramContextMenu.add(0, 7, 0, 2131886540);
          paramView.setOnMenuItemClickListener(this.K1);
          paramView.setIcon(17301566);
          paramView.setAlphabeticShortcut('e');
        }
        if (i5 >= 1)
        {
          paramView = paramContextMenu.add(0, 8, 0, 2131886539);
          paramView.setOnMenuItemClickListener(this.K1);
          paramView.setIcon(17301564);
        }
      }
      paramView = paramContextMenu.add(0, 6, 0, 2131886536);
      paramView.setOnMenuItemClickListener(this.K1);
      paramView.setIcon(17301555);
      paramView.setAlphabeticShortcut('n');
      paramContextMenu = paramContextMenu.add(0, 3, 0, 2131887510);
      paramContextMenu.setOnMenuItemClickListener(this.K1);
      paramContextMenu.setIcon(17301563);
      paramContextMenu.setAlphabeticShortcut('d');
    }
    this.I0.dismiss();
  }
  
  protected void onDetachedFromWindow()
  {
    l locall = this.P;
    if (locall != null)
    {
      locall.dismiss();
      this.P = null;
    }
    B0();
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    paramCanvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
    if (this.L0)
    {
      M1(getWidth(), getHeight());
      this.L0 = false;
    }
    paramCanvas.save();
    float f5 = -this.T0 + B4 + this.h1;
    paramCanvas.translate(-this.S0, f5);
    Object localObject = this.A0;
    ((Rect)localObject).top = ((int)(this.o1 - f5));
    ((Rect)localObject).bottom = ((int)(this.V0 - f5));
    ((Rect)localObject).left = 0;
    ((Rect)localObject).right = this.W0;
    paramCanvas.save();
    paramCanvas.clipRect((Rect)localObject);
    R0(paramCanvas);
    paramCanvas.restore();
    int i5;
    if ((this.M1 & 0x40) != 0)
    {
      if (this.S0 > 0) {
        i5 = this.W0;
      } else {
        i5 = -this.W0;
      }
      float f6 = i5;
      paramCanvas.translate(f6, -f5);
      localObject = (l0)this.Z1.getNextView();
      ((l0)localObject).M1 = 0;
      ((l0)localObject).onDraw(paramCanvas);
      paramCanvas.translate(-f6, 0.0F);
    }
    else
    {
      paramCanvas.translate(this.S0, -f5);
    }
    X0(paramCanvas);
    if ((this.w1) && (this.x1))
    {
      g2();
      this.x1 = false;
    }
    this.w1 = false;
    if (!this.c2.isFinished())
    {
      i5 = B4;
      if (i5 != 0) {
        paramCanvas.translate(0.0F, i5);
      }
      if (this.c2.draw(paramCanvas)) {
        invalidate();
      }
      i5 = B4;
      if (i5 != 0) {
        paramCanvas.translate(0.0F, -i5);
      }
    }
    if (!this.d2.isFinished())
    {
      paramCanvas.rotate(180.0F, this.W0 / 2, this.V0 / 2);
      if (this.d2.draw(paramCanvas)) {
        invalidate();
      }
    }
    paramCanvas.restore();
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    if (U2)
    {
      int i5 = paramMotionEvent.getAction();
      if (i5 != 7)
      {
        if (i5 != 9)
        {
          if (i5 != 10)
          {
            String str = T2;
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("Unknown hover event action. ");
            localStringBuilder.append(paramMotionEvent);
            Log.e(str, localStringBuilder.toString());
          }
          else
          {
            Log.e(T2, "ACTION_HOVER_EXIT");
          }
        }
        else {
          Log.e(T2, "ACTION_HOVER_ENTER");
        }
      }
      else {
        Log.e(T2, "ACTION_HOVER_MOVE");
      }
    }
    if (!this.k2) {
      return super.onHoverEvent(paramMotionEvent);
    }
    if (paramMotionEvent.getAction() != 10)
    {
      V1((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY(), true);
      invalidate();
    }
    return true;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    this.P1 = false;
    if (paramInt != 4) {
      return super.onKeyDown(paramInt, paramKeyEvent);
    }
    if (paramKeyEvent.getRepeatCount() == 0)
    {
      paramKeyEvent.startTracking();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    this.P1 = false;
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public boolean onLongClick(View paramView)
  {
    if (!A1())
    {
      h1();
      t1();
      return true;
    }
    if (!this.Q1)
    {
      this.Q1 = true;
      paramView = this.y1;
      if (paramView != null)
      {
        this.z = paramView;
        this.R1 = true;
        A0();
        this.N1 = 1;
        this.x = null;
      }
      d2();
      V1(this.l0, this.m0, false);
      setSelectionMode(2);
      this.o2 = false;
      invalidate();
    }
    setLongClickable(false);
    return true;
  }
  
  public boolean onScale(ScaleGestureDetector paramScaleGestureDetector)
  {
    float f5 = Math.max(Z2, Math.abs(paramScaleGestureDetector.getCurrentSpanY()));
    int i5 = (int)(this.c1 * f5 / this.b1);
    x4 = i5;
    int i6 = z4;
    if (i5 < i6)
    {
      this.b1 = f5;
      x4 = i6;
      this.c1 = i6;
    }
    else
    {
      i6 = Y2;
      if (i5 > i6)
      {
        this.b1 = f5;
        x4 = i6;
        this.c1 = i6;
      }
    }
    i5 = this.E2;
    i6 = x4;
    this.F2 = (i5 * i6 / this.Y0);
    y4 = i6 + h3;
    i5 = (int)paramScaleGestureDetector.getFocusY() - B4 - this.h1;
    f5 = this.d1;
    i6 = x4;
    int i7 = (int)(f5 * (i6 + 1)) - i5;
    this.T0 = i7;
    int i8 = h3;
    this.U0 = (i8 + (i6 + i8) * 24 - this.X0);
    if (V2)
    {
      f5 = i7 / (i6 + 1);
      String str = T2;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onScale: mGestureCenterHour:");
      localStringBuilder.append(this.d1);
      localStringBuilder.append("\tViewStartHour: ");
      localStringBuilder.append(f5);
      localStringBuilder.append("\tmViewStartY:");
      localStringBuilder.append(this.T0);
      localStringBuilder.append("\tmCellHeight:");
      localStringBuilder.append(x4);
      localStringBuilder.append(" SpanY:");
      localStringBuilder.append(paramScaleGestureDetector.getCurrentSpanY());
      Log.d(str, localStringBuilder.toString());
    }
    i6 = this.T0;
    if (i6 < 0)
    {
      this.T0 = 0;
      this.d1 = ((0 + i5) / (x4 + 1));
    }
    else
    {
      i7 = this.U0;
      if (i6 > i7)
      {
        this.T0 = i7;
        this.d1 = ((i7 + i5) / (x4 + 1));
      }
    }
    I0();
    this.L0 = true;
    invalidate();
    return true;
  }
  
  public boolean onScaleBegin(ScaleGestureDetector paramScaleGestureDetector)
  {
    this.P1 = false;
    this.e1 = false;
    float f5 = paramScaleGestureDetector.getFocusY();
    float f6 = B4;
    float f7 = this.h1;
    this.d1 = ((this.T0 + (f5 - f6 - f7)) / (x4 + 1));
    this.b1 = Math.max(Z2, Math.abs(paramScaleGestureDetector.getCurrentSpanY()));
    int i5 = x4;
    this.c1 = i5;
    if (V2)
    {
      f5 = this.T0 / (i5 + 1);
      String str = T2;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onScaleBegin: mGestureCenterHour:");
      localStringBuilder.append(this.d1);
      localStringBuilder.append("\tViewStartHour: ");
      localStringBuilder.append(f5);
      localStringBuilder.append("\tmViewStartY:");
      localStringBuilder.append(this.T0);
      localStringBuilder.append("\tmCellHeight:");
      localStringBuilder.append(x4);
      localStringBuilder.append(" SpanY:");
      localStringBuilder.append(paramScaleGestureDetector.getCurrentSpanY());
      Log.d(str, localStringBuilder.toString());
    }
    return true;
  }
  
  public void onScaleEnd(ScaleGestureDetector paramScaleGestureDetector)
  {
    this.Z0 = this.T0;
    this.T1 = 0.0F;
    this.S1 = 0.0F;
    this.b1 = 0.0F;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Object localObject = T2;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onSizeChanged width:");
    localStringBuilder.append(paramInt1);
    localStringBuilder.append(" height:");
    localStringBuilder.append(paramInt2);
    localStringBuilder.append(" oldw:");
    localStringBuilder.append(paramInt3);
    localStringBuilder.append(" oldh:");
    localStringBuilder.append(paramInt4);
    localStringBuilder.append(" hashCode:");
    localStringBuilder.append(hashCode());
    z.a((String)localObject, localStringBuilder.toString());
    this.W0 = paramInt1;
    this.V0 = paramInt2;
    this.c2.setSize(paramInt1, paramInt2);
    this.d2.setSize(this.W0, this.V0);
    paramInt3 = getEffectiveWidth();
    paramInt4 = this.m1;
    this.y0 = ((paramInt3 - paramInt4 * 1) / paramInt4);
    b3 = paramInt1 / 7;
    localObject = new Paint();
    ((Paint)localObject).setTextSize(H3);
    this.f1 = ((int)Math.abs(((Paint)localObject).ascent()));
    ((Paint)localObject).setTextSize(J3);
    this.g1 = ((int)Math.abs(((Paint)localObject).ascent()));
    M1(paramInt1, paramInt2);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    this.l0 = ((int)paramMotionEvent.getX());
    this.m0 = ((int)paramMotionEvent.getY());
    int i5 = paramMotionEvent.getAction();
    Object localObject2;
    if (U2)
    {
      localObject1 = T2;
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("");
      ((StringBuilder)localObject2).append(i5);
      ((StringBuilder)localObject2).append(" ev.getPointerCount() = ");
      ((StringBuilder)localObject2).append(paramMotionEvent.getPointerCount());
      Log.e((String)localObject1, ((StringBuilder)localObject2).toString());
    }
    if ((this.M1 & 0x40) == 0)
    {
      this.L1.onTouchEvent(paramMotionEvent);
      if (this.L1.isInProgress())
      {
        t1();
        return true;
      }
    }
    if (i5 != 0)
    {
      if (i5 != 1)
      {
        if (i5 != 2)
        {
          if (i5 != 3)
          {
            if (U2)
            {
              localObject1 = T2;
              localObject2 = new StringBuilder();
              ((StringBuilder)localObject2).append("Not MotionEvent ");
              ((StringBuilder)localObject2).append(paramMotionEvent.toString());
              Log.e((String)localObject1, ((StringBuilder)localObject2).toString());
            }
            if (this.a2.onTouchEvent(paramMotionEvent)) {
              return true;
            }
            return super.onTouchEvent(paramMotionEvent);
          }
          if (U2) {
            Log.e(T2, "ACTION_CANCEL");
          }
          this.a2.onTouchEvent(paramMotionEvent);
          this.P1 = false;
          P1();
          return true;
        }
        if (U2)
        {
          localObject2 = T2;
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append("ACTION_MOVE Cnt=");
          ((StringBuilder)localObject1).append(paramMotionEvent.getPointerCount());
          ((StringBuilder)localObject1).append(this);
          Log.e((String)localObject2, ((StringBuilder)localObject1).toString());
        }
        this.a2.onTouchEvent(paramMotionEvent);
        this.S2.addMovement(paramMotionEvent);
        this.S2.computeCurrentVelocity(1000);
        this.p0 = this.S2.getXVelocity();
        this.q0 = this.S2.getYVelocity();
        if (this.Q1) {
          if (k1(this.m0 - this.o0) != 0)
          {
            if (!this.Q2) {
              this.P2.postDelayed(this.R2, 0L);
            }
            this.Q2 = true;
          }
          else
          {
            V1(this.l0, this.m0, false);
            if (this.Q2) {
              this.P2.removeCallbacks(this.R2);
            }
            this.Q2 = false;
          }
        }
        invalidate();
        return true;
      }
      if (U2)
      {
        localObject1 = T2;
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("ACTION_UP Cnt=");
        ((StringBuilder)localObject2).append(paramMotionEvent.getPointerCount());
        ((StringBuilder)localObject2).append(this.e1);
        Log.e((String)localObject1, ((StringBuilder)localObject2).toString());
      }
      float f5 = this.p0;
      float f6 = this.q0;
      f5 = (float)Math.sqrt(f5 * f5 + f6 * f6);
      this.c2.onRelease();
      this.d2.onRelease();
      this.b = false;
      this.a2.onTouchEvent(paramMotionEvent);
      if (!this.e1)
      {
        this.e1 = true;
        this.S0 = 0;
        invalidate();
        return true;
      }
      if (this.a)
      {
        this.S0 = 0;
        return true;
      }
      if (this.P1)
      {
        this.P1 = false;
        P1();
        invalidate();
      }
      if ((this.M1 & 0x40) != 0)
      {
        this.M1 = 0;
        if (Math.abs(this.S0) > b3)
        {
          if (U2) {
            Log.d(T2, "- horizontal scroll: switch views");
          }
          i5 = this.S0;
          boolean bool;
          if (i5 > 0) {
            bool = true;
          } else {
            bool = false;
          }
          a2(bool, i5, this.W0, 0.0F);
          this.S0 = 0;
          return true;
        }
        if (U2) {
          Log.d(T2, "- horizontal scroll: snap back");
        }
        K1();
        invalidate();
        this.S0 = 0;
      }
      this.P2.removeCallbacks(this.R2);
      invalidate();
      if (this.Q1) {
        if (this.R1)
        {
          v0(this.f, this.z.a);
          if (this.z.a.getEx().isSolarRepeating())
          {
            N0();
          }
          else
          {
            f2();
            this.q2 = true;
            this.d.post(this.h);
          }
        }
        else if (f5 < 1000.0F)
        {
          M0(getSelectedTimeInMillis() - 1800000L, 0L, false);
          g0.d("long_click_new_event");
        }
        else
        {
          this.q2 = true;
          this.d.post(this.h);
          this.Q1 = false;
        }
      }
      this.o0 = 0;
      return true;
    }
    this.n0 = ((int)paramMotionEvent.getY());
    Object localObject1 = this.S2;
    if (localObject1 == null)
    {
      this.S2 = VelocityTracker.obtain();
    }
    else
    {
      ((VelocityTracker)localObject1).clear();
      this.p0 = 0.0F;
      this.q0 = 0.0F;
    }
    this.S2.addMovement(paramMotionEvent);
    this.b = true;
    if (this.R1)
    {
      if (!e2())
      {
        t1();
        return true;
      }
      i5 = getTouchArea();
      this.N1 = i5;
      if (i5 != 0) {
        d2();
      }
    }
    if (U2)
    {
      localObject1 = T2;
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("ACTION_DOWN ev.getDownTime = ");
      ((StringBuilder)localObject2).append(paramMotionEvent.getDownTime());
      ((StringBuilder)localObject2).append(" Cnt=");
      ((StringBuilder)localObject2).append(paramMotionEvent.getPointerCount());
      Log.e((String)localObject1, ((StringBuilder)localObject2).toString());
    }
    int i6 = this.h1;
    i5 = B4;
    int i7 = m3;
    if (paramMotionEvent.getY() < i6 + i5 + i7) {
      this.Y1 = true;
    } else {
      this.Y1 = false;
    }
    this.e1 = true;
    this.a2.onTouchEvent(paramMotionEvent);
    return true;
  }
  
  protected AbsoluteSizeSpan p1(Paint paramPaint)
  {
    return new AbsoluteSizeSpan((int)paramPaint.getTextSize());
  }
  
  protected int q1(l paraml)
  {
    int i5;
    if (System.currentTimeMillis() > paraml.a.getEndTimeMillis()) {
      i5 = this.F;
    } else {
      i5 = this.G;
    }
    return i5;
  }
  
  long r1(int paramInt1, int paramInt2)
  {
    r0 localr0 = new r0(this.i);
    localr0.G(this.a0);
    localr0.F(paramInt1);
    localr0.H(paramInt2 * 60 / 4);
    return localr0.y(true);
  }
  
  public void s1()
  {
    v1();
    p4 = q4;
    this.u1 = DateFormat.is24HourFormat(this.f);
    this.r1 = getHourStrs();
    this.H0 = (Utils.C(this.f) - 1);
    this.v0 = 0;
    this.w0 = 0;
    this.x0 = null;
    t1();
    String str = T2;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("handleOnResume mIs24HourFormat:");
    localStringBuilder.append(this.u1);
    localStringBuilder.append(" mHourStrs:");
    localStringBuilder.append(this.r1);
    z.a(str, localStringBuilder.toString());
  }
  
  public void setAnimateDayEventHeight(int paramInt)
  {
    this.j1 = paramInt;
    this.L0 = true;
    invalidate();
  }
  
  public void setAnimateDayHeight(int paramInt)
  {
    this.i1 = paramInt;
    this.L0 = true;
    invalidate();
  }
  
  public void setEventsAlpha(int paramInt)
  {
    this.G = paramInt;
    invalidate();
  }
  
  public void setMoreAllDayEventsTextAlpha(int paramInt)
  {
    w4 = paramInt;
    invalidate();
  }
  
  public void setSelected(r0 paramr0)
  {
    this.i.E(paramr0);
    setSelectedHour(this.i.m());
    setSelectedEvent(null);
    this.z1 = null;
    setSelectedDay(r0.n(this.i.P(false), this.i.l()));
    this.v1.clear();
    this.w1 = true;
    K1();
    this.L0 = true;
    invalidate();
    T1(false);
  }
  
  protected void setupHourTextPaint(Paint paramPaint)
  {
    paramPaint.setColor(v4);
    paramPaint.setTextSize(H3);
    paramPaint.setFakeBoldText(false);
    paramPaint.setTextAlign(Paint.Align.CENTER);
    paramPaint.setTypeface(x0.D());
    paramPaint.setAntiAlias(true);
  }
  
  void t1()
  {
    setSelectionMode(0);
    this.o2 = false;
    this.Q1 = false;
    this.R1 = false;
    this.z = null;
    this.N1 = 0;
    this.S.clear();
    invalidate();
  }
  
  protected void u1(Context paramContext)
  {
    setFocusable(true);
    setFocusableInTouchMode(true);
    setClickable(true);
    setOnCreateContextMenuListener(this);
    this.H0 = (Utils.C(paramContext) - 1);
    this.j = new r0(Utils.U(paramContext));
    long l5 = System.currentTimeMillis();
    this.j.D(l5);
    this.l = r0.n(l5, this.j.l());
    i4 = this.B1.getColor(2131100980);
    j4 = this.B1.getColor(2131100981);
    k4 = this.B1.getColor(2131099782);
    q4 = this.B1.getColor(2131100060);
    r4 = this.B1.getColor(2131099789);
    s4 = this.B1.getDrawable(2131231454);
    l4 = this.B1.getColor(2131099781);
    m4 = this.B1.getColor(2131099868);
    n4 = this.B1.getColor(2131099786);
    o4 = this.B1.getColor(2131099787);
    v4 = this.B1.getColor(2131099790);
    g4 = this.B1.getColor(2131100866);
    h4 = this.B1.getColor(2131100679);
    X1();
    int i5 = this.B1.getColor(2131099785);
    Object localObject = this.F0;
    ((Paint)localObject).setColor(i5);
    ((Paint)localObject).setStyle(Paint.Style.FILL);
    ((Paint)localObject).setAntiAlias(false);
    localObject = this.D0;
    ((Paint)localObject).setAntiAlias(true);
    this.s1 = new String[14];
    this.t1 = new String[14];
    if (y.a()) {
      i5 = 50;
    } else {
      i5 = 20;
    }
    for (int i6 = 1; i6 <= 7; i6++)
    {
      int i7 = i6 - 1;
      this.s1[i7] = DateUtils.getDayOfWeekString(i6, i5).toUpperCase();
      String[] arrayOfString = this.s1;
      int i8 = i7 + 7;
      arrayOfString[i8] = arrayOfString[i7];
      this.t1[i7] = DateUtils.getDayOfWeekString(i6, 30).toUpperCase();
      if (this.t1[i7].equals(this.s1[i7])) {
        this.t1[i7] = DateUtils.getDayOfWeekString(i6, 50);
      }
      arrayOfString = this.t1;
      arrayOfString[i8] = arrayOfString[i7];
    }
    ((Paint)localObject).setTextSize(D3);
    ((Paint)localObject).setTypeface(this.n);
    ((Paint)localObject).setTextSize(A3);
    ((Paint)localObject).setTextSize(H3);
    ((Paint)localObject).setTypeface(null);
    s1();
    this.H1 = DateUtils.getAMPMString(0).toUpperCase();
    this.I1 = DateUtils.getAMPMString(1).toUpperCase();
    ((Paint)localObject).setTextSize(J3);
    localObject = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2131558493, null);
    this.J0 = ((View)localObject);
    ((View)localObject).setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
    localObject = new PopupWindow(paramContext);
    this.I0 = ((PopupWindow)localObject);
    ((PopupWindow)localObject).setContentView(this.J0);
    localObject = getResources().newTheme();
    ((Resources.Theme)localObject).applyStyle(16973835, true);
    localObject = ((Resources.Theme)localObject).obtainStyledAttributes(new int[] { 16842836 });
    this.I0.setBackgroundDrawable(((TypedArray)localObject).getDrawable(0));
    ((TypedArray)localObject).recycle();
    this.J0.setOnClickListener(this);
    setOnLongClickListener(this);
    this.i = new r0(Utils.U(paramContext));
    l5 = System.currentTimeMillis();
    this.i.D(l5);
    i5 = this.m1;
    this.r = new int[i5];
    this.v = new boolean[i5];
    this.G0 = new float[(i5 + 1 + 25) * 4];
  }
  
  public void w1()
  {
    int i5 = this.k1;
    if (i5 <= this.l1) {
      return;
    }
    if (E4) {
      this.j1 = (Math.min(this.V0 - B4 - l3, (int)(i5 * j3)) / this.k1);
    } else {
      this.j1 = ((int)j3);
    }
  }
  
  public void z0(int paramInt1, int paramInt2)
  {
    this.v2 = paramInt2;
    if (paramInt2 == 0) {
      this.x2 = false;
    }
    this.s2 = (paramInt1 - this.t2);
    invalidate();
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      l0 locall0 = l0.this;
      l0.p(locall0, l0.z(locall0));
      l0.B(l0.this, null);
      l0.this.invalidate();
    }
  }
  
  class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      if (l0.n(l0.this) != null)
      {
        l0 locall0 = l0.this;
        Context localContext = locall0.f;
        Event localEvent = l0.n(locall0).a;
        locall0 = l0.this;
        Utils.O0(localContext, localEvent, locall0.R, s0.d(locall0.a0, TimeZone.getTimeZone(Utils.U(locall0.f))));
      }
      l0.p(l0.this, null);
      l0.this.invalidate();
      if (l0.this.f.getResources().getConfiguration().orientation != 1) {
        g.c(new g.s0(1));
      }
    }
  }
  
  class c
    extends AnimatorListenerAdapter
  {
    c() {}
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      l0.O(l0.this, false);
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      l0.O(l0.this, false);
      l0.a0(l0.this);
      l0.this.invalidate();
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      l0.O(l0.this, true);
    }
  }
  
  class d
    implements b.a
  {
    d() {}
    
    public void a(List<Event> paramList)
    {
      Object localObject = l0.this;
      int i;
      if (((l0)localObject).o != l0.q0((l0)localObject)) {
        i = 1;
      } else {
        i = 0;
      }
      l0.this.R.clear();
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext())
        {
          localObject = (Event)localIterator.next();
          paramList = new l0.l();
          paramList.a = ((Event)localObject);
          l0.this.R.add(paramList);
        }
      }
      l0.b(l0.this);
      paramList = l0.this;
      l0.r0(paramList, paramList.o);
      if ((l0.c(l0.this) != null) && (l0.c(l0.this).length >= l0.this.R.size()))
      {
        Arrays.fill(l0.c(l0.this), null);
      }
      else
      {
        paramList = l0.this;
        l0.d(paramList, new StaticLayout[paramList.R.size()]);
      }
      l0.e(l0.this);
      paramList = l0.this;
      paramList.L0 = true;
      l0.f(paramList, true);
      l0.g(l0.this);
      if (i != 0)
      {
        if (l0.h(l0.this) == null)
        {
          paramList = l0.this;
          l0.i(paramList, ObjectAnimator.ofInt(paramList, "EventsAlpha", new int[] { 0, 255 }));
          l0.h(l0.this).setDuration(400L);
        }
        l0.h(l0.this).start();
      }
      else
      {
        l0.this.invalidate();
      }
    }
  }
  
  class e
    extends AnimatorListenerAdapter
  {
    e() {}
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      if (!l0.w(l0.this))
      {
        l0.x(l0.this, 0);
        l0.y(l0.A() ^ true);
      }
      paramAnimator = l0.this;
      paramAnimator.L0 = true;
      paramAnimator.invalidate();
    }
  }
  
  class f
    implements Runnable
  {
    f() {}
    
    public void run()
    {
      l0 locall0 = l0.this;
      l0.F(locall0, l0.E(locall0, l0.C(locall0) - l0.D(l0.this)));
      l0.this.invalidate();
      l0.this.P2.postDelayed(this, 20L);
    }
  }
  
  class g
    implements DialogInterface.OnClickListener
  {
    g(boolean paramBoolean) {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      int i = 3;
      if (paramInt == 0)
      {
        paramDialogInterface = l0.this;
        if (!bool1) {
          i = 1;
        }
        l0.H(paramDialogInterface, i);
        if (l0.G(l0.this) == 1)
        {
          localObject = l0.I(l0.this).getEx();
          if (bool1) {
            paramDialogInterface = null;
          } else {
            paramDialogInterface = l0.I(l0.this).getEx().getSyncId();
          }
          ((EventEx)localObject).setOriginalSyncId(paramDialogInterface);
          l0.I(l0.this).getEx().setOriginalId(l0.I(l0.this).getId());
          paramDialogInterface = l0.this;
          long l1 = paramDialogInterface.r1(paramDialogInterface.d0, paramDialogInterface.f0);
          paramDialogInterface = l0.this;
          long l2 = paramDialogInterface.r1(paramDialogInterface.e0, paramDialogInterface.g0);
          l0.I(l0.this).getEx().setStart(l1);
          l0.I(l0.this).getEx().setEnd(l2);
          l0.I(l0.this).getEx().setOriginalStart(l0.J(l0.this).a.getStartTimeMillis());
        }
      }
      else if (paramInt == 1)
      {
        paramDialogInterface = l0.this;
        if (bool1) {
          i = 2;
        }
        l0.H(paramDialogInterface, i);
      }
      else if (paramInt == 2)
      {
        l0.H(l0.this, 2);
      }
      paramDialogInterface = l0.K();
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("displayEditWhichDialog(): mModification = ");
      ((StringBuilder)localObject).append(l0.G(l0.this));
      z.a(paramDialogInterface, ((StringBuilder)localObject).toString());
      l0.L(l0.this);
      l0.u(l0.this, true);
      l0.v(l0.this).post(l0.N(l0.this));
    }
  }
  
  class h
    implements DialogInterface.OnCancelListener
  {
    h() {}
    
    public void onCancel(DialogInterface paramDialogInterface)
    {
      l0.this.t1();
    }
  }
  
  static class i
    extends GestureDetector.SimpleOnGestureListener
  {
    private WeakReference<l0> a;
    
    public i(l0 paraml0)
    {
      this.a = new WeakReference(paraml0);
    }
    
    public boolean onDown(MotionEvent paramMotionEvent)
    {
      l0 locall0 = (l0)this.a.get();
      if (locall0 == null) {
        return false;
      }
      if (l0.d0()) {
        Log.e(l0.K(), "GestureDetector.onDown");
      }
      l0.k0(locall0, paramMotionEvent);
      return true;
    }
    
    public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
    {
      l0 locall0 = (l0)this.a.get();
      if ((locall0 != null) && (!l0.k(locall0)))
      {
        if (l0.d0()) {
          Log.e(l0.K(), "GestureDetector.onFling");
        }
        float f = paramFloat2;
        if (l0.h0(locall0))
        {
          if (Math.abs(paramFloat1) < Math.abs(paramFloat2)) {
            return false;
          }
          f = 0.0F;
        }
        l0.j0(locall0, paramMotionEvent1, paramMotionEvent2, paramFloat1, f);
      }
      return true;
    }
    
    public void onLongPress(MotionEvent paramMotionEvent)
    {
      l0 locall0 = (l0)this.a.get();
      if ((locall0 != null) && (!l0.k(locall0)))
      {
        if (l0.d0()) {
          Log.e(l0.K(), "GestureDetector.onLongPress");
        }
        l0.f0(locall0, paramMotionEvent);
      }
    }
    
    public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
    {
      l0 locall0 = (l0)this.a.get();
      if ((locall0 != null) && (!l0.k(locall0)))
      {
        if (l0.d0()) {
          Log.e(l0.K(), "GestureDetector.onScroll");
        }
        l0.g0(locall0);
        float f = paramFloat2;
        if (l0.h0(locall0))
        {
          if (Math.abs(paramFloat1) < Math.abs(paramFloat2))
          {
            locall0.invalidate();
            return false;
          }
          f = 0.0F;
        }
        l0.i0(locall0, paramMotionEvent1, paramMotionEvent2, paramFloat1, f);
      }
      return true;
    }
    
    public boolean onSingleTapUp(MotionEvent paramMotionEvent)
    {
      if (l0.d0()) {
        Log.e(l0.K(), "GestureDetector.onSingleTapUp");
      }
      l0 locall0 = (l0)this.a.get();
      if (locall0 == null) {
        return false;
      }
      l0.e0(locall0, paramMotionEvent);
      return true;
    }
  }
  
  private class j
    implements MenuItem.OnMenuItemClickListener
  {
    private j() {}
    
    public boolean onMenuItemClick(MenuItem paramMenuItem)
    {
      int i = paramMenuItem.getItemId();
      if (i != 3)
      {
        if (i != 5)
        {
          long l2;
          if (i != 6)
          {
            if (i != 7)
            {
              if (i != 8) {
                return false;
              }
              if (l0.P(l0.this) == null) {
                break label260;
              }
              paramMenuItem = l0.P(l0.this).a;
              long l1 = paramMenuItem.getStartTimeMillis();
              l2 = paramMenuItem.getEndTimeMillis();
              long l3 = paramMenuItem.getId();
              new com.android.calendar.event.b(l0.this.f, null, false).s(l1, l2, l3, -1);
              break label260;
            }
          }
          else
          {
            l2 = l0.this.getSelectedTimeInMillis();
            l0.Q(l0.this, l2, 3600000L + l2, false);
            break label260;
          }
        }
        if (l0.P(l0.this) != null)
        {
          paramMenuItem = l0.this;
          Utils.F0(paramMenuItem.f, l0.P(paramMenuItem).a.getId(), l0.P(l0.this).a.getStartTimeMillis(), l0.P(l0.this).a.getEndTimeMillis());
        }
      }
      else
      {
        g.c(new g.m(2, Utils.t(l0.this.getContext())));
        paramMenuItem = l0.this;
        paramMenuItem = s0.d(paramMenuItem.a0, TimeZone.getTimeZone(paramMenuItem.i.s()));
        paramMenuItem.set(11, l0.this.b0);
        g.c(new g.a0(paramMenuItem));
      }
      label260:
      return true;
    }
  }
  
  private class k
    implements Runnable
  {
    private k() {}
    
    public void run()
    {
      l0 locall0 = l0.this;
      boolean bool;
      if ((l0.M(locall0)) && (l0.R(l0.this).computeScrollOffset())) {
        bool = true;
      } else {
        bool = false;
      }
      l0.O(locall0, bool);
      if (l0.M(l0.this))
      {
        locall0 = l0.this;
        if (!locall0.c)
        {
          locall0.T0 = l0.R(locall0).getCurrY();
          if (l0.S(l0.this))
          {
            locall0 = l0.this;
            int i = locall0.T0;
            if (i < 0)
            {
              l0.W(locall0).onAbsorb((int)l0.U(l0.this));
              l0.T(l0.this, false);
            }
            else if (i > l0.X(locall0))
            {
              l0.Y(l0.this).onAbsorb((int)l0.U(l0.this));
              l0.T(l0.this, false);
            }
            locall0 = l0.this;
            l0.V(locall0, l0.R(locall0).getCurrVelocity());
          }
          l0.Z(l0.this);
          l0.v(l0.this).post(this);
          l0.this.invalidate();
          return;
        }
      }
      l0.a0(l0.this);
      l0.this.invalidate();
    }
  }
  
  public static class l
  {
    public Event a;
    public float b;
    public float c;
    public float d;
    public float e;
    public int f;
    public int g;
    public l h;
    public l i;
    public l j;
    public l k;
  }
  
  class m
    implements Runnable
  {
    m() {}
    
    public void run()
    {
      if (l0.b0(l0.this) != null) {
        l0.b0(l0.this).dismiss();
      }
    }
  }
  
  public static class n
    implements Animation.AnimationListener
  {
    private final int a = l0.o0();
    private final r0 b;
    private final long c;
    private ViewSwitcher d;
    
    public n(r0 paramr0, long paramLong, ViewSwitcher paramViewSwitcher)
    {
      this.b = paramr0;
      this.c = paramLong;
      this.d = paramViewSwitcher;
    }
    
    public void onAnimationEnd(Animation paramAnimation)
    {
      l0.p0((l0)this.d.getCurrentView(), 0);
      l0.p0((l0)this.d.getNextView(), 0);
      g.c(new g.x0());
    }
    
    public void onAnimationRepeat(Animation paramAnimation) {}
    
    public void onAnimationStart(Animation paramAnimation)
    {
      if (this.a == l0.n0())
      {
        paramAnimation = Calendar.getInstance();
        paramAnimation.setTimeInMillis(this.b.P(true));
        g.c(new g.a0(k.a(paramAnimation)).c((int)this.c));
      }
    }
  }
  
  private class o
    implements Runnable
  {
    private o() {}
    
    public void run()
    {
      if (!l0.j(l0.this).f())
      {
        if (l0.k(l0.this))
        {
          l0 locall0 = l0.this;
          l0.l(locall0, l0.m(locall0));
          locall0 = l0.this;
          l0.o(locall0, l0.q(locall0));
          l0.r(l0.this);
        }
        else
        {
          l0.s(l0.this, 0);
        }
        l0.t(l0.this, false);
        l0.u(l0.this, false);
        l0.this.invalidate();
        return;
      }
      l0.v(l0.this).post(this);
      l0.this.invalidate();
    }
  }
  
  private class p
    implements Interpolator
  {
    public p() {}
    
    public float getInterpolation(float paramFloat)
    {
      paramFloat -= 1.0F;
      paramFloat = paramFloat * paramFloat * paramFloat * paramFloat * paramFloat + 1.0F;
      if ((1.0F - paramFloat) * l0.l0(l0.this) < 1.0F) {
        l0.m0(l0.this);
      }
      return paramFloat;
    }
  }
  
  class q
    implements Runnable
  {
    q() {}
    
    public void run()
    {
      long l = System.currentTimeMillis();
      l0.this.j.D(l);
      l0 locall0 = l0.this;
      if (!locall0.c) {
        l0.v(locall0).postDelayed(l0.c0(l0.this), 300000L - l % 300000L);
      }
      locall0 = l0.this;
      locall0.l = r0.n(l, locall0.j.l());
      l0.this.invalidate();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.l0
 * JD-Core Version:    0.7.0.1
 */