package com.android.calendar.cards;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView.c0;
import b2.a;
import com.android.calendar.common.ModuleSchema;
import com.miui.calendar.card.schema.CustomCardItemSchema;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.detail.HoroscopeSelectActivity;
import com.miui.calendar.util.v;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import v3.e;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/a1;", "Lcom/android/calendar/cards/m1;", "Lcom/android/calendar/cards/a1$b;", "Lcom/android/calendar/cards/HoroscopePresenter$b;", "value", "Lkotlin/u;", "g", "holder", "Landroid/content/Context;", "context", "h", "", "d", "c", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "b", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "mCard", "", "Lcom/android/calendar/cards/HoroscopePresenter$HoroscopeItemExtraSchema;", "Lcom/android/calendar/cards/HoroscopePresenter;", "Ljava/util/List;", "mItemExtras", "Ljava/util/Calendar;", "date", "<init>", "(Ljava/util/Calendar;)V", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class a1
  extends m1<b, HoroscopePresenter.b>
{
  public static final a d = new a(null);
  private CustomCardSchema b;
  private List<HoroscopePresenter.HoroscopeItemExtraSchema> c = new ArrayList();
  
  public a1(Calendar paramCalendar)
  {
    super(paramCalendar);
  }
  
  private static final void i(Context paramContext, b paramb, a1 parama1, View paramView)
  {
    r.f(paramContext, "$context");
    r.f(paramb, "$holder");
    r.f(parama1, "this$0");
    paramView = new Intent(paramContext, HoroscopeSelectActivity.class);
    paramView.addFlags(268435456);
    paramContext.startActivity(paramView);
    CardHelper.m("card_change_clicked", paramb.getAdapterPosition(), -1, null, parama1.b);
  }
  
  private static final void j(CustomCardItemSchema paramCustomCardItemSchema, Context paramContext, b paramb, a1 parama1, View paramView)
  {
    r.f(paramContext, "$context");
    r.f(paramb, "$holder");
    r.f(parama1, "this$0");
    Object localObject = null;
    if (paramCustomCardItemSchema != null) {
      paramView = paramCustomCardItemSchema.action;
    } else {
      paramView = null;
    }
    if (paramView != null)
    {
      paramView = paramCustomCardItemSchema.action;
      if (paramView != null) {
        paramView.sendIntent(paramContext, null, 268435456);
      }
    }
    int i = paramb.getAdapterPosition();
    paramContext = localObject;
    if (paramCustomCardItemSchema != null) {
      paramContext = paramCustomCardItemSchema.title;
    }
    CardHelper.m("card_item_clicked", i, -1, paramContext, parama1.b);
  }
  
  protected int c()
  {
    CustomCardSchema localCustomCardSchema = this.b;
    int i;
    if (localCustomCardSchema != null) {
      i = localCustomCardSchema.sequence;
    } else {
      i = 122;
    }
    return i;
  }
  
  protected int d()
  {
    return 28;
  }
  
  protected void g(HoroscopePresenter.b paramb)
  {
    r.f(paramb, "value");
    this.b = paramb.a();
    this.c = paramb.b();
  }
  
  protected void h(b paramb, Context paramContext)
  {
    r.f(paramb, "holder");
    r.f(paramContext, "context");
    Object localObject1 = this.b;
    Object localObject2 = null;
    if (localObject1 != null) {
      localObject1 = ((CustomCardSchema)localObject1).itemList;
    } else {
      localObject1 = null;
    }
    Object localObject3 = a.c(paramContext, "preferences_horoscope_selected", "aries");
    int i = this.c.size();
    for (int j = 0; j < i; j++) {
      if (r.a(((HoroscopePresenter.HoroscopeItemExtraSchema)this.c.get(j)).getReferId(), localObject3)) {
        break label102;
      }
    }
    j = 0;
    label102:
    if (localObject1 != null) {
      localObject1 = (CustomCardItemSchema)((List)localObject1).get(j);
    } else {
      localObject1 = null;
    }
    Object localObject5;
    if (j < this.c.size())
    {
      localObject4 = (HoroscopePresenter.HoroscopeItemExtraSchema)this.c.get(j);
      localObject5 = paramb.j();
      localObject3 = this.b;
      if (localObject3 != null) {
        localObject3 = ((CustomCardSchema)localObject3).title;
      } else {
        localObject3 = null;
      }
      ((TextView)localObject5).setText((CharSequence)localObject3);
      if (localObject1 != null) {
        localObject3 = ((CustomCardItemSchema)localObject1).title;
      } else {
        localObject3 = null;
      }
      if (TextUtils.isEmpty((CharSequence)localObject3))
      {
        paramb.i().setVisibility(8);
        paramb.h().setVisibility(8);
      }
      else
      {
        paramb.i().setVisibility(0);
        paramb.h().setVisibility(0);
        localObject5 = paramb.h();
        if (localObject1 != null) {
          localObject3 = ((CustomCardItemSchema)localObject1).title;
        } else {
          localObject3 = null;
        }
        ((TextView)localObject5).setText((CharSequence)localObject3);
      }
      paramb.e().setImageDrawable(e.c(paramContext, ((HoroscopePresenter.HoroscopeItemExtraSchema)localObject4).getReferId()));
    }
    try
    {
      localObject3 = paramb.a();
      localObject5 = ((HoroscopePresenter.HoroscopeItemExtraSchema)localObject4).getComprehensiveIndex();
      float f1 = 0.0F;
      if (localObject5 != null) {
        f2 = Float.parseFloat((String)localObject5);
      } else {
        f2 = 0.0F;
      }
      ((RatingBar)localObject3).setRating(f2);
      localObject5 = paramb.f();
      localObject3 = ((HoroscopePresenter.HoroscopeItemExtraSchema)localObject4).getLoveIndex();
      if (localObject3 != null) {
        f2 = Float.parseFloat((String)localObject3);
      } else {
        f2 = 0.0F;
      }
      ((RatingBar)localObject5).setRating(f2);
      localObject5 = paramb.c();
      localObject3 = ((HoroscopePresenter.HoroscopeItemExtraSchema)localObject4).getFinancialIndex();
      if (localObject3 != null) {
        f2 = Float.parseFloat((String)localObject3);
      } else {
        f2 = 0.0F;
      }
      ((RatingBar)localObject5).setRating(f2);
      localObject3 = paramb.k();
      localObject4 = ((HoroscopePresenter.HoroscopeItemExtraSchema)localObject4).getWorkingIndex();
      float f2 = f1;
      if (localObject4 != null) {
        f2 = Float.parseFloat((String)localObject4);
      }
      ((RatingBar)localObject3).setRating(f2);
    }
    catch (Exception localException)
    {
      label449:
      break label449;
    }
    Object localObject4 = paramb.b();
    localObject3 = localObject2;
    if (localObject1 != null) {
      localObject3 = ((CustomCardItemSchema)localObject1).description;
    }
    ((TextView)localObject4).setText((CharSequence)localObject3);
    paramb.g().setOnClickListener(new y0(paramContext, paramb, this));
    v.k(paramb.g());
    paramb.d().setOnClickListener(new z0((CustomCardItemSchema)localObject1, paramContext, paramb, this));
    v.k(paramb.d());
    return;
    z.m("Cal:D:HoroscopeCard", "bindView() wrong extra data");
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/a1$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/a1$b;", "Landroidx/recyclerview/widget/RecyclerView$c0;", "Landroid/widget/TextView;", "a", "Landroid/widget/TextView;", "j", "()Landroid/widget/TextView;", "setTitleView", "(Landroid/widget/TextView;)V", "titleView", "b", "g", "setSetBaZiView", "setBaZiView", "Landroid/view/View;", "c", "Landroid/view/View;", "i", "()Landroid/view/View;", "setTitleDividerView", "(Landroid/view/View;)V", "titleDividerView", "d", "h", "setSubTitleView", "subTitleView", "e", "getContentRootView", "setContentRootView", "contentRootView", "Landroid/widget/ImageView;", "f", "Landroid/widget/ImageView;", "()Landroid/widget/ImageView;", "setImageView", "(Landroid/widget/ImageView;)V", "imageView", "Landroid/widget/RatingBar;", "Landroid/widget/RatingBar;", "()Landroid/widget/RatingBar;", "setComprehensiveRatingView", "(Landroid/widget/RatingBar;)V", "comprehensiveRatingView", "setLoveRatingView", "loveRatingView", "setFinancialRatingView", "financialRatingView", "k", "setWorkingRatingView", "workingRatingView", "setDescriptionView", "descriptionView", "l", "setHoroscopeContainer", "horoscopeContainer", "view", "<init>", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b
    extends RecyclerView.c0
  {
    private TextView a;
    private TextView b;
    private View c;
    private TextView d;
    private View e;
    private ImageView f;
    private RatingBar g;
    private RatingBar h;
    private RatingBar i;
    private RatingBar j;
    private TextView k;
    private View l;
    
    public b(View paramView)
    {
      super();
      View localView = paramView.findViewById(2131363373);
      r.e(localView, "view.findViewById(R.id.title)");
      this.a = ((TextView)localView);
      localView = paramView.findViewById(2131363146);
      r.e(localView, "view.findViewById(R.id.set_bazi)");
      this.b = ((TextView)localView);
      localView = paramView.findViewById(2131363384);
      r.e(localView, "view.findViewById(R.id.title_divider)");
      this.c = localView;
      localView = paramView.findViewById(2131363263);
      r.e(localView, "view.findViewById(R.id.sub_title)");
      this.d = ((TextView)localView);
      localView = paramView.findViewById(2131362221);
      r.e(localView, "view.findViewById(R.id.content_root)");
      this.e = localView;
      localView = paramView.findViewById(2131362581);
      r.e(localView, "view.findViewById(R.id.image)");
      this.f = ((ImageView)localView);
      localView = paramView.findViewById(2131363001);
      r.e(localView, "view.findViewById(R.id.rating_comprehensive)");
      this.g = ((RatingBar)localView);
      localView = paramView.findViewById(2131363005);
      r.e(localView, "view.findViewById(R.id.rating_love)");
      this.h = ((RatingBar)localView);
      localView = paramView.findViewById(2131363003);
      r.e(localView, "view.findViewById(R.id.rating_financial)");
      this.i = ((RatingBar)localView);
      localView = paramView.findViewById(2131363008);
      r.e(localView, "view.findViewById(R.id.rating_working)");
      this.j = ((RatingBar)localView);
      localView = paramView.findViewById(2131362338);
      r.e(localView, "view.findViewById(R.id.description)");
      this.k = ((TextView)localView);
      paramView = paramView.findViewById(2131362544);
      r.e(paramView, "view.findViewById(R.id.horoscope_container)");
      this.l = paramView;
    }
    
    public final RatingBar a()
    {
      return this.g;
    }
    
    public final TextView b()
    {
      return this.k;
    }
    
    public final RatingBar c()
    {
      return this.i;
    }
    
    public final View d()
    {
      return this.l;
    }
    
    public final ImageView e()
    {
      return this.f;
    }
    
    public final RatingBar f()
    {
      return this.h;
    }
    
    public final TextView g()
    {
      return this.b;
    }
    
    public final TextView h()
    {
      return this.d;
    }
    
    public final View i()
    {
      return this.c;
    }
    
    public final TextView j()
    {
      return this.a;
    }
    
    public final RatingBar k()
    {
      return this.j;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.a1
 * JD-Core Version:    0.7.0.1
 */