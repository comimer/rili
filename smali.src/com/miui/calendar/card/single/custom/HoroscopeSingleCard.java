package com.miui.calendar.card.single.custom;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.TextView;
import androidx.annotation.Keep;
import b2.a;
import com.android.calendar.common.ModuleSchema;
import com.android.calendar.settings.j;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.schema.CustomCardItemSchema;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.detail.HoroscopeSelectActivity;
import com.miui.calendar.util.v;
import com.miui.calendar.util.z;
import java.util.Calendar;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import s3.a.a;
import v3.e;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/HoroscopeSingleCard;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard;", "", "j", "", "i", "B", "Ls3/a$a;", "Ls3/a;", "holder", "position", "Lkotlin/u;", "g", "Landroid/view/View;", "view", "h", "Ljava/lang/Class;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;", "A", "Landroid/content/Context;", "context", "Lcom/miui/calendar/card/Card$ContainerType;", "containerType", "Ljava/util/Calendar;", "desiredDay", "Landroid/widget/BaseAdapter;", "adapter", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V", "s", "a", "HoroscopeItemExtraSchema", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class HoroscopeSingleCard
  extends CustomSingleCard
{
  public static final a s = new a(null);
  
  public HoroscopeSingleCard(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, 28, paramContainerType, paramCalendar, paramBaseAdapter);
  }
  
  private static final void F(HoroscopeSingleCard paramHoroscopeSingleCard, int paramInt, View paramView)
  {
    r.f(paramHoroscopeSingleCard, "this$0");
    paramView = new Intent(paramHoroscopeSingleCard.a, HoroscopeSelectActivity.class);
    paramView.addFlags(268435456);
    paramHoroscopeSingleCard.a.startActivity(paramView);
    paramHoroscopeSingleCard.k("card_change_clicked", paramInt, -1, null);
  }
  
  private static final void G(CustomCardItemSchema paramCustomCardItemSchema, HoroscopeSingleCard paramHoroscopeSingleCard, int paramInt, View paramView)
  {
    r.f(paramHoroscopeSingleCard, "this$0");
    paramView = paramCustomCardItemSchema.action;
    if (paramView != null) {
      paramView.sendIntent(paramHoroscopeSingleCard.a);
    }
    paramHoroscopeSingleCard.k("card_item_clicked", paramInt, -1, paramCustomCardItemSchema.title);
  }
  
  public Class<? extends CustomSingleCard.CustomItemExtraSchema> A()
  {
    return HoroscopeItemExtraSchema.class;
  }
  
  public int B()
  {
    return 1;
  }
  
  public void g(a.a parama, int paramInt)
  {
    r.f(parama, "holder");
    if (!(parama instanceof b))
    {
      z.m("Cal:D:HoroscopeSingleCard", "bindView(): holder error!");
      return;
    }
    super.g(parama, paramInt);
    Object localObject1 = this.m.itemList;
    Object localObject2 = a.c(this.a, "preferences_horoscope_selected", "aries");
    int i = this.r.size();
    for (int j = 0; j < i; j++)
    {
      localObject3 = this.r.get(j);
      r.d(localObject3, "null cannot be cast to non-null type com.miui.calendar.card.single.custom.HoroscopeSingleCard.HoroscopeItemExtraSchema");
      if (r.a(((HoroscopeItemExtraSchema)localObject3).getReferId(), localObject2)) {
        break label117;
      }
    }
    j = 0;
    label117:
    Object localObject3 = (CustomCardItemSchema)((List)localObject1).get(j);
    if (j < this.r.size())
    {
      localObject1 = this.r.get(j);
      r.d(localObject1, "null cannot be cast to non-null type com.miui.calendar.card.single.custom.HoroscopeSingleCard.HoroscopeItemExtraSchema");
      localObject2 = (HoroscopeItemExtraSchema)localObject1;
      localObject1 = (b)parama;
      ((CustomSingleCard.g)localObject1).e.setText(this.m.title);
      if (TextUtils.isEmpty(((CustomCardItemSchema)localObject3).title))
      {
        ((b)localObject1).i().setVisibility(8);
        ((b)localObject1).h().setVisibility(8);
      }
      else
      {
        ((b)localObject1).i().setVisibility(0);
        ((b)localObject1).h().setVisibility(0);
        ((b)localObject1).h().setText(((CustomCardItemSchema)localObject3).title);
      }
      ((b)localObject1).e().setImageDrawable(e.c(this.a, ((HoroscopeItemExtraSchema)localObject2).getReferId()));
    }
    try
    {
      Object localObject4 = ((b)parama).a();
      Object localObject5 = ((HoroscopeItemExtraSchema)localObject2).getComprehensiveIndex();
      float f1 = 0.0F;
      if (localObject5 != null) {
        f2 = Float.parseFloat((String)localObject5);
      } else {
        f2 = 0.0F;
      }
      ((RatingBar)localObject4).setRating(f2);
      localObject4 = ((b)parama).f();
      localObject5 = ((HoroscopeItemExtraSchema)localObject2).getLoveIndex();
      if (localObject5 != null) {
        f2 = Float.parseFloat((String)localObject5);
      } else {
        f2 = 0.0F;
      }
      ((RatingBar)localObject4).setRating(f2);
      localObject5 = ((b)parama).c();
      localObject4 = ((HoroscopeItemExtraSchema)localObject2).getFinancialIndex();
      if (localObject4 != null) {
        f2 = Float.parseFloat((String)localObject4);
      } else {
        f2 = 0.0F;
      }
      ((RatingBar)localObject5).setRating(f2);
      parama = ((b)parama).j();
      localObject2 = ((HoroscopeItemExtraSchema)localObject2).getWorkingIndex();
      float f2 = f1;
      if (localObject2 != null) {
        f2 = Float.parseFloat((String)localObject2);
      }
      parama.setRating(f2);
    }
    catch (Exception parama)
    {
      label429:
      break label429;
    }
    ((b)localObject1).b().setText(((CustomCardItemSchema)localObject3).description);
    ((b)localObject1).g().setOnClickListener(new p(this, paramInt));
    v.k(((b)localObject1).g());
    ((b)localObject1).d().setOnClickListener(new q((CustomCardItemSchema)localObject3, this, paramInt));
    v.k(((b)localObject1).d());
    return;
    z.m("Cal:D:HoroscopeSingleCard", "bindView() wrong extra data");
  }
  
  public a.a h(View paramView)
  {
    r.f(paramView, "view");
    return new b(paramView);
  }
  
  public int i()
  {
    return 2131558611;
  }
  
  public boolean j()
  {
    Object localObject = this.m;
    if (localObject != null)
    {
      localObject = ((CustomCardSchema)localObject).itemList;
      if ((localObject != null) && (((List)localObject).size() > 0) && (j.q(this.a))) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  @Metadata(d1={""}, d2={"Lcom/miui/calendar/card/single/custom/HoroscopeSingleCard$HoroscopeItemExtraSchema;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;", "(Lcom/miui/calendar/card/single/custom/HoroscopeSingleCard;)V", "ComprehensiveIndex", "", "getComprehensiveIndex", "()Ljava/lang/String;", "setComprehensiveIndex", "(Ljava/lang/String;)V", "FinancialIndex", "getFinancialIndex", "setFinancialIndex", "LoveIndex", "getLoveIndex", "setLoveIndex", "WorkingIndex", "getWorkingIndex", "setWorkingIndex", "referId", "getReferId", "setReferId", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
  @Keep
  public final class HoroscopeItemExtraSchema
    extends CustomSingleCard.CustomItemExtraSchema
  {
    private String ComprehensiveIndex;
    private String FinancialIndex;
    private String LoveIndex;
    private String WorkingIndex;
    private String referId;
    
    public final String getComprehensiveIndex()
    {
      return this.ComprehensiveIndex;
    }
    
    public final String getFinancialIndex()
    {
      return this.FinancialIndex;
    }
    
    public final String getLoveIndex()
    {
      return this.LoveIndex;
    }
    
    public final String getReferId()
    {
      return this.referId;
    }
    
    public final String getWorkingIndex()
    {
      return this.WorkingIndex;
    }
    
    public final void setComprehensiveIndex(String paramString)
    {
      this.ComprehensiveIndex = paramString;
    }
    
    public final void setFinancialIndex(String paramString)
    {
      this.FinancialIndex = paramString;
    }
    
    public final void setLoveIndex(String paramString)
    {
      this.LoveIndex = paramString;
    }
    
    public final void setReferId(String paramString)
    {
      this.referId = paramString;
    }
    
    public final void setWorkingIndex(String paramString)
    {
      this.WorkingIndex = paramString;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/HoroscopeSingleCard$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/HoroscopeSingleCard$b;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$g;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard;", "Landroid/widget/TextView;", "l", "Landroid/widget/TextView;", "g", "()Landroid/widget/TextView;", "setSetBaZiView", "(Landroid/widget/TextView;)V", "setBaZiView", "Landroid/view/View;", "m", "Landroid/view/View;", "i", "()Landroid/view/View;", "setTitleDividerView", "(Landroid/view/View;)V", "titleDividerView", "n", "h", "setSubTitleView", "subTitleView", "o", "getContentRootView", "setContentRootView", "contentRootView", "Landroid/widget/ImageView;", "p", "Landroid/widget/ImageView;", "e", "()Landroid/widget/ImageView;", "setImageView", "(Landroid/widget/ImageView;)V", "imageView", "Landroid/widget/RatingBar;", "q", "Landroid/widget/RatingBar;", "a", "()Landroid/widget/RatingBar;", "setComprehensiveRatingView", "(Landroid/widget/RatingBar;)V", "comprehensiveRatingView", "r", "f", "setLoveRatingView", "loveRatingView", "s", "c", "setFinancialRatingView", "financialRatingView", "t", "j", "setWorkingRatingView", "workingRatingView", "u", "b", "setDescriptionView", "descriptionView", "v", "d", "setHoroscopeContainer", "horoscopeContainer", "view", "<init>", "(Lcom/miui/calendar/card/single/custom/HoroscopeSingleCard;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class b
    extends CustomSingleCard.g
  {
    private TextView l;
    private View m;
    private TextView n;
    private View o;
    private ImageView p;
    private RatingBar q;
    private RatingBar r;
    private RatingBar s;
    private RatingBar t;
    private TextView u;
    private View v;
    
    public b()
    {
      super(localObject);
      this$1 = localObject.findViewById(2131363146);
      r.e(HoroscopeSingleCard.this, "view.findViewById(R.id.set_bazi)");
      this.l = ((TextView)HoroscopeSingleCard.this);
      this$1 = localObject.findViewById(2131363384);
      r.e(HoroscopeSingleCard.this, "view.findViewById(R.id.title_divider)");
      this.m = HoroscopeSingleCard.this;
      this$1 = localObject.findViewById(2131363263);
      r.e(HoroscopeSingleCard.this, "view.findViewById(R.id.sub_title)");
      this.n = ((TextView)HoroscopeSingleCard.this);
      this$1 = localObject.findViewById(2131362221);
      r.e(HoroscopeSingleCard.this, "view.findViewById(R.id.content_root)");
      this.o = HoroscopeSingleCard.this;
      this$1 = localObject.findViewById(2131362581);
      r.e(HoroscopeSingleCard.this, "view.findViewById(R.id.image)");
      this.p = ((ImageView)HoroscopeSingleCard.this);
      this$1 = localObject.findViewById(2131363001);
      r.e(HoroscopeSingleCard.this, "view.findViewById(R.id.rating_comprehensive)");
      this.q = ((RatingBar)HoroscopeSingleCard.this);
      this$1 = localObject.findViewById(2131363005);
      r.e(HoroscopeSingleCard.this, "view.findViewById(R.id.rating_love)");
      this.r = ((RatingBar)HoroscopeSingleCard.this);
      this$1 = localObject.findViewById(2131363003);
      r.e(HoroscopeSingleCard.this, "view.findViewById(R.id.rating_financial)");
      this.s = ((RatingBar)HoroscopeSingleCard.this);
      this$1 = localObject.findViewById(2131363008);
      r.e(HoroscopeSingleCard.this, "view.findViewById(R.id.rating_working)");
      this.t = ((RatingBar)HoroscopeSingleCard.this);
      this$1 = localObject.findViewById(2131362338);
      r.e(HoroscopeSingleCard.this, "view.findViewById(R.id.description)");
      this.u = ((TextView)HoroscopeSingleCard.this);
      this$1 = localObject.findViewById(2131362544);
      r.e(HoroscopeSingleCard.this, "view.findViewById(R.id.horoscope_container)");
      this.v = HoroscopeSingleCard.this;
    }
    
    public final RatingBar a()
    {
      return this.q;
    }
    
    public final TextView b()
    {
      return this.u;
    }
    
    public final RatingBar c()
    {
      return this.s;
    }
    
    public final View d()
    {
      return this.v;
    }
    
    public final ImageView e()
    {
      return this.p;
    }
    
    public final RatingBar f()
    {
      return this.r;
    }
    
    public final TextView g()
    {
      return this.l;
    }
    
    public final TextView h()
    {
      return this.n;
    }
    
    public final View i()
    {
      return this.m;
    }
    
    public final RatingBar j()
    {
      return this.t;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.single.custom.HoroscopeSingleCard
 * JD-Core Version:    0.7.0.1
 */