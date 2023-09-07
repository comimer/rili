package com.android.calendar.cards;

import a4.d;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView.c0;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.ModuleSchema;
import com.android.calendar.common.Utils;
import com.android.calendar.settings.j;
import com.miui.calendar.ad.AdSchema;
import com.miui.calendar.card.schema.LocalCardSchema;
import com.miui.calendar.card.schema.TextChainSchema;
import com.miui.calendar.card.schema.TextChainSchema.TextChainType;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.view.OnlineImageView;
import com.miui.calendar.weather.WeatherInfo;
import com.xiaomi.ad.feedback.IAdFeedbackListener.Stub;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import z3.f;

public class x1
  extends m1<c, SummaryPresenter.b>
{
  private String b;
  private String c;
  private String d;
  private ArrayList<String> e;
  private String f;
  private String g;
  private String h;
  private String i;
  private TextChainSchema j;
  private Boolean k;
  private Boolean l;
  private WeatherInfo m;
  private LocalCardSchema n;
  private SummaryPresenter.SummaryCardExtraSchema o;
  private Boolean p;
  private final String q;
  
  public x1(Calendar paramCalendar)
  {
    super(paramCalendar);
    paramCalendar = Boolean.FALSE;
    this.k = paramCalendar;
    this.l = paramCalendar;
    this.p = paramCalendar;
    this.q = "text_chain_last_close_julian";
  }
  
  private void n(Context paramContext, c paramc1, Boolean paramBoolean, c paramc2)
  {
    if (!paramBoolean.booleanValue())
    {
      paramc1.p.setVisibility(8);
      paramc1.p.setOnClickListener(null);
      paramc1.r.setVisibility(8);
      paramc1.v.setVisibility(8);
      paramc1.y.setVisibility(8);
      paramc1.z.setVisibility(8);
      paramc1.w.setVisibility(8);
      paramc1.x.setVisibility(8);
      paramc1.y.setVisibility(8);
      return;
    }
    paramc1.p.setVisibility(0);
    paramc1.r.setVisibility(0);
    paramc1.v.setVisibility(0);
    paramc1.y.setVisibility(0);
    paramc1.z.setVisibility(0);
    paramc1.w.setVisibility(0);
    paramc1.x.setVisibility(0);
    paramc1.y.setVisibility(0);
    paramc1.p.setOnClickListener(new w1(this, paramContext, paramc2));
    v.k(paramc1.p);
    if (this.m == null)
    {
      paramc1.D.setVisibility(0);
      paramc1.z.setVisibility(0);
      paramc1.z.setImageResource(2131231376);
      paramc1.q.setText("- -");
      paramc1.q.setTextColor(paramContext.getResources().getColor(2131099955));
      paramc1.q.setVisibility(0);
      paramc1.r.setVisibility(8);
      paramc1.v.setVisibility(8);
      paramc1.w.setVisibility(8);
      paramc1.y.setVisibility(0);
      return;
    }
    paramc1.D.setVisibility(8);
    paramc1.z.setVisibility(8);
    paramc1.q.setTextColor(paramContext.getResources().getColor(2131100014));
    x0.f(paramc1.q, this.m.temperature);
    x0.f(paramc1.r, this.m.weatherTypeDesc);
    if (this.m.aqiLevel < 0)
    {
      paramc1.v.setVisibility(8);
    }
    else
    {
      paramc1.v.setVisibility(0);
      ((GradientDrawable)paramc1.v.getBackground()).setColor(y4.a.b(paramContext, this.m.aqiLevel));
      int i1 = y4.a.d(paramContext, this.m.aqiLevel);
      paramc1.v.setTextColor(i1);
      paramc1.v.setText(y4.a.e(paramContext, this.m.aqiLevel));
    }
    paramc1.w.setVisibility(0);
    x0.f(paramc1.x, this.m.cityName);
    paramc1.y.setVisibility(8);
  }
  
  private void p(Context paramContext, c paramc)
  {
    ArrayMap localArrayMap = new ArrayMap();
    if (this.p.booleanValue()) {
      localArrayMap.put("summary_or_weather_click", "summary");
    }
    CardHelper.o("card_item_clicked", paramc.getAdapterPosition(), -1, null, localArrayMap, "summary_card");
    Utils.j1(paramContext, this.a.getTimeInMillis());
  }
  
  private Boolean v(Context paramContext)
  {
    boolean bool;
    if ((j.r(paramContext)) && (y.i(paramContext))) {
      bool = true;
    } else {
      bool = false;
    }
    return Boolean.valueOf(bool);
  }
  
  private void x(Context paramContext, c paramc)
  {
    CardHelper.o("card_text_chain_close_clicked", paramc.getAdapterPosition(), -1, null, null, "summary_card");
    this.k = Boolean.TRUE;
    b2.a.i(paramContext, "text_chain_last_close_julian", e0.i(Calendar.getInstance()));
  }
  
  private void y(int paramInt, String paramString)
  {
    TextChainSchema localTextChainSchema = this.j;
    if (localTextChainSchema != null)
    {
      localTextChainSchema.onDisplay(CalendarApplication.e());
      CardHelper.o("card_text_chain_displayed", paramInt, -1, this.j.title, null, paramString);
    }
  }
  
  int c()
  {
    return 30;
  }
  
  int d()
  {
    return 1;
  }
  
  void l(SummaryPresenter.b paramb)
  {
    this.n = paramb.b;
    this.o = paramb.c;
    this.m = paramb.a;
  }
  
  void m(final c paramc, final Context paramContext)
  {
    z.a("Cal:D:SummaryCard", "bindView start");
    Object localObject1 = this.n;
    if (localObject1 != null) {
      this.j = o(((LocalCardSchema)localObject1).actionList, ((LocalCardSchema)localObject1).ads, this.o);
    }
    this.p = v(paramContext);
    this.b = d.g(this.a);
    this.g = d.a(this.a);
    Object localObject2 = v(paramContext);
    if (!((Boolean)localObject2).booleanValue()) {
      localObject1 = d.l(paramContext, this.a);
    } else {
      localObject1 = "";
    }
    this.c = ((String)localObject1);
    if ((y.r(paramContext)) && (!((Boolean)localObject2).booleanValue())) {
      localObject1 = f.d(this.a.getTimeInMillis());
    } else {
      localObject1 = "";
    }
    this.f = ((String)localObject1);
    if ((y.t(paramContext)) && (!((Boolean)localObject2).booleanValue())) {
      localObject1 = Utils.v(paramContext, this.a);
    } else {
      localObject1 = "";
    }
    this.d = ((String)localObject1);
    if ((y.s(paramContext)) && (!((Boolean)localObject2).booleanValue())) {
      this.e = f.a(paramContext, this.a.getTimeInMillis());
    }
    if (this.e == null) {
      this.e = new ArrayList();
    }
    boolean bool1 = d.t(paramContext);
    boolean bool2 = false;
    if (bool1)
    {
      localObject1 = d.f(this.a.getTimeInMillis());
      if ((localObject1 != null) && (localObject1.length == 2))
      {
        this.h = localObject1[0];
        this.i = localObject1[1];
      }
    }
    else
    {
      this.h = "";
      this.i = "";
    }
    paramc.b.setText(String.format("%s%s", new Object[] { paramContext.getResources().getString(2131886851), this.b }));
    if ((TextUtils.isEmpty(this.c)) && (TextUtils.isEmpty(this.d)))
    {
      localObject1 = this.e;
      if ((localObject1 != null) && (((ArrayList)localObject1).size() == 0) && (TextUtils.isEmpty(this.g)))
      {
        paramc.c.setVisibility(8);
        paramc.a.setMinimumHeight(paramContext.getResources().getDimensionPixelSize(2131166257));
        break label488;
      }
    }
    paramc.c.setVisibility(0);
    if (!this.p.booleanValue()) {
      Utils.c(paramContext, paramc.c, this.c, this.d, this.e, this.g, this.f, this.a, true, false);
    } else {
      Utils.c(paramContext, paramc.c, "", "", null, this.g, "", this.a, true, true);
    }
    label488:
    if ((!TextUtils.isEmpty(this.h)) && (d.t(paramContext)))
    {
      paramc.d.setVisibility(0);
      paramc.e.setVisibility(0);
      paramc.g.setText(this.h);
      paramc.h.setText(this.i);
      paramc.f.setTextColor(paramContext.getResources().getColor(2131099732));
    }
    else
    {
      paramc.d.setVisibility(8);
      paramc.e.setVisibility(8);
    }
    paramc.e.setOnClickListener(new s1(this, paramContext, paramc));
    v.k(paramc.e);
    paramc.a.setOnClickListener(new t1(this, paramContext, paramc));
    if (this.j != null)
    {
      int i1 = b2.a.a(paramContext, "text_chain_last_close_julian", 0);
      int i2 = e0.i(Calendar.getInstance());
      int i3;
      if (this.j.type == TextChainSchema.TextChainType.ADVERTISEMENT) {
        i3 = this.o.reopenDaysAd;
      } else {
        i3 = this.o.reopenDaysNormal;
      }
      if (i2 - i1 < i3) {
        this.k = Boolean.TRUE;
      }
    }
    if ((!this.k.booleanValue()) && (this.j != null))
    {
      if (!j.g(paramContext))
      {
        z.g("Cal:D:SummaryCard", "bindView(): setting OFF, do NOT show text chain");
        paramc.i.setVisibility(8);
        paramc.j.setVisibility(8);
        this.l = Boolean.FALSE;
        paramc.e.setBackgroundResource(2131231035);
      }
      else
      {
        paramc.i.setVisibility(0);
        paramc.j.setVisibility(0);
        this.l = Boolean.TRUE;
        paramc.e.setBackgroundResource(2131231040);
        localObject2 = this.j.imgUrl;
        if (paramc.k != null) {
          if (TextUtils.isEmpty((CharSequence)localObject2))
          {
            paramc.k.setVisibility(8);
          }
          else
          {
            paramc.k.setVisibility(0);
            paramc.k.a((String)localObject2, 2131231433, 2131231431);
          }
        }
        paramc.o.setOnClickListener(new u1(this, paramContext, paramc));
        paramc.j.setOnClickListener(new a(paramContext, paramc));
        v.k(paramc.j);
        paramc.l.setText(this.j.title);
        Object localObject3 = this.j.type;
        localObject1 = TextChainSchema.TextChainType.ADVERTISEMENT;
        if (localObject3 == localObject1) {
          paramc.n.setVisibility(0);
        } else {
          paramc.n.setVisibility(8);
        }
        Object localObject4 = this.o;
        if (localObject4 != null)
        {
          localObject3 = paramc.l;
          TextView localTextView = paramc.m;
          String str1 = ((SummaryPresenter.SummaryCardExtraSchema)localObject4).tagText;
          String str2 = ((SummaryPresenter.SummaryCardExtraSchema)localObject4).tagTextColor;
          localObject4 = ((SummaryPresenter.SummaryCardExtraSchema)localObject4).tagTextBgColor;
          bool1 = TextUtils.isEmpty((CharSequence)localObject2);
          if (this.j.type == localObject1) {
            bool2 = true;
          }
          x0.G0(paramContext, (TextView)localObject3, localTextView, str1, str2, (String)localObject4, bool1 ^ true, bool2);
        }
      }
    }
    else
    {
      paramc.i.setVisibility(8);
      paramc.j.setVisibility(8);
      this.l = Boolean.FALSE;
      paramc.e.setBackgroundResource(2131231035);
    }
    if (this.p.booleanValue())
    {
      if ((paramc.j.getVisibility() != 0) && (paramc.e.getVisibility() != 0))
      {
        paramc.E.setBackgroundResource(2131231042);
        paramc.p.setBackgroundResource(2131231045);
      }
      else
      {
        paramc.E.setBackgroundResource(2131231043);
        paramc.p.setBackgroundResource(2131231046);
      }
    }
    else if ((paramc.j.getVisibility() != 0) && (paramc.e.getVisibility() != 0)) {
      paramc.E.setBackgroundResource(2131231037);
    } else {
      paramc.E.setBackgroundResource(2131231044);
    }
    paramc.E.setOnTouchListener(new v1(paramc));
    n(paramContext, paramc, this.p, paramc);
  }
  
  public TextChainSchema o(List<ModuleSchema> paramList, List<AdSchema> paramList1, SummaryPresenter.SummaryCardExtraSchema paramSummaryCardExtraSchema)
  {
    if ((paramList1 != null) && (!paramList1.isEmpty())) {
      return TextChainSchema.createTextChain((AdSchema)paramList1.get(0));
    }
    if ((paramList != null) && (!paramList.isEmpty())) {
      return TextChainSchema.createTextChain((ModuleSchema)paramList.get(0));
    }
    return null;
  }
  
  public void w(int paramInt, String paramString)
  {
    if ((this.l.booleanValue()) && (this.j != null)) {
      y(paramInt, paramString);
    }
  }
  
  class a
    implements View.OnClickListener
  {
    a(Context paramContext, x1.c paramc) {}
    
    public void onClick(View paramView)
    {
      if (x1.j(x1.this) != null)
      {
        x1.j(x1.this).onClick(paramContext);
        CardHelper.o("card_text_chain_clicked", paramc.getAdapterPosition(), -1, x1.j(x1.this).title, null, "summary_card");
      }
    }
  }
  
  private static class b
    extends IAdFeedbackListener.Stub
  {
    private final WeakReference<x1> a;
    private final WeakReference<x1.c> b;
    private final WeakReference<Context> c;
    
    private b(x1 paramx1, x1.c paramc, Context paramContext)
    {
      this.a = new WeakReference(paramx1);
      this.b = new WeakReference(paramc);
      this.c = new WeakReference(paramContext);
    }
    
    public void onFinished(int paramInt)
    {
      z.a("Cal:D:SummaryCard", "onAdItemClosed:onFinished() resultCode=$resultCode");
      x1 localx1 = (x1)this.a.get();
      x1.c localc = (x1.c)this.b.get();
      Context localContext = (Context)this.c.get();
      if ((paramInt != -1) && (localx1 != null) && (localContext != null)) {
        localc.o.post(new y1(localx1, localContext, localc));
      }
    }
  }
  
  public static class c
    extends RecyclerView.c0
  {
    FrameLayout D;
    LinearLayout E;
    View a;
    TextView b;
    TextView c;
    View d;
    View e;
    TextView f;
    TextView g;
    TextView h;
    View i;
    View j;
    OnlineImageView k;
    TextView l;
    TextView m;
    View n;
    ImageButton o;
    View p;
    TextView q;
    TextView r;
    TextView v;
    View w;
    TextView x;
    View y;
    ImageView z;
    
    public c(View paramView)
    {
      super();
      this.a = paramView.findViewById(2131363387);
      this.b = ((TextView)paramView.findViewById(2131362736));
      this.c = ((TextView)paramView.findViewById(2131362536));
      this.d = paramView.findViewById(2131362368);
      this.e = paramView.findViewById(2131362557);
      this.f = ((TextView)paramView.findViewById(2131362558));
      this.g = ((TextView)paramView.findViewById(2131362556));
      this.h = ((TextView)paramView.findViewById(2131362553));
      this.i = paramView.findViewById(2131362017);
      this.j = paramView.findViewById(2131362020);
      this.k = ((OnlineImageView)paramView.findViewById(2131362018));
      this.l = ((TextView)paramView.findViewById(2131362023));
      this.m = ((TextView)paramView.findViewById(2131362016));
      this.n = paramView.findViewById(2131362014);
      this.o = ((ImageButton)paramView.findViewById(2131362015));
      this.E = ((LinearLayout)paramView.findViewById(2131362560));
      this.p = paramView.findViewById(2131363543);
      this.q = ((TextView)paramView.findViewById(2131362238));
      this.r = ((TextView)paramView.findViewById(2131363546));
      this.v = ((TextView)paramView.findViewById(2131361976));
      this.w = paramView.findViewById(2131362930);
      this.x = ((TextView)paramView.findViewById(2131362714));
      this.y = paramView.findViewById(2131362879);
      this.z = ((ImageView)paramView.findViewById(2131363544));
      this.D = ((FrameLayout)paramView.findViewById(2131363545));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.x1
 * JD-Core Version:    0.7.0.1
 */