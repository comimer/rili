package com.miui.calendar.card.single.custom.ad;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.calendar.common.Utils;
import com.android.calendar.settings.j;
import com.miui.calendar.ad.AdSchema;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.card.single.custom.CustomSingleCard;
import com.miui.calendar.card.single.custom.CustomSingleCard.CustomCardExtraSchema;
import com.miui.calendar.card.single.custom.CustomSingleCard.g;
import com.miui.calendar.util.q;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.view.AdProgressLinearLayout;
import com.miui.calendar.view.AdProgressTextView;
import com.miui.calendar.view.AdProgressTextView.a;
import com.miui.calendar.view.OnlineImageView;
import com.xiaomi.ad.feedback.IAdFeedbackListener.Stub;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import s3.a.a;
import t3.c;
import t3.f;
import t3.g;
import u3.e;
import u3.h;
import u3.k;

public abstract class AdSingleCard
  extends CustomSingleCard
{
  protected AdSchema s;
  protected AdSchema t;
  protected boolean u;
  protected String v;
  private int w;
  private int x = 0;
  private int y = 0;
  private long z = 0L;
  
  public AdSingleCard(Context paramContext, int paramInt, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, paramInt, paramContainerType, paramCalendar, paramBaseAdapter);
    this.w = paramContext.getResources().getDimensionPixelSize(2131167315);
  }
  
  public static s3.a N(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter, CustomCardSchema paramCustomCardSchema)
  {
    if (paramCustomCardSchema != null)
    {
      Object localObject = paramCustomCardSchema.ads;
      if ((localObject != null) && (!TextUtils.isEmpty(((AdSchema)localObject).template)))
      {
        localObject = paramCustomCardSchema.ads;
        paramCustomCardSchema = ((AdSchema)localObject).template;
        localObject = ((AdSchema)localObject).getParameter("expStyle");
        if (TextUtils.equals(paramCustomCardSchema, "3.21")) {
          return new g(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
        }
        if (TextUtils.equals(paramCustomCardSchema, "12.4"))
        {
          if ("exp1".equals(localObject)) {
            return new e(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
          }
          if ("exp2".equals(localObject)) {
            return new k(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
          }
          if ("exp3".equals(localObject)) {
            return new h(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
          }
          if ("exp4".equals(localObject)) {
            return new u3.b(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
          }
          if ("exp5".equals(localObject)) {
            return new u3.a(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
          }
          return new c(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
        }
        if (TextUtils.equals(paramCustomCardSchema, "24.1")) {
          return new f(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
        }
        z.m("Cal:D:AdSingleCard", "createAdSingleCard() unknown template");
        return null;
      }
    }
    z.m("Cal:D:AdSingleCard", "createAdSingleCard() invalid cardSchema");
    return null;
  }
  
  private AdProgressTextView.a O(final int paramInt)
  {
    return new d(paramInt);
  }
  
  private String P()
  {
    return v3.a.c("is_ad_closed_today", this.f);
  }
  
  private void S(int paramInt)
  {
    this.u = true;
    T(true);
    this.b.notifyDataSetChanged();
    ArrayMap localArrayMap = new ArrayMap();
    M(localArrayMap);
    l("card_close_clicked", paramInt, -1, null, localArrayMap);
  }
  
  public int B()
  {
    return 1;
  }
  
  public void M(Map<String, Object> paramMap) {}
  
  protected int[] Q()
  {
    return new int[] { this.a.getResources().getDisplayMetrics().widthPixels - this.a.getResources().getDimensionPixelSize(2131165672) * 2, this.a.getResources().getDimensionPixelSize(2131166248) };
  }
  
  protected boolean R()
  {
    boolean bool;
    try
    {
      bool = Boolean.parseBoolean(q.d(this.a, v3.a.d(P())));
    }
    catch (Exception localException)
    {
      bool = false;
    }
    return bool;
  }
  
  protected void T(boolean paramBoolean)
  {
    q.f(this.a, v3.a.d(P()), String.valueOf(paramBoolean));
  }
  
  public String U(String paramString)
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
  
  public void a()
  {
    this.t = this.s;
    super.a();
  }
  
  public boolean d(CustomCardSchema paramCustomCardSchema)
  {
    paramCustomCardSchema = paramCustomCardSchema.ads;
    if (paramCustomCardSchema != null) {
      return TextUtils.equals(this.v, paramCustomCardSchema.template);
    }
    return false;
  }
  
  public void g(a.a parama, final int paramInt)
  {
    Object localObject1 = (e)parama;
    Object localObject2 = ((e)localObject1).l;
    if (localObject2 != null)
    {
      parama = ((e)localObject1).E;
      if (parama != null)
      {
        parama.setOnClickListener(new a(paramInt));
        v.k(((e)localObject1).E);
      }
      else
      {
        ((View)localObject2).setOnClickListener(new b(paramInt));
        v.k(((e)localObject1).l);
      }
    }
    int i;
    int j;
    if (((e)localObject1).n != null)
    {
      parama = this.t;
      i = parama.width;
      j = parama.height;
      localObject2 = Q();
      parama = new FrameLayout.LayoutParams(-1, localObject2[1]);
      if (i > 0)
      {
        if (j > 0) {
          parama.height = (j * localObject2[0] / i);
        } else {
          parama.height = (localObject2[1] * localObject2[0] / i);
        }
      }
      else if (j > 0) {
        parama.height = j;
      }
      j = parama.height;
      i = localObject2[1];
      if (j > i * 2) {
        parama.height = (i * 2);
      }
      ((e)localObject1).n.setLayoutParams(parama);
      ((e)localObject1).n.a((String)this.t.imgUrls.get(0), 2131231433, 2131231431);
    }
    if (((e)localObject1).o != null)
    {
      parama = this.t.imgUrls;
      if ((parama != null) && (parama.size() > 0)) {
        ((e)localObject1).o.a((String)this.t.imgUrls.get(0), 2131231433, 2131231431);
      }
    }
    if (((e)localObject1).p != null)
    {
      parama = this.t.imgUrls;
      if ((parama != null) && (parama.size() > 1)) {
        ((e)localObject1).p.a((String)this.t.imgUrls.get(1), 2131231433, 2131231431);
      }
    }
    if (((e)localObject1).q != null)
    {
      parama = this.t.imgUrls;
      if ((parama != null) && (parama.size() > 2)) {
        ((e)localObject1).q.a((String)this.t.imgUrls.get(2), 2131231433, 2131231431);
      }
    }
    if (((e)localObject1).m != null)
    {
      localObject2 = this.t;
      if (((AdSchema)localObject2).appName != null)
      {
        parama = ((AdSchema)localObject2).template;
        localObject2 = ((AdSchema)localObject2).getParameter("expStyle");
        j = 13;
        i = j;
        if (TextUtils.equals(parama, "12.4"))
        {
          i = j;
          if ("exp2".equals(localObject2)) {
            i = 10;
          }
        }
        localObject2 = ((e)localObject1).m;
        if (this.t.appName.length() > i)
        {
          parama = new StringBuilder();
          parama.append(this.t.appName.substring(0, i));
          parama.append("...");
          parama = parama.toString();
        }
        else
        {
          parama = this.t.appName;
        }
        ((TextView)localObject2).setText(parama);
      }
    }
    parama = this.t.summary;
    if (parama != null)
    {
      localObject2 = ((e)localObject1).t;
      if (parama.length() > 16)
      {
        parama = new StringBuilder();
        parama.append(this.t.summary.substring(0, 16));
        parama.append("...");
        parama = parama.toString();
      }
      else
      {
        parama = this.t.summary;
      }
      x0.f((TextView)localObject2, parama);
    }
    parama = this.t.categoryName;
    if (parama != null) {
      x0.f(((e)localObject1).M, parama);
    }
    if (((e)localObject1).s != null)
    {
      parama = this.t.imgUrls;
      if ((parama != null) && (parama.size() > 0)) {
        ((e)localObject1).s.a((String)this.t.imgUrls.get(0), 2131231433, 2131231431);
      }
    }
    if (((e)localObject1).u != null) {
      if (TextUtils.isEmpty(this.t.source))
      {
        ((e)localObject1).u.setVisibility(8);
      }
      else
      {
        ((e)localObject1).u.setVisibility(0);
        ((e)localObject1).u.setText(this.t.source);
      }
    }
    if (((e)localObject1).v != null) {
      if (TextUtils.isEmpty(this.t.source)) {
        ((e)localObject1).v.setVisibility(8);
      } else {
        ((e)localObject1).v.setVisibility(0);
      }
    }
    x0.f(((e)localObject1).w, AdSchema.formatAdDownloadCount(this.a, this.t.totalDownloadNum));
    parama = ((e)localObject1).x;
    if (parama != null)
    {
      i = this.w;
      x0.k(parama, false, i, i, i, i);
      ((e)localObject1).x.setOnClickListener(new c((e)localObject1, paramInt));
    }
    parama = ((e)localObject1).z;
    if (parama != null)
    {
      parama.b(this.t, this.a);
      ((e)localObject1).z.setListener(O(paramInt));
    }
    parama = ((e)localObject1).A;
    if (parama != null)
    {
      parama.b(this.t, this.a);
      ((e)localObject1).A.setListener(O(paramInt));
    }
    parama = ((e)localObject1).B;
    if (parama != null)
    {
      localObject2 = (AdCardExtraSchema)this.p;
      if ((localObject2 != null) && (((AdCardExtraSchema)localObject2).hideAdTag == 1)) {
        parama.setVisibility(8);
      } else {
        parama.setVisibility(0);
      }
    }
    parama = ((e)localObject1).N;
    if (parama != null)
    {
      localObject1 = this.t;
      if ((((AdSchema)localObject1).categoryName != null) && (((AdSchema)localObject1).totalDownloadNum != 0L) && (((AdSchema)localObject1).apkSize != 0)) {
        parama.setVisibility(0);
      } else {
        parama.setVisibility(8);
      }
    }
  }
  
  public a.a h(View paramView)
  {
    return new e(paramView);
  }
  
  public boolean j()
  {
    boolean bool;
    if ((!this.u) && (this.t != null) && (j.g(this.a))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected void k(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    l(paramString1, paramInt1, paramInt2, paramString2, null);
  }
  
  protected void l(String paramString1, int paramInt1, int paramInt2, String paramString2, Map<String, Object> paramMap)
  {
    Object localObject = paramMap;
    if (paramMap == null)
    {
      localObject = paramMap;
      if (this.t != null) {
        localObject = new ArrayMap();
      }
    }
    paramMap = this.t;
    if (paramMap != null) {
      ((Map)localObject).put("ad_id", String.valueOf(paramMap.id));
    }
    super.l(paramString1, paramInt1, paramInt2, paramString2, (Map)localObject);
  }
  
  public void x(CustomCardSchema paramCustomCardSchema)
  {
    super.x(paramCustomCardSchema);
    if (paramCustomCardSchema != null)
    {
      paramCustomCardSchema = paramCustomCardSchema.ads;
      this.s = paramCustomCardSchema;
      if (paramCustomCardSchema != null) {
        this.v = paramCustomCardSchema.template;
      }
      this.u = R();
    }
  }
  
  protected Class<? extends CustomSingleCard.CustomCardExtraSchema> z()
  {
    return AdCardExtraSchema.class;
  }
  
  @Keep
  public static class AdCardExtraSchema
    extends CustomSingleCard.CustomCardExtraSchema
  {
    public int hideAdTag;
  }
  
  class a
    implements View.OnClickListener
  {
    a(int paramInt) {}
    
    public void onClick(View paramView)
    {
      paramView = new ArrayMap();
      AdSingleCard.this.M(paramView);
      if (Utils.i0(AdSingleCard.D(AdSingleCard.this), AdSingleCard.this.t.packageName))
      {
        AdSchema.onDownloadAdItemClicked(AdSingleCard.E(AdSingleCard.this), AdSingleCard.this.t);
        AdSingleCard.this.l("ad_card_clicked_to_open_app", paramInt, -1, null, paramView);
      }
      else
      {
        AdSchema.onJumpAdItemClicked(AdSingleCard.F(AdSingleCard.this), AdSingleCard.this.t);
        AdSingleCard.this.l("ad_card_item_clicked_start_download", paramInt, -1, null, paramView);
      }
      AdSingleCard.this.l("card_item_clicked", paramInt, -1, null, paramView);
    }
  }
  
  class b
    implements View.OnClickListener
  {
    b(int paramInt) {}
    
    public void onClick(View paramView)
    {
      paramView = new ArrayMap();
      AdSingleCard.this.M(paramView);
      if (Utils.i0(AdSingleCard.G(AdSingleCard.this), AdSingleCard.this.t.packageName))
      {
        AdSchema.onDownloadAdItemClicked(AdSingleCard.H(AdSingleCard.this), AdSingleCard.this.t);
        AdSingleCard.this.l("ad_card_clicked_to_open_app", paramInt, -1, null, paramView);
      }
      else
      {
        AdSchema.onJumpAdItemClicked(AdSingleCard.I(AdSingleCard.this), AdSingleCard.this.t);
        AdSingleCard.this.l("ad_card_item_clicked_start_download", paramInt, -1, null, paramView);
      }
      AdSingleCard.this.l("card_item_clicked", paramInt, -1, null, paramView);
    }
  }
  
  class c
    implements View.OnClickListener
  {
    c(AdSingleCard.e parame, int paramInt) {}
    
    public void onClick(View paramView)
    {
      z.a("Cal:D:AdSingleCard", "adViewHolder.closeView onClick");
      AdSingleCard localAdSingleCard = AdSingleCard.this;
      if (localAdSingleCard.c == 68) {
        paramView = "calendar_appdownloadadcard";
      } else {
        paramView = "calendar_infoflowcard";
      }
      if (!AdSchema.onAdItemClosed(AdSingleCard.J(localAdSingleCard), new a(), paramView, AdSingleCard.this.t.ex)) {
        AdSingleCard.K(AdSingleCard.this, paramInt);
      }
    }
    
    class a
      extends IAdFeedbackListener.Stub
    {
      a() {}
      
      public void onFinished(int paramInt)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("onAdItemClosed:onFinished() resultCode=");
        localStringBuilder.append(paramInt);
        z.a("Cal:D:AdSingleCard", localStringBuilder.toString());
        if (paramInt == -1) {
          return;
        }
        AdSingleCard.c.this.a.x.post(new a());
      }
      
      class a
        implements Runnable
      {
        a() {}
        
        public void run()
        {
          AdSingleCard.c localc = AdSingleCard.c.this;
          AdSingleCard.K(localc.c, localc.b);
        }
      }
    }
  }
  
  class d
    implements AdProgressTextView.a
  {
    d(int paramInt) {}
    
    public void a(AdSchema paramAdSchema)
    {
      ArrayMap localArrayMap = new ArrayMap();
      localArrayMap.put("type", "open");
      localArrayMap.put("package_name", paramAdSchema.packageName);
      localArrayMap.put("is_installed_by_ad_card", Boolean.valueOf(AdSingleCard.this.t.isInstalledByAdCard()));
      AdSingleCard.this.M(localArrayMap);
      AdSingleCard.this.l("card_button_clicked", paramInt, -1, null, localArrayMap);
      AdSingleCard.this.l("ad_card_clicked_to_open_app", paramInt, -1, null, localArrayMap);
      com.miui.calendar.ad.b.e().g(AdSingleCard.L(AdSingleCard.this), paramAdSchema.id, paramAdSchema.tagId);
    }
    
    public void b(AdSchema paramAdSchema) {}
    
    public void c(AdSchema paramAdSchema)
    {
      ArrayMap localArrayMap = new ArrayMap();
      localArrayMap.put("type", "download");
      localArrayMap.put("package_name", paramAdSchema.packageName);
      AdSingleCard.this.M(localArrayMap);
      AdSingleCard.this.l("card_button_clicked", paramInt, -1, null, localArrayMap);
      AdSingleCard.this.l("ad_card_button_clicked_start_download", paramInt, -1, null, localArrayMap);
    }
    
    public void d(AdSchema paramAdSchema) {}
  }
  
  public class e
    extends CustomSingleCard.g
  {
    public AdProgressLinearLayout A;
    public View B;
    public TextView C;
    public TextView D;
    public View E;
    public View F;
    public TextView G;
    public TextView H;
    public TextView I;
    public TextView J;
    public TextView K;
    public TextView L;
    public TextView M;
    public ConstraintLayout N;
    public ViewGroup l;
    public TextView m;
    public OnlineImageView n;
    public OnlineImageView o;
    public OnlineImageView p;
    public OnlineImageView q;
    public ProgressBar r;
    public OnlineImageView s;
    public TextView t;
    public TextView u;
    public View v;
    public TextView w;
    public View x;
    public OnlineImageView y;
    public AdProgressTextView z;
    
    public e(View paramView)
    {
      super(paramView);
      this.l = ((ViewGroup)paramView.findViewById(2131363074));
      this.m = ((TextView)paramView.findViewById(2131363373));
      this.n = ((OnlineImageView)paramView.findViewById(2131362581));
      this.o = ((OnlineImageView)paramView.findViewById(2131362853));
      this.p = ((OnlineImageView)paramView.findViewById(2131362854));
      this.q = ((OnlineImageView)paramView.findViewById(2131362855));
      this.r = ((ProgressBar)paramView.findViewById(2131362988));
      this.s = ((OnlineImageView)paramView.findViewById(2131362563));
      this.t = ((TextView)paramView.findViewById(2131363271));
      this.u = ((TextView)paramView.findViewById(2131363186));
      this.v = paramView.findViewById(2131362368);
      this.w = ((TextView)paramView.findViewById(2131362376));
      this.x = paramView.findViewById(2131362182);
      this.y = ((OnlineImageView)paramView.findViewById(2131362013));
      this.z = ((AdProgressTextView)paramView.findViewById(2131362620));
      this.A = ((AdProgressLinearLayout)paramView.findViewById(2131362621));
      this.B = paramView.findViewById(2131362014);
      this.C = ((TextView)paramView.findViewById(2131361975));
      this.D = ((TextView)paramView.findViewById(2131362678));
      this.E = paramView.findViewById(2131363572);
      this.F = paramView.findViewById(2131363507);
      this.G = ((TextView)paramView.findViewById(2131361970));
      this.H = ((TextView)paramView.findViewById(2131361974));
      this.J = ((TextView)paramView.findViewById(2131361973));
      this.I = ((TextView)paramView.findViewById(2131361972));
      this.K = ((TextView)paramView.findViewById(2131361910));
      this.L = ((TextView)paramView.findViewById(2131362545));
      this.M = ((TextView)paramView.findViewById(2131361909));
      this.N = ((ConstraintLayout)paramView.findViewById(2131362202));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.single.custom.ad.AdSingleCard
 * JD-Core Version:    0.7.0.1
 */