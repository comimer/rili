package com.android.calendar.cards;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView.c0;
import com.android.calendar.common.ModuleSchema;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.detail.FortuneSettingsActivity;
import com.miui.calendar.util.v;
import com.miui.calendar.view.DynamicLinearLayout;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/p0;", "Lcom/android/calendar/cards/m1;", "Lcom/android/calendar/cards/p0$a;", "Lcom/android/calendar/cards/FortunePresenter$b;", "Landroid/content/Context;", "context", "Lkotlin/u;", "k", "value", "g", "holder", "h", "", "d", "c", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "b", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "mCard", "", "Lcom/android/calendar/cards/FortunePresenter$FortuneItemExtraSchema;", "Ljava/util/List;", "mItemExtras", "Ljava/util/Calendar;", "date", "<init>", "(Ljava/util/Calendar;)V", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class p0
  extends m1<a, FortunePresenter.b>
{
  private CustomCardSchema b;
  private List<FortunePresenter.FortuneItemExtraSchema> c;
  
  public p0(Calendar paramCalendar)
  {
    super(paramCalendar);
  }
  
  private static final void i(p0 paramp0, Context paramContext, a parama, View paramView)
  {
    r.f(paramp0, "this$0");
    r.f(paramContext, "$context");
    r.f(parama, "$holder");
    paramp0.k(paramContext);
    CardHelper.m("card_more_clicked", parama.getAdapterPosition(), -1, null, paramp0.b);
  }
  
  private static final void j(String paramString, long paramLong, p0 paramp0, int paramInt1, int paramInt2, Context paramContext, a parama, View paramView)
  {
    r.f(paramp0, "this$0");
    r.f(paramContext, "$context");
    r.f(parama, "$holder");
    if ((!TextUtils.isEmpty(paramString)) && (paramLong != 0L))
    {
      paramView = paramp0.b;
      if (paramView != null) {
        paramView = paramView.action;
      } else {
        paramView = null;
      }
      if (paramView != null)
      {
        paramView = new HashMap();
        paramView.put("name", paramString);
        paramView.put("bir", new SimpleDateFormat("yyyy-MM-dd").format(new Date(paramLong)));
        paramView.put("gender", String.valueOf(paramInt1));
        paramView.put("love", String.valueOf(paramInt2));
        paramString = paramp0.b;
        if (paramString == null) {
          break label225;
        }
        paramString = paramString.action;
        if (paramString == null) {
          break label225;
        }
        paramString.sendIntent(paramContext, paramView, 268435456);
        break label225;
      }
    }
    paramView = paramp0.b;
    if (paramView != null) {
      paramString = paramView.action;
    } else {
      paramString = null;
    }
    if ((paramString != null) && (paramView != null))
    {
      paramString = paramView.action;
      if (paramString != null) {
        paramString.sendIntent(paramContext, null, 268435456);
      }
    }
    label225:
    CardHelper.m("card_item_clicked", parama.getAdapterPosition(), -1, null, paramp0.b);
  }
  
  private final void k(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, FortuneSettingsActivity.class);
    localIntent.addFlags(268435456);
    paramContext.startActivity(localIntent);
  }
  
  protected int c()
  {
    CustomCardSchema localCustomCardSchema = this.b;
    int i;
    if (localCustomCardSchema != null) {
      i = localCustomCardSchema.sequence;
    } else {
      i = 118;
    }
    return i;
  }
  
  protected int d()
  {
    return 42;
  }
  
  protected void g(FortunePresenter.b paramb)
  {
    r.f(paramb, "value");
    this.b = paramb.a();
    this.c = paramb.b();
  }
  
  protected void h(a parama, Context paramContext)
  {
    r.f(parama, "holder");
    r.f(paramContext, "context");
    String str1 = "";
    String str2 = b2.a.c(paramContext, "preferences_fortune_name", "");
    int i = b2.a.a(paramContext, "preferences_fortune_gender", 1);
    long l = b2.a.b(paramContext, "preferences_fortune_birthday", 0L);
    int j = b2.a.a(paramContext, "preferences_fortune_love", 0);
    Object localObject1 = this.c;
    Object localObject2 = null;
    Object localObject3 = localObject1;
    if (localObject1 == null)
    {
      r.x("mItemExtras");
      localObject3 = null;
    }
    localObject1 = (FortunePresenter.FortuneItemExtraSchema)((List)localObject3).get(0);
    Object localObject4 = parama.j();
    CustomCardSchema localCustomCardSchema = this.b;
    localObject3 = localObject2;
    if (localCustomCardSchema != null) {
      localObject3 = localCustomCardSchema.title;
    }
    ((TextView)localObject4).setText((CharSequence)localObject3);
    parama.f().setImageBitmap(v3.a.b(paramContext, ((FortunePresenter.FortuneItemExtraSchema)localObject1).getZodiac()));
    parama.c().setRating(((FortunePresenter.FortuneItemExtraSchema)localObject1).getAll());
    parama.g().setRating(((FortunePresenter.FortuneItemExtraSchema)localObject1).getLove());
    parama.e().setRating(((FortunePresenter.FortuneItemExtraSchema)localObject1).getMoney());
    parama.k().setRating(((FortunePresenter.FortuneItemExtraSchema)localObject1).getCause());
    localObject2 = parama.b();
    localObject4 = new StringBuilder();
    ((StringBuilder)localObject4).append(paramContext.getString(2131886638));
    if (TextUtils.isEmpty(((FortunePresenter.FortuneItemExtraSchema)localObject1).getCw())) {
      localObject3 = "";
    } else {
      localObject3 = ((FortunePresenter.FortuneItemExtraSchema)localObject1).getCw();
    }
    ((StringBuilder)localObject4).append((String)localObject3);
    ((TextView)localObject2).setText(((StringBuilder)localObject4).toString());
    localObject4 = parama.i();
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append(paramContext.getString(2131886644));
    if (TextUtils.isEmpty(((FortunePresenter.FortuneItemExtraSchema)localObject1).getTh())) {
      localObject3 = "";
    } else {
      localObject3 = ((FortunePresenter.FortuneItemExtraSchema)localObject1).getTh();
    }
    ((StringBuilder)localObject2).append((String)localObject3);
    ((TextView)localObject4).setText(((StringBuilder)localObject2).toString());
    localObject4 = parama.l();
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append(paramContext.getString(2131886646));
    if (TextUtils.isEmpty(((FortunePresenter.FortuneItemExtraSchema)localObject1).getZz())) {
      localObject3 = str1;
    } else {
      localObject3 = ((FortunePresenter.FortuneItemExtraSchema)localObject1).getZz();
    }
    ((StringBuilder)localObject2).append((String)localObject3);
    ((TextView)localObject4).setText(((StringBuilder)localObject2).toString());
    parama.a().setVisibility(8);
    parama.h().setOnClickListener(new n0(this, paramContext, parama));
    v.k(parama.h());
    parama.d().setOnClickListener(new o0(str2, l, this, i, j, paramContext, parama));
    v.k(parama.d());
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/p0$a;", "Landroidx/recyclerview/widget/RecyclerView$c0;", "Landroid/widget/TextView;", "a", "Landroid/widget/TextView;", "j", "()Landroid/widget/TextView;", "setTitleView", "(Landroid/widget/TextView;)V", "titleView", "Landroid/view/View;", "b", "Landroid/view/View;", "getChangeView", "()Landroid/view/View;", "setChangeView", "(Landroid/view/View;)V", "changeView", "c", "h", "setSetBaZiView", "setBaZiView", "d", "setContentRootView", "contentRootView", "Landroid/widget/ImageView;", "e", "Landroid/widget/ImageView;", "f", "()Landroid/widget/ImageView;", "setImageView", "(Landroid/widget/ImageView;)V", "imageView", "Landroid/widget/RatingBar;", "Landroid/widget/RatingBar;", "()Landroid/widget/RatingBar;", "setComprehensiveRatingView", "(Landroid/widget/RatingBar;)V", "comprehensiveRatingView", "g", "setLoveRatingView", "loveRatingView", "setFinancialRatingView", "financialRatingView", "i", "k", "setWorkingRatingView", "workingRatingView", "setCaiWeiView", "caiWeiView", "setTaoHuaView", "taoHuaView", "l", "setZhengChongView", "zhengChongView", "Lcom/miui/calendar/view/DynamicLinearLayout;", "m", "Lcom/miui/calendar/view/DynamicLinearLayout;", "()Lcom/miui/calendar/view/DynamicLinearLayout;", "setButtonContainerView", "(Lcom/miui/calendar/view/DynamicLinearLayout;)V", "buttonContainerView", "view", "<init>", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a
    extends RecyclerView.c0
  {
    private TextView a;
    private View b;
    private TextView c;
    private View d;
    private ImageView e;
    private RatingBar f;
    private RatingBar g;
    private RatingBar h;
    private RatingBar i;
    private TextView j;
    private TextView k;
    private TextView l;
    private DynamicLinearLayout m;
    
    public a(View paramView)
    {
      super();
      View localView = paramView.findViewById(2131363373);
      r.e(localView, "view.findViewById(R.id.title)");
      this.a = ((TextView)localView);
      this.b = paramView.findViewById(2131362138);
      localView = paramView.findViewById(2131363146);
      r.e(localView, "view.findViewById(R.id.set_bazi)");
      this.c = ((TextView)localView);
      localView = paramView.findViewById(2131362221);
      r.e(localView, "view.findViewById(R.id.content_root)");
      this.d = localView;
      localView = paramView.findViewById(2131362581);
      r.e(localView, "view.findViewById(R.id.image)");
      this.e = ((ImageView)localView);
      localView = paramView.findViewById(2131363001);
      r.e(localView, "view.findViewById(R.id.rating_comprehensive)");
      this.f = ((RatingBar)localView);
      localView = paramView.findViewById(2131363005);
      r.e(localView, "view.findViewById(R.id.rating_love)");
      this.g = ((RatingBar)localView);
      localView = paramView.findViewById(2131363003);
      r.e(localView, "view.findViewById(R.id.rating_financial)");
      this.h = ((RatingBar)localView);
      localView = paramView.findViewById(2131363008);
      r.e(localView, "view.findViewById(R.id.rating_working)");
      this.i = ((RatingBar)localView);
      localView = paramView.findViewById(2131362090);
      r.e(localView, "view.findViewById(R.id.caiwei)");
      this.j = ((TextView)localView);
      localView = paramView.findViewById(2131363325);
      r.e(localView, "view.findViewById(R.id.taohua)");
      this.k = ((TextView)localView);
      localView = paramView.findViewById(2131363614);
      r.e(localView, "view.findViewById(R.id.zhengchong)");
      this.l = ((TextView)localView);
      paramView = paramView.findViewById(2131362080);
      r.e(paramView, "view.findViewById(R.id.button_container)");
      this.m = ((DynamicLinearLayout)paramView);
    }
    
    public final DynamicLinearLayout a()
    {
      return this.m;
    }
    
    public final TextView b()
    {
      return this.j;
    }
    
    public final RatingBar c()
    {
      return this.f;
    }
    
    public final View d()
    {
      return this.d;
    }
    
    public final RatingBar e()
    {
      return this.h;
    }
    
    public final ImageView f()
    {
      return this.e;
    }
    
    public final RatingBar g()
    {
      return this.g;
    }
    
    public final TextView h()
    {
      return this.c;
    }
    
    public final TextView i()
    {
      return this.k;
    }
    
    public final TextView j()
    {
      return this.a;
    }
    
    public final RatingBar k()
    {
      return this.i;
    }
    
    public final TextView l()
    {
      return this.l;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.p0
 * JD-Core Version:    0.7.0.1
 */