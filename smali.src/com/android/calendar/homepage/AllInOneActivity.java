package com.android.calendar.homepage;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.pm.ShortcutManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.BaseBundle;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.MessageQueue;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLayoutChangeListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.Utils;
import com.android.calendar.common.b;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.m.b;
import com.android.calendar.datecalculate.DateCalculateInfoActivity;
import com.android.calendar.event.EditEventActivity;
import com.android.calendar.settings.CalendarActionbarSettingsActivity;
import com.android.calendar.widget.MonthWidgetProvider;
import com.miui.calendar.detail.SubscribeGroupActivity;
import com.miui.calendar.search.SearchDetailsActivity;
import com.miui.calendar.util.DaysOffUtils;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.f0;
import com.miui.calendar.util.g;
import com.miui.calendar.util.g.a;
import com.miui.calendar.util.g.a0;
import com.miui.calendar.util.g.b;
import com.miui.calendar.util.g.b0;
import com.miui.calendar.util.g.c;
import com.miui.calendar.util.g.c0;
import com.miui.calendar.util.g.d;
import com.miui.calendar.util.g.d0;
import com.miui.calendar.util.g.e;
import com.miui.calendar.util.g.e0;
import com.miui.calendar.util.g.f;
import com.miui.calendar.util.g.f0;
import com.miui.calendar.util.g.g;
import com.miui.calendar.util.g.g0;
import com.miui.calendar.util.g.h;
import com.miui.calendar.util.g.h0;
import com.miui.calendar.util.g.i;
import com.miui.calendar.util.g.i0;
import com.miui.calendar.util.g.j0;
import com.miui.calendar.util.g.k;
import com.miui.calendar.util.g.k0;
import com.miui.calendar.util.g.l;
import com.miui.calendar.util.g.l0;
import com.miui.calendar.util.g.m;
import com.miui.calendar.util.g.n;
import com.miui.calendar.util.g.o;
import com.miui.calendar.util.g.q;
import com.miui.calendar.util.g.q0;
import com.miui.calendar.util.g.r0;
import com.miui.calendar.util.g.s0;
import com.miui.calendar.util.g.u;
import com.miui.calendar.util.g.u0;
import com.miui.calendar.util.g.v0;
import com.miui.calendar.util.g.w0;
import com.miui.calendar.util.g.x0;
import com.miui.calendar.util.g.y;
import com.miui.calendar.util.g.z;
import com.miui.calendar.util.o0;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z0;
import com.miui.calendar.util.z0.h;
import com.miui.calendar.view.MainPanelMotionContainer;
import com.miui.calendar.view.MonthMotionContainer;
import com.miui.calendar.view.OnlineImageView;
import com.miui.calendar.view.VerticalMotionFrameLayout;
import h4.c.d;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.TimeZone;
import miuix.animation.ITouchStyle;
import miuix.animation.ITouchStyle.TouchType;
import miuix.view.HapticCompat;
import miuix.view.f;
import org.greenrobot.eventbus.ThreadMode;

