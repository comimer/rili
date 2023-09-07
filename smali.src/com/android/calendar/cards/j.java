package com.android.calendar.cards;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView.c0;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.Utils;
import com.miui.calendar.ad.AdSchema;
import com.miui.calendar.ad.b;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.view.AdProgressLinearLayout;
import com.miui.calendar.view.AdProgressTextView;
import com.miui.calendar.view.AdProgressTextView.a;
import com.miui.calendar.view.OnlineImageView;
import com.xiaomi.ad.feedback.IAdFeedbackListener.Stub;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

public class j
  extends m1<b, m.b>
{
  CustomCardSchema b;
  AdSchema c;
  m.a d;
  private d e;
  private int f = 0;
  private int g = 0;
  private long h = 0L;
  
  public j(Calendar paramCalendar, d paramd)
  {
    super(paramCalendar);
    this.e = paramd;
  }
  
  private void D(Context paramContext, AdSchema paramAdSchema, TextView paramTextView)
  {
    if (paramTextView == null) {
      return;
    }
    if (Utils.i0(paramContext, paramAdSchema.packageName))
    {
      paramTextView.setVisibility(8);
    }
    else
    {
      int i = com.miui.calendar.ad.c.a(paramContext).d(paramAdSchema.packageName);
      int j = com.miui.calendar.ad.c.a(paramContext).c(this.c.packageName);
      if ((i == 5) && (j == -3)) {
        paramTextView.setVisibility(0);
      } else {
        paramTextView.setVisibility(8);
      }
    }
  }
  
  private void n(Map<String, Object> paramMap)
  {
    if (paramMap == null) {
      return;
    }
    paramMap.put("ad_day_offset", Integer.valueOf(e0.d(this.a, Calendar.getInstance())));
  }
  
  private AdProgressTextView.a q(final Context paramContext, final b paramb)
  {
    return new a(paramb, paramContext);
  }
  
  private View s(Context paramContext, AdSchema paramAdSchema)
  {
    if ((paramAdSchema != null) && (!TextUtils.isEmpty(paramAdSchema.template)))
    {
      String str = paramAdSchema.template;
      paramAdSchema = paramAdSchema.getParameter("expStyle");
      if (TextUtils.equals(str, "3.21")) {
        return View.inflate(paramContext, 2131558625, null);
      }
      if (TextUtils.equals(str, "12.4"))
      {
        if ("exp1".equals(paramAdSchema)) {
          return View.inflate(paramContext, 2131558480, null);
        }
        if ("exp2".equals(paramAdSchema)) {
          return View.inflate(paramContext, 2131558482, null);
        }
        if ("exp3".equals(paramAdSchema)) {
          return View.inflate(paramContext, 2131558481, null);
        }
        if ("exp4".equals(paramAdSchema)) {
          return View.inflate(paramContext, 2131558479, null);
        }
        if ("exp5".equals(paramAdSchema)) {
          return View.inflate(paramContext, 2131558478, null);
        }
        return View.inflate(paramContext, 2131558477, null);
      }
      if (TextUtils.equals(str, "24.1")) {
        return View.inflate(paramContext, 2131558641, null);
      }
      z.m("Cal:D:AdCard", "createAdSingleCard() unknown template");
    }
    return null;
  }
  
  public void A(View paramView, int paramInt)
  {
    if (paramView != null)
    {
      Object localObject = new int[2];
      paramView.getLocationOnScreen((int[])localObject);
      int i = localObject[1];
      if (this.f == 0)
      {
        paramView = (WindowManager)CalendarApplication.e().getSystemService("window");
        localObject = new Point();
        paramView.getDefaultDisplay().getRealSize((Point)localObject);
        this.f = ((Point)localObject).y;
      }
      long l = this.h;
      boolean bool = false;
      if (l != 0L)
      {
        bool = Utils.k0(l, Utils.I());
        if (!bool) {
          this.g = 0;
        }
      }
      if (!bool)
      {
        AdSchema.onAdItemDisplayed(CalendarApplication.e(), this.c);
        paramView = new ArrayMap();
        n(paramView);
        B("card_displayed", paramInt, -1, null, paramView);
        this.h = Utils.I();
        if (AdSchema.isNeedQueryNewAd(this.c))
        {
          paramView = b.e();
          localObject = CalendarApplication.e();
          AdSchema localAdSchema = this.c;
          paramView.g((Context)localObject, localAdSchema.id, localAdSchema.tagId);
        }
      }
      this.g = i;
    }
  }
  
  protected void B(String paramString1, int paramInt1, int paramInt2, String paramString2, Map<String, Object> paramMap)
  {
    Object localObject = paramMap;
    if (paramMap == null)
    {
      localObject = paramMap;
      if (this.c != null) {
        localObject = new ArrayMap();
      }
    }
    paramMap = this.c;
    if (paramMap != null) {
      ((Map)localObject).put("ad_id", String.valueOf(paramMap.id));
    }
    CardHelper.n(paramString1, paramInt1, paramInt2, paramString2, (Map)localObject, this.b);
  }
  
  public String C(String paramString)
  {
    String str = paramString;
    if (paramString.length() > 6)
    {
      paramString = paramString.subSequence(0, 6).toString();
      str = paramString;
      if (paramString.endsWith(".")) {
        str = paramString.subSequence(0, 5).toString();
      }
    }
    return str;
  }
  
  int c()
  {
    CustomCardSchema localCustomCardSchema = this.b;
    int i;
    if (localCustomCardSchema != null) {
      i = localCustomCardSchema.sequence;
    } else {
      i = 90;
    }
    return i;
  }
  
  int d()
  {
    return 20;
  }
  
  void o(m.b paramb)
  {
    this.b = paramb.a;
    this.c = paramb.b;
    this.d = paramb.c;
  }
  
  void p(b paramb, Context paramContext)
  {
    Object localObject1 = (String)paramb.a.getTag();
    Object localObject2 = this.c.getParameter("expStyle");
    if (((TextUtils.isEmpty((CharSequence)localObject1)) || (!((String)localObject1).equals(localObject2))) && (paramb.a != null))
    {
      localObject1 = s(paramContext, this.c);
      paramb.a.addView((View)localObject1);
      paramb.a();
      localObject1 = paramb.y;
      if (localObject1 != null)
      {
        ((View)localObject1).setOnClickListener(new c(this, paramContext, paramb));
        v.k(paramb.y);
      }
      else
      {
        paramb.a.setOnClickListener(new d(this, paramContext, paramb));
        v.k(paramb.a);
      }
      paramb.a.setTag(localObject2);
    }
    int i = paramContext.getResources().getDimensionPixelSize(2131167315);
    int j;
    if (paramb.c != null)
    {
      localObject2 = this.c;
      j = ((AdSchema)localObject2).width;
      int k = ((AdSchema)localObject2).height;
      localObject1 = r(paramContext);
      localObject2 = new FrameLayout.LayoutParams(-1, localObject1[1]);
      if (j > 0)
      {
        if (k > 0) {
          ((FrameLayout.LayoutParams)localObject2).height = (k * localObject1[0] / j);
        } else {
          ((FrameLayout.LayoutParams)localObject2).height = (localObject1[1] * localObject1[0] / j);
        }
      }
      else if (k > 0) {
        ((FrameLayout.LayoutParams)localObject2).height = k;
      }
      j = ((FrameLayout.LayoutParams)localObject2).height;
      k = localObject1[1];
      if (j > k * 2) {
        ((FrameLayout.LayoutParams)localObject2).height = (k * 2);
      }
      paramb.c.setLayoutParams((ViewGroup.LayoutParams)localObject2);
      paramb.c.a((String)this.c.imgUrls.get(0), 2131231433, 2131231431);
    }
    if (paramb.d != null)
    {
      localObject2 = this.c.imgUrls;
      if ((localObject2 != null) && (((List)localObject2).size() > 0)) {
        paramb.d.a((String)this.c.imgUrls.get(0), 2131231433, 2131231431);
      }
    }
    if (paramb.e != null)
    {
      localObject2 = this.c.imgUrls;
      if ((localObject2 != null) && (((List)localObject2).size() > 1)) {
        paramb.e.a((String)this.c.imgUrls.get(1), 2131231433, 2131231431);
      }
    }
    if (paramb.f != null)
    {
      localObject2 = this.c.imgUrls;
      if ((localObject2 != null) && (((List)localObject2).size() > 2)) {
        paramb.f.a((String)this.c.imgUrls.get(2), 2131231433, 2131231431);
      }
    }
    localObject2 = this.c.summary;
    if (localObject2 != null)
    {
      localObject1 = paramb.i;
      if (((String)localObject2).length() > 16)
      {
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append(this.c.summary.substring(0, 16));
        ((StringBuilder)localObject2).append("...");
        localObject2 = ((StringBuilder)localObject2).toString();
      }
      else
      {
        localObject2 = this.c.summary;
      }
      x0.f((TextView)localObject1, (String)localObject2);
    }
    x0.f(paramb.K, this.c.categoryName);
    if (paramb.j != null) {
      if (TextUtils.isEmpty(this.c.source))
      {
        paramb.j.setVisibility(8);
      }
      else
      {
        paramb.j.setVisibility(0);
        paramb.j.setText(this.c.source);
      }
    }
    if (paramb.k != null) {
      if (TextUtils.isEmpty(this.c.source)) {
        paramb.k.setVisibility(8);
      } else {
        paramb.k.setVisibility(0);
      }
    }
    x0.f(paramb.l, AdSchema.formatAdDownloadCount(paramContext, this.c.totalDownloadNum));
    localObject2 = paramb.m;
    if (localObject2 != null)
    {
      x0.k((View)localObject2, false, i, i, i, i);
      paramb.m.setOnClickListener(new e(this, paramContext, paramb));
    }
    localObject2 = paramb.o;
    if (localObject2 != null)
    {
      ((AdProgressTextView)localObject2).b(this.c, paramContext);
      paramb.o.setListener(q(paramContext, paramb));
    }
    localObject2 = paramb.p;
    if (localObject2 != null)
    {
      ((AdProgressLinearLayout)localObject2).b(this.c, paramContext);
      paramb.p.setListener(q(paramContext, paramb));
    }
    localObject2 = paramb.q;
    if (localObject2 != null) {
      ((View)localObject2).setOnClickListener(new f(this, paramContext));
    }
    D(paramContext, this.c, paramb.q);
    localObject1 = paramb.r;
    if (localObject1 != null)
    {
      localObject2 = this.d;
      if ((localObject2 != null) && (((m.a)localObject2).a == 1)) {
        ((View)localObject1).setVisibility(8);
      } else {
        ((View)localObject1).setVisibility(0);
      }
    }
    localObject2 = paramb.L;
    if (localObject2 != null)
    {
      localObject1 = this.c;
      if ((((AdSchema)localObject1).categoryName != null) && (((AdSchema)localObject1).totalDownloadNum != 0L) && (((AdSchema)localObject1).apkSize != 0)) {
        ((View)localObject2).setVisibility(0);
      } else {
        ((View)localObject2).setVisibility(8);
      }
    }
    localObject2 = paramb.w;
    if ((localObject2 != null) && (this.c.apkSize != 0))
    {
      ((View)localObject2).setVisibility(0);
      i = this.c.apkSize / 1048576;
      paramb.w.setText(paramContext.getResources().getString(2131886152, new Object[] { Integer.valueOf(i) }));
    }
    else if (localObject2 != null)
    {
      ((View)localObject2).setVisibility(8);
    }
    localObject2 = paramb.l;
    if ((localObject2 != null) && (this.c.totalDownloadNum != 0L))
    {
      ((View)localObject2).setVisibility(0);
      long l = this.c.totalDownloadNum;
      if (l < 1000L)
      {
        localObject2 = String.valueOf(l);
      }
      else if (l < 10000L)
      {
        localObject2 = String.valueOf(l / 100L * 100L);
      }
      else
      {
        double d1;
        if (l < 100000L)
        {
          d1 = l;
          localObject2 = paramContext.getResources().getString(2131886170, new Object[] { String.format("%.1f", new Object[] { Double.valueOf(d1 / 10000.0D) }) });
        }
        else if (l < 100000000L)
        {
          localObject2 = paramContext.getResources().getString(2131886170, new Object[] { String.valueOf(l / 10000L) });
        }
        else if (l < 1000000000L)
        {
          d1 = l;
          localObject2 = paramContext.getResources().getString(2131886171, new Object[] { String.format("%.1f", new Object[] { Double.valueOf(d1 / 100000000.0D) }) });
        }
        else
        {
          localObject2 = paramContext.getResources().getString(2131886171, new Object[] { String.valueOf(l / 100000000L) });
        }
      }
      paramb.l.setText((CharSequence)localObject2);
    }
    boolean bool = AdSchema.isScheduleAd(this.c);
    i = 10;
    if (bool)
    {
      if (paramb.h != null)
      {
        localObject2 = this.c.imgUrls;
        if ((localObject2 != null) && (((List)localObject2).size() > 0)) {
          paramb.h.a((String)this.c.imgUrls.get(0), 2131231433, 2131231431);
        }
      }
      if (paramb.b != null)
      {
        localObject1 = this.c;
        if (((AdSchema)localObject1).title != null)
        {
          localObject2 = ((AdSchema)localObject1).template;
          localObject1 = ((AdSchema)localObject1).getParameter("expStyle");
          j = i;
          if (TextUtils.equals((CharSequence)localObject2, "12.4"))
          {
            j = i;
            if ("exp2".equals(localObject1)) {
              j = 7;
            }
          }
          localObject1 = paramb.b;
          if (this.c.title.length() > j)
          {
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append(this.c.title.substring(0, j));
            ((StringBuilder)localObject2).append("...");
            localObject2 = ((StringBuilder)localObject2).toString();
          }
          else
          {
            localObject2 = this.c.title;
          }
          ((TextView)localObject1).setText((CharSequence)localObject2);
        }
      }
    }
    else
    {
      if (paramb.b != null)
      {
        localObject1 = this.c;
        if (((AdSchema)localObject1).appName != null)
        {
          localObject2 = ((AdSchema)localObject1).template;
          localObject1 = ((AdSchema)localObject1).getParameter("expStyle");
          if ((!TextUtils.equals((CharSequence)localObject2, "12.4")) || (!"exp2".equals(localObject1))) {
            i = 13;
          }
          localObject1 = paramb.b;
          if (this.c.appName.length() > i)
          {
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append(this.c.appName.substring(0, i));
            ((StringBuilder)localObject2).append("...");
            localObject2 = ((StringBuilder)localObject2).toString();
          }
          else
          {
            localObject2 = this.c.appName;
          }
          ((TextView)localObject1).setText((CharSequence)localObject2);
        }
      }
      if (paramb.h != null)
      {
        localObject2 = this.c.imgUrls;
        if ((localObject2 != null) && (((List)localObject2).size() > 0)) {
          paramb.h.a((String)this.c.imgUrls.get(0), 2131231433, 2131231431);
        }
      }
      localObject2 = paramb.h;
      if (localObject2 != null) {
        ((OnlineImageView)localObject2).a(this.c.iconUrl, 2131231433, 2131231431);
      }
    }
    if ((AdSchema.isUninstallableAd(this.c)) && (!AdSchema.isAll6InfoPresent(this.c)))
    {
      localObject2 = paramb.M;
      if (localObject2 != null)
      {
        ((View)localObject2).setVisibility(8);
        paramb = paramb.v;
        if (paramb != null) {
          paramb.setVisibility(0);
        }
        return;
      }
    }
    localObject2 = paramb.M;
    if (localObject2 != null)
    {
      ((View)localObject2).setVisibility(0);
      localObject2 = paramb.v;
      if (localObject2 != null) {
        ((View)localObject2).setVisibility(8);
      }
    }
    localObject1 = paramb.D;
    if (localObject1 != null)
    {
      localObject2 = this.c.appDeveloper;
      if (localObject2 != null)
      {
        if (((String)localObject2).length() > 19) {
          localObject2 = this.c.appDeveloper.subSequence(0, 19);
        } else {
          localObject2 = this.c.appDeveloper;
        }
        ((TextView)localObject1).setText((CharSequence)localObject2);
      }
    }
    if (paramb.E != null)
    {
      localObject2 = this.c.appVersion;
      if (localObject2 != null)
      {
        String str = C((String)localObject2);
        localObject2 = paramb.E;
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("| ");
        ((StringBuilder)localObject1).append(str);
        ((TextView)localObject2).setText(((StringBuilder)localObject1).toString());
      }
    }
    localObject2 = paramb.G;
    if ((localObject2 != null) && (this.c.appPrivacy != null)) {
      ((View)localObject2).setOnClickListener(new g(this, paramContext));
    }
    localObject2 = paramb.F;
    if ((localObject2 != null) && (this.c.appPermission != null)) {
      ((View)localObject2).setOnClickListener(new h(this, paramContext));
    }
    paramb = paramb.H;
    if ((paramb != null) && (this.c.appIntroduction != null)) {
      paramb.setOnClickListener(new i(this, paramContext));
    }
  }
  
  protected int[] r(Context paramContext)
  {
    return new int[] { paramContext.getResources().getDisplayMetrics().widthPixels - paramContext.getResources().getDimensionPixelSize(2131165672) * 2, paramContext.getResources().getDimensionPixelSize(2131166248) };
  }
  
  class a
    implements AdProgressTextView.a
  {
    a(j.b paramb, Context paramContext) {}
    
    public void a(AdSchema paramAdSchema)
    {
      ArrayMap localArrayMap = new ArrayMap();
      localArrayMap.put("type", "open");
      localArrayMap.put("package_name", paramAdSchema.packageName);
      localArrayMap.put("is_installed_by_ad_card", Boolean.valueOf(j.this.c.isInstalledByAdCard()));
      j.l(j.this, localArrayMap);
      j.this.B("card_button_clicked", paramb.getAdapterPosition(), -1, null, localArrayMap);
      j.this.B("ad_card_clicked_to_open_app", paramb.getAdapterPosition(), -1, null, localArrayMap);
      b.e().g(paramContext, paramAdSchema.id, paramAdSchema.tagId);
    }
    
    public void b(AdSchema paramAdSchema)
    {
      paramAdSchema = new ArrayMap();
      paramAdSchema.put("type", "resume");
      j.l(j.this, paramAdSchema);
      j.this.B("card_button_clicked", paramb.getAdapterPosition(), -1, null, paramAdSchema);
    }
    
    public void c(AdSchema paramAdSchema)
    {
      ArrayMap localArrayMap = new ArrayMap();
      localArrayMap.put("type", "download");
      localArrayMap.put("package_name", paramAdSchema.packageName);
      j.l(j.this, localArrayMap);
      j.this.B("card_button_clicked", paramb.getAdapterPosition(), -1, null, localArrayMap);
      j.this.B("ad_card_button_clicked_start_download", paramb.getAdapterPosition(), -1, null, localArrayMap);
    }
    
    public void d(AdSchema paramAdSchema)
    {
      paramAdSchema = new ArrayMap();
      paramAdSchema.put("type", "pause");
      j.l(j.this, paramAdSchema);
      j.this.B("card_button_clicked", paramb.getAdapterPosition(), -1, null, paramAdSchema);
    }
  }
  
  public static class b
    extends RecyclerView.c0
  {
    public TextView D;
    public TextView E;
    public TextView F;
    public TextView G;
    public TextView H;
    public TextView I;
    public TextView J;
    public TextView K;
    public ConstraintLayout L;
    public ConstraintLayout M;
    public ViewGroup a;
    public TextView b;
    public OnlineImageView c;
    public OnlineImageView d;
    public OnlineImageView e;
    public OnlineImageView f;
    public ProgressBar g;
    public OnlineImageView h;
    public TextView i;
    public TextView j;
    public View k;
    public TextView l;
    public View m;
    public OnlineImageView n;
    public AdProgressTextView o;
    public AdProgressLinearLayout p;
    public TextView q;
    public View r;
    public View v;
    public TextView w;
    public TextView x;
    public View y;
    public View z;
    
    public b(View paramView)
    {
      super();
      this.a = ((ViewGroup)paramView.findViewById(2131363074));
    }
    
    public void a()
    {
      this.b = ((TextView)this.a.findViewById(2131363373));
      this.c = ((OnlineImageView)this.a.findViewById(2131362581));
      this.d = ((OnlineImageView)this.a.findViewById(2131362853));
      this.e = ((OnlineImageView)this.a.findViewById(2131362854));
      this.f = ((OnlineImageView)this.a.findViewById(2131362855));
      this.g = ((ProgressBar)this.a.findViewById(2131362988));
      this.h = ((OnlineImageView)this.a.findViewById(2131362563));
      this.i = ((TextView)this.a.findViewById(2131363271));
      this.j = ((TextView)this.a.findViewById(2131363186));
      this.k = this.a.findViewById(2131362368);
      this.l = ((TextView)this.a.findViewById(2131362376));
      this.m = this.a.findViewById(2131362182);
      this.n = ((OnlineImageView)this.a.findViewById(2131362013));
      this.o = ((AdProgressTextView)this.a.findViewById(2131362620));
      this.p = ((AdProgressLinearLayout)this.a.findViewById(2131362621));
      this.q = ((TextView)this.a.findViewById(2131362105));
      this.r = this.a.findViewById(2131362014);
      this.w = ((TextView)this.a.findViewById(2131361975));
      this.x = ((TextView)this.a.findViewById(2131362678));
      this.y = this.a.findViewById(2131363572);
      this.z = this.a.findViewById(2131363507);
      this.D = ((TextView)this.a.findViewById(2131361970));
      this.E = ((TextView)this.a.findViewById(2131361974));
      this.G = ((TextView)this.a.findViewById(2131361973));
      this.F = ((TextView)this.a.findViewById(2131361972));
      this.H = ((TextView)this.a.findViewById(2131361971));
      this.I = ((TextView)this.a.findViewById(2131361910));
      this.J = ((TextView)this.a.findViewById(2131362545));
      this.K = ((TextView)this.a.findViewById(2131361909));
      this.L = ((ConstraintLayout)this.a.findViewById(2131362202));
      this.v = this.a.findViewById(2131362022);
      this.M = ((ConstraintLayout)this.a.findViewById(2131362199));
    }
  }
  
  private static class c
    extends IAdFeedbackListener.Stub
  {
    private final WeakReference<j> a;
    private final WeakReference<j.b> b;
    
    private c(j paramj, j.b paramb)
    {
      this.a = new WeakReference(paramj);
      this.b = new WeakReference(paramb);
    }
    
    public void onFinished(int paramInt)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("onAdItemClosed:onFinished() resultCode=");
      ((StringBuilder)localObject).append(paramInt);
      z.a("Cal:D:AdCard", ((StringBuilder)localObject).toString());
      j localj = (j)this.a.get();
      localObject = (j.b)this.b.get();
      if ((paramInt != -1) && (localj != null) && (localObject != null)) {
        ((j.b)localObject).m.post(new k(localj, (j.b)localObject));
      }
    }
  }
  
  public static abstract interface d
  {
    public abstract void a();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.j
 * JD-Core Version:    0.7.0.1
 */