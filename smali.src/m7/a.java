package m7;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.BaseBundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebView.HitTestResult;
import android.webkit.WebViewClient;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.xiaomi.verificationsdk.internal.EnvEncryptUtils;
import com.xiaomi.verificationsdk.internal.ErrorInfo;
import com.xiaomi.verificationsdk.internal.ErrorInfo.ErrorCode;
import com.xiaomi.verificationsdk.internal.b.a;
import com.xiaomi.verificationsdk.internal.c;
import com.xiaomi.verificationsdk.internal.d.b;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
import n7.g;
import n7.h;
import n7.i;
import org.json.JSONException;
import org.json.JSONObject;

public class a
{
  private static final ExecutorService G = ;
  private boolean A = true;
  private View B;
  private boolean C = false;
  private final AtomicBoolean D = new AtomicBoolean(false);
  private DialogInterface.OnKeyListener E = new a();
  private DialogInterface.OnDismissListener F = new d();
  private com.xiaomi.passport.uicontroller.a<n7.d> a;
  private com.xiaomi.verificationsdk.internal.a b;
  private o c;
  private l d;
  private View e;
  private WebView f;
  private LinearLayout g;
  private AlertDialog h;
  private Handler i;
  private String j;
  private boolean k;
  private boolean l;
  private boolean m;
  private boolean n;
  private String o;
  private String p;
  private String q;
  private String r;
  private String s;
  private boolean t;
  private n u = new a.n.a().a();
  private n v = new a.n.a().a();
  private int w;
  private int x;
  private h y;
  private WeakReference<Activity> z;
  
  public a(Activity paramActivity)
  {
    if (paramActivity != null)
    {
      this.i = new Handler(Looper.getMainLooper());
      this.z = new WeakReference(paramActivity);
      this.b = new com.xiaomi.verificationsdk.internal.a(paramActivity.getApplicationContext());
      this.y = new h(paramActivity, "VerificationConfig");
      return;
    }
    throw new IllegalArgumentException("activity  should not be null");
  }
  
  private static String Y(String paramString, Map<String, String> paramMap)
  {
    if (paramString != null)
    {
      paramString = Uri.parse(paramString).buildUpon();
      if ((paramMap != null) && (!paramMap.isEmpty()))
      {
        Iterator localIterator = paramMap.entrySet().iterator();
        while (localIterator.hasNext())
        {
          paramMap = (Map.Entry)localIterator.next();
          paramString.appendQueryParameter((String)paramMap.getKey(), (String)paramMap.getValue());
        }
      }
      return paramString.build().toString();
    }
    throw new NullPointerException("origin is not allowed null");
  }
  
  private void Z(Window paramWindow, WindowManager paramWindowManager)
  {
    paramWindow.clearFlags(131072);
    Display localDisplay = paramWindowManager.getDefaultDisplay();
    paramWindowManager = paramWindow.getAttributes();
    paramWindowManager.width = localDisplay.getWidth();
    paramWindowManager.gravity = 81;
    paramWindow.setAttributes(paramWindowManager);
  }
  
  private void a0(Activity paramActivity, View paramView, Window paramWindow, n paramn, boolean paramBoolean)
  {
    paramWindow.clearFlags(131072);
    int i1 = paramn.a;
    if (i1 > 0)
    {
      paramView.setBackgroundResource(i1);
    }
    else
    {
      localObject = paramn.b;
      if (localObject != null) {
        paramView.setBackgroundDrawable((Drawable)localObject);
      } else {
        paramView.setBackgroundColor(paramActivity.getResources().getColor(n5.b.e));
      }
    }
    paramView = paramWindow.getAttributes();
    View localView = paramWindow.getDecorView();
    int i2 = 0;
    localView.setBackgroundColor(0);
    Object localObject = paramn.h;
    if (localObject != null)
    {
      localView.setPadding(((Rect)localObject).left, ((Rect)localObject).top, ((Rect)localObject).right, ((Rect)localObject).bottom);
      int i3 = paramn.c;
      if ((i3 & 0x50) != 0)
      {
        i1 = paramn.h.bottom;
      }
      else
      {
        i1 = i2;
        if ((i3 & 0x30) != 0) {
          i1 = paramn.h.top;
        }
      }
    }
    else
    {
      i1 = i2;
      if (paramn.a())
      {
        localView.setPadding(0, 0, 0, 0);
        i1 = i2;
      }
    }
    if (paramn.a())
    {
      paramView.width = paramn.d;
      paramView.height = (paramn.e + i1);
    }
    else
    {
      localObject = new Point();
      paramActivity.getWindowManager().getDefaultDisplay().getSize((Point)localObject);
      if (paramBoolean) {
        i1 = ((Point)localObject).y;
      } else {
        i1 = ((Point)localObject).x;
      }
      paramView.width = i1;
    }
    paramView.gravity = paramn.c;
    paramWindow.setAttributes(paramView);
  }
  
  private void b0()
  {
    G.execute(new h());
  }
  
  static boolean c0(AtomicBoolean paramAtomicBoolean)
  {
    return paramAtomicBoolean.compareAndSet(false, true);
  }
  
  private void d0()
  {
    this.b.h();
    x0();
  }
  
  private Activity f0()
  {
    Object localObject = this.z;
    if (localObject == null) {
      return null;
    }
    localObject = (Activity)((Reference)localObject).get();
    if ((localObject != null) && (!((Activity)localObject).isFinishing())) {
      return localObject;
    }
    com.xiaomi.accountsdk.utils.b.g("VerificationManager", "Activity is destroy");
    return null;
  }
  
  private com.xiaomi.passport.uicontroller.a<n7.d> g0(final String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      b localb = new b();
      paramString = new com.xiaomi.passport.uicontroller.a(new c(paramString), localb);
      this.a = paramString;
      G.submit(paramString);
      return this.a;
    }
    throw new IllegalArgumentException("getConfig: url is null");
  }
  
  public static com.xiaomi.verificationsdk.internal.b h0(int paramInt, String paramString)
  {
    return new b.a().e(paramInt).g(paramString).d();
  }
  
  private String i0(Context paramContext)
  {
    String str = WebSettings.getDefaultUserAgent(paramContext);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("");
    localStringBuilder.append(str);
    localStringBuilder.append(" androidVerifySDK/");
    localStringBuilder.append("5.3.0.release.8");
    localStringBuilder.append(" androidVerifySDK/VersionCode/");
    localStringBuilder.append(5308);
    localStringBuilder.append(" AppPackageName/");
    localStringBuilder.append(paramContext.getPackageName());
    return localStringBuilder.toString();
  }
  
  private void j0()
  {
    AlertDialog localAlertDialog = this.h;
    if (localAlertDialog != null) {
      localAlertDialog.hide();
    }
  }
  
  private boolean l0()
  {
    return true;
  }
  
  private void m0(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    paramString = f0();
    if (paramString != null) {
      paramString.startActivity(localIntent);
    }
  }
  
  static void n0(AtomicBoolean paramAtomicBoolean)
  {
    paramAtomicBoolean.getAndSet(false);
  }
  
  private void t0(final int paramInt1, final int paramInt2)
  {
    if (f0() == null) {
      return;
    }
    this.i.post(new f(paramInt2, paramInt1));
    this.i.postDelayed(new g(), 2000L);
  }
  
  private void u0(final String paramString)
  {
    if (f0() == null) {
      return;
    }
    if (!TextUtils.isEmpty(paramString))
    {
      this.i.post(new e(paramString));
      return;
    }
    throw new IllegalArgumentException("showDialog:url should not be null");
  }
  
  private void v0()
  {
    Object localObject = f0();
    if (localObject == null) {
      return;
    }
    if (n7.f.a((Context)localObject))
    {
      if (this.h != null) {
        this.i.post(new j());
      }
    }
    else
    {
      localObject = ErrorInfo.ErrorCode.ERROR_CONNECT_UNREACHABLE_EXCEPTION;
      t0(((ErrorInfo.ErrorCode)localObject).getCode(), ErrorInfo.getMsgIdGivenErrorCode((ErrorInfo.ErrorCode)localObject));
      localObject = h0(((ErrorInfo.ErrorCode)localObject).getCode(), "network disconnected");
      this.i.post(new k((com.xiaomi.verificationsdk.internal.b)localObject));
    }
  }
  
  private void w0(final String paramString)
  {
    Activity localActivity = f0();
    if (localActivity == null) {
      return;
    }
    if (n7.f.a(localActivity))
    {
      u0(paramString);
    }
    else
    {
      paramString = ErrorInfo.ErrorCode.ERROR_CONNECT_UNREACHABLE_EXCEPTION;
      t0(paramString.getCode(), ErrorInfo.getMsgIdGivenErrorCode(paramString));
      paramString = h0(paramString.getCode(), "network disconnected");
      this.i.post(new i(paramString));
    }
  }
  
  private void x0()
  {
    this.w = this.y.a("maxduration", 5000);
    int i1 = this.y.a("frequency", 50);
    this.x = i1;
    this.b.i(i1, this.w);
    if (Math.abs(System.currentTimeMillis() - this.y.b("lastDownloadTime", 0L)) > 86400000L)
    {
      com.xiaomi.accountsdk.utils.b.g("VerificationManager", "get config from server");
      g0(n7.e.a(this.r, "/captcha/v2/config"));
    }
  }
  
  public void e0()
  {
    AlertDialog localAlertDialog = this.h;
    if (localAlertDialog != null)
    {
      localAlertDialog.dismiss();
      this.h = null;
    }
  }
  
  public void k0()
  {
    x0();
  }
  
  public a o0(String paramString)
  {
    this.p = paramString;
    return this;
  }
  
  public a p0(String paramString)
  {
    this.r = paramString;
    return this;
  }
  
  public a q0(Boolean paramBoolean)
  {
    this.t = paramBoolean.booleanValue();
    return this;
  }
  
  public a r0(String paramString)
  {
    this.o = paramString;
    return this;
  }
  
  public a s0(o paramo)
  {
    this.c = paramo;
    return this;
  }
  
  public void y0()
  {
    if (!c0(this.D)) {
      return;
    }
    if (!TextUtils.isEmpty(this.o))
    {
      if (!TextUtils.isEmpty(this.p))
      {
        this.A = true;
        if (this.c != null)
        {
          if (l0())
          {
            this.l = false;
            b0();
          }
          else
          {
            v0();
          }
          return;
        }
        throw new IllegalArgumentException("startVerify: mVerifyResultCallback should not be null");
      }
      throw new IllegalArgumentException("action is null");
    }
    throw new IllegalArgumentException("key is null");
  }
  
  class a
    implements DialogInterface.OnKeyListener
  {
    a() {}
    
    public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
    {
      if (paramInt == 4)
      {
        a.a(a.this);
        if (a.b(a.this) != null) {
          a.D(a.this).post(new a());
        }
        return true;
      }
      return false;
    }
    
    class a
      implements Runnable
    {
      a() {}
      
      public void run()
      {
        a.b(a.this).c();
        a.n0(a.s(a.this));
      }
    }
  }
  
  class b
    extends com.xiaomi.passport.uicontroller.a.b<n7.d>
  {
    b() {}
    
    public void a(com.xiaomi.passport.uicontroller.a<n7.d> parama)
    {
      try
      {
        parama = (n7.d)parama.get();
        if (parama != null)
        {
          a.N(a.this, parama.a());
          a.P(a.this, parama.b());
          a.R(a.this).d("lastDownloadTime", System.currentTimeMillis());
          a.R(a.this).c("frequency", a.M(a.this));
          a.R(a.this).c("maxduration", a.O(a.this));
        }
      }
      catch (ExecutionException parama)
      {
        parama.printStackTrace();
      }
      catch (InterruptedException parama)
      {
        parama.printStackTrace();
      }
    }
  }
  
  class c
    implements Callable<n7.d>
  {
    c(String paramString) {}
    
    public n7.d a()
      throws Exception
    {
      return c.a(paramString);
    }
  }
  
  class d
    implements DialogInterface.OnDismissListener
  {
    d() {}
    
    public void onDismiss(DialogInterface paramDialogInterface)
    {
      if ((a.Q(a.this)) && (a.b(a.this) != null)) {
        a.D(a.this).post(new a());
      }
    }
    
    class a
      implements Runnable
    {
      a() {}
      
      public void run()
      {
        a.b(a.this).c();
        a.n0(a.s(a.this));
      }
    }
  }
  
  class e
    implements Runnable
  {
    e(String paramString) {}
    
    public void run()
    {
      Activity localActivity = a.T(a.this);
      if ((localActivity != null) && (!a.U(a.this)))
      {
        Object localObject1 = new HashMap();
        ((Map)localObject1).put("_modifyStyle", "true");
        Object localObject2 = a.V(paramString, (Map)localObject1);
        boolean bool;
        if (localActivity.getResources().getConfiguration().orientation == 2) {
          bool = true;
        } else {
          bool = false;
        }
        localObject1 = a.this;
        if (bool) {
          localObject1 = a.W((a)localObject1);
        } else {
          localObject1 = a.X((a)localObject1);
        }
        if (a.c(a.this) == null)
        {
          a.d(a.this, localActivity.getLayoutInflater().inflate(n5.f.E, null));
          localObject3 = new FrameLayout.LayoutParams(-1, -2);
          ((FrameLayout.LayoutParams)localObject3).gravity = 17;
          a.c(a.this).setLayoutParams((ViewGroup.LayoutParams)localObject3);
        }
        if (a.e(a.this) == null)
        {
          localObject3 = a.this;
          a.f((a)localObject3, a.c((a)localObject3).findViewById(n5.e.L0));
        }
        Object localObject3 = a.e(a.this);
        int i;
        if (((a.n)localObject1).a()) {
          i = 0;
        } else {
          i = 8;
        }
        ((View)localObject3).setVisibility(i);
        if (a.g(a.this) == null)
        {
          localObject3 = a.this;
          a.h((a)localObject3, (WebView)a.c((a)localObject3).findViewById(n5.e.K0));
        }
        if (a.i(a.this) == null)
        {
          localObject3 = a.this;
          a.j((a)localObject3, (LinearLayout)a.c((a)localObject3).findViewById(n5.e.H0));
        }
        if (a.k(a.this) != null)
        {
          a.k(a.this).dismiss();
          a.l(a.this, null);
        }
        localObject3 = new AlertDialog.Builder(localActivity, 16974394);
        if ((0x2 & localActivity.getApplicationInfo().flags) != 0) {
          WebView.setWebContentsDebuggingEnabled(true);
        }
        Object localObject4 = a.g(a.this).getSettings();
        ((WebSettings)localObject4).setSupportMultipleWindows(true);
        ((WebSettings)localObject4).setJavaScriptEnabled(true);
        ((WebSettings)localObject4).setUseWideViewPort(true);
        ((WebSettings)localObject4).setUserAgentString(a.m(a.this, localActivity));
        a.g(a.this).setWebChromeClient(new a());
        a.g(a.this).setWebViewClient(new b());
        localObject4 = (ViewGroup)a.c(a.this).getParent();
        if (localObject4 != null) {
          ((ViewGroup)localObject4).removeAllViews();
        }
        a.l(a.this, ((AlertDialog.Builder)localObject3).create());
        a.k(a.this).setView(a.c(a.this));
        a.k(a.this).setOnKeyListener(a.u(a.this));
        a.k(a.this).setOnDismissListener(a.v(a.this));
        a.k(a.this).show();
        a.g(a.this).setBackgroundColor(0);
        localObject3 = (ViewGroup.MarginLayoutParams)a.g(a.this).getLayoutParams();
        localObject4 = ((a.n)localObject1).i;
        if (localObject4 != null) {
          ((ViewGroup.MarginLayoutParams)localObject3).setMargins(((Rect)localObject4).left, ((Rect)localObject4).top, ((Rect)localObject4).right, ((Rect)localObject4).bottom);
        } else {
          ((ViewGroup.MarginLayoutParams)localObject3).setMargins(0, 0, 0, 0);
        }
        if (((a.n)localObject1).b())
        {
          ((ViewGroup.MarginLayoutParams)localObject3).width = ((a.n)localObject1).f;
          ((ViewGroup.MarginLayoutParams)localObject3).height = ((a.n)localObject1).g;
        }
        a.g(a.this).setLayoutParams((ViewGroup.LayoutParams)localObject3);
        a.g(a.this).loadUrl((String)localObject2);
        localObject2 = a.this;
        a.w((a)localObject2, localActivity, a.c((a)localObject2).findViewById(n5.e.z), a.k(a.this).getWindow(), (a.n)localObject1, bool);
      }
    }
    
    class a
      extends WebChromeClient
    {
      a() {}
      
      public boolean onCreateWindow(WebView paramWebView, boolean paramBoolean1, boolean paramBoolean2, Message paramMessage)
      {
        paramWebView = paramWebView.getHitTestResult().getExtra();
        a.n(a.this, paramWebView);
        return false;
      }
    }
    
    class b
      extends WebViewClient
    {
      b() {}
      
      public void onPageFinished(WebView paramWebView, String paramString)
      {
        a.i(a.this).setVisibility(8);
        if (a.g(a.this).getVisibility() == 4) {
          a.g(a.this).setVisibility(0);
        }
        super.onPageFinished(paramWebView, paramString);
      }
      
      public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
      {
        a.i(a.this).setVisibility(0);
        if (a.g(a.this).getVisibility() == 0) {
          a.g(a.this).setVisibility(4);
        }
        super.onPageStarted(paramWebView, paramString, paramBitmap);
      }
      
      public boolean shouldOverrideUrlLoading(final WebView paramWebView, String paramString)
      {
        if (paramString.contains("/captcha/status"))
        {
          Object localObject = n7.f.b(paramString);
          if (localObject != null)
          {
            int i = Integer.parseInt(((BaseBundle)localObject).getString("code"));
            paramWebView = ((BaseBundle)localObject).getString("errorCode");
            paramString = ((BaseBundle)localObject).getString("errorStatus");
            String str = ((BaseBundle)localObject).getString("flag");
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("code=");
            ((StringBuilder)localObject).append(i);
            ((StringBuilder)localObject).append(";errorCode=");
            ((StringBuilder)localObject).append(paramWebView);
            ((StringBuilder)localObject).append(";errorStatus=");
            ((StringBuilder)localObject).append(paramString);
            com.xiaomi.accountsdk.utils.b.g("VerificationManager", ((StringBuilder)localObject).toString());
            if (i == 0)
            {
              a.o(a.this);
              a.S(a.this, false);
              a.this.e0();
              a.p(a.this, "");
              a.r(a.this, false);
              paramWebView = new d.b().e(str).d(g.b()).c();
              a.D(a.this).post(new a(paramWebView));
              return true;
            }
            if (i == 1)
            {
              a.S(a.this, false);
              a.t(a.this, true);
              a.this.e0();
              a.D(a.this).post(new b());
            }
            else if (i == 2)
            {
              a.S(a.this, false);
              a.this.e0();
              a.r(a.this, true);
              paramWebView = a.h0(ErrorInfo.ErrorCode.ERROR_EVENTID_EXPIRED.getCode(), "eventid expired");
              a.D(a.this).post(new c(paramWebView));
            }
            else if (i == 3)
            {
              a.S(a.this, false);
              a.this.e0();
              a.p(a.this, "");
              a.r(a.this, false);
              paramWebView = new d.b().e(EnvEncryptUtils.g()).c();
              a.D(a.this).post(new d(paramWebView));
            }
            else if ((i == 95008) || (i == 95009))
            {
              a.S(a.this, false);
              a.this.e0();
              a.r(a.this, false);
              int j = ErrorInfo.ErrorCode.ERROR_VERIFY_SERVER.getCode();
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append("code=");
              ((StringBuilder)localObject).append(i);
              ((StringBuilder)localObject).append(";errorCode=");
              ((StringBuilder)localObject).append(paramWebView);
              ((StringBuilder)localObject).append(";errorStatus=");
              ((StringBuilder)localObject).append(paramString);
              paramWebView = a.h0(j, ((StringBuilder)localObject).toString());
              a.D(a.this).post(new e(paramWebView));
            }
          }
        }
        return false;
      }
      
      class a
        implements Runnable
      {
        a(com.xiaomi.verificationsdk.internal.d paramd) {}
        
        public void run()
        {
          a.b(a.this).a(paramWebView);
          a.n0(a.s(a.this));
        }
      }
      
      class b
        implements Runnable
      {
        b() {}
        
        public void run()
        {
          a.b(a.this).c();
          a.n0(a.s(a.this));
        }
      }
      
      class c
        implements Runnable
      {
        c(com.xiaomi.verificationsdk.internal.b paramb) {}
        
        public void run()
        {
          a.b(a.this).b(paramWebView);
          a.n0(a.s(a.this));
        }
      }
      
      class d
        implements Runnable
      {
        d(com.xiaomi.verificationsdk.internal.d paramd) {}
        
        public void run()
        {
          a.b(a.this).a(paramWebView);
          a.n0(a.s(a.this));
        }
      }
      
      class e
        implements Runnable
      {
        e(com.xiaomi.verificationsdk.internal.b paramb) {}
        
        public void run()
        {
          a.b(a.this).b(paramWebView);
          a.n0(a.s(a.this));
        }
      }
    }
  }
  
  class f
    implements Runnable
  {
    f(int paramInt1, int paramInt2) {}
    
    public void run()
    {
      Activity localActivity = a.T(a.this);
      if (localActivity == null) {
        return;
      }
      Object localObject = new AlertDialog.Builder(localActivity, 16974394);
      TextView localTextView = new TextView(localActivity);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(localActivity.getResources().getString(paramInt2));
      localStringBuilder.append("(");
      localStringBuilder.append(paramInt1);
      localStringBuilder.append(")");
      localTextView.setText(localStringBuilder.toString());
      localTextView.setPadding(0, 40, 0, 0);
      localTextView.setGravity(17);
      ((AlertDialog.Builder)localObject).setView(localTextView);
      a.l(a.this, ((AlertDialog.Builder)localObject).create());
      a.k(a.this).show();
      localObject = a.this;
      a.x((a)localObject, a.k((a)localObject).getWindow(), localActivity.getWindowManager());
    }
  }
  
  class g
    implements Runnable
  {
    g() {}
    
    public void run()
    {
      a.S(a.this, false);
      a.this.e0();
    }
  }
  
  class h
    implements Runnable
  {
    h() {}
    
    public void run()
    {
      if (TextUtils.isEmpty(a.y(a.this).p())) {
        a.y(a.this).g();
      }
      try
      {
        Object localObject1 = new org/json/JSONObject;
        ((JSONObject)localObject1).<init>(a.y(a.this).p());
        localObject2 = ((JSONObject)localObject1).getJSONObject("env");
        if (a.z(a.this)) {
          i = 1;
        } else {
          i = 0;
        }
        ((JSONObject)localObject2).put("voiceover", i);
        ((JSONObject)localObject1).put("env", localObject2);
        ((JSONObject)localObject1).put("force", a.A(a.this));
        localObject2 = (Activity)a.B(a.this).get();
        if (localObject2 != null) {
          ((JSONObject)localObject1).put("talkBack", i.a((Context)localObject2));
        }
        ((JSONObject)localObject1).put("uid", a.C(a.this));
        ((JSONObject)localObject1).put("version", "2.0");
        ((JSONObject)localObject1).put("scene", a.E(a.this));
        localObject3 = new org/json/JSONObject;
        ((JSONObject)localObject3).<init>();
        localObject2 = new java/security/SecureRandom;
        ((SecureRandom)localObject2).<init>();
        ((JSONObject)localObject3).put("r", ((Random)localObject2).nextLong());
        ((JSONObject)localObject3).put("t", System.currentTimeMillis() / 1000L);
        ((JSONObject)localObject1).put("nonce", localObject3);
        a.y(a.this).H(((JSONObject)localObject1).toString());
        com.xiaomi.verificationsdk.internal.a locala = a.y(a.this);
        localObject2 = a.y(a.this).p();
        localObject3 = a.F(a.this);
        String str1 = a.E(a.this);
        boolean bool1 = a.q(a.this);
        String str2 = a.G(a.this);
        localObject1 = a.H(a.this);
        boolean bool2 = a.I(a.this);
        a locala1 = new m7/a$h$a;
        locala1.<init>(this);
        locala.L((String)localObject2, (String)localObject3, str1, Boolean.valueOf(bool1), str2, (String)localObject1, Boolean.valueOf(bool2), locala1);
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        Object localObject3 = a.this;
        Object localObject2 = ErrorInfo.ErrorCode.ERROR_JSON_EXCEPTION;
        a.J((a)localObject3, ((ErrorInfo.ErrorCode)localObject2).getCode(), ErrorInfo.getMsgIdGivenErrorCode((ErrorInfo.ErrorCode)localObject2));
        int i = ((ErrorInfo.ErrorCode)localObject2).getCode();
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("registere:");
        ((StringBuilder)localObject2).append(localJSONException.toString());
        final com.xiaomi.verificationsdk.internal.b localb = a.h0(i, ((StringBuilder)localObject2).toString());
        a.D(a.this).post(new b(localb));
      }
    }
    
    class a
      implements a.m
    {
      a() {}
      
      public void a(final com.xiaomi.verificationsdk.internal.d paramd)
      {
        a.o(a.this);
        a.D(a.this).post(new a(paramd));
      }
      
      public void b(final com.xiaomi.verificationsdk.internal.b paramb)
      {
        a.J(a.this, paramb.a(), paramb.b());
        a.D(a.this).post(new b(paramb));
      }
      
      public void c(final String paramString)
      {
        if (a.K(a.this) != null) {
          a.K(a.this).a();
        }
        a.p(a.this, paramString);
        a.r(a.this, false);
        a.D(a.this).post(new c(paramString));
      }
      
      class a
        implements Runnable
      {
        a(com.xiaomi.verificationsdk.internal.d paramd) {}
        
        public void run()
        {
          a.b(a.this).a(paramd);
          a.n0(a.s(a.this));
        }
      }
      
      class b
        implements Runnable
      {
        b(com.xiaomi.verificationsdk.internal.b paramb) {}
        
        public void run()
        {
          a.b(a.this).b(paramb);
        }
      }
      
      class c
        implements Runnable
      {
        c(String paramString) {}
        
        public void run()
        {
          a.L(a.this, paramString);
        }
      }
    }
    
    class b
      implements Runnable
    {
      b(com.xiaomi.verificationsdk.internal.b paramb) {}
      
      public void run()
      {
        a.b(a.this).b(localb);
        a.n0(a.s(a.this));
      }
    }
  }
  
  class i
    implements Runnable
  {
    i(com.xiaomi.verificationsdk.internal.b paramb) {}
    
    public void run()
    {
      a.b(a.this).b(paramString);
      a.n0(a.s(a.this));
    }
  }
  
  class j
    implements Runnable
  {
    j() {}
    
    public void run()
    {
      a.k(a.this).show();
    }
  }
  
  class k
    implements Runnable
  {
    k(com.xiaomi.verificationsdk.internal.b paramb) {}
    
    public void run()
    {
      a.b(a.this).b(this.a);
      a.n0(a.s(a.this));
    }
  }
  
  public static abstract interface l
  {
    public abstract void a();
  }
  
  public static abstract interface m
  {
    public abstract void a(com.xiaomi.verificationsdk.internal.d paramd);
    
    public abstract void b(com.xiaomi.verificationsdk.internal.b paramb);
    
    public abstract void c(String paramString);
  }
  
  public static class n
  {
    public final int a;
    public final Drawable b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final Rect h;
    public final Rect i;
    
    private n(int paramInt1, Drawable paramDrawable, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, Rect paramRect1, Rect paramRect2)
    {
      this.a = paramInt1;
      this.b = paramDrawable;
      this.c = paramInt2;
      this.d = paramInt3;
      this.e = paramInt4;
      this.f = paramInt5;
      this.g = paramInt6;
      this.h = paramRect1;
      this.i = paramRect2;
    }
    
    public boolean a()
    {
      boolean bool;
      if ((this.d <= 0) && (this.e <= 0)) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    public boolean b()
    {
      boolean bool;
      if ((this.f <= 0) && (this.g <= 0)) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    public static class a
    {
      private int a = n5.d.l;
      private Drawable b;
      private int c = 81;
      private int d;
      private int e;
      public int f;
      public int g;
      private Rect h;
      private Rect i;
      
      public a.n a()
      {
        return new a.n(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, null);
      }
    }
  }
  
  public static abstract interface o
  {
    public abstract void a(com.xiaomi.verificationsdk.internal.d paramd);
    
    public abstract void b(com.xiaomi.verificationsdk.internal.b paramb);
    
    public abstract void c();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m7.a
 * JD-Core Version:    0.7.0.1
 */