public class AllInOneActivity
  extends b
  implements SharedPreferences.OnSharedPreferenceChangeListener, View.OnClickListener, m.b
{
  private static final boolean K = ;
  private h D;
  private boolean E = false;
  private int F = 0;
  private h4.c G;
  private final Runnable H = new a();
  private final ContentObserver I = new k(new Handler(), this);
  BroadcastReceiver J;
  private com.android.calendar.common.e b;
  private t0 c;
  private y0 d;
  private boolean e = false;
  private int f;
  private boolean g = true;
  private boolean h = false;
  private String i;
  private Calendar j;
  private long k = -1L;
  private int l = -1;
  private long m = -1L;
  private long n = -1L;
  private int o = 0;
  private boolean p = false;
  private Handler q = new Handler();
  private n r;
  int v;
  private int w;
  private com.android.calendar.common.m x;
  private long y = 0L;
  private long z = 0L;
  
  /* Error */
  private void A1(MenuItem paramMenuItem)
  {
    // Byte code:
    //   0: ldc 146
    //   2: ldc 148
    //   4: invokestatic 154	com/miui/calendar/util/z:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   7: ldc 156
    //   9: invokestatic 162	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   12: astore_2
    //   13: new 164	android/os/Bundle
    //   16: astore_3
    //   17: aload_3
    //   18: invokespecial 165	android/os/Bundle:<init>	()V
    //   21: aload_3
    //   22: ldc 167
    //   24: aload_0
    //   25: invokevirtual 173	android/content/Context:getPackageName	()Ljava/lang/String;
    //   28: invokevirtual 178	android/os/BaseBundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   31: aload_3
    //   32: ldc 180
    //   34: ldc 2
    //   36: invokevirtual 185	java/lang/Class:getName	()Ljava/lang/String;
    //   39: invokevirtual 178	android/os/BaseBundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   42: aload_3
    //   43: ldc 187
    //   45: ldc 189
    //   47: invokevirtual 178	android/os/BaseBundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   50: aload_0
    //   51: invokevirtual 193	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   54: aload_2
    //   55: ldc 195
    //   57: aconst_null
    //   58: aload_3
    //   59: invokevirtual 201	android/content/ContentResolver:call	(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    //   62: pop
    //   63: aload_1
    //   64: iconst_0
    //   65: invokeinterface 207 2 0
    //   70: pop
    //   71: goto +12 -> 83
    //   74: astore_1
    //   75: ldc 146
    //   77: ldc 209
    //   79: aload_1
    //   80: invokestatic 212	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   83: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	this	AllInOneActivity
    //   0	84	1	paramMenuItem	MenuItem
    //   12	43	2	localUri	Uri
    //   16	43	3	localBundle	Bundle
    // Exception table:
    //   from	to	target	type
    //   0	71	74	finally
  }
  
  private void B1(Intent paramIntent)
  {
    if ((paramIntent != null) && (paramIntent.getBooleanExtra("START_BY_WIDGET", false)))
    {
      paramIntent = new Intent("android.intent.action.PROVIDER_CHANGED");
      paramIntent.setClass(this, MonthWidgetProvider.class);
      com.miui.calendar.util.z.a("Cal:D:AllInOne", "sendWidgetBroadcastIfNeeded():send broadcast to reset widget");
      sendBroadcast(paramIntent);
    }
  }
  
  private boolean C1(int paramInt, long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("setMainPanel() ,viewType=");
    ((StringBuilder)localObject).append(paramInt);
    ((StringBuilder)localObject).append(",timeMillis=");
    ((StringBuilder)localObject).append(paramLong);
    ((StringBuilder)localObject).append(",force=");
    ((StringBuilder)localObject).append(paramBoolean1);
    com.miui.calendar.util.z.a("Cal:D:AllInOne", ((StringBuilder)localObject).toString());
    this.f = paramInt;
    if (paramBoolean2) {
      Utils.b1(this, Utils.t(this));
    }
    Utils.g1(this, this.f);
    int i1 = paramInt;
    if (paramInt == -1) {
      i1 = Utils.t(this);
    }
    paramBoolean1 = false;
    com.miui.calendar.util.g0.f("view_type", new String[] { "type", String.valueOf(i1) });
    if (i1 != 5)
    {
      this.D.K.K(i1);
      this.D.K.H();
    }
    this.D.B.g();
    this.b.y(i1, Utils.W());
    if ((i1 != 3) && (this.v != 1)) {
      W(1);
    }
    t0 localt0 = this.c;
    localObject = Utils.V();
    if (this.f == 3) {
      paramBoolean1 = true;
    }
    localt0.S((Calendar)localObject, paramBoolean1);
    this.c.N(this.f);
    this.D.K.post(new o(this));
    x1();
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Adding handler with type ");
    ((StringBuilder)localObject).append(i1);
    com.miui.calendar.util.z.a("Cal:D:AllInOne", ((StringBuilder)localObject).toString());
    return true;
  }
  
  private void D1()
  {
    if (!z0.l(this)) {
      return;
    }
    if ((!z0.m()) && (!z0.i(this)))
    {
      localView = findViewById(2131363521);
      if (localView != null) {
        localView.setVisibility(0);
      }
      z0.B(this);
      return;
    }
    View localView = findViewById(2131363521);
    if (localView != null) {
      localView.setVisibility(8);
    }
  }
  
  private void F1()
  {
    com.miui.calendar.util.z.a("Cal:D:AllInOne", "startLocalTask()");
    new j(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
  }
  
  private void G1()
  {
    if (!g4.a.c(this)) {
      return;
    }
    z3.j.f(this);
  }
  
  private void H0()
  {
    Object localObject = this.D;
    if (localObject != null)
    {
      localObject = ((h)localObject).h;
      if (localObject != null)
      {
        localObject = miuix.animation.a.y(new View[] { localObject });
        this.D.h.setOnTouchListener(new c((miuix.animation.d)localObject));
      }
    }
  }
  
  private void H1(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 3)
    {
      t0 localt0 = this.c;
      boolean bool;
      if (paramInt1 == 1) {
        bool = true;
      } else {
        bool = false;
      }
      localt0.M(bool);
      if (paramInt1 != 0) {
        if (paramInt1 != 90)
        {
          if (paramInt1 != 180)
          {
            if (paramInt1 != 270) {
              return;
            }
            com.miui.calendar.util.z.a("Cal:D:AllInOne", "onOrientationChanged turn to reverse landscape.");
            W(8);
            return;
          }
        }
        else
        {
          com.miui.calendar.util.z.a("Cal:D:AllInOne", "onOrientationChanged turn to landscape.");
          W(0);
          return;
        }
      }
      W(1);
    }
    else
    {
      W(1);
    }
  }
  
  private void I0(ActivityOptions paramActivityOptions)
  {
    if (paramActivityOptions == null) {
      Utils.j(this, M0());
    } else {
      Utils.k(this, M0(), paramActivityOptions);
    }
    com.miui.calendar.util.g0.d("click_new_event_button");
    this.q.post(new y(this));
  }
  
  private void I1(int paramInt, boolean paramBoolean)
  {
    t0.p(this).E(false);
    this.D.K.m();
    this.d.d(this, paramInt, paramBoolean);
    g.c(new g.d());
    this.D.K.postDelayed(new e(), 500L);
  }
  
  private void J0()
  {
    Object localObject1 = new r0(this.i);
    ((r0)localObject1).D(Utils.W());
    Object localObject2 = new f();
    int i1 = ((r0)localObject1).v();
    int i2 = ((r0)localObject1).p();
    int i3 = ((r0)localObject1).q();
    localObject1 = this.G;
    if (localObject1 != null) {
      ((miuix.appcompat.app.l)localObject1).dismiss();
    }
    localObject2 = new h4.c(this, (c.d)localObject2, this.F, i1, i2, i3);
    this.G = ((h4.c)localObject2);
    i1 = this.F;
    boolean bool = true;
    if (i1 != 1) {
      bool = false;
    }
    ((h4.c)localObject2).F(bool);
    this.G.setTitle(2131887415);
    this.G.show();
  }
  
  private void J1(boolean paramBoolean)
  {
    I1(-1, paramBoolean);
  }
  
  private void K0()
  {
    n localn = this.r;
    if (localn != null)
    {
      localn.cancel(true);
      this.r = null;
    }
    localn = new n(this);
    this.r = localn;
    localn.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
  }
  
  private void K1(int paramInt)
  {
    if (this.c.t())
    {
      this.c.J(new w(this, paramInt), true);
      return;
    }
    X0();
    t0.p(this).E(true);
    this.d.e(this, paramInt);
  }
  
  private int L0(String paramString)
  {
    paramString.hashCode();
    switch (paramString.hashCode())
    {
    }
    do
    {
      do
      {
        do
        {
          do
          {
            i1 = -1;
            break;
          } while (!paramString.equals("month"));
          i1 = 3;
          break;
        } while (!paramString.equals("year"));
        i1 = 2;
        break;
      } while (!paramString.equals("week"));
      i1 = 1;
      break;
    } while (!paramString.equals("day"));
    int i1 = 0;
    switch (i1)
    {
    default: 
      return -1;
    case 3: 
      return 2;
    case 2: 
      return 1;
    case 1: 
      return 3;
    }
    return 6;
  }
  
  private void L1()
  {
    String str = Utils.U(this);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("TimezoneUpdate: ");
    localStringBuilder.append(Utils.X().getTimeZone());
    localStringBuilder.append(" --> ");
    localStringBuilder.append(str);
    com.miui.calendar.util.z.a("Cal:D:AllInOne", localStringBuilder.toString());
    TimeZone.setDefault(TimeZone.getTimeZone(str));
    Utils.X().setTimeZone(TimeZone.getTimeZone(str));
    Utils.V().setTimeZone(TimeZone.getTimeZone(str));
  }
  
  private Calendar M0()
  {
    if ((Utils.t(this) == 3) || (Utils.t(this) == 2))
    {
      Calendar localCalendar = this.j;
      if (localCalendar != null) {
        return localCalendar;
      }
    }
    return Utils.L();
  }
  
  private void N0()
  {
    com.miui.calendar.util.k.b(CalendarApplication.e(), new i(this));
  }
  
  private long O0(int paramInt1, int paramInt2)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.add(paramInt2, paramInt1);
    return localCalendar.getTimeInMillis();
  }
  
  private void P0()
  {
    com.miui.calendar.util.v.e(this.D.j);
    com.miui.calendar.util.v.e(this.D.l);
    Object localObject1 = miuix.animation.a.y(new View[] { this.D.x }).d();
    Object localObject2 = ITouchStyle.TouchType.DOWN;
    localObject2 = ((ITouchStyle)localObject1).z(0.6F, new ITouchStyle.TouchType[] { localObject2 }).O(1.0F, new ITouchStyle.TouchType[] { localObject2 });
    localObject1 = ITouchStyle.TouchType.UP;
    ((ITouchStyle)localObject2).z(1.0F, new ITouchStyle.TouchType[] { localObject1 }).O(1.0F, new ITouchStyle.TouchType[] { localObject1 }).P(this.D.x, new d9.a[0]);
    this.D.x.setOnClickListener(new b());
    H0();
    localObject1 = com.android.calendar.common.e.g(this);
    this.b = ((com.android.calendar.common.e)localObject1);
    ((com.android.calendar.common.e)localObject1).d(this.D);
    getWindow().getDecorView().addOnLayoutChangeListener(new l(this));
    t0.o();
    localObject1 = t0.p(this);
    this.c = ((t0)localObject1);
    ((t0)localObject1).m(this.D);
    this.c.M(DeviceUtils.O(this));
  }
  
  private void Q0()
  {
    this.x = new com.android.calendar.common.m(this);
  }
  
  private void R0(long paramLong)
  {
    this.i = Utils.U(this);
    Utils.f1(System.currentTimeMillis());
    Utils.e1(paramLong);
    Utils.X().setTimeZone(TimeZone.getTimeZone(this.i));
    Utils.V().setTimeZone(TimeZone.getTimeZone(this.i));
    Utils.H().setTimeZone(TimeZone.getTimeZone(this.i));
  }
  
  private long S0(Bundle paramBundle, Intent paramIntent, int paramInt)
  {
    long l1;
    if (paramBundle != null) {
      l1 = paramBundle.getLong("key_timestamp", -1L);
    } else {
      l1 = s1(paramIntent, paramInt);
    }
    long l2 = l1;
    if (l1 == -1L) {
      l2 = Utils.l1(paramIntent);
    }
    return l2;
  }
  
  private void T0(Resources paramResources)
  {
    this.D = new h(this);
    P0();
    this.D.K.post(new n(this, paramResources));
  }
  
  private int U0(Bundle paramBundle, Intent paramIntent)
  {
    if (paramBundle != null) {
      i1 = paramBundle.getInt("key_restore_view", -1);
    } else {
      i1 = -1;
    }
    int i2 = i1;
    if (i1 == -1) {
      i2 = Utils.t(this);
    }
    int i1 = i2;
    if (i2 == 0) {
      i1 = 4;
    }
    return t1(paramIntent, i1);
  }
  
  private void V0(long paramLong, int paramInt, boolean paramBoolean)
  {
    if (paramInt == 0)
    {
      com.miui.calendar.util.z.a("Cal:D:AllInOne", "initViews() viewType=0, return false");
      return;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Initializing to ");
    ((StringBuilder)localObject).append(paramLong);
    ((StringBuilder)localObject).append(" for view ");
    ((StringBuilder)localObject).append(paramInt);
    com.miui.calendar.util.z.a("Cal:D:AllInOne", ((StringBuilder)localObject).toString());
    localObject = getIntent();
    boolean bool1 = true;
    boolean bool2;
    if ((localObject != null) && (!TextUtils.isEmpty(((Intent)localObject).getAction())) && (((Intent)localObject).getAction().equals("android.intent.action.SEARCH"))) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    if ((localObject == null) || (!((Intent)localObject).getBooleanExtra("key_collapse_panel", false)) || (paramInt != 4)) {
      bool1 = false;
    }
    onEventMainThread(new g.m(paramInt, Utils.t(this)).b(paramBoolean).c(bool2).a(bool1));
  }
  
  private void W0()
  {
    this.D.y.setOnClickListener(this);
    this.D.o.setOnClickListener(this);
    this.D.l.setOnClickListener(this);
    this.D.j.setOnClickListener(this);
    this.D.h.setOnClickListener(this);
    this.D.h.setOnLongClickListener(new p(this));
    this.D.o.setOnTouchListener(new q(this));
  }
  
  private void X0()
  {
    Object localObject = this.D;
    if (((h)localObject).M == null)
    {
      localObject = h.f((h)localObject).inflate();
      this.D.M = ((YearFrameLayout)((View)localObject).findViewById(2131363599));
      this.D.M.setOnMonthClickListener(new z(this));
      localObject = this.D;
      this.d = new y0(((h)localObject).K, ((h)localObject).M);
    }
  }
  
  private void Y0(int paramInt1, int paramInt2, int paramInt3)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(paramInt1, paramInt2, paramInt3);
    g.c(new g.a0(localCalendar));
  }
  
  private void Z0()
  {
    Intent localIntent = new Intent(this, SubscribeGroupActivity.class);
    localIntent.putExtra("from", "首页右上角弹窗");
    startActivity(localIntent);
  }
  
  private boolean q1(g.a0 parama0)
  {
    boolean bool1 = parama0.c;
    boolean bool2 = false;
    if ((bool1) && (!t0.p(this).u()) && (this.f != 3))
    {
      if (s0.u(Utils.V(), Calendar.getInstance())) {}
      for (;;)
      {
        bool1 = true;
        break label78;
        if (!s0.u(parama0.a, Calendar.getInstance())) {
          break;
        }
        this.b.t = parama0.g;
      }
    }
    bool1 = false;
    label78:
    int i1 = Utils.t(this);
    if ((parama0.h) && ((i1 == 6) || (i1 == 4)))
    {
      this.b.t = true;
      bool1 = bool2;
    }
    return bool1;
  }
  
  private void r1()
  {
    G1();
    N0();
    g4.a.f(this);
  }
  
  private long s1(Intent paramIntent, int paramInt)
  {
    long l1 = -1L;
    long l2 = l1;
    if (paramIntent != null) {
      if (TextUtils.isEmpty(paramIntent.getAction()))
      {
        l2 = l1;
      }
      else
      {
        String str = paramIntent.getAction();
        str.hashCode();
        if (!str.equals("android.intent.action.VIEW"))
        {
          if (!str.equals("com.android.calendar.main.views"))
          {
            l2 = l1;
          }
          else if (paramIntent.getData() == null)
          {
            l2 = l1;
          }
          else
          {
            paramIntent = paramIntent.getData().getPathSegments();
            l2 = l1;
            if (paramIntent.size() >= 2) {
              if (paramIntent.size() > 4)
              {
                l2 = l1;
              }
              else
              {
                l2 = l1;
                if (paramInt >= 1) {
                  if (paramInt > 5)
                  {
                    l2 = l1;
                  }
                  else
                  {
                    int i1 = 0;
                    paramInt = -1;
                    try
                    {
                      if (paramIntent.size() == 4)
                      {
                        paramInt = L0((String)paramIntent.get(2));
                        i1 = Integer.parseInt((String)paramIntent.get(3));
                      }
                      l2 = l1;
                      if (paramInt <= 0) {
                        break label218;
                      }
                      l2 = O0(i1, paramInt);
                    }
                    catch (NumberFormatException paramIntent)
                    {
                      paramIntent.printStackTrace();
                      l2 = l1;
                    }
                  }
                }
              }
            }
          }
        }
        else {
          l2 = u1(paramIntent);
        }
      }
    }
    label218:
    return l2;
  }
  
  private int t1(Intent paramIntent, int paramInt)
  {
    int i1 = paramInt;
    if (paramIntent != null) {
      if (TextUtils.isEmpty(paramIntent.getAction()))
      {
        i1 = paramInt;
      }
      else
      {
        String str = paramIntent.getAction();
        str.hashCode();
        if (!str.equals("com.android.calendar.main.views"))
        {
          if (!str.equals("android.intent.action.SEARCH")) {
            i1 = paramInt;
          } else {
            i1 = 1;
          }
        }
        else if (paramIntent.getData() == null)
        {
          i1 = paramInt;
        }
        else
        {
          paramIntent = paramIntent.getData().getPathSegments();
          i1 = paramInt;
          if (paramIntent.size() >= 2) {
            if (paramIntent.size() > 4)
            {
              i1 = paramInt;
            }
            else
            {
              paramIntent = (String)paramIntent.get(1);
              if (TextUtils.isEmpty(paramIntent)) {
                i1 = paramInt;
              } else {
                try
                {
                  i1 = Integer.parseInt(paramIntent);
                }
                catch (NumberFormatException paramIntent)
                {
                  paramIntent.printStackTrace();
                  i1 = paramInt;
                }
              }
            }
          }
        }
      }
    }
    return i1;
  }
  
  /* Error */
  private long u1(Intent paramIntent)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 1203	android/content/Intent:getData	()Landroid/net/Uri;
    //   4: astore_2
    //   5: ldc2_w 104
    //   8: lstore_3
    //   9: lload_3
    //   10: lstore 5
    //   12: aload_2
    //   13: ifnull +160 -> 173
    //   16: lload_3
    //   17: lstore 5
    //   19: aload_2
    //   20: invokevirtual 1236	android/net/Uri:isHierarchical	()Z
    //   23: ifeq +150 -> 173
    //   26: aload_2
    //   27: invokevirtual 1207	android/net/Uri:getPathSegments	()Ljava/util/List;
    //   30: astore 7
    //   32: lload_3
    //   33: lstore 5
    //   35: aload 7
    //   37: ifnull +136 -> 173
    //   40: lload_3
    //   41: lstore 5
    //   43: aload 7
    //   45: invokeinterface 1212 1 0
    //   50: iconst_2
    //   51: if_icmpne +122 -> 173
    //   54: lload_3
    //   55: lstore 5
    //   57: aload 7
    //   59: iconst_0
    //   60: invokeinterface 1215 2 0
    //   65: checkcast 290	java/lang/String
    //   68: ldc_w 1238
    //   71: invokevirtual 573	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   74: ifeq +99 -> 173
    //   77: aload_2
    //   78: invokevirtual 1241	android/net/Uri:getLastPathSegment	()Ljava/lang/String;
    //   81: invokestatic 1246	java/lang/Long:valueOf	(Ljava/lang/String;)Ljava/lang/Long;
    //   84: invokevirtual 1249	java/lang/Long:longValue	()J
    //   87: lstore 8
    //   89: aload_0
    //   90: lload 8
    //   92: putfield 107	com/android/calendar/homepage/AllInOneActivity:k	J
    //   95: lload_3
    //   96: lstore 5
    //   98: lload 8
    //   100: ldc2_w 104
    //   103: lcmp
    //   104: ifeq +69 -> 173
    //   107: aload_0
    //   108: aload_1
    //   109: ldc_w 1251
    //   112: lconst_0
    //   113: invokevirtual 1254	android/content/Intent:getLongExtra	(Ljava/lang/String;J)J
    //   116: putfield 111	com/android/calendar/homepage/AllInOneActivity:m	J
    //   119: aload_0
    //   120: aload_1
    //   121: ldc_w 1256
    //   124: lconst_0
    //   125: invokevirtual 1254	android/content/Intent:getLongExtra	(Ljava/lang/String;J)J
    //   128: putfield 113	com/android/calendar/homepage/AllInOneActivity:n	J
    //   131: aload_0
    //   132: aload_1
    //   133: ldc_w 1258
    //   136: iconst_0
    //   137: invokevirtual 1020	android/content/Intent:getIntExtra	(Ljava/lang/String;I)I
    //   140: putfield 115	com/android/calendar/homepage/AllInOneActivity:o	I
    //   143: aload_0
    //   144: aload_1
    //   145: ldc_w 1260
    //   148: iconst_0
    //   149: invokevirtual 224	android/content/Intent:getBooleanExtra	(Ljava/lang/String;Z)Z
    //   152: putfield 117	com/android/calendar/homepage/AllInOneActivity:p	Z
    //   155: aload_0
    //   156: getfield 111	com/android/calendar/homepage/AllInOneActivity:m	J
    //   159: lstore 5
    //   161: aload_0
    //   162: aload_1
    //   163: ldc_w 1262
    //   166: iconst_0
    //   167: invokevirtual 1020	android/content/Intent:getIntExtra	(Ljava/lang/String;I)I
    //   170: putfield 109	com/android/calendar/homepage/AllInOneActivity:l	I
    //   173: lload 5
    //   175: lreturn
    //   176: astore_1
    //   177: lload_3
    //   178: lstore 5
    //   180: goto -7 -> 173
    //   183: astore_1
    //   184: goto -11 -> 173
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	187	0	this	AllInOneActivity
    //   0	187	1	paramIntent	Intent
    //   4	74	2	localUri	Uri
    //   8	170	3	l1	long
    //   10	169	5	l2	long
    //   30	28	7	localList	List
    //   87	12	8	l3	long
    // Exception table:
    //   from	to	target	type
    //   77	95	176	java/lang/NumberFormatException
    //   107	161	176	java/lang/NumberFormatException
    //   161	173	183	java/lang/NumberFormatException
  }
  
  private void v1(int paramInt)
  {
    String str = "0";
    if (paramInt < -365) {
      str = "<-365";
    } else if ((paramInt >= -365) && (paramInt < -180)) {
      str = "[-365, -180)";
    } else if ((paramInt >= -180) && (paramInt < -90)) {
      str = "[-180, -90)";
    } else if ((paramInt >= -90) && (paramInt < -30)) {
      str = "[-90, -30)";
    } else if ((paramInt >= -30) && (paramInt < 0)) {
      str = "[-30, 0)";
    } else if (paramInt != 0) {
      if ((paramInt > 0) && (paramInt <= 30)) {
        str = "(0, 30]";
      } else if ((paramInt > 30) && (paramInt <= 90)) {
        str = "(30, 90]";
      } else if ((paramInt > 90) && (paramInt <= 180)) {
        str = "(90, 180]";
      } else if ((paramInt > 180) && (paramInt <= 365)) {
        str = "(180, 365]";
      } else if (paramInt > 365) {
        str = ">365";
      }
    }
    com.miui.calendar.util.g0.f("goto_date", new String[] { "diff", str });
  }
  
  private void w1()
  {
    Object localObject = getIntent();
    Uri localUri = ((Intent)localObject).getData();
    boolean bool = ((Intent)localObject).hasExtra("from_shortcuts_setup");
    int i1 = 1;
    int i2;
    if (((bool) && (((Intent)localObject).getBooleanExtra("from_shortcuts_setup", false))) || ((((Intent)localObject).hasExtra("from_shortcuts_next_agenda")) && (((Intent)localObject).getBooleanExtra("from_shortcuts_next_agenda", false))) || ((((Intent)localObject).hasExtra("from_shortcuts_new_agenda")) && (((Intent)localObject).getBooleanExtra("from_shortcuts_new_agenda", false)))) {
      i2 = 1;
    } else {
      i2 = 0;
    }
    if ((localUri != null) && (localUri.getLastPathSegment() != null) && (i2 != 0))
    {
      o0.i(getIntent());
      localObject = localUri.getLastPathSegment();
      ((String)localObject).hashCode();
      switch (((String)localObject).hashCode())
      {
      }
      do
      {
        do
        {
          i2 = -1;
          break;
        } while (!((String)localObject).equals("next_agenda"));
        i2 = 2;
        break;
        i2 = i1;
        if (((String)localObject).equals("new_agenda")) {
          break;
        }
      } while ((goto 160) || (!((String)localObject).equals("setup")));
      i2 = 0;
      switch (i2)
      {
      default: 
        break;
      case 2: 
        if ((ShortcutManager)getSystemService(ShortcutManager.class) == null) {
          return;
        }
        K0();
        break;
      case 1: 
        startActivity(new Intent(this, EditEventActivity.class));
        break;
      case 0: 
        startActivity(new Intent(this, CalendarActionbarSettingsActivity.class));
      }
    }
  }
  
  private void x1()
  {
    this.D.K.post(new k(this));
  }
  
  private void y1(MenuItem paramMenuItem)
  {
    try
    {
      com.miui.calendar.util.z.a("Cal:D:AllInOne", "refreshMenuVisible");
      paramMenuItem.setVisible(false);
      Object localObject = Uri.parse("content://com.miui.home.app.hide");
      Bundle localBundle = new android/os/Bundle;
      localBundle.<init>();
      localBundle.putString("packageName", getPackageName());
      localBundle.putString("activityName", AllInOneActivity.class.getName());
      localBundle.putString("serialNumber", "0");
      localObject = getContentResolver().call((Uri)localObject, "isAppHidded", null, localBundle);
      if (localObject != null) {
        paramMenuItem.setVisible(TextUtils.equals(((BaseBundle)localObject).getString("result"), "true"));
      }
    }
    finally
    {
      com.miui.calendar.util.z.d("Cal:D:AllInOne", "refreshMenuVisible error!", paramMenuItem);
    }
  }
  
  private void z1()
  {
    if (Utils.q0("Cal:D:AllInOne")) {
      return;
    }
    if (!this.g) {
      invalidateOptionsMenu();
    }
  }
  
  void E1(View paramView)
  {
    com.miui.calendar.util.g0.d("click_more_setting_button");
    V(paramView, null);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (z0.i(this)) {
      return;
    }
    z0.r(this, paramInt1, paramInt2, new d());
  }
  
  public void onBackPressed()
  {
    r3.b.g = false;
    r3.a.k();
    r3.a.h = 0L;
    r3.a.i = 0L;
    try
    {
      super.onBackPressed();
    }
    catch (Exception localException)
    {
      com.miui.calendar.util.z.d("Cal:D:AllInOne", "onBackPressed", localException);
      finish();
    }
  }
  
  public void onClick(View paramView)
  {
    long l1 = SystemClock.uptimeMillis();
    long l2 = this.y;
    this.y = l1;
    if (l1 - l2 < 250L)
    {
      com.miui.calendar.util.z.g("Cal:D:AllInOne", "Double click during short period.");
      return;
    }
    switch (paramView.getId())
    {
    default: 
      break;
    case 2131363397: 
      if (HapticCompat.c("2.0")) {
        HapticCompat.performHapticFeedback(this.D.h, f.z);
      } else {
        HapticCompat.performHapticFeedback(this.D.h, f.k);
      }
      paramView = Calendar.getInstance();
      paramView.setTimeInMillis(Utils.I());
      g.a0 locala0 = new g.a0(Calendar.getInstance());
      if (this.f == 1) {
        locala0.d(true);
      }
      g.c(locala0);
      if ((!s0.w(Calendar.getInstance(), paramView)) && (Utils.t(this) == 4)) {
        this.D.j.postDelayed(new g(), 200L);
      }
      com.miui.calendar.util.g0.d("click_today_button");
      break;
    case 2131363275: 
      if (this.v == 1)
      {
        int i1 = this.w;
        int i2 = 270;
        if (i1 != 270) {
          i2 = 90;
        }
        H1(i2, 3);
      }
      else
      {
        H1(0, 3);
      }
      break;
    case 2131363149: 
      E1(this.D.y);
      break;
    case 2131362872: 
      I0(null);
      if (HapticCompat.c("2.0")) {
        HapticCompat.performHapticFeedback(this.D.h, f.z);
      } else {
        HapticCompat.performHapticFeedback(this.D.h, f.k);
      }
      com.miui.calendar.util.g0.d("click_new_event_button");
      break;
    case 2131361855: 
      g.c(new g.a());
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    int i1 = this.v;
    int i2 = paramConfiguration.orientation;
    if (i1 == i2) {
      return;
    }
    this.v = i2;
    if (Utils.t(this) == 3)
    {
      paramConfiguration = this.c;
      i2 = this.v;
      boolean bool = true;
      if (i2 != 1) {
        bool = false;
      }
      paramConfiguration.M(bool);
    }
    this.c.K(this.f);
    if (this.v == 2)
    {
      getWindow().addFlags(1024);
      x1();
      if (this.c.t()) {
        this.c.I();
      }
    }
    else
    {
      getWindow().clearFlags(1024);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onCreate savedInstanceState:");
    ((StringBuilder)localObject).append(paramBundle);
    com.miui.calendar.util.z.a("Cal:D:AllInOne", ((StringBuilder)localObject).toString());
    if (paramBundle != null) {
      paramBundle.remove("android:fragments");
    } else {
      D1();
    }
    super.onCreate(paramBundle);
    pc.c.c().o(this);
    Looper.myQueue().addIdleHandler(new r(this));
    if (z0.i(this)) {
      g4.a.f(this);
    }
    setContentView(2131558473);
    localObject = getIntent();
    B1((Intent)localObject);
    Resources localResources = getResources();
    this.v = localResources.getConfiguration().orientation;
    if (Utils.s(this) != -1)
    {
      Utils.g1(this, Utils.s(this));
      Utils.b1(this, -1);
    }
    int i1 = U0(paramBundle, (Intent)localObject);
    long l1 = S0(paramBundle, (Intent)localObject, i1);
    R0(l1);
    T0(localResources);
    V0(l1, i1, false);
    b2.a.f(this).registerOnSharedPreferenceChangeListener(this);
    Utils.a1("Cal:D:AllInOne", System.currentTimeMillis());
    F1();
    Q0();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131623937, paramMenu);
    MenuItem localMenuItem = paramMenu.findItem(2131362765);
    if ((!com.miui.calendar.util.y.b()) || (DeviceUtils.M()) || (!com.android.calendar.settings.j.q(this))) {
      localMenuItem.setVisible(false);
    }
    y1(paramMenu.findItem(2131362761));
    return true;
  }
  
  protected void onDestroy()
  {
    com.miui.calendar.util.z.a("Cal:D:AllInOne", "onDestroy()");
    super.onDestroy();
    Object localObject = this.G;
    if (localObject != null) {
      ((miuix.appcompat.app.l)localObject).dismiss();
    }
    z3.j.i();
    b2.a.f(this).unregisterOnSharedPreferenceChangeListener(this);
    localObject = this.D;
    if (localObject != null)
    {
      localObject = ((h)localObject).K;
      if (localObject != null) {
        ((MonthMotionContainer)localObject).A();
      }
    }
    com.android.calendar.common.e.g(this).q();
    pc.c.c().q(this);
    com.miui.calendar.util.w.a();
    localObject = this.q;
    if (localObject != null) {
      ((Handler)localObject).removeCallbacksAndMessages(null);
    }
    z3.k.c();
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.a0 parama0)
  {
    Utils.Y0(Utils.W());
    if ((!parama0.e) && (s0.u(parama0.a, Utils.V())))
    {
      com.miui.calendar.util.z.a("Cal:D:AllInOne", "gotoDate: same day, return");
      return;
    }
    com.miui.calendar.util.z.a("Cal:D:AllInOne", "timecost----- onEventMainThread receive GoToDateEvent");
    Object localObject = this.c;
    Calendar localCalendar = parama0.a;
    int i1 = this.f;
    boolean bool1 = false;
    if (i1 == 3) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    ((t0)localObject).S(localCalendar, bool2);
    parama0.b(q1(parama0));
    boolean bool2 = bool1;
    if (parama0.f)
    {
      bool2 = bool1;
      if (parama0.c) {
        bool2 = true;
      }
    }
    parama0.a(bool2);
    Utils.e1(com.android.calendar.common.k.a(parama0.a).getTimeInMillis());
    this.D.K.a(parama0);
    if (!x0.u0()) {
      this.c.O(Utils.V().get(2));
    } else {
      this.c.Q(Utils.V().get(2));
    }
    if ((this.f == 5) || (t0.p(this).u()))
    {
      localObject = this.D.M;
      if (localObject != null) {
        ((YearFrameLayout)localObject).e(Utils.V().get(1));
      }
    }
    h.c(this.D).v();
    if (!parama0.g) {
      v1(s0.m(parama0.a) - s0.l(System.currentTimeMillis()));
    }
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.a parama)
  {
    if ((!t0.p(this).u()) && (this.f == 4))
    {
      K1(Utils.V().get(2));
      com.miui.calendar.util.g0.d("view_year_entry_button_clicked");
    }
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.b0 paramb0)
  {
    if ((!t0.p(this).u()) && (this.f == 4) && (x0.u0())) {
      K1(Utils.V().get(2));
    }
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.b paramb)
  {
    this.D.K.a(paramb);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.c0 paramc0)
  {
    this.D.K.a(paramc0);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.c paramc)
  {
    if (Utils.t(this) != 1) {
      return;
    }
    throw null;
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.d0 paramd0)
  {
    this.D.K.a(paramd0);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.d paramd)
  {
    this.D.K.a(paramd);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.e0 parame0)
  {
    this.D.K.a(parame0);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.e parame)
  {
    this.D.K.a(parame);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.f0 paramf0)
  {
    this.D.K.a(paramf0);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.f paramf)
  {
    this.D.K.a(paramf);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.g0 paramg0)
  {
    this.D.K.a(paramg0);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.g paramg)
  {
    this.D.K.a(paramg);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.h0 paramh0)
  {
    boolean bool1 = x0.u0();
    boolean bool2 = paramh0.a;
    if (bool1 != bool2)
    {
      x0.L0(bool2);
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("onEventMainThread mMonthExpanded:");
      ((StringBuilder)localObject).append(paramh0.a);
      com.miui.calendar.util.z.a("Cal:D:AllInOne", ((StringBuilder)localObject).toString());
      if (paramh0.b)
      {
        if (paramh0.a) {
          localObject = "month_view_pull_down";
        } else {
          localObject = "month_view_pull_up";
        }
        String str;
        if (paramh0.c) {
          str = "来自月盘";
        } else {
          str = "来自卡片列表";
        }
        com.miui.calendar.util.g0.f((String)localObject, new String[] { "type", str });
      }
      if (!paramh0.a)
      {
        b2.a.l(this, "preference_first_guide_shown", true);
        b2.a.j(this, "preference_guide_last_swipe_date", System.currentTimeMillis());
      }
      paramh0 = this.D;
      if (paramh0 != null)
      {
        paramh0 = paramh0.K;
        if (paramh0 != null) {
          paramh0.M();
        }
      }
    }
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.h paramh)
  {
    this.D.K.a(paramh);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.i0 parami0)
  {
    parami0 = this.b;
    if (parami0 != null) {
      parami0.w();
    }
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.i parami)
  {
    this.D.K.a(parami);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.j0 paramj0)
  {
    this.D.K.a(paramj0);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.k0 paramk0)
  {
    this.D.K.F();
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.k paramk)
  {
    this.D.K.a(paramk);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.l0 paraml0)
  {
    this.D.K.a(paraml0);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.l paraml)
  {
    this.D.K.a(paraml);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.m paramm)
  {
    int i1 = paramm.b;
    int i2 = 0;
    int i3 = 0;
    if (i1 == 5)
    {
      if (t0.p(this).u()) {
        return;
      }
      this.f = 0;
      i1 = 4;
    }
    else if (t0.p(this).u())
    {
      J1(false);
    }
    if (i1 != 1)
    {
      if (i1 != 2)
      {
        if (i1 != 3)
        {
          if ((i1 == 4) || (i1 == 6)) {
            this.D.x.setImageDrawable(getResources().getDrawable(2131230898));
          }
        }
        else
        {
          if (Build.VERSION.SDK_INT != 26) {
            bool = true;
          } else {
            bool = false;
          }
          this.D.x.setImageDrawable(getResources().getDrawable(2131230899));
          break label189;
        }
      }
      else {
        this.D.x.setImageDrawable(getResources().getDrawable(2131230897));
      }
    }
    else {
      this.D.x.setImageDrawable(getResources().getDrawable(2131230896));
    }
    boolean bool = false;
    label189:
    this.D.K.post(new s(this, bool));
    this.c.R(Utils.a.get(i1));
    long l1 = Utils.W();
    Object localObject = paramm.d;
    if (localObject != null) {
      l1 = ((Calendar)localObject).getTimeInMillis();
    }
    if (i1 == 0)
    {
      com.miui.calendar.util.z.a("Cal:D:AllInOne", "setMainPanel() viewType=0, return false");
      this.E = false;
    }
    if ((this.e) && (this.E))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("setMainPanel() mOnSaveInstanceStateCalled=");
      ((StringBuilder)localObject).append(this.e);
      ((StringBuilder)localObject).append(",mIsViewInited=");
      ((StringBuilder)localObject).append(this.E);
      ((StringBuilder)localObject).append(", return false");
      com.miui.calendar.util.z.a("Cal:D:AllInOne", ((StringBuilder)localObject).toString());
      this.E = false;
    }
    if ((!paramm.c) && (this.f == i1))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("setMainPanel() mCurrentView=");
      ((StringBuilder)localObject).append(this.f);
      ((StringBuilder)localObject).append(", return false");
      com.miui.calendar.util.z.a("Cal:D:AllInOne", ((StringBuilder)localObject).toString());
      this.E = false;
    }
    if (i1 != this.f)
    {
      this.E = C1(i1, l1, paramm.c, paramm.f);
      i1 = i3;
      if (paramm.b == 5)
      {
        paramm.b = 4;
        i1 = 1;
      }
      this.D.K.a(paramm);
      i2 = i1;
    }
    if (i2 != 0) {
      this.q.postDelayed(new t(), 1000L);
    }
    if (paramm.g) {
      this.D.K.post(new u(this));
    }
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.n paramn)
  {
    if (paramn == null) {
      return;
    }
    if (com.miui.calendar.util.y.e(this)) {
      this.F = 0;
    }
    z3.a.a();
    g.c(new g.j0());
    paramn = this.G;
    if (paramn != null) {
      paramn.dismiss();
    }
    this.D.M.k();
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.o paramo)
  {
    g.b(paramo, "Cal:D:AllInOne");
    this.D.K.a(paramo);
    this.b.i(this.f, Utils.W(), false);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.q0 paramq0)
  {
    this.D.K.a(paramq0);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.q paramq)
  {
    if (paramq.a == 2) {
      this.j = paramq.b;
    } else {
      this.j = null;
    }
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.r0 paramr0)
  {
    this.D.K.a(paramr0);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.s0 params0)
  {
    if (params0.a == 1) {
      H1(0, this.f);
    }
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.u0 paramu0)
  {
    this.D.K.a(paramu0);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.u paramu)
  {
    this.D.K.a(paramu);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.v0 paramv0)
  {
    this.D.K.a(paramv0);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.w0 paramw0)
  {
    this.D.K.a(paramw0);
    com.android.calendar.common.e.g(this).r();
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.x0 paramx0)
  {
    this.D.K.a(paramx0);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.y paramy)
  {
    this.D.K.a(paramy);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.z paramz)
  {
    this.D.K.a(paramz);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 82)
    {
      Utils.I0(this);
      com.miui.calendar.util.g0.d("click_setting_button_from_menu");
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    com.miui.calendar.util.z.a("Cal:D:AllInOne", "activity onNewIntent()");
    this.D.K.post(new v(this, paramIntent));
    D1();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      break;
    case 2131363108: 
      Intent localIntent = new Intent();
      localIntent.setClass(this, SearchDetailsActivity.class);
      startActivity(localIntent);
      com.miui.calendar.util.g0.d("click_search_events");
      break;
    case 2131362765: 
      if ((!z0.n(this)) && (!z0.j(this))) {
        z0.D(this, new m(this));
      } else {
        Z0();
      }
      com.miui.calendar.util.g0.d("click_subscription_service_button");
      return true;
    case 2131362763: 
      Utils.I0(this);
      com.miui.calendar.util.g0.d("click_setting_button");
      return true;
    case 2131362761: 
      A1(paramMenuItem);
      return true;
    case 2131362760: 
      J0();
      com.miui.calendar.util.g0.d("click_jump_date_button");
      return true;
    case 2131362759: 
      paramMenuItem = new Intent();
      paramMenuItem.setClass(this, DateCalculateInfoActivity.class);
      startActivity(paramMenuItem);
      com.miui.calendar.util.g0.d("click_date_calculate_button");
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPause()
  {
    com.miui.calendar.util.z.g("Cal:D:AllInOne", "onPause()");
    super.onPause();
    this.g = true;
    if (isFinishing()) {
      b2.a.f(this).unregisterOnSharedPreferenceChangeListener(this);
    }
    Utils.T0(this.q, this.H);
    BroadcastReceiver localBroadcastReceiver = this.J;
    if (localBroadcastReceiver != null)
    {
      Utils.d(this, localBroadcastReceiver);
      this.J = null;
    }
    this.D.K.B();
    this.x.disable();
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu = paramMenu.findItem(2131362765);
    if ((com.miui.calendar.util.y.b()) && (!DeviceUtils.M()) && (com.android.calendar.settings.j.q(this))) {
      paramMenu.setVisible(true);
    } else {
      paramMenu.setVisible(false);
    }
    return true;
  }
  
  protected void onRestart()
  {
    super.onRestart();
    this.D.K.C();
  }
  
  protected void onResume()
  {
    super.onResume();
    if (!g4.a.c(this)) {
      return;
    }
    this.J = Utils.c1(this, this.H);
    this.D.K.post(new x(this));
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    com.miui.calendar.util.z.a("Cal:D:AllInOne", "onSaveInstanceState()");
    this.e = true;
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("key_restore_view", this.f);
    paramBundle.putLong("key_timestamp", Utils.W());
  }
  
  public void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    if (paramString.equals("preferences_week_start_day")) {
      if (this.g) {
        this.h = true;
      } else {
        V0(Utils.W(), Utils.t(this), true);
      }
    }
  }
  
  protected void onStop()
  {
    super.onStop();
    this.D.K.E();
    try
    {
      getContentResolver().unregisterContentObserver(this.I);
    }
    catch (Exception localException)
    {
      com.miui.calendar.util.z.d("Cal:D:AllInOne", "onStop()", localException);
    }
  }
  
  public void p(int paramInt)
  {
    if (this.w == paramInt) {
      return;
    }
    this.w = paramInt;
    this.q.postDelayed(new l(this), 300L);
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      AllInOneActivity localAllInOneActivity = AllInOneActivity.this;
      AllInOneActivity.p0(localAllInOneActivity, Utils.U(localAllInOneActivity.getApplicationContext()));
      AllInOneActivity.q0(AllInOneActivity.this);
      g.c(new g.o());
      Utils.Z0(AllInOneActivity.A0(AllInOneActivity.this), AllInOneActivity.B0(AllInOneActivity.this), AllInOneActivity.o0(AllInOneActivity.this));
    }
  }
  
  class b
    implements View.OnClickListener
  {
    b() {}
    
    public void onClick(View paramView)
    {
      if (HapticCompat.c("2.0")) {
        HapticCompat.performHapticFeedback(paramView, f.A);
      } else {
        HapticCompat.performHapticFeedback(paramView, f.k);
      }
      AllInOneActivity.C0(AllInOneActivity.this).I();
      com.miui.calendar.util.g0.d("click_switch_tab_button");
    }
  }
  
  class c
    implements View.OnTouchListener
  {
    Bitmap a = null;
    Rect b = null;
    int c = 0;
    int d = 0;
    boolean e = true;
    Runnable f = new a();
    long g = 0L;
    boolean h = false;
    
    c(miuix.animation.d paramd) {}
    
    public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
    {
      int k = paramMotionEvent.getAction();
      int m;
      Object localObject;
      if (k != 0)
      {
        if (k != 1)
        {
          if (k != 2)
          {
            if (k == 3)
            {
              AllInOneActivity.A0(AllInOneActivity.this).removeCallbacks(this.f);
              this.i.d().N(1).e(paramMotionEvent);
            }
          }
          else if (com.miui.calendar.util.v.c(paramView, paramMotionEvent.getX(), paramMotionEvent.getY())) {
            this.e = true;
          } else {
            this.e = false;
          }
        }
        else
        {
          AllInOneActivity.A0(AllInOneActivity.this).removeCallbacks(this.f);
          if ((!this.h) && (this.e)) {
            if ((!DeviceUtils.L()) && (AllInOneActivity.E0()) && (this.a != null))
            {
              m = AllInOneActivity.this.getResources().getDimensionPixelSize(2131167310);
              localObject = paramView.getBackground();
              if ((localObject instanceof ColorDrawable)) {
                k = ((ColorDrawable)localObject).getColor();
              } else {
                k = AllInOneActivity.this.getColor(2131099987);
              }
              if (HapticCompat.c("2.0")) {
                HapticCompat.performHapticFeedback(paramView, f.z);
              } else {
                HapticCompat.performHapticFeedback(paramView, f.k);
              }
              paramView = a9.a.c(paramView, this.a, this.c, this.d, m, k, paramView.getScaleX(), new Handler(), null, null, null, null);
              AllInOneActivity.F0(AllInOneActivity.this, paramView);
            }
            else
            {
              AllInOneActivity.F0(AllInOneActivity.this, null);
            }
          }
          this.i.d().N(1).e(paramMotionEvent);
        }
      }
      else
      {
        this.e = true;
        if (AllInOneActivity.E0())
        {
          localObject = a9.a.a(paramView);
          m = AllInOneActivity.this.getResources().getDimensionPixelOffset(2131165970);
          int n = AllInOneActivity.this.getResources().getDimensionPixelOffset(2131165970);
          k = AllInOneActivity.this.getResources().getDimensionPixelOffset(2131165970);
          int i1 = AllInOneActivity.this.getResources().getDimensionPixelOffset(2131165970);
          Rect localRect = new Rect(m, n, paramView.getWidth() - k, paramView.getHeight() - i1);
          this.b = localRect;
          this.a = Bitmap.createBitmap((Bitmap)localObject, localRect.left, localRect.top, localRect.width(), this.b.height());
          localObject = new int[2];
          paramView.getLocationOnScreen((int[])localObject);
          k = localObject[0];
          paramView = this.b;
          this.c = (k + paramView.left);
          this.d = (localObject[1] + paramView.top);
        }
        this.i.d().N(1).e(paramMotionEvent);
        this.g = System.currentTimeMillis();
        AllInOneActivity.A0(AllInOneActivity.this).removeCallbacks(this.f);
        this.h = false;
        AllInOneActivity.A0(AllInOneActivity.this).postDelayed(this.f, ViewConfiguration.getLongPressTimeout());
      }
      return true;
    }
    
    class a
      implements Runnable
    {
      a() {}
      
      public void run()
      {
        AllInOneActivity.c localc = AllInOneActivity.c.this;
        localc.h = true;
        AllInOneActivity.D0(localc.j).h.performLongClick();
      }
    }
  }
  
  class d
    implements z0.h
  {
    d() {}
    
    public void a()
    {
      View localView = AllInOneActivity.this.findViewById(2131363521);
      if (localView != null) {
        localView.setVisibility(8);
      }
      AllInOneActivity.D0(AllInOneActivity.this).K.C();
      AllInOneActivity.G0(AllInOneActivity.this);
    }
    
    public void b(boolean paramBoolean)
    {
      AllInOneActivity.this.finish();
    }
  }
  
  class e
    implements Runnable
  {
    e() {}
    
    public void run()
    {
      AllInOneActivity.D0(AllInOneActivity.this).K.getListContainer().a();
      g.c(new g.w0());
    }
  }
  
  class f
    implements c.d
  {
    f() {}
    
    public void a(h4.c paramc, int paramInt1, boolean paramBoolean, int paramInt2, int paramInt3, int paramInt4, String paramString)
    {
      AllInOneActivity.r0(AllInOneActivity.this, paramInt1);
      paramc = new StringBuilder();
      paramc.append("onDateSet(): y:");
      paramc.append(paramInt2);
      paramc.append(", m:");
      paramc.append(paramInt3);
      paramc.append(", d:");
      paramc.append(paramInt4);
      com.miui.calendar.util.z.a("Cal:D:AllInOne", paramc.toString());
      AllInOneActivity.s0(AllInOneActivity.this, paramInt2, paramInt3, paramInt4);
      g.c(new g.w0());
    }
  }
  
  class g
    implements Runnable
  {
    g() {}
    
    public void run()
    {
      g.c(new g.w0());
    }
  }
  
  public static class h
  {
    public TextView A;
    public WeekHeaderView B;
    public ViewStub C;
    public View D;
    public View[] E;
    public MainPanelMotionContainer F;
    public OnlineImageView G;
    public TextView H;
    private ViewStub I;
    private LSWeekCalendarView J;
    public MonthMotionContainer K;
    private ViewStub L;
    public YearFrameLayout M;
    private WeakReference<AllInOneActivity> N;
    public View a;
    public ViewStub b;
    public g0 c;
    public ViewGroup d;
    public ViewStub e;
    public View f;
    public ImageView g;
    public View h;
    public TextView i;
    public View j;
    public ImageView k;
    public View l;
    public ViewGroup m;
    public View n;
    public View o;
    public TextView p;
    public TextView q;
    public TextView r;
    public TextView s;
    public View t;
    public TextView u;
    public TextView v;
    public TextView w;
    public ImageView x;
    public ImageView y;
    public View z;
    
    public h(AllInOneActivity paramAllInOneActivity)
    {
      this.N = new WeakReference(paramAllInOneActivity);
      this.a = paramAllInOneActivity.findViewById(2131362540);
      this.e = ((ViewStub)paramAllInOneActivity.findViewById(2131362764));
      this.b = ((ViewStub)paramAllInOneActivity.findViewById(2131363541));
      this.m = ((ViewGroup)paramAllInOneActivity.findViewById(2131361949));
      this.n = paramAllInOneActivity.findViewById(2131361859);
      this.o = paramAllInOneActivity.findViewById(2131361855);
      this.p = ((TextView)paramAllInOneActivity.findViewById(2131361860));
      this.q = ((TextView)paramAllInOneActivity.findViewById(2131361862));
      this.r = ((TextView)paramAllInOneActivity.findViewById(2131361865));
      TextView localTextView = (TextView)paramAllInOneActivity.findViewById(2131361864);
      this.s = localTextView;
      int i1;
      if (com.miui.calendar.util.y.a()) {
        i1 = 0;
      } else {
        i1 = 8;
      }
      localTextView.setVisibility(i1);
      this.w = ((TextView)paramAllInOneActivity.findViewById(2131361863));
      this.x = ((ImageView)paramAllInOneActivity.findViewById(2131363286));
      this.y = ((ImageView)paramAllInOneActivity.findViewById(2131363149));
      this.B = ((WeekHeaderView)paramAllInOneActivity.findViewById(2131363552));
      this.C = ((ViewStub)paramAllInOneActivity.findViewById(2131363536));
      this.F = ((MainPanelMotionContainer)paramAllInOneActivity.findViewById(2131362741));
      this.G = ((OnlineImageView)paramAllInOneActivity.findViewById(2131362012));
      this.H = ((TextView)paramAllInOneActivity.findViewById(2131362857));
      this.I = ((ViewStub)paramAllInOneActivity.findViewById(2131363537));
      this.K = ((MonthMotionContainer)paramAllInOneActivity.findViewById(2131362809));
      this.L = ((ViewStub)paramAllInOneActivity.findViewById(2131363601));
      this.K.post(new a0(this, paramAllInOneActivity));
    }
    
    public boolean g(t0 paramt0)
    {
      if (this.D == null)
      {
        Object localObject = this.C;
        if (localObject == null) {
          return false;
        }
        localObject = ((ViewStub)localObject).inflate();
        this.D = ((View)localObject);
        ((View)localObject).setVisibility(8);
        localObject = new View[4];
        this.E = ((View[])localObject);
        localObject[0] = this.D.findViewById(2131363298);
        this.E[1] = this.D.findViewById(2131363305);
        this.E[2] = this.D.findViewById(2131363287);
        this.E[3] = this.D.findViewById(2131363285);
        paramt0.q();
      }
      return true;
    }
    
    void j(int paramInt)
    {
      if (!com.miui.calendar.util.y.b())
      {
        this.H.setVisibility(8);
        return;
      }
      if ((AllInOneActivity)this.N.get() == null) {
        return;
      }
      this.H.setVisibility(0);
    }
  }
  
  private static class i
    implements f0
  {
    private final WeakReference<Context> a;
    
    public i(Context paramContext)
    {
      this.a = new WeakReference(paramContext);
    }
    
    public void a(int paramInt)
    {
      Context localContext = (Context)this.a.get();
      if (localContext != null) {
        DaysOffUtils.g(localContext);
      }
    }
  }
  
  private static class j
    extends AsyncTask<Void, Void, Void>
  {
    private WeakReference<AllInOneActivity> a;
    
    j(AllInOneActivity paramAllInOneActivity)
    {
      this.a = new WeakReference(paramAllInOneActivity);
    }
    
    protected Void a(Void... paramVarArgs)
    {
      paramVarArgs = (AllInOneActivity)this.a.get();
      if (paramVarArgs == null) {
        return null;
      }
      if (z0.n(paramVarArgs)) {
        AllInOneActivity.u0(paramVarArgs);
      }
      r1.a.q(paramVarArgs);
      Utils.R0(paramVarArgs);
      Utils.X0(paramVarArgs);
      z3.d.h(paramVarArgs.getApplicationContext());
      Utils.S0(paramVarArgs.getApplicationContext());
      return null;
    }
  }
  
  private static class k
    extends ContentObserver
  {
    private final WeakReference<AllInOneActivity> a;
    
    public k(Handler paramHandler, AllInOneActivity paramAllInOneActivity)
    {
      super();
      this.a = new WeakReference(paramAllInOneActivity);
    }
    
    public boolean deliverSelfNotifications()
    {
      return true;
    }
    
    public void onChange(boolean paramBoolean)
    {
      AllInOneActivity localAllInOneActivity = (AllInOneActivity)this.a.get();
      if (localAllInOneActivity == null) {
        return;
      }
      long l = System.currentTimeMillis();
      if (l - AllInOneActivity.y0(localAllInOneActivity) < 300L) {
        return;
      }
      AllInOneActivity.z0(localAllInOneActivity, l);
      com.miui.calendar.util.z.a("Cal:D:AllInOne", "mEventObserver: onChange()");
      g.c(new g.u());
    }
  }
  
  private static class l
    implements View.OnLayoutChangeListener
  {
    private WeakReference<AllInOneActivity> a;
    
    l(AllInOneActivity paramAllInOneActivity)
    {
      this.a = new WeakReference(paramAllInOneActivity);
    }
    
    public void onLayoutChange(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
    {
      AllInOneActivity localAllInOneActivity = (AllInOneActivity)this.a.get();
      if ((localAllInOneActivity != null) && (AllInOneActivity.x0(localAllInOneActivity) != null)) {
        AllInOneActivity.x0(localAllInOneActivity).v(paramView.getMeasuredWidth());
      }
    }
  }
  
  private static class m
    implements z0.h
  {
    private WeakReference<AllInOneActivity> a;
    
    public m(AllInOneActivity paramAllInOneActivity)
    {
      this.a = new WeakReference(paramAllInOneActivity);
    }
    
    public void a()
    {
      AllInOneActivity localAllInOneActivity = (AllInOneActivity)this.a.get();
      if (localAllInOneActivity != null)
      {
        z0.u(localAllInOneActivity, true);
        AllInOneActivity.t0(localAllInOneActivity);
      }
    }
    
    public void b(boolean paramBoolean)
    {
      AllInOneActivity localAllInOneActivity = (AllInOneActivity)this.a.get();
      if (localAllInOneActivity != null) {
        z0.u(localAllInOneActivity, true);
      }
    }
  }
  
  private static class n
    extends AsyncTask<Void, Void, List<Event>>
  {
    private WeakReference<AllInOneActivity> a;
    
    public n(AllInOneActivity paramAllInOneActivity)
    {
      this.a = new WeakReference(paramAllInOneActivity);
    }
    
    protected List<Event> a(Void... paramVarArgs)
    {
      paramVarArgs = (AllInOneActivity)this.a.get();
      if (paramVarArgs == null) {
        return new ArrayList();
      }
      long l = System.currentTimeMillis();
      return s1.e.g(paramVarArgs.getApplicationContext(), l, 432000000L + l);
    }
    
    protected void b(List<Event> paramList)
    {
      super.onPostExecute(paramList);
      AllInOneActivity localAllInOneActivity = (AllInOneActivity)this.a.get();
      if (localAllInOneActivity == null) {
        return;
      }
      if ((paramList != null) && (paramList.size() > 0))
      {
        com.miui.calendar.util.z.a("Cal:D:AllInOne", "events > 0");
        paramList = (Event)paramList.get(0);
        if (paramList == null) {
          return;
        }
        Utils.N0(localAllInOneActivity, paramList, Utils.V(), com.android.calendar.common.j.d(com.android.calendar.common.j.a(AllInOneActivity.v0(localAllInOneActivity), AllInOneActivity.w0(localAllInOneActivity))), 268435456);
      }
      else
      {
        com.miui.calendar.util.z.a("Cal:D:AllInOne", "events <= 0 & removeDynamicShortcuts");
        o0.j((ShortcutManager)localAllInOneActivity.getSystemService(ShortcutManager.class));
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.AllInOneActivity
 * JD-Core Version:    0.7.0.1
 */