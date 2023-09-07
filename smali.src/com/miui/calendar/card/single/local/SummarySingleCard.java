package com.miui.calendar.card.single.local;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.view.MotionEvent;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Keep;
import com.android.calendar.common.ModuleSchema;
import com.android.calendar.common.Utils;
import com.miui.calendar.ad.AdSchema;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.b.b;
import com.miui.calendar.card.schema.LocalCardSchema;
import com.miui.calendar.card.schema.TextChainSchema;
import com.miui.calendar.card.schema.TextChainSchema.TextChainType;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.q;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.view.OnlineImageView;
import com.miui.calendar.weather.WeatherInfo;
import com.xiaomi.ad.feedback.IAdFeedbackListener.Stub;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.r;
import kotlin.u;
import kotlinx.coroutines.h;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.w0;
import miuix.animation.ITouchStyle;
import miuix.animation.ITouchStyle.TouchType;
import s3.a.a;
import y4.b;
import z3.f;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/local/SummarySingleCard;", "Lcom/miui/calendar/card/single/local/LocalSingleCard;", "", "Lcom/android/calendar/common/ModuleSchema;", "actions", "Lcom/miui/calendar/ad/AdSchema;", "ads", "Lcom/miui/calendar/card/single/local/LocalSingleCard$LocalCardExtraSchema;", "extra", "Lcom/miui/calendar/card/schema/TextChainSchema;", "L", "Lcom/miui/calendar/card/b$b;", "listener", "Lkotlin/u;", "Q", "", "O", "Lcom/miui/calendar/card/single/local/SummarySingleCard$b;", "summaryHolder", "", "position", "needShowWeatherView", "J", "M", "P", "Lcom/miui/calendar/card/schema/LocalCardSchema;", "card", "o", "b", "onDataLoadCompletedListener", "e", "j", "i", "Ls3/a$a;", "Ls3/a;", "holder", "g", "a", "Landroid/view/View;", "view", "h", "Ljava/lang/Class;", "q", "", "Ljava/lang/String;", "mLunarDay", "r", "mSolarTerm", "s", "mDaysOff", "Ljava/util/ArrayList;", "t", "Ljava/util/ArrayList;", "mHolidays", "u", "mSanfu", "v", "mHuangLi", "w", "mHuangLiYi", "x", "mHuangLiJi", "y", "Lcom/miui/calendar/card/schema/TextChainSchema;", "mTextChain", "", "z", "Ljava/util/Set;", "mBottomBannerDisplayStatus", "A", "Z", "mBannerIsClosedToday", "", "B", "mDisplayedStartTime", "C", "mWeatherInfoStr", "Lcom/miui/calendar/weather/WeatherInfo;", "D", "Lcom/miui/calendar/weather/WeatherInfo;", "mWeatherInfo", "E", "mWeatherNeedViewShow", "F", "I", "SUMMARY_CARD_SORT", "Ljava/util/Calendar;", "G", "Ljava/util/Calendar;", "mDesiredDayNow", "N", "()Lkotlin/u;", "weatherInfo", "Landroid/content/Context;", "context", "Lcom/miui/calendar/card/Card$ContainerType;", "containerType", "desiredDay", "Landroid/widget/BaseAdapter;", "adapter", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V", "H", "SummaryCardExtraSchema", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class SummarySingleCard
  extends LocalSingleCard
{
  public static final a H = new a(null);
  private boolean A;
  private long B = -1L;
  private String C;
  private WeatherInfo D;
  private boolean E;
  private int F = 30;
  private Calendar G;
  private String q;
  private String r;
  private String s;
  private ArrayList<String> t;
  private String u;
  private String v;
  private String w;
  private String x;
  private TextChainSchema y;
  private final Set<String> z = new HashSet();
  
  public SummarySingleCard(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, 1, paramContainerType, paramCalendar, paramBaseAdapter);
  }
  
  private static final void E(SummarySingleCard paramSummarySingleCard, int paramInt, View paramView)
  {
    r.f(paramSummarySingleCard, "this$0");
    paramSummarySingleCard.M(paramInt);
  }
  
  private static final void F(SummarySingleCard paramSummarySingleCard, int paramInt, View paramView)
  {
    r.f(paramSummarySingleCard, "this$0");
    paramSummarySingleCard.M(paramInt);
  }
  
  private static final void G(final SummarySingleCard paramSummarySingleCard, final int paramInt, a.a parama, View paramView)
  {
    r.f(paramSummarySingleCard, "this$0");
    r.f(parama, "$holder");
    paramView = paramSummarySingleCard.y;
    r.c(paramView);
    if (paramView.type == TextChainSchema.TextChainType.ADVERTISEMENT)
    {
      paramView = paramSummarySingleCard.a;
      c localc = new c(parama, paramSummarySingleCard, paramInt);
      parama = paramSummarySingleCard.y;
      r.c(parama);
      if (!AdSchema.onAdItemClosed(paramView, localc, "calendar_textchain", parama.ad.ex)) {
        paramSummarySingleCard.P(paramInt);
      }
    }
    else
    {
      paramSummarySingleCard.P(paramInt);
    }
  }
  
  private static final void H(SummarySingleCard paramSummarySingleCard, int paramInt, View paramView)
  {
    r.f(paramSummarySingleCard, "this$0");
    paramView = paramSummarySingleCard.y;
    r.c(paramView);
    paramView.onClick(paramSummarySingleCard.a);
    paramView = paramSummarySingleCard.y;
    r.c(paramView);
    paramSummarySingleCard.k("card_text_chain_clicked", paramInt, -1, paramView.title);
  }
  
  private static final boolean I(a.a parama, View paramView, MotionEvent paramMotionEvent)
  {
    r.f(parama, "$holder");
    r.f(paramMotionEvent, "event");
    parama = (b)parama;
    miuix.animation.a.y(new View[] { parama.p() }).d().O(1.0F, new ITouchStyle.TouchType[] { ITouchStyle.TouchType.DOWN }).O(1.0F, new ITouchStyle.TouchType[] { ITouchStyle.TouchType.UP }).e(paramMotionEvent);
    if (paramMotionEvent.getAction() == 1) {
      parama.u().performClick();
    }
    return true;
  }
  
  private final void J(b paramb, int paramInt, boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      paramb.v().setVisibility(8);
      paramb.v().setOnClickListener(null);
      paramb.y().setVisibility(8);
      paramb.a().setVisibility(8);
      paramb.s().setVisibility(8);
      paramb.x().setVisibility(8);
      paramb.t().setVisibility(8);
      paramb.q().setVisibility(8);
      paramb.s().setVisibility(8);
      return;
    }
    paramb.v().setVisibility(0);
    paramb.y().setVisibility(0);
    paramb.a().setVisibility(0);
    paramb.s().setVisibility(0);
    paramb.x().setVisibility(0);
    paramb.t().setVisibility(0);
    paramb.q().setVisibility(0);
    paramb.s().setVisibility(0);
    paramb.v().setOnClickListener(new o(this, paramInt));
    v.k(paramb.v());
    if (this.D == null)
    {
      paramb.w().setVisibility(0);
      paramb.x().setVisibility(0);
      paramb.x().setImageResource(2131231376);
      paramb.i().setText("- -");
      paramb.i().setTextColor(this.a.getResources().getColor(2131099955));
      paramb.i().setVisibility(0);
      paramb.y().setVisibility(8);
      paramb.a().setVisibility(8);
      paramb.t().setVisibility(8);
      paramb.s().setVisibility(0);
      return;
    }
    paramb.w().setVisibility(8);
    paramb.x().setVisibility(8);
    paramb.i().setTextColor(this.a.getResources().getColor(2131100014));
    Object localObject1 = paramb.i();
    Object localObject2 = this.D;
    r.c(localObject2);
    x0.f((TextView)localObject1, ((WeatherInfo)localObject2).temperature);
    localObject2 = paramb.y();
    localObject1 = this.D;
    r.c(localObject1);
    x0.f((TextView)localObject2, ((WeatherInfo)localObject1).weatherTypeDesc);
    localObject1 = this.D;
    r.c(localObject1);
    if (((WeatherInfo)localObject1).aqiLevel < 0)
    {
      paramb.a().setVisibility(8);
    }
    else
    {
      paramb.a().setVisibility(0);
      localObject1 = paramb.a().getBackground();
      r.d(localObject1, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable");
      localObject1 = (GradientDrawable)localObject1;
      Context localContext = this.a;
      localObject2 = this.D;
      r.c(localObject2);
      ((GradientDrawable)localObject1).setColor(y4.a.b(localContext, ((WeatherInfo)localObject2).aqiLevel));
      localObject1 = this.a;
      localObject2 = this.D;
      r.c(localObject2);
      paramInt = y4.a.d((Context)localObject1, ((WeatherInfo)localObject2).aqiLevel);
      paramb.a().setTextColor(paramInt);
      localObject2 = paramb.a();
      localContext = this.a;
      localObject1 = this.D;
      r.c(localObject1);
      ((TextView)localObject2).setText(y4.a.e(localContext, ((WeatherInfo)localObject1).aqiLevel));
    }
    paramb.t().setVisibility(0);
    localObject1 = paramb.q();
    localObject2 = this.D;
    r.c(localObject2);
    x0.f((TextView)localObject1, ((WeatherInfo)localObject2).cityName);
    paramb.s().setVisibility(8);
  }
  
  private static final void K(SummarySingleCard paramSummarySingleCard, int paramInt, View paramView)
  {
    r.f(paramSummarySingleCard, "this$0");
    y4.c.k(paramSummarySingleCard.a, true);
    paramView = new ArrayMap();
    if (paramSummarySingleCard.E) {
      paramView.put("summary_or_weather_click", "weather");
    }
    paramSummarySingleCard.l("card_item_clicked", paramInt, -1, null, paramView);
  }
  
  private final TextChainSchema L(List<? extends ModuleSchema> paramList, List<? extends AdSchema> paramList1, LocalSingleCard.LocalCardExtraSchema paramLocalCardExtraSchema)
  {
    if ((paramList1 != null) && ((paramList1.isEmpty() ^ true))) {
      return TextChainSchema.createTextChain((AdSchema)paramList1.get(0));
    }
    if ((paramList != null) && ((paramList.isEmpty() ^ true))) {
      paramList = TextChainSchema.createTextChain((ModuleSchema)paramList.get(0));
    } else {
      paramList = null;
    }
    return paramList;
  }
  
  private final void M(int paramInt)
  {
    ArrayMap localArrayMap = new ArrayMap();
    if (this.E) {
      localArrayMap.put("summary_or_weather_click", "summary");
    }
    l("card_item_clicked", paramInt, -1, null, localArrayMap);
    Utils.j1(this.a, this.e.getTimeInMillis());
  }
  
  private final u N()
  {
    if (!O()) {
      return u.a;
    }
    String str = q.d(this.a, "weather_info");
    this.C = str;
    if (!TextUtils.isEmpty(str)) {
      try
      {
        this.D = ((WeatherInfo)x.a(this.C, WeatherInfo.class));
      }
      catch (Exception localException)
      {
        z.d("Cal:D:SummarySingleCard", "doInBackground() ", localException);
      }
    } else {
      this.C = null;
    }
    return u.a;
  }
  
  private final boolean O()
  {
    boolean bool;
    if ((com.android.calendar.settings.j.r(this.a)) && (y.i(this.a))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private final void P(int paramInt)
  {
    k("card_text_chain_close_clicked", paramInt, -1, null);
    this.A = true;
    paramInt = e0.i(Calendar.getInstance());
    b2.a.i(this.a, "text_chain_last_close_julian", paramInt);
    this.b.notifyDataSetChanged();
  }
  
  private final void Q(final b.b paramb)
  {
    y4.c.b(this.a, s0.m(this.e), new b()
    {
      public void a(WeatherInfo paramAnonymousWeatherInfo)
      {
        r.f(paramAnonymousWeatherInfo, "weatherInfo");
        h.d(l0.a(w0.b()), null, null, new SuspendLambda(paramAnonymousWeatherInfo, this.a)
        {
          int label;
          
          public final kotlin.coroutines.c<u> create(Object paramAnonymous2Object, kotlin.coroutines.c<?> paramAnonymous2c)
          {
            return new 1(this.$weatherInfo, this.this$0, this.$listener, paramAnonymous2c);
          }
          
          public final Object invoke(k0 paramAnonymous2k0, kotlin.coroutines.c<? super u> paramAnonymous2c)
          {
            return ((1)create(paramAnonymous2k0, paramAnonymous2c)).invokeSuspend(u.a);
          }
          
          public final Object invokeSuspend(Object paramAnonymous2Object)
          {
            kotlin.coroutines.intrinsics.a.d();
            if (this.label == 0)
            {
              kotlin.j.b(paramAnonymous2Object);
              try
              {
                paramAnonymous2Object = x.c(this.$weatherInfo);
                if (!TextUtils.equals(SummarySingleCard.B(this.this$0), paramAnonymous2Object))
                {
                  q.f(SummarySingleCard.A(this.this$0), "weather_info", paramAnonymous2Object);
                  SummarySingleCard.D(this.this$0, this.$weatherInfo);
                }
                z.g("Cal:D:SummarySingleCard", "get weather done");
              }
              catch (Exception paramAnonymous2Object)
              {
                z.d("Cal:D:SummarySingleCard", "queryData()", paramAnonymous2Object);
              }
              this.$listener.a();
              return u.a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
          }
        }, 3, null);
      }
      
      public void b()
      {
        z.m("Cal:D:SummarySingleCard", "queryData() weather info load failed!");
        q.h(SummarySingleCard.A(this.a), "weather_info");
        SummarySingleCard.D(this.a, null);
        paramb.a();
      }
    });
  }
  
  public void a()
  {
    super.a();
    this.g = this.F;
  }
  
  public void b()
  {
    this.q = a4.d.g(this.e);
    this.v = a4.d.a(this.e);
    boolean bool = O();
    Object localObject;
    if (!bool) {
      localObject = a4.d.l(this.a, this.e);
    } else {
      localObject = "";
    }
    this.r = ((String)localObject);
    if ((y.r(this.a)) && (!bool)) {
      localObject = f.d(this.e.getTimeInMillis());
    } else {
      localObject = "";
    }
    this.u = ((String)localObject);
    if ((y.t(this.a)) && (!bool)) {
      localObject = Utils.v(this.a, this.e);
    } else {
      localObject = "";
    }
    this.s = ((String)localObject);
    if ((y.s(this.a)) && (!bool)) {
      this.t = f.a(this.a, this.e.getTimeInMillis());
    }
    if (this.t == null) {
      this.t = new ArrayList();
    }
    if (a4.d.t(this.a))
    {
      localObject = a4.d.f(this.e.getTimeInMillis());
      if ((localObject != null) && (localObject.length == 2))
      {
        this.w = localObject[0];
        this.x = localObject[1];
      }
    }
    else
    {
      this.w = "";
      this.x = "";
    }
    N();
    super.b();
    if (this.y == null) {
      this.y = L(null, null, this.p);
    }
  }
  
  public void e(b.b paramb)
  {
    r.f(paramb, "onDataLoadCompletedListener");
    if (O()) {
      Q(paramb);
    }
    super.e(paramb);
  }
  
  public void g(a.a parama, int paramInt)
  {
    r.f(parama, "holder");
    this.G = this.e;
    if (!(parama instanceof b))
    {
      z.m("Cal:D:SummarySingleCard", "bindView(): holder error!");
      return;
    }
    z.a("Cal:D:SummarySingleCard", "bindView start");
    this.E = O();
    b localb = (b)parama;
    Object localObject1 = localb.r();
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append(this.a.getResources().getString(2131886851));
    ((StringBuilder)localObject2).append(this.q);
    ((TextView)localObject1).setText(((StringBuilder)localObject2).toString());
    if ((TextUtils.isEmpty(this.r)) && (TextUtils.isEmpty(this.s)))
    {
      localObject1 = this.t;
      if (localObject1 != null)
      {
        r.c(localObject1);
        if ((((ArrayList)localObject1).size() == 0) && (TextUtils.isEmpty(this.v)))
        {
          localb.k().setVisibility(8);
          localb.u().setMinimumHeight(this.a.getResources().getDimensionPixelSize(2131166257));
          break label280;
        }
      }
    }
    localb.k().setVisibility(0);
    if (!this.E) {
      Utils.c(this.a, localb.k(), this.r, this.s, this.t, this.v, this.u, this.e, true, false);
    } else {
      Utils.c(this.a, localb.k(), "", "", null, this.v, "", this.e, true, true);
    }
    label280:
    if ((!TextUtils.isEmpty(this.w)) && (a4.d.t(this.a)))
    {
      localb.j().setVisibility(0);
      localb.m().setVisibility(0);
      localb.o().setText(this.w);
      localb.l().setText(this.x);
      localb.n().setTextColor(this.a.getResources().getColor(2131099732));
    }
    else
    {
      localb.j().setVisibility(8);
      localb.m().setVisibility(8);
    }
    localb.m().setOnClickListener(new j(this, paramInt));
    v.k(localb.m());
    localb.u().setOnClickListener(new k(this, paramInt));
    localObject1 = this.o;
    if ((localObject1 instanceof SummaryCardExtraSchema))
    {
      r.d(localObject1, "null cannot be cast to non-null type com.miui.calendar.card.single.local.SummarySingleCard.SummaryCardExtraSchema");
      localObject1 = (SummaryCardExtraSchema)localObject1;
    }
    else
    {
      localObject1 = null;
    }
    if ((this.y != null) && (localObject1 != null))
    {
      int i = b2.a.a(this.a, "text_chain_last_close_julian", 0);
      int j = e0.i(Calendar.getInstance());
      localObject2 = this.y;
      r.c(localObject2);
      int k;
      if (((TextChainSchema)localObject2).type == TextChainSchema.TextChainType.ADVERTISEMENT) {
        k = ((SummaryCardExtraSchema)localObject1).getReopenDaysAd();
      } else {
        k = ((SummaryCardExtraSchema)localObject1).getReopenDaysNormal();
      }
      if (j - i < k) {
        this.A = true;
      }
    }
    if ((!this.A) && (this.m != null) && (this.y != null))
    {
      if (!com.android.calendar.settings.j.g(this.a))
      {
        z.g("Cal:D:SummarySingleCard", "bindView(): setting OFF, do NOT show text chain");
        localb.e().setVisibility(8);
        localb.g().setVisibility(8);
        localb.m().setBackgroundResource(2131231035);
      }
      else
      {
        localb.e().setVisibility(0);
        localb.g().setVisibility(0);
        localb.m().setBackgroundResource(2131231040);
        localObject2 = this.y;
        r.c(localObject2);
        localObject2 = ((TextChainSchema)localObject2).imgUrl;
        if (localb.f() != null) {
          if (TextUtils.isEmpty((CharSequence)localObject2))
          {
            localObject3 = localb.f();
            r.c(localObject3);
            ((View)localObject3).setVisibility(8);
          }
          else
          {
            localObject3 = localb.f();
            r.c(localObject3);
            ((View)localObject3).setVisibility(0);
            localObject3 = localb.f();
            r.c(localObject3);
            ((OnlineImageView)localObject3).a((String)localObject2, 2131231433, 2131231431);
          }
        }
        localb.c().setOnClickListener(new l(this, paramInt, parama));
        localb.g().setOnClickListener(new m(this, paramInt));
        v.k(localb.g());
        Object localObject4 = localb.h();
        Object localObject3 = this.y;
        r.c(localObject3);
        ((TextView)localObject4).setText(((TextChainSchema)localObject3).title);
        localObject3 = this.y;
        r.c(localObject3);
        localObject4 = ((TextChainSchema)localObject3).type;
        localObject3 = TextChainSchema.TextChainType.ADVERTISEMENT;
        if (localObject4 == localObject3) {
          localb.b().setVisibility(0);
        } else {
          localb.b().setVisibility(8);
        }
        if (localObject1 != null)
        {
          Context localContext = this.a;
          r.e(localContext, "mContext");
          TextView localTextView1 = localb.h();
          TextView localTextView2 = localb.d();
          String str = ((SummaryCardExtraSchema)localObject1).getTagText();
          r.c(str);
          localObject4 = ((SummaryCardExtraSchema)localObject1).getTagTextColor();
          r.c(localObject4);
          localObject1 = ((SummaryCardExtraSchema)localObject1).getTagTextBgColor();
          r.c(localObject1);
          boolean bool1 = TextUtils.isEmpty((CharSequence)localObject2);
          localObject2 = this.y;
          r.c(localObject2);
          boolean bool2;
          if (((TextChainSchema)localObject2).type == localObject3) {
            bool2 = true;
          } else {
            bool2 = false;
          }
          x0.G0(localContext, localTextView1, localTextView2, str, (String)localObject4, (String)localObject1, bool1 ^ true, bool2);
        }
      }
    }
    else
    {
      localb.e().setVisibility(8);
      localb.g().setVisibility(8);
      localb.m().setBackgroundResource(2131231035);
    }
    if (this.E)
    {
      if ((localb.g().getVisibility() != 0) && (localb.m().getVisibility() != 0))
      {
        localb.p().setBackgroundResource(2131231042);
        localb.v().setBackgroundResource(2131231045);
      }
      else
      {
        localb.p().setBackgroundResource(2131231043);
        localb.v().setBackgroundResource(2131231046);
      }
    }
    else if ((localb.g().getVisibility() != 0) && (localb.m().getVisibility() != 0)) {
      localb.p().setBackgroundResource(2131231037);
    } else {
      localb.p().setBackgroundResource(2131231044);
    }
    localb.p().setOnTouchListener(new n(parama));
    J(localb, paramInt, this.E);
    z.g("Cal:D:SummarySingleCard", "summery bindView");
    super.g(parama, paramInt);
  }
  
  public a.a h(View paramView)
  {
    r.f(paramView, "view");
    return new b(paramView);
  }
  
  public int i()
  {
    return 2131558952;
  }
  
  public boolean j()
  {
    return y.n(this.a);
  }
  
  public void o(LocalCardSchema paramLocalCardSchema)
  {
    super.o(paramLocalCardSchema);
    if (paramLocalCardSchema != null) {
      this.y = L(paramLocalCardSchema.actionList, paramLocalCardSchema.ads, this.o);
    }
  }
  
  protected Class<? extends LocalSingleCard.LocalCardExtraSchema> q()
  {
    return SummaryCardExtraSchema.class;
  }
  
  @Metadata(d1={""}, d2={"Lcom/miui/calendar/card/single/local/SummarySingleCard$SummaryCardExtraSchema;", "Lcom/miui/calendar/card/single/local/LocalSingleCard$LocalCardExtraSchema;", "Lcom/miui/calendar/card/single/local/LocalSingleCard;", "(Lcom/miui/calendar/card/single/local/SummarySingleCard;)V", "icon", "", "getIcon", "()Ljava/lang/String;", "setIcon", "(Ljava/lang/String;)V", "reopenDaysAd", "", "getReopenDaysAd", "()I", "setReopenDaysAd", "(I)V", "reopenDaysNormal", "getReopenDaysNormal", "setReopenDaysNormal", "tagText", "getTagText", "setTagText", "tagTextBgColor", "getTagTextBgColor", "setTagTextBgColor", "tagTextColor", "getTagTextColor", "setTagTextColor", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
  @Keep
  public final class SummaryCardExtraSchema
    extends LocalSingleCard.LocalCardExtraSchema
  {
    private String icon;
    private int reopenDaysAd;
    private int reopenDaysNormal;
    private String tagText;
    private String tagTextBgColor;
    private String tagTextColor;
    
    public SummaryCardExtraSchema()
    {
      super();
    }
    
    public final String getIcon()
    {
      return this.icon;
    }
    
    public final int getReopenDaysAd()
    {
      return this.reopenDaysAd;
    }
    
    public final int getReopenDaysNormal()
    {
      return this.reopenDaysNormal;
    }
    
    public final String getTagText()
    {
      return this.tagText;
    }
    
    public final String getTagTextBgColor()
    {
      return this.tagTextBgColor;
    }
    
    public final String getTagTextColor()
    {
      return this.tagTextColor;
    }
    
    public final void setIcon(String paramString)
    {
      this.icon = paramString;
    }
    
    public final void setReopenDaysAd(int paramInt)
    {
      this.reopenDaysAd = paramInt;
    }
    
    public final void setReopenDaysNormal(int paramInt)
    {
      this.reopenDaysNormal = paramInt;
    }
    
    public final void setTagText(String paramString)
    {
      this.tagText = paramString;
    }
    
    public final void setTagTextBgColor(String paramString)
    {
      this.tagTextBgColor = paramString;
    }
    
    public final void setTagTextColor(String paramString)
    {
      this.tagTextColor = paramString;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/local/SummarySingleCard$a;", "", "", "DISK_CACHE_KEY_WEATHER_INFO", "Ljava/lang/String;", "SP_KEY_TEXT_CHAIN_LAST_CLOSE_JULIAN", "TAG", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/local/SummarySingleCard$b;", "Ls3/a$a;", "Ls3/a;", "Landroid/view/View;", "e", "Landroid/view/View;", "u", "()Landroid/view/View;", "setTitleView", "(Landroid/view/View;)V", "titleView", "Landroid/widget/TextView;", "f", "Landroid/widget/TextView;", "r", "()Landroid/widget/TextView;", "setLunarDayView", "(Landroid/widget/TextView;)V", "lunarDayView", "g", "k", "setHolidayView", "holidayView", "h", "j", "setDividerView", "dividerView", "i", "m", "setHuangLiYiJiView", "huangLiYiJiView", "n", "setHuangLiYiLabelView", "huangLiYiLabelView", "o", "setHuangLiYiView", "huangLiYiView", "l", "setHuangLiJiView", "huangLiJiView", "setBannerDividerView", "bannerDividerView", "setBannerRootView", "bannerRootView", "Lcom/miui/calendar/view/OnlineImageView;", "Lcom/miui/calendar/view/OnlineImageView;", "()Lcom/miui/calendar/view/OnlineImageView;", "setBannerIconView", "(Lcom/miui/calendar/view/OnlineImageView;)V", "bannerIconView", "p", "setBannerTextView", "bannerTextView", "q", "d", "setBannerCustomTagView", "bannerCustomTagView", "b", "setBannerAdTagView", "bannerAdTagView", "Landroid/widget/ImageButton;", "s", "Landroid/widget/ImageButton;", "c", "()Landroid/widget/ImageButton;", "setBannerCloseView", "(Landroid/widget/ImageButton;)V", "bannerCloseView", "t", "v", "setWeatherContent", "weatherContent", "setCurrentTemperature", "currentTemperature", "y", "setWeatherTypeView", "weatherTypeView", "w", "a", "setAqiLevelSimpleDescView", "aqiLevelSimpleDescView", "x", "setOtherInfoRootView", "otherInfoRootView", "setLocation", "location", "z", "setNoDataHintRootView", "noDataHintRootView", "Landroid/widget/ImageView;", "A", "Landroid/widget/ImageView;", "()Landroid/widget/ImageView;", "setWeatherIconView", "(Landroid/widget/ImageView;)V", "weatherIconView", "Landroid/widget/FrameLayout;", "B", "Landroid/widget/FrameLayout;", "()Landroid/widget/FrameLayout;", "setWeatherIconContainer", "(Landroid/widget/FrameLayout;)V", "weatherIconContainer", "Landroid/widget/LinearLayout;", "C", "Landroid/widget/LinearLayout;", "()Landroid/widget/LinearLayout;", "setHuangliContainer", "(Landroid/widget/LinearLayout;)V", "huangliContainer", "view", "<init>", "(Lcom/miui/calendar/card/single/local/SummarySingleCard;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class b
    extends a.a
  {
    private ImageView A;
    private FrameLayout B;
    private LinearLayout C;
    private View e;
    private TextView f;
    private TextView g;
    private View h;
    private View i;
    private TextView j;
    private TextView k;
    private TextView l;
    private View m;
    private View n;
    private OnlineImageView o;
    private TextView p;
    private TextView q;
    private View r;
    private ImageButton s;
    private View t;
    private TextView u;
    private TextView v;
    private TextView w;
    private View x;
    private TextView y;
    private View z;
    
    public b()
    {
      super(localObject);
      this$1 = localObject.findViewById(2131363387);
      r.e(SummarySingleCard.this, "view.findViewById(R.id.title_layout)");
      this.e = SummarySingleCard.this;
      this$1 = localObject.findViewById(2131362736);
      r.d(SummarySingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.f = ((TextView)SummarySingleCard.this);
      this$1 = localObject.findViewById(2131362536);
      r.d(SummarySingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.g = ((TextView)SummarySingleCard.this);
      this$1 = localObject.findViewById(2131362368);
      r.e(SummarySingleCard.this, "view.findViewById(R.id.divider)");
      this.h = SummarySingleCard.this;
      this$1 = localObject.findViewById(2131362557);
      r.e(SummarySingleCard.this, "view.findViewById(R.id.huang_li_yi_ji_layout)");
      this.i = SummarySingleCard.this;
      this$1 = localObject.findViewById(2131362558);
      r.d(SummarySingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.j = ((TextView)SummarySingleCard.this);
      this$1 = localObject.findViewById(2131362556);
      r.d(SummarySingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.k = ((TextView)SummarySingleCard.this);
      this$1 = localObject.findViewById(2131362553);
      r.d(SummarySingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.l = ((TextView)SummarySingleCard.this);
      this$1 = localObject.findViewById(2131362017);
      r.e(SummarySingleCard.this, "view.findViewById(R.id.banner_divider)");
      this.m = SummarySingleCard.this;
      this$1 = localObject.findViewById(2131362020);
      r.e(SummarySingleCard.this, "view.findViewById(R.id.banner_root)");
      this.n = SummarySingleCard.this;
      this$1 = localObject.findViewById(2131362018);
      r.d(SummarySingleCard.this, "null cannot be cast to non-null type com.miui.calendar.view.OnlineImageView");
      this.o = ((OnlineImageView)SummarySingleCard.this);
      this$1 = localObject.findViewById(2131362023);
      r.d(SummarySingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.p = ((TextView)SummarySingleCard.this);
      this$1 = localObject.findViewById(2131362016);
      r.d(SummarySingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.q = ((TextView)SummarySingleCard.this);
      this$1 = localObject.findViewById(2131362014);
      r.e(SummarySingleCard.this, "view.findViewById(R.id.banner_ad_tag)");
      this.r = SummarySingleCard.this;
      this$1 = localObject.findViewById(2131362015);
      r.d(SummarySingleCard.this, "null cannot be cast to non-null type android.widget.ImageButton");
      this.s = ((ImageButton)SummarySingleCard.this);
      this$1 = localObject.findViewById(2131362560);
      r.d(SummarySingleCard.this, "null cannot be cast to non-null type android.widget.LinearLayout");
      this.C = ((LinearLayout)SummarySingleCard.this);
      this$1 = localObject.findViewById(2131363543);
      r.e(SummarySingleCard.this, "view.findViewById(R.id.weather_content)");
      this.t = SummarySingleCard.this;
      this$1 = localObject.findViewById(2131362238);
      r.d(SummarySingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.u = ((TextView)SummarySingleCard.this);
      this$1 = localObject.findViewById(2131363546);
      r.d(SummarySingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.v = ((TextView)SummarySingleCard.this);
      this$1 = localObject.findViewById(2131361976);
      r.d(SummarySingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.w = ((TextView)SummarySingleCard.this);
      this$1 = localObject.findViewById(2131362930);
      r.e(SummarySingleCard.this, "view.findViewById(R.id.other_info_root)");
      this.x = SummarySingleCard.this;
      this$1 = localObject.findViewById(2131362714);
      r.d(SummarySingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.y = ((TextView)SummarySingleCard.this);
      this$1 = localObject.findViewById(2131362879);
      r.e(SummarySingleCard.this, "view.findViewById(R.id.no_data_hint_root)");
      this.z = SummarySingleCard.this;
      this$1 = localObject.findViewById(2131363544);
      r.d(SummarySingleCard.this, "null cannot be cast to non-null type android.widget.ImageView");
      this.A = ((ImageView)SummarySingleCard.this);
      this$1 = localObject.findViewById(2131363545);
      r.d(SummarySingleCard.this, "null cannot be cast to non-null type android.widget.FrameLayout");
      this.B = ((FrameLayout)SummarySingleCard.this);
    }
    
    public final TextView a()
    {
      return this.w;
    }
    
    public final View b()
    {
      return this.r;
    }
    
    public final ImageButton c()
    {
      return this.s;
    }
    
    public final TextView d()
    {
      return this.q;
    }
    
    public final View e()
    {
      return this.m;
    }
    
    public final OnlineImageView f()
    {
      return this.o;
    }
    
    public final View g()
    {
      return this.n;
    }
    
    public final TextView h()
    {
      return this.p;
    }
    
    public final TextView i()
    {
      return this.u;
    }
    
    public final View j()
    {
      return this.h;
    }
    
    public final TextView k()
    {
      return this.g;
    }
    
    public final TextView l()
    {
      return this.l;
    }
    
    public final View m()
    {
      return this.i;
    }
    
    public final TextView n()
    {
      return this.j;
    }
    
    public final TextView o()
    {
      return this.k;
    }
    
    public final LinearLayout p()
    {
      return this.C;
    }
    
    public final TextView q()
    {
      return this.y;
    }
    
    public final TextView r()
    {
      return this.f;
    }
    
    public final View s()
    {
      return this.z;
    }
    
    public final View t()
    {
      return this.x;
    }
    
    public final View u()
    {
      return this.e;
    }
    
    public final View v()
    {
      return this.t;
    }
    
    public final FrameLayout w()
    {
      return this.B;
    }
    
    public final ImageView x()
    {
      return this.A;
    }
    
    public final TextView y()
    {
      return this.v;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/miui/calendar/card/single/local/SummarySingleCard$c", "Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;", "", "resultCode", "Lkotlin/u;", "onFinished", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class c
    extends IAdFeedbackListener.Stub
  {
    c(a.a parama, SummarySingleCard paramSummarySingleCard, int paramInt) {}
    
    private static final void o0(SummarySingleCard paramSummarySingleCard, int paramInt)
    {
      r.f(paramSummarySingleCard, "this$0");
      SummarySingleCard.C(paramSummarySingleCard, paramInt);
    }
    
    public void onFinished(int paramInt)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onAdItemClosed:onFinished() resultCode=");
      localStringBuilder.append(paramInt);
      z.a("Cal:D:SummarySingleCard", localStringBuilder.toString());
      if (paramInt == -1) {
        return;
      }
      ((SummarySingleCard.b)this.a).c().post(new p(paramSummarySingleCard, paramInt));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.single.local.SummarySingleCard
 * JD-Core Version:    0.7.0.1
 */