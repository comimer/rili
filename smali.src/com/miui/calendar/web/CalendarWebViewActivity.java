package com.miui.calendar.web;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.ShareActivity;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.StatusBar;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.i;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.x;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import com.miui.calendar.util.z0.h;
import java.io.File;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardOldestPolicy;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import miuix.appcompat.app.m;
import z4.c;

public class CalendarWebViewActivity
  extends com.android.calendar.common.b
  implements CalendarWebView.c
{
  private static final float[] V = { 0.3333333F, 0.6666667F, 1.0F };
  private TextView D;
  private RelativeLayout E;
  private View F;
  private int G;
  private boolean H;
  private long I;
  private boolean J = false;
  private float K = 1.0F;
  private Animatable L;
  private Animatable M;
  private String N;
  private boolean O = false;
  private Map<String, Object> P = new HashMap();
  private j4.a Q;
  private AtomicBoolean R = new AtomicBoolean(false);
  private Runnable S = null;
  private Handler T = new Handler(Looper.getMainLooper());
  private ExecutorService U = new ThreadPoolExecutor(1, 1, 500L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), Executors.defaultThreadFactory(), new ThreadPoolExecutor.DiscardOldestPolicy());
  private Uri b = Uri.EMPTY;
  private boolean c;
  private String d;
  private PageData.StyleData e = null;
  private boolean f;
  private PageData.ShareData g = null;
  private String h = "other";
  private boolean i;
  private String j = "";
  private String k = "";
  private StatusBar l;
  private CalendarWebView m;
  private ViewGroup n;
  private ViewGroup o;
  private View p;
  private View q;
  private View r;
  private TextView v;
  private ImageView w;
  private ImageView x;
  private ImageView y;
  private ImageView z;
  
  private void B0()
  {
    F0(true);
    if (!this.U.isShutdown()) {
      this.U.execute(new o(this, this.N, getFilesDir().getAbsolutePath(), this.h));
    }
  }
  
  private void D0()
  {
    if (this.g == null) {
      w0(new a());
    } else {
      g0.f("webview_share_clicked", new String[] { "from", this.h });
    }
  }
  
  private void G0()
  {
    if (z0.q(this, true)) {
      z0.D(this, new g());
    } else {
      x0();
    }
  }
  
  private void H0(boolean paramBoolean)
  {
    Intent localIntent = new Intent(this, ShareActivity.class);
    localIntent.putExtra("key_action_bar_dark_mode", this.O);
    PageData.StyleData localStyleData = this.e;
    if (localStyleData != null) {
      localIntent.putExtra("key_background_color", localStyleData.actionBarBg);
    }
    if (paramBoolean)
    {
      localIntent.putExtra("key_action_pic_content", "calendar_history.png");
      localIntent.putExtra("key_stat_params", (Serializable)this.P);
      localIntent.putExtra("key_action_from", this.h);
    }
    else
    {
      localIntent.putExtra("key_action_pic_content", "calendar_share.png");
    }
    F0(false);
    startActivity(localIntent);
  }
  
  private boolean p0()
  {
    boolean bool;
    if (getIntent() != null) {
      bool = getIntent().getBooleanExtra("inner_cal", false);
    } else {
      bool = false;
    }
    if ((!bool) && (!d.h(this.b)))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("checkTrust(): not trusted uri for : ");
      localStringBuilder.append(this.b);
      z.c("Cal:D:CalendarWebViewActivity", localStringBuilder.toString());
      return false;
    }
    return true;
  }
  
  private void r0()
  {
    Uri localUri = this.b;
    if ((localUri != null) && ("history".equals(localUri.getQueryParameter("from")))) {
      this.j = "history";
    }
  }
  
  private void s0()
  {
    this.c = false;
    if (this.b.getQueryParameterNames().contains("return_calendar")) {
      this.c = Boolean.parseBoolean(this.b.getQueryParameter("return_calendar"));
    }
    if (this.b.getQueryParameterNames().contains("title")) {
      this.d = this.b.getQueryParameter("title");
    }
    if (this.b.getQueryParameterNames().contains("event_name")) {
      this.k = this.b.getQueryParameter("event_name");
    }
    if ("history".equals(this.j))
    {
      if (this.b.getQueryParameterNames().contains("style")) {
        try
        {
          this.e = ((PageData.StyleData)x.a(this.b.getQueryParameter("style"), PageData.StyleData.class));
        }
        catch (Exception localException1)
        {
          z.d("Cal:D:CalendarWebViewActivity", "history style initParamFromUri()", localException1);
        }
      }
    }
    else
    {
      this.e = null;
      if (this.b.getQueryParameterNames().contains("style")) {
        try
        {
          this.e = ((PageData.StyleData)x.a(this.b.getQueryParameter("style"), PageData.StyleData.class));
        }
        catch (Exception localException2)
        {
          z.d("Cal:D:CalendarWebViewActivity", "normal style initParamFromUri()", localException2);
        }
      }
    }
    this.f = false;
    if (this.b.getQueryParameterNames().contains("showShare")) {
      this.f = Boolean.parseBoolean(this.b.getQueryParameter("showShare"));
    }
    this.g = null;
    if (this.b.getQueryParameterNames().contains("share")) {
      try
      {
        this.g = ((PageData.ShareData)x.a(this.b.getQueryParameter("share"), PageData.ShareData.class));
      }
      catch (Exception localException3)
      {
        z.d("Cal:D:CalendarWebViewActivity", "share initParamFromUri()", localException3);
      }
    }
    this.i = false;
    if (this.b.getQueryParameterNames().contains("holiday")) {
      this.i = Boolean.parseBoolean(this.b.getQueryParameter("holiday"));
    }
    this.h = "other";
    if (this.i)
    {
      if (this.c) {
        this.h = "holiday_notification";
      } else {
        this.h = "holiday_card";
      }
    }
    else if ((getIntent() != null) && (!TextUtils.isEmpty(getIntent().getStringExtra("from")))) {
      this.h = getIntent().getStringExtra("from");
    }
    if ("history".equals(this.j)) {
      this.h = "history_card";
    }
  }
  
  private void t0()
  {
    Object localObject = getIntent();
    if (!TextUtils.isEmpty(((Intent)localObject).getStringExtra("url")))
    {
      this.b = Uri.parse(((Intent)localObject).getStringExtra("url"));
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("initUri(): from extra, url :");
      ((StringBuilder)localObject).append(this.b);
      z.a("Cal:D:CalendarWebViewActivity", ((StringBuilder)localObject).toString());
    }
    else if ((((Intent)localObject).getData() != null) && (!TextUtils.isEmpty(((Intent)localObject).getData().getQueryParameter("url"))))
    {
      this.b = Uri.parse(((Intent)localObject).getData().getQueryParameter("url"));
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("initUri(): from intent data, url :");
      ((StringBuilder)localObject).append(this.b);
      z.a("Cal:D:CalendarWebViewActivity", ((StringBuilder)localObject).toString());
    }
    else
    {
      z.c("Cal:D:CalendarWebViewActivity", "initUri(): null url");
    }
  }
  
  private void u0()
  {
    Object localObject = new StatusBar(this);
    this.l = ((StatusBar)localObject);
    ((StatusBar)localObject).a(x0.s0(getApplicationContext()));
    this.q = findViewById(2131363547);
    this.r = findViewById(2131362008);
    this.w = ((ImageView)this.q.findViewById(2131362568));
    this.v = ((TextView)this.q.findViewById(2131363373));
    this.x = ((ImageView)this.q.findViewById(2131363153));
    localObject = (RelativeLayout)findViewById(2131363155);
    this.E = ((RelativeLayout)localObject);
    ((View)localObject).setOnClickListener(new i());
    this.y = ((ImageView)findViewById(2131362704));
    this.z = ((ImageView)findViewById(2131362705));
    this.D = ((TextView)findViewById(2131362711));
    long l1 = b2.a.b(getApplicationContext(), "key_holiday_detail_latest_share_guide_time", 0L);
    int i1 = b2.a.a(getApplicationContext(), "key_holiday_detail_share_guide_quantity", 0);
    if ((this.i) && (i1 < 3) && (!s0.v(l1, System.currentTimeMillis())))
    {
      b2.a.j(getApplicationContext(), "key_holiday_detail_latest_share_guide_time", System.currentTimeMillis());
      b2.a.i(getApplicationContext(), "key_holiday_detail_share_guide_quantity", i1 + 1);
      this.T.postDelayed(new c(this), 3000L);
    }
    this.x.setOnClickListener(new j());
    this.p = findViewById(2131362865);
    findViewById(2131361899).setOnClickListener(new k());
    this.o = ((ViewGroup)findViewById(2131362988));
    E0(true);
    this.w.setOnClickListener(new l());
    this.n = ((ViewGroup)findViewById(2131363549));
    this.m = ((CalendarWebView)findViewById(2131363548));
    localObject = findViewById(2131363154);
    this.F = ((View)localObject);
    ((View)localObject).setOnClickListener(new m());
    if (p0()) {
      d.a(this, this.m);
    } else {
      d.i(this.m);
    }
    this.m.c(this, this);
  }
  
  private void w0(final Runnable paramRunnable)
  {
    this.m.evaluateJavascript("javascript:wrapShareData()", new c(paramRunnable));
  }
  
  private void x0()
  {
    Object localObject1 = this.b;
    if (localObject1 != null) {
      if ("history".equals(((Uri)localObject1).getQueryParameter("from")))
      {
        localObject1 = this.b.getQueryParameter("date");
        Object localObject2 = this.b.getQueryParameter("oaid");
        localObject2 = Uri.parse(this.b.getQueryParameter("url")).buildUpon().appendQueryParameter("date", (String)localObject1).appendQueryParameter("oaid", (String)localObject2).build();
        Map localMap = this.P;
        if (localMap != null)
        {
          localMap.clear();
          if (localObject1 != null) {
            this.P.put("date", s0.B((String)localObject1));
          }
          localObject1 = this.k;
          if (localObject1 != null) {
            this.P.put("title", localObject1);
          }
        }
        this.m.loadUrl(((Uri)localObject2).toString());
      }
      else
      {
        this.m.loadUrl(this.b.toString());
      }
    }
  }
  
  private void z0()
  {
    this.b = Uri.EMPTY;
    this.c = false;
    this.d = "";
    this.I = System.currentTimeMillis();
    this.H = false;
    this.G = 0;
    this.J = false;
  }
  
  public void A0(boolean paramBoolean)
  {
    View localView = this.F;
    if (localView != null) {
      localView.setEnabled(paramBoolean);
    }
  }
  
  public void C0(String paramString)
  {
    F0(true);
    if (!this.U.isShutdown()) {
      this.U.execute(new n(this, paramString, getFilesDir().getAbsolutePath(), this.h));
    }
  }
  
  public void E0(final boolean paramBoolean)
  {
    ImageView localImageView = this.z;
    if (localImageView == null) {
      return;
    }
    localImageView.post(new b(paramBoolean));
  }
  
  public void F0(boolean paramBoolean)
  {
    if (this.y != null)
    {
      Object localObject = this.E;
      if (localObject != null) {
        if (paramBoolean)
        {
          ((View)localObject).setVisibility(0);
          this.y.setImageDrawable(getResources().getDrawable(2131230951));
          localObject = (Animatable)this.y.getDrawable();
          this.L = ((Animatable)localObject);
          ((Animatable)localObject).start();
        }
        else
        {
          localObject = this.L;
          if (localObject != null) {
            ((Animatable)localObject).stop();
          }
          this.E.setVisibility(8);
        }
      }
    }
  }
  
  public void b(String paramString) {}
  
  public void d()
  {
    this.m.loadUrl("javascript:document.body.innerHTML=''");
    this.p.setVisibility(0);
    this.m.setVisibility(4);
    E0(false);
    this.o.setVisibility(8);
  }
  
  public void h(int paramInt)
  {
    if (!i.f(getApplicationContext()))
    {
      this.p.setVisibility(0);
      this.m.setVisibility(4);
      E0(false);
      this.o.setVisibility(8);
    }
    else
    {
      this.m.setVisibility(0);
      E0(false);
      this.o.setVisibility(8);
      this.p.setVisibility(8);
    }
  }
  
  public void l(int paramInt1, int paramInt2)
  {
    paramInt1 = this.m.getVerticalScrollRange();
    float f1 = paramInt2;
    float f2 = f1 / paramInt1;
    paramInt1 = this.G;
    Object localObject = V;
    if (paramInt1 < localObject.length)
    {
      float f3 = localObject[paramInt1];
      if (f2 >= f3)
      {
        g0.f("webview_scroll_down", new String[] { "scroll_down_ratio", String.format("%.3f", new Object[] { Float.valueOf(f3) }), "from", this.h });
        this.G += 1;
      }
    }
    localObject = this.e;
    if ((localObject != null) && (((PageData.StyleData)localObject).immersion))
    {
      paramInt2 = ((PageData.StyleData)localObject).immersionAlphaStart;
      if (paramInt2 > 0)
      {
        paramInt1 = ((PageData.StyleData)localObject).immersionAlphaEnd;
        if (paramInt1 > 0)
        {
          f1 /= this.K;
          if (f1 < paramInt2)
          {
            this.r.setAlpha(0.0F);
            this.v.setAlpha(0.0F);
          }
          else if (f1 > paramInt1)
          {
            this.r.setAlpha(1.0F);
            this.v.setAlpha(1.0F);
          }
          else
          {
            this.r.setAlpha((f1 - paramInt2) * 1.0F / (paramInt1 - paramInt2));
            localObject = this.v;
            PageData.StyleData localStyleData = this.e;
            paramInt1 = localStyleData.immersionAlphaStart;
            ((View)localObject).setAlpha((f1 - paramInt1) * 1.0F / (localStyleData.immersionAlphaEnd - paramInt1));
          }
        }
      }
    }
  }
  
  public void o(String paramString)
  {
    if ((paramString != null) && (paramString.startsWith("http"))) {
      this.b = Uri.parse(paramString);
    }
    s0();
    y0();
    paramString = this.F;
    if (paramString != null)
    {
      int i1;
      if ("history".equals(this.j)) {
        i1 = 0;
      } else {
        i1 = 8;
      }
      paramString.setVisibility(i1);
    }
    if (this.J)
    {
      paramString = this.m;
      if (paramString != null)
      {
        paramString.clearHistory();
        this.J = false;
      }
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    z0.r(this, paramInt1, paramInt2, new h());
  }
  
  public void onBackPressed()
  {
    CalendarWebView localCalendarWebView = this.m;
    if ((localCalendarWebView != null) && (localCalendarWebView.canGoBack()) && (this.m.getVisibility() == 0))
    {
      this.m.goBack();
      return;
    }
    if (!this.H) {
      g0.f("webview_stay_time", new String[] { "strvalue", String.valueOf((int)((System.currentTimeMillis() - this.I + 500L) / 1000L)), "from", this.h });
    }
    super.onBackPressed();
    if (this.c) {
      Utils.A0(this, this.h.equals("holiday_notification"));
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().addFlags(67108864);
    setContentView(q0());
    t0();
    r0();
    if ((this.b != null) && (p0()))
    {
      s0();
      u0();
      y0();
      if (z0.l(this))
      {
        if ((!z0.m()) && (!z0.i(this))) {
          z0.z(this, new e());
        } else {
          x0();
        }
      }
      else {
        G0();
      }
      this.I = System.currentTimeMillis();
      this.K = (getResources().getDisplayMetrics().widthPixels / 1080.0F);
      this.N = getIntent().getStringExtra("share_image_url");
      if (this.i) {
        this.Q = new f();
      }
      return;
    }
    z.c("Cal:D:CalendarWebViewActivity", "mUri is illegal");
    finish();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    Object localObject = this.L;
    if ((localObject != null) && (((Animatable)localObject).isRunning())) {
      this.L.stop();
    }
    localObject = this.M;
    if ((localObject != null) && (((Animatable)localObject).isRunning())) {
      this.M.stop();
    }
    localObject = this.m;
    if (localObject != null)
    {
      ((ViewGroup)((View)localObject).getParent()).removeView(this.m);
      this.m.destroy();
    }
    this.T.removeCallbacksAndMessages(null);
    this.U.shutdown();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    if (paramIntent != null)
    {
      setIntent(paramIntent);
      z0();
      this.J = true;
      t0();
      if ((this.b != null) && (p0()))
      {
        x0();
        this.I = System.currentTimeMillis();
      }
      else
      {
        finish();
      }
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if ((paramMenuItem.getItemId() == 16908332) && (this.c)) {
      Utils.A0(this, this.h.equals("holiday_notification"));
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPause()
  {
    super.onPause();
    this.m.onPause();
    this.H = true;
    if (this.i)
    {
      j4.b.e().g(this.Q);
      j4.b.e().j();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    this.m.onResume();
    this.R.set(false);
    if (this.i)
    {
      j4.b.e().i();
      j4.b.e().h(this.Q);
    }
    Object localObject = this.h;
    if ((localObject != null) && ((((String)localObject).equals("holiday_card")) || (this.h.equals("holiday_notification"))))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(this.b.getQueryParameter("holidayId"));
      ((StringBuilder)localObject).append("_");
      ((StringBuilder)localObject).append(this.b.getQueryParameter("title"));
      localObject = ((StringBuilder)localObject).toString();
      g0.f("webview_display", new String[] { "from", this.h, "name", localObject });
    }
    else
    {
      g0.f("webview_display", new String[] { "from", this.h });
    }
    u9.a.b(CalendarApplication.e());
    u9.a.b(this);
  }
  
  protected int q0()
  {
    return 2131559001;
  }
  
  public void r(String paramString) {}
  
  public void showGuidePop(View paramView)
  {
    final va.b localb = new va.b(this);
    localb.h(10);
    localb.p(getApplicationContext().getResources().getString(2131887475));
    if (!isFinishing()) {
      localb.q(paramView, -50, -20, false);
    }
    paramView = new d(localb);
    this.S = paramView;
    this.T.postDelayed(paramView, 3000L);
  }
  
  public void y0()
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("setActionBarStyle(): style = ");
    ((StringBuilder)localObject1).append(this.e);
    z.a("Cal:D:CalendarWebViewActivity", ((StringBuilder)localObject1).toString());
    if (!TextUtils.isEmpty(this.d)) {
      this.v.setText(this.d);
    }
    localObject1 = this.e;
    int i1 = 0;
    if ((localObject1 != null) && (((PageData.StyleData)localObject1).hideActionBar))
    {
      this.q.setVisibility(8);
    }
    else
    {
      this.q.setVisibility(0);
      localObject1 = this.e;
      if ((localObject1 != null) && (!TextUtils.isEmpty(((PageData.StyleData)localObject1).actionBarBg)))
      {
        try
        {
          i2 = Color.parseColor(this.e.actionBarBg);
          localObject1 = this.r;
          localObject3 = new android/graphics/drawable/ColorDrawable;
          ((ColorDrawable)localObject3).<init>(i2);
          ((View)localObject1).setBackgroundDrawable((Drawable)localObject3);
        }
        catch (Exception localException1)
        {
          Object localObject3 = new StringBuilder();
          ((StringBuilder)localObject3).append("set actionbar bg color error: ");
          ((StringBuilder)localObject3).append(localException1);
          z.c("Cal:D:CalendarWebViewActivity", ((StringBuilder)localObject3).toString());
        }
        boolean bool = this.e.darkMode;
        this.O = bool;
        try
        {
          this.l.a(bool);
          if (this.O)
          {
            this.v.setTextColor(-1);
            this.w.setImageResource(2131231456);
            this.x.setImageResource(2131231610);
          }
          else
          {
            this.v.setTextColor(-16777216);
            this.w.setImageResource(2131231457);
            this.x.setImageResource(2131231613);
          }
        }
        catch (Exception localException2)
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append("set actionbar text color error: ");
          ((StringBuilder)localObject2).append(localException2);
          z.c("Cal:D:CalendarWebViewActivity", ((StringBuilder)localObject2).toString());
        }
      }
      else
      {
        if ("history".equals(this.j))
        {
          this.q.setBackgroundColor(getResources().getColor(2131100974));
          this.r.setBackgroundDrawable(new ColorDrawable(getResources().getColor(2131100974)));
        }
        else
        {
          this.r.setBackgroundColor(getResources().getColor(2131099798));
        }
        if (x0.s0(getApplicationContext()))
        {
          this.v.setTextColor(-1);
          this.w.setImageResource(2131231456);
          this.x.setImageResource(2131232426);
        }
        else
        {
          this.v.setTextColor(-16777216);
          this.w.setImageResource(2131231457);
          this.x.setImageResource(2131232427);
        }
      }
      i2 = x0.t(this);
      if (i2 != 0)
      {
        localObject2 = this.q.getLayoutParams();
        ((ViewGroup.LayoutParams)localObject2).height = (i2 + getResources().getDimensionPixelOffset(2131167083));
        this.q.setLayoutParams((ViewGroup.LayoutParams)localObject2);
      }
    }
    Object localObject2 = this.e;
    if (localObject2 != null) {
      if ((localObject2 != null) && (!((PageData.StyleData)localObject2).immersion))
      {
        localObject2 = this.q;
        if ((localObject2 != null) && (((View)localObject2).getVisibility() == 0)) {}
      }
      else
      {
        localObject2 = (FrameLayout.LayoutParams)this.m.getLayoutParams();
        ((FrameLayout.LayoutParams)localObject2).topMargin = 20;
        this.m.setLayoutParams((ViewGroup.LayoutParams)localObject2);
        localObject2 = this.m;
        ((View)localObject2).setPadding(((View)localObject2).getPaddingLeft(), 0, this.m.getRight(), this.m.getBottom());
        if (this.q.getVisibility() != 0) {
          break label689;
        }
        localObject2 = this.e;
        if ((((PageData.StyleData)localObject2).immersionAlphaStart <= 0) || (((PageData.StyleData)localObject2).immersionAlphaEnd <= 0)) {
          break label689;
        }
        this.r.setAlpha(0.0F);
        this.v.setAlpha(0.0F);
        break label689;
      }
    }
    int i3 = getResources().getDimensionPixelOffset(2131167083);
    int i2 = x0.t(this);
    localObject2 = (FrameLayout.LayoutParams)this.m.getLayoutParams();
    ((FrameLayout.LayoutParams)localObject2).topMargin = (i3 + i2);
    this.m.setLayoutParams((ViewGroup.LayoutParams)localObject2);
    try
    {
      label689:
      i3 = getResources().getColor(2131100975);
      localObject2 = this.e;
      i2 = i3;
      if (localObject2 != null)
      {
        i2 = i3;
        if (!TextUtils.isEmpty(((PageData.StyleData)localObject2).windowBackgroundColor)) {
          i2 = Color.parseColor(this.e.windowBackgroundColor);
        }
      }
      this.m.setBackgroundColor(i2);
      this.n.setBackgroundColor(i2);
    }
    catch (Exception localException3)
    {
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("set window background color error: ");
      ((StringBuilder)localObject2).append(localException3);
      z.c("Cal:D:CalendarWebViewActivity", ((StringBuilder)localObject2).toString());
    }
    localObject2 = this.x;
    if (this.f) {
      i2 = i1;
    } else {
      i2 = 4;
    }
    ((ImageView)localObject2).setVisibility(i2);
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      g0.f("webview_share_clicked", new String[] { "from", CalendarWebViewActivity.n0(CalendarWebViewActivity.this) });
    }
  }
  
  class b
    implements Runnable
  {
    b(boolean paramBoolean) {}
    
    public void run()
    {
      if (paramBoolean)
      {
        if ("history".equals(CalendarWebViewActivity.o0(CalendarWebViewActivity.this)))
        {
          CalendarWebViewActivity.b0(CalendarWebViewActivity.this).setImageDrawable(CalendarWebViewActivity.this.getResources().getDrawable(2131230950));
          CalendarWebViewActivity.c0(CalendarWebViewActivity.this).setTextColor(CalendarWebViewActivity.this.getResources().getColor(2131099961));
        }
        else
        {
          CalendarWebViewActivity.b0(CalendarWebViewActivity.this).setImageDrawable(CalendarWebViewActivity.this.getResources().getDrawable(2131230952));
          CalendarWebViewActivity.c0(CalendarWebViewActivity.this).setTextColor(CalendarWebViewActivity.this.getResources().getColor(2131100983));
        }
        CalendarWebViewActivity localCalendarWebViewActivity = CalendarWebViewActivity.this;
        CalendarWebViewActivity.e0(localCalendarWebViewActivity, (Animatable)CalendarWebViewActivity.b0(localCalendarWebViewActivity).getDrawable());
        CalendarWebViewActivity.d0(CalendarWebViewActivity.this).start();
      }
      else if (CalendarWebViewActivity.d0(CalendarWebViewActivity.this) != null)
      {
        CalendarWebViewActivity.d0(CalendarWebViewActivity.this).stop();
      }
    }
  }
  
  class c
    implements ValueCallback<String>
  {
    c(Runnable paramRunnable) {}
    
    public void a(String paramString)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onReceiveValue(): javascript:wrapShareData(), return value: ");
      localStringBuilder.append(paramString);
      z.a("Cal:D:CalendarWebViewActivity", localStringBuilder.toString());
      try
      {
        paramString = (PageData)x.a(paramString, PageData.class);
        if (paramString != null)
        {
          paramString = paramString.share;
          if (paramString != null) {
            CalendarWebViewActivity.f0(CalendarWebViewActivity.this, paramString);
          }
        }
      }
      catch (Exception paramString)
      {
        z.d("Cal:D:CalendarWebViewActivity", "onReceiveValue(): parse PageData scheme error: ", paramString);
      }
      paramRunnable.run();
    }
  }
  
  class d
    implements Runnable
  {
    d(va.b paramb) {}
    
    public void run()
    {
      localb.a(true);
    }
  }
  
  class e
    implements z0.h
  {
    e() {}
    
    public void a()
    {
      CalendarWebViewActivity.Z(CalendarWebViewActivity.this);
    }
    
    public void b(boolean paramBoolean)
    {
      CalendarWebViewActivity.this.finish();
    }
  }
  
  class f
    implements j4.a
  {
    f() {}
    
    public void a(String paramString)
    {
      if (CalendarWebViewActivity.a0(CalendarWebViewActivity.this).get()) {
        return;
      }
      CalendarWebViewActivity.a0(CalendarWebViewActivity.this).set(true);
      g0.d("holiday_detail_screenshot");
    }
  }
  
  class g
    implements z0.h
  {
    g() {}
    
    public void a()
    {
      CalendarWebViewActivity.Z(CalendarWebViewActivity.this);
    }
    
    public void b(boolean paramBoolean)
    {
      CalendarWebViewActivity.this.finish();
    }
  }
  
  class h
    implements z0.h
  {
    h() {}
    
    public void a()
    {
      CalendarWebViewActivity.Z(CalendarWebViewActivity.this);
    }
    
    public void b(boolean paramBoolean)
    {
      if (paramBoolean) {
        CalendarWebViewActivity.this.finish();
      } else {
        CalendarWebViewActivity.h0(CalendarWebViewActivity.this);
      }
    }
  }
  
  class i
    implements View.OnClickListener
  {
    i() {}
    
    public void onClick(View paramView)
    {
      CalendarWebViewActivity.this.F0(false);
    }
  }
  
  class j
    implements View.OnClickListener
  {
    j() {}
    
    public void onClick(View paramView)
    {
      if (TextUtils.isEmpty(CalendarWebViewActivity.i0(CalendarWebViewActivity.this))) {
        CalendarWebViewActivity.j0(CalendarWebViewActivity.this);
      } else {
        CalendarWebViewActivity.k0(CalendarWebViewActivity.this);
      }
    }
  }
  
  class k
    implements View.OnClickListener
  {
    k() {}
    
    public void onClick(View paramView)
    {
      CalendarWebViewActivity.l0(CalendarWebViewActivity.this).reload();
      if (TextUtils.isEmpty(CalendarWebViewActivity.l0(CalendarWebViewActivity.this).getUrl())) {
        CalendarWebViewActivity.Z(CalendarWebViewActivity.this);
      }
    }
  }
  
  class l
    implements View.OnClickListener
  {
    l() {}
    
    public void onClick(View paramView)
    {
      CalendarWebViewActivity.this.onBackPressed();
    }
  }
  
  class m
    implements View.OnClickListener
  {
    m() {}
    
    public void onClick(View paramView)
    {
      CalendarWebViewActivity.m0(CalendarWebViewActivity.this).setEnabled(false);
      CalendarWebViewActivity.this.E0(true);
      CalendarWebViewActivity.l0(CalendarWebViewActivity.this).evaluateJavascript("javascript:getShareImage()", new a());
    }
    
    class a
      implements ValueCallback<String>
    {
      a() {}
      
      public void a(String paramString) {}
    }
  }
  
  private static class n
    implements Runnable
  {
    private final WeakReference<CalendarWebViewActivity> a;
    private final String b;
    private final String c;
    private final String d;
    
    public n(CalendarWebViewActivity paramCalendarWebViewActivity, String paramString1, String paramString2, String paramString3)
    {
      this.a = new WeakReference(paramCalendarWebViewActivity);
      this.b = paramString1;
      this.c = paramString2;
      this.d = paramString3;
    }
    
    public void run()
    {
      Bitmap localBitmap = d.c(this.b);
      g0.f("webview_share_clicked", new String[] { "from", this.d });
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.c);
      localStringBuilder.append("/");
      Utils.V0(localBitmap, localStringBuilder.toString(), "calendar_history.png");
      new Handler(Looper.getMainLooper()).post(new a(this));
    }
  }
  
  private static class o
    implements Runnable
  {
    private final WeakReference<CalendarWebViewActivity> a;
    private final String b;
    private final String c;
    private final String d;
    
    public o(CalendarWebViewActivity paramCalendarWebViewActivity, String paramString1, String paramString2, String paramString3)
    {
      this.a = new WeakReference(paramCalendarWebViewActivity);
      this.b = paramString1;
      this.c = paramString2;
      this.d = paramString3;
    }
    
    public void run()
    {
      g0.f("webview_share_clicked", new String[] { "from", this.d });
      Bitmap localBitmap = Utils.q(this.b);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.c);
      localStringBuilder.append("/");
      Utils.V0(localBitmap, localStringBuilder.toString(), "calendar_share.png");
      new Handler(Looper.getMainLooper()).post(new b(this));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.web.CalendarWebViewActivity
 * JD-Core Version:    0.7.0.1
 */