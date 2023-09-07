package com.android.calendar.common;

import android.app.Activity;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Outline;
import android.media.MediaScannerConnection.OnScanCompletedListener;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewOutlineProvider;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintLayout.b;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.miui.calendar.util.CompatFileProvider;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import com.miui.calendar.util.z0.j;
import com.miui.calendar.util.z0.j.a;
import g9.b;
import java.io.File;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import miuix.animation.c;
import miuix.animation.d;
import miuix.animation.f;
import miuix.animation.property.h;
import miuix.appcompat.app.l.b;

public class ShareView
  extends ConstraintLayout
{
  private RecyclerView E;
  private u F;
  private Context G;
  private File H;
  private ImageView I;
  private ImageView J;
  private f K;
  private View L;
  private View M;
  private ShareView N;
  private CardView O;
  private HashMap<String, Object> P = new HashMap();
  
  public ShareView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ShareView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.G = paramContext;
    this.N = this;
  }
  
  private void F(final Intent paramIntent, Uri paramUri)
  {
    paramUri = CompatFileProvider.j(this.G, paramUri);
    paramIntent.setAction("android.intent.action.SEND");
    paramIntent.setType("image/*");
    paramIntent.putExtra("android.intent.extra.STREAM", paramUri);
    paramIntent.addCategory("android.intent.category.DEFAULT");
    paramIntent.addFlags(268435456);
    paramIntent.addFlags(67108864);
    paramIntent.addFlags(8388608);
    paramIntent.addFlags(1);
    this.G.grantUriPermission(paramIntent.getComponent().getPackageName(), paramUri, 3);
    Object localObject = new Intent("miui.intent.action.XMAN_SHARE_MANAGER");
    ((Intent)localObject).setPackage("com.miui.xman");
    final boolean bool;
    if ((!paramIntent.getComponent().getClassName().equals("com.tencent.mm.ui.tools.ShareImgUI")) && (!paramIntent.getComponent().getClassName().equals("com.tencent.mm.ui.tools.ShareToTimeLineUI")) && (!paramIntent.getComponent().getClassName().equals("com.tencent.mm.ui.tools.AddFavoriteUI")) && (!paramIntent.getComponent().getClassName().equals("com.tencent.mm.ui.tools.ShareToStatusUI"))) {
      bool = false;
    } else {
      bool = true;
    }
    int i;
    if ((!paramIntent.getComponent().getClassName().equals("com.sina.weibo.composerinde.ComposerDispatchActivity")) && (!paramIntent.getComponent().getClassName().equals("com.sina.weibo.weiyou.share.WeiyouShareDispatcher"))) {
      i = 0;
    } else {
      i = 1;
    }
    if ((bool) && (J(this.G, (Intent)localObject)))
    {
      this.G.grantUriPermission("com.miui.xman", paramUri, 3);
      ((Intent)localObject).putExtra("android.intent.extra.INTENT", paramIntent);
      try
      {
        this.G.startActivity((Intent)localObject);
      }
      catch (Exception paramIntent)
      {
        z.a("Cal:D:ShareView", paramIntent.toString());
      }
    }
    else if (((bool) && (!b2.a.d(this.G, "key_wechat_sdk_agree", false))) || ((i != 0) && (!b2.a.d(this.G, "key_weibo_sdk_agree", false))))
    {
      localObject = this.G.getResources();
      paramUri = new StringBuilder();
      paramUri.append("《");
      paramUri.append(((Resources)localObject).getString(2131886255));
      paramUri.append("》");
      String str = paramUri.toString();
      if (bool) {
        paramUri = ((Resources)localObject).getString(2131886451, new Object[] { str });
      } else {
        paramUri = ((Resources)localObject).getString(2131886453, new Object[] { str });
      }
      c localc = new c();
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(paramUri);
      i = paramUri.indexOf(str);
      localSpannableStringBuilder.setSpan(new z0.j(localc, ((Resources)localObject).getColor(2131100917)), i, str.length() + i, 33);
      paramUri = new l.b(this.G).n(localSpannableStringBuilder).d(false);
      if (bool) {
        i = 2131886452;
      } else {
        i = 2131886454;
      }
      ((TextView)paramUri.F(i).z(2131886450, new d(bool, paramIntent)).r(2131887803, null).d(false).J().getWindow().findViewById(2131362766)).setMovementMethod(LinkMovementMethod.getInstance());
    }
    else
    {
      try
      {
        this.G.startActivity(paramIntent);
      }
      catch (Exception paramIntent)
      {
        z.a("Cal:D:ShareView", paramIntent.toString());
      }
    }
  }
  
  private void G()
  {
    miuix.animation.a.y(new View[] { this.J }).a().cancel();
    miuix.animation.a.y(new View[] { this.E }).a().cancel();
    miuix.animation.a.y(new View[] { this.L }).a().cancel();
    this.O.setAlpha(0.0F);
    this.O.setScaleX(1.3F);
    this.O.setScaleY(1.3F);
    this.L.setAlpha(0.0F);
    this.J.setAlpha(0.0F);
    this.E.setAlpha(0.0F);
    this.N.setScaleX(1.0F);
    this.N.setScaleY(1.0F);
    this.N.setAlpha(1.0F);
  }
  
  private void I()
  {
    this.I = ((ImageView)findViewById(2131362601));
    this.J = ((ImageView)findViewById(2131362185));
    this.E = ((RecyclerView)findViewById(2131362163));
    this.L = findViewById(2131362009);
    Object localObject = (CardView)findViewById(2131362127);
    this.O = ((CardView)localObject);
    ((CardView)localObject).setRadius(getResources().getDimensionPixelSize(2131166036));
    this.O.setCardBackgroundColor(getResources().getColor(2131100964));
    this.M = findViewById(2131362599);
    if (Build.VERSION.SDK_INT >= 28) {
      this.O.setOutlineSpotShadowColor(getResources().getColor(2131100906));
    }
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)this.M.getLayoutParams();
    localObject = (ConstraintLayout.b)this.E.getLayoutParams();
    if (x0.m0(getContext())) {
      localLayoutParams.height = (getResources().getDimensionPixelOffset(2131167303) - 250);
    } else if (x0.n0(getContext())) {
      localLayoutParams.height = (getResources().getDimensionPixelOffset(2131167303) - 100);
    } else {
      localLayoutParams.height = getResources().getDimensionPixelOffset(2131167303);
    }
    if (!DeviceUtils.N(getContext()))
    {
      localLayoutParams.height -= 100;
      ((ViewGroup.MarginLayoutParams)localObject).bottomMargin = 0;
    }
    else
    {
      ((ViewGroup.MarginLayoutParams)localObject).bottomMargin = getResources().getDimensionPixelOffset(2131165908);
    }
    this.E.setLayoutParams((ViewGroup.LayoutParams)localObject);
    this.M.setLayoutParams(localLayoutParams);
    x0.s0(this.G);
    this.J.setOnClickListener(new v(this));
    this.E.setLayoutManager(new LinearLayoutManager(this.G, 0, false));
    localObject = this.G;
    localObject = new u((Context)localObject, null, ((Context)localObject).getTheme(), true);
    this.F = ((u)localObject);
    ((u)localObject).w(new b());
    this.E.setAdapter(this.F);
  }
  
  private boolean J(Context paramContext, Intent paramIntent)
  {
    try
    {
      paramContext = paramContext.getPackageManager().queryIntentActivities(paramIntent, 32);
      if (paramContext != null)
      {
        int i = paramContext.size();
        if (i > 0) {
          return true;
        }
      }
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return false;
  }
  
  public static void L(Activity paramActivity)
  {
    Intent localIntent = new Intent("com.miui.gallery.action.VIEW_ALBUM");
    localIntent.setFlags(268435456);
    localIntent.setPackage("com.miui.gallery");
    if (!DeviceUtils.J(paramActivity, localIntent))
    {
      localIntent.setPackage(null);
      localIntent.setAction(null);
      localIntent.addCategory("android.intent.category.OPENABLE");
      return;
    }
    paramActivity.startActivity(Intent.createChooser(localIntent, null));
  }
  
  private void setShareTextColor(boolean paramBoolean)
  {
    u localu = this.F;
    if (localu == null) {
      return;
    }
    localu.x(paramBoolean);
  }
  
  public void C()
  {
    d9.a locala1 = new d9.a().k(-2, new float[] { 0.6F, 0.5F });
    d9.a locala2 = new d9.a().k(-2, new float[] { 0.6F, 0.5F });
    d9.a locala3 = new d9.a().k(-2, new float[] { 0.9F, 0.4F });
    d9.a locala4 = new d9.a().k(-2, new float[] { 0.8F, 1.0F, 1000.0F });
    G();
    e9.a locala5 = new e9.a("mBackground2");
    Object localObject1 = h.n;
    locala5 = locala5.a(localObject1, 1.0D);
    miuix.animation.a.y(new View[] { this.L }).a().J(locala5, new d9.a[] { locala3 });
    locala5 = new e9.a("imgShare");
    Object localObject2 = h.g;
    locala5 = locala5.a(localObject2, -8.0D);
    localObject2 = new e9.a("imgShare").a(localObject2, 0.0D);
    e9.a locala6 = new e9.a("imgShare").a(h.d, 1.0D).a(h.e, 1.0D);
    localObject1 = new e9.a("alpha").a(localObject1, 1.0D);
    miuix.animation.a.y(new View[] { this.O }).a().J(locala5, new d9.a[] { locala4 }).J(localObject2, new d9.a[] { locala2.j(100L) }).J(locala6, new d9.a[] { locala1 }).J(localObject1, new d9.a[] { locala3 });
    miuix.animation.a.y(new View[] { this.J }).a().J(localObject1, new d9.a[0]);
    miuix.animation.a.y(new View[] { this.E }).a().J(localObject1, new d9.a[] { locala3.j(400L) });
  }
  
  public void D()
  {
    miuix.animation.a.y(new View[] { this.O }).a().cancel();
    miuix.animation.a.y(new View[] { this.J }).a().cancel();
    miuix.animation.a.y(new View[] { this.E }).a().cancel();
    miuix.animation.a.y(new View[] { this.L }).a().cancel();
    e9.a locala1 = new e9.a("alpha").a(h.n, 0.0D);
    e9.a locala2 = new e9.a("scale").a(h.d, 1.200000047683716D).a(h.e, 1.200000047683716D);
    miuix.animation.a.y(new View[] { this.N }).a().J(locala1, new d9.a[0]).J(locala2, new d9.a[] { new d9.a().a(new b[] { new e() }) });
  }
  
  public void E(File paramFile)
  {
    f localf = this.K;
    if (localf != null)
    {
      localf.cancel(true);
      this.K = null;
    }
    localf = new f(this);
    this.K = localf;
    localf.execute(new File[] { paramFile });
  }
  
  public void H(File paramFile, boolean paramBoolean)
  {
    this.H = paramFile;
    paramFile = BitmapFactory.decodeFile(paramFile.getAbsolutePath());
    this.I.setImageBitmap(paramFile);
    this.I.setClipToOutline(true);
    this.I.setOutlineProvider(new a());
    this.I.setContentDescription(getResources().getString(2131887813));
    paramFile = new Intent("android.intent.action.SEND");
    paramFile.setType("image/*");
    setShareTextColor(paramBoolean ^ true);
    this.F.v(paramFile);
    invalidate();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.G = null;
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    I();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    super.onTouchEvent(paramMotionEvent);
    return true;
  }
  
  public void setStatParams(HashMap<String, Object> paramHashMap)
  {
    if (this.P == null) {
      this.P = new HashMap();
    }
    if (paramHashMap != null)
    {
      Iterator localIterator = paramHashMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        this.P.put(str, paramHashMap.get(str));
      }
    }
  }
  
  class a
    extends ViewOutlineProvider
  {
    a() {}
    
    public void getOutline(View paramView, Outline paramOutline)
    {
      paramOutline.setRoundRect(ShareView.v(ShareView.this).getLeft(), ShareView.v(ShareView.this).getTop(), ShareView.v(ShareView.this).getRight(), ShareView.v(ShareView.this).getBottom(), 50.0F);
    }
  }
  
  class b
    implements u.c
  {
    b() {}
    
    public void a(Intent paramIntent)
    {
      if (ShareView.w(ShareView.this) != null)
      {
        Object localObject = paramIntent.getStringExtra("calendar_channel");
        if (!TextUtils.isEmpty((CharSequence)localObject)) {
          ShareView.y(ShareView.this).put("calendar_channel", localObject);
        }
        localObject = Uri.fromFile(ShareView.w(ShareView.this));
        g0.e("history_share", ShareView.y(ShareView.this));
        ShareView.z(ShareView.this, paramIntent, (Uri)localObject);
      }
    }
    
    public void b()
    {
      if (ShareView.w(ShareView.this) == null) {
        return;
      }
      ShareView.y(ShareView.this).put("calendar_channel", ShareView.x(ShareView.this).getResources().getString(2131887403));
      if (androidx.core.content.a.a(ShareView.x(ShareView.this), z0.e("images")) != 0)
      {
        z0.J(ShareView.x(ShareView.this), (ShareActivity)ShareView.x(ShareView.this), 1, new w(this));
        return;
      }
      g0.e("history_share", ShareView.y(ShareView.this));
      ShareView localShareView = ShareView.this;
      localShareView.E(ShareView.w(localShareView));
    }
  }
  
  class c
    implements z0.j.a
  {
    c() {}
    
    public void a()
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(Uri.parse(z0.d()));
      localIntent.setFlags(268435456);
      ShareView.x(ShareView.this).startActivity(localIntent);
    }
  }
  
  class d
    implements DialogInterface.OnClickListener
  {
    d(boolean paramBoolean, Intent paramIntent) {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      if (bool) {
        b2.a.l(ShareView.x(ShareView.this), "key_wechat_sdk_agree", true);
      } else {
        b2.a.l(ShareView.x(ShareView.this), "key_weibo_sdk_agree", true);
      }
      try
      {
        ShareView.x(ShareView.this).startActivity(paramIntent);
      }
      catch (Exception paramDialogInterface)
      {
        z.a("Cal:D:ShareView", paramDialogInterface.toString());
      }
    }
  }
  
  class e
    extends b
  {
    e() {}
    
    public void onComplete(Object paramObject)
    {
      super.onComplete(paramObject);
      ShareView.A(ShareView.this).setVisibility(8);
    }
  }
  
  static class f
    extends AsyncTask<File, Void, String>
  {
    private WeakReference<ShareView> a;
    
    public f(ShareView paramShareView)
    {
      this.a = new WeakReference(paramShareView);
    }
    
    /* Error */
    protected String a(File... paramVarArgs)
    {
      // Byte code:
      //   0: aload_1
      //   1: ifnull +375 -> 376
      //   4: aload_1
      //   5: arraylength
      //   6: iconst_1
      //   7: if_icmplt +369 -> 376
      //   10: aload_1
      //   11: iconst_0
      //   12: aaload
      //   13: astore_2
      //   14: aload_2
      //   15: ifnonnull +6 -> 21
      //   18: goto +358 -> 376
      //   21: aload_2
      //   22: invokevirtual 37	java/io/File:exists	()Z
      //   25: ifne +5 -> 30
      //   28: aconst_null
      //   29: areturn
      //   30: aload_0
      //   31: getfield 25	com/android/calendar/common/ShareView$f:a	Ljava/lang/ref/WeakReference;
      //   34: invokevirtual 43	java/lang/ref/Reference:get	()Ljava/lang/Object;
      //   37: checkcast 7	com/android/calendar/common/ShareView
      //   40: invokestatic 47	com/android/calendar/common/ShareView:x	(Lcom/android/calendar/common/ShareView;)Landroid/content/Context;
      //   43: invokestatic 53	com/miui/calendar/util/d:b	(Landroid/content/Context;)Ljava/io/File;
      //   46: astore_3
      //   47: aload_3
      //   48: ifnull +328 -> 376
      //   51: new 55	java/io/FileInputStream
      //   54: astore_1
      //   55: aload_1
      //   56: aload_2
      //   57: invokespecial 58	java/io/FileInputStream:<init>	(Ljava/io/File;)V
      //   60: new 60	java/io/FileOutputStream
      //   63: astore 4
      //   65: aload 4
      //   67: aload_3
      //   68: invokespecial 61	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
      //   71: aload_1
      //   72: astore_2
      //   73: aload 4
      //   75: astore 5
      //   77: sipush 1024
      //   80: newarray byte
      //   82: astore 6
      //   84: aload_1
      //   85: astore_2
      //   86: aload 4
      //   88: astore 5
      //   90: aload_1
      //   91: aload 6
      //   93: invokevirtual 65	java/io/FileInputStream:read	([B)I
      //   96: istore 7
      //   98: iload 7
      //   100: iconst_m1
      //   101: if_icmpeq +22 -> 123
      //   104: aload_1
      //   105: astore_2
      //   106: aload 4
      //   108: astore 5
      //   110: aload 4
      //   112: aload 6
      //   114: iconst_0
      //   115: iload 7
      //   117: invokevirtual 69	java/io/FileOutputStream:write	([BII)V
      //   120: goto -36 -> 84
      //   123: aload_1
      //   124: invokevirtual 72	java/io/FileInputStream:close	()V
      //   127: aload 4
      //   129: invokevirtual 73	java/io/FileOutputStream:close	()V
      //   132: goto +154 -> 286
      //   135: astore 8
      //   137: aload_1
      //   138: astore 6
      //   140: aload 4
      //   142: astore_1
      //   143: goto +61 -> 204
      //   146: astore 8
      //   148: aload_1
      //   149: astore 6
      //   151: aload 4
      //   153: astore_1
      //   154: goto +89 -> 243
      //   157: astore_2
      //   158: aconst_null
      //   159: astore 5
      //   161: goto +181 -> 342
      //   164: astore 8
      //   166: aconst_null
      //   167: astore_2
      //   168: aload_1
      //   169: astore 6
      //   171: aload_2
      //   172: astore_1
      //   173: goto +31 -> 204
      //   176: astore 8
      //   178: aconst_null
      //   179: astore_2
      //   180: aload_1
      //   181: astore 6
      //   183: aload_2
      //   184: astore_1
      //   185: goto +58 -> 243
      //   188: astore_2
      //   189: aconst_null
      //   190: astore_1
      //   191: aload_1
      //   192: astore 5
      //   194: goto +148 -> 342
      //   197: astore 8
      //   199: aconst_null
      //   200: astore_1
      //   201: aload_1
      //   202: astore 6
      //   204: aload 6
      //   206: astore_2
      //   207: aload_1
      //   208: astore 5
      //   210: aload 8
      //   212: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
      //   215: aload 6
      //   217: ifnull +8 -> 225
      //   220: aload 6
      //   222: invokevirtual 72	java/io/FileInputStream:close	()V
      //   225: aload_1
      //   226: ifnull +60 -> 286
      //   229: aload_1
      //   230: invokevirtual 73	java/io/FileOutputStream:close	()V
      //   233: goto +53 -> 286
      //   236: astore 8
      //   238: aconst_null
      //   239: astore_1
      //   240: aload_1
      //   241: astore 6
      //   243: aload 6
      //   245: astore_2
      //   246: aload_1
      //   247: astore 5
      //   249: aload 8
      //   251: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
      //   254: aload 6
      //   256: ifnull +15 -> 271
      //   259: aload 6
      //   261: invokevirtual 72	java/io/FileInputStream:close	()V
      //   264: goto +7 -> 271
      //   267: astore_1
      //   268: goto +14 -> 282
      //   271: aload_1
      //   272: ifnull +14 -> 286
      //   275: aload_1
      //   276: invokevirtual 73	java/io/FileOutputStream:close	()V
      //   279: goto +7 -> 286
      //   282: aload_1
      //   283: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
      //   286: aload_0
      //   287: getfield 25	com/android/calendar/common/ShareView$f:a	Ljava/lang/ref/WeakReference;
      //   290: invokevirtual 43	java/lang/ref/Reference:get	()Ljava/lang/Object;
      //   293: checkcast 7	com/android/calendar/common/ShareView
      //   296: invokestatic 47	com/android/calendar/common/ShareView:x	(Lcom/android/calendar/common/ShareView;)Landroid/content/Context;
      //   299: astore 5
      //   301: aload_3
      //   302: invokevirtual 82	java/io/File:toString	()Ljava/lang/String;
      //   305: astore_1
      //   306: new 10	com/android/calendar/common/ShareView$f$a
      //   309: dup
      //   310: aload_0
      //   311: invokespecial 85	com/android/calendar/common/ShareView$f$a:<init>	(Lcom/android/calendar/common/ShareView$f;)V
      //   314: astore_2
      //   315: aload 5
      //   317: iconst_1
      //   318: anewarray 87	java/lang/String
      //   321: dup
      //   322: iconst_0
      //   323: aload_1
      //   324: aastore
      //   325: aconst_null
      //   326: aload_2
      //   327: invokestatic 93	android/media/MediaScannerConnection:scanFile	(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
      //   330: aload_3
      //   331: invokevirtual 96	java/io/File:getAbsolutePath	()Ljava/lang/String;
      //   334: areturn
      //   335: astore 4
      //   337: aload_2
      //   338: astore_1
      //   339: aload 4
      //   341: astore_2
      //   342: aload_1
      //   343: ifnull +14 -> 357
      //   346: aload_1
      //   347: invokevirtual 72	java/io/FileInputStream:close	()V
      //   350: goto +7 -> 357
      //   353: astore_1
      //   354: goto +16 -> 370
      //   357: aload 5
      //   359: ifnull +15 -> 374
      //   362: aload 5
      //   364: invokevirtual 73	java/io/FileOutputStream:close	()V
      //   367: goto +7 -> 374
      //   370: aload_1
      //   371: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
      //   374: aload_2
      //   375: athrow
      //   376: aconst_null
      //   377: areturn
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	378	0	this	f
      //   0	378	1	paramVarArgs	File[]
      //   13	93	2	localObject1	Object
      //   157	1	2	localObject2	Object
      //   167	17	2	localObject3	Object
      //   188	1	2	localObject4	Object
      //   206	169	2	localObject5	Object
      //   46	285	3	localFile	File
      //   63	89	4	localFileOutputStream	java.io.FileOutputStream
      //   335	5	4	localObject6	Object
      //   75	288	5	localObject7	Object
      //   82	178	6	localObject8	Object
      //   96	20	7	i	int
      //   135	1	8	localIOException1	java.io.IOException
      //   146	1	8	localFileNotFoundException1	java.io.FileNotFoundException
      //   164	1	8	localIOException2	java.io.IOException
      //   176	1	8	localFileNotFoundException2	java.io.FileNotFoundException
      //   197	14	8	localIOException3	java.io.IOException
      //   236	14	8	localFileNotFoundException3	java.io.FileNotFoundException
      // Exception table:
      //   from	to	target	type
      //   77	84	135	java/io/IOException
      //   90	98	135	java/io/IOException
      //   110	120	135	java/io/IOException
      //   77	84	146	java/io/FileNotFoundException
      //   90	98	146	java/io/FileNotFoundException
      //   110	120	146	java/io/FileNotFoundException
      //   60	71	157	finally
      //   60	71	164	java/io/IOException
      //   60	71	176	java/io/FileNotFoundException
      //   51	60	188	finally
      //   51	60	197	java/io/IOException
      //   51	60	236	java/io/FileNotFoundException
      //   123	132	267	java/io/IOException
      //   220	225	267	java/io/IOException
      //   229	233	267	java/io/IOException
      //   259	264	267	java/io/IOException
      //   275	279	267	java/io/IOException
      //   77	84	335	finally
      //   90	98	335	finally
      //   110	120	335	finally
      //   210	215	335	finally
      //   249	254	335	finally
      //   346	350	353	java/io/IOException
      //   362	367	353	java/io/IOException
    }
    
    protected void b(String paramString)
    {
      ShareView localShareView = (ShareView)this.a.get();
      ShareActivity localShareActivity = (ShareActivity)ShareView.x(localShareView);
      if (localShareView != null)
      {
        if (ShareView.B((ShareView)this.a.get()) != this)
        {
          Log.w("Cal:D:ShareView", "Task has changed, don't apply result");
          return;
        }
        if (paramString == null)
        {
          Toast.makeText(localShareActivity, localShareActivity.getResources().getString(2131887402), 0).show();
        }
        else
        {
          Toast.makeText(localShareActivity, localShareActivity.getResources().getString(2131887404), 0).show();
          ShareView.L((ShareActivity)ShareView.x(localShareView));
        }
      }
    }
    
    protected void onPreExecute() {}
    
    class a
      implements MediaScannerConnection.OnScanCompletedListener
    {
      a() {}
      
      public void onScanCompleted(String paramString, Uri paramUri)
      {
        paramUri = new StringBuilder();
        paramUri.append("Scanned ");
        paramUri.append(paramString);
        paramUri.append(" completely.");
        Log.i("Cal:D:ShareView", paramUri.toString());
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.ShareView
 * JD-Core Version:    0.7.0.1
 */