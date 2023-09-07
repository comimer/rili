package com.android.calendar.cards;

import android.content.Context;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView.c0;
import com.android.calendar.common.Utils;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.limit.LimitSchema;
import com.miui.calendar.util.v;
import com.miui.calendar.view.DynamicLinearLayout;
import com.miui.calendar.view.LimitNumberView;
import com.miui.calendar.view.OnlineImageView;
import java.util.Calendar;
import java.util.Formatter;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/d1;", "Lcom/android/calendar/cards/m1;", "Lcom/android/calendar/cards/d1$a;", "Lcom/android/calendar/cards/f1$a;", "value", "Lkotlin/u;", "g", "holder", "Landroid/content/Context;", "context", "h", "", "d", "c", "", "b", "Ljava/lang/String;", "mLimitCity", "Lcom/miui/calendar/limit/LimitSchema;", "Lcom/miui/calendar/limit/LimitSchema;", "mLimit", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "mCard", "Lcom/android/calendar/cards/CardHelper$CustomCardExtraSchema;", "e", "Lcom/android/calendar/cards/CardHelper$CustomCardExtraSchema;", "mCardExtra", "Ljava/util/Calendar;", "date", "<init>", "(Ljava/util/Calendar;)V", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class d1
  extends m1<a, f1.a>
{
  private String b;
  private LimitSchema c;
  private CustomCardSchema d;
  private CardHelper.CustomCardExtraSchema e;
  
  public d1(Calendar paramCalendar)
  {
    super(paramCalendar);
  }
  
  private static final void i(Context paramContext, a parama, d1 paramd1, View paramView)
  {
    r.f(parama, "$holder");
    r.f(paramd1, "this$0");
    Utils.r1(paramContext, "来自首页卡片按钮");
    CardHelper.m("card_change_clicked", parama.getAdapterPosition(), -1, null, paramd1.d);
  }
  
  private static final void j(d1 paramd1, Context paramContext, a parama, View paramView)
  {
    r.f(paramd1, "this$0");
    r.f(parama, "$holder");
    if (paramd1.c != null)
    {
      Utils.q1(paramContext, "来自首页卡片");
      CardHelper.m("card_item_clicked", parama.getAdapterPosition(), -1, null, paramd1.d);
    }
  }
  
  protected int c()
  {
    CustomCardSchema localCustomCardSchema = this.d;
    int i;
    if (localCustomCardSchema != null) {
      i = localCustomCardSchema.sequence;
    } else {
      i = 109;
    }
    return i;
  }
  
  protected int d()
  {
    return 52;
  }
  
  protected void g(f1.a parama)
  {
    r.f(parama, "value");
    this.b = parama.d();
    this.c = parama.c();
    this.d = parama.a();
    this.e = parama.b();
  }
  
  protected void h(a parama, Context paramContext)
  {
    r.f(parama, "holder");
    Object localObject2;
    if (parama.i() != null)
    {
      localObject1 = this.e;
      if (localObject1 != null)
      {
        r.c(localObject1);
        if (!TextUtils.isEmpty(((CardHelper.CustomCardExtraSchema)localObject1).customTitle))
        {
          localObject1 = parama.i();
          localObject2 = this.e;
          r.c(localObject2);
          ((TextView)localObject1).setText(((CardHelper.CustomCardExtraSchema)localObject2).customTitle);
          break label95;
        }
      }
      localObject2 = parama.i();
      localObject1 = this.d;
      if (localObject1 != null) {
        localObject1 = ((CustomCardSchema)localObject1).title;
      } else {
        localObject1 = null;
      }
      ((TextView)localObject2).setText((CharSequence)localObject1);
    }
    label95:
    if ((!TextUtils.isEmpty(this.b)) && (!TextUtils.equals(this.b, "未选择")))
    {
      parama.i().setText(parama.i().getText());
      parama.h().setVisibility(0);
      parama.g().setVisibility(0);
      parama.g().setText(this.b);
    }
    else
    {
      parama.g().setVisibility(8);
      parama.h().setVisibility(8);
    }
    parama.f().setVisibility(0);
    parama.f().setOnClickListener(new b1(paramContext, parama, this));
    v.k(parama.f());
    Object localObject1 = this.c;
    if (localObject1 != null)
    {
      r.c(localObject1);
      if (!TextUtils.isEmpty(((LimitSchema)localObject1).number))
      {
        localObject1 = this.c;
        r.c(localObject1);
        if (!TextUtils.isEmpty(((LimitSchema)localObject1).desc))
        {
          parama.b().setVisibility(8);
          parama.d().setText(2131886807);
          parama.d().setVisibility(0);
          parama.e().setVisibility(0);
          localObject1 = this.c;
          r.c(localObject1);
          if (TextUtils.isEmpty(((LimitSchema)localObject1).remark))
          {
            localObject2 = new Formatter(new StringBuilder(50), Locale.getDefault());
            localObject1 = Calendar.getInstance();
            localObject1 = DateUtils.formatDateRange(paramContext, (Formatter)localObject2, ((Calendar)localObject1).getTimeInMillis(), ((Calendar)localObject1).getTimeInMillis(), 18, ((Calendar)localObject1).getTimeZone().getID());
            r.e(localObject1, "formatDateRange(context,…AY, calendar.timeZone.id)");
            parama.e().setText(((Formatter)localObject1).toString());
          }
          else
          {
            localObject1 = parama.e();
            localObject2 = this.c;
            r.c(localObject2);
            ((TextView)localObject1).setText(((LimitSchema)localObject2).remark);
          }
          parama.c().setVisibility(0);
          parama.c().setItemLayoutId(2131558658);
          localObject2 = parama.c();
          localObject1 = this.c;
          r.c(localObject1);
          ((LimitNumberView)localObject2).setLimitNumber(((LimitSchema)localObject1).desc);
          break label521;
        }
      }
    }
    if (this.c == null)
    {
      parama.b().setVisibility(0);
      parama.d().setVisibility(8);
    }
    else
    {
      parama.d().setVisibility(0);
      parama.b().setVisibility(8);
      parama.d().setText(2131886810);
    }
    parama.e().setVisibility(8);
    parama.c().setVisibility(8);
    label521:
    parama.a().setOnClickListener(new c1(this, paramContext, parama));
    v.k(parama.a());
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/d1$a;", "Landroidx/recyclerview/widget/RecyclerView$c0;", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "a", "Landroid/widget/TextView;", "i", "()Landroid/widget/TextView;", "setTitleView", "(Landroid/widget/TextView;)V", "titleView", "Landroid/view/View;", "b", "Landroid/view/View;", "getChangeView", "()Landroid/view/View;", "setChangeView", "(Landroid/view/View;)V", "changeView", "c", "getTitleTextBannerView", "setTitleTextBannerView", "titleTextBannerView", "Lcom/miui/calendar/view/OnlineImageView;", "d", "Lcom/miui/calendar/view/OnlineImageView;", "getTitleIconBannerView", "()Lcom/miui/calendar/view/OnlineImageView;", "setTitleIconBannerView", "(Lcom/miui/calendar/view/OnlineImageView;)V", "titleIconBannerView", "e", "getMoreView", "setMoreView", "moreView", "Lcom/miui/calendar/view/DynamicLinearLayout;", "f", "Lcom/miui/calendar/view/DynamicLinearLayout;", "getButtonContainerView", "()Lcom/miui/calendar/view/DynamicLinearLayout;", "setButtonContainerView", "(Lcom/miui/calendar/view/DynamicLinearLayout;)V", "buttonContainerView", "g", "h", "setTitleDividerView", "titleDividerView", "setSubTitleView", "subTitleView", "setSetReminderView", "setReminderView", "j", "setPrimaryTextView", "primaryTextView", "k", "setSecondaryTextView", "secondaryTextView", "l", "setNoDataView", "noDataView", "Lcom/miui/calendar/view/LimitNumberView;", "m", "Lcom/miui/calendar/view/LimitNumberView;", "()Lcom/miui/calendar/view/LimitNumberView;", "setNumberView", "(Lcom/miui/calendar/view/LimitNumberView;)V", "numberView", "n", "setLimitContainer", "limitContainer", "view", "<init>", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a
    extends RecyclerView.c0
  {
    private TextView a;
    private View b;
    private TextView c;
    private OnlineImageView d;
    private TextView e;
    private DynamicLinearLayout f;
    private View g;
    private TextView h;
    private TextView i;
    private TextView j;
    private TextView k;
    private View l;
    private LimitNumberView m;
    private View n;
    
    public a(View paramView)
    {
      super();
      this.a = ((TextView)paramView.findViewById(2131363373));
      this.b = paramView.findViewById(2131362138);
      this.c = ((TextView)paramView.findViewById(2131363390));
      this.d = ((OnlineImageView)paramView.findViewById(2131363385));
      this.e = ((TextView)paramView.findViewById(2131362822));
      this.f = ((DynamicLinearLayout)paramView.findViewById(2131362080));
      View localView = paramView.findViewById(2131363384);
      r.e(localView, "view.findViewById(R.id.title_divider)");
      this.g = localView;
      localView = paramView.findViewById(2131363263);
      r.e(localView, "view.findViewById(R.id.sub_title)");
      this.h = ((TextView)localView);
      localView = paramView.findViewById(2131363147);
      r.e(localView, "view.findViewById(R.id.set_reminder)");
      this.i = ((TextView)localView);
      localView = paramView.findViewById(2131362984);
      r.e(localView, "view.findViewById(R.id.primary)");
      this.j = ((TextView)localView);
      localView = paramView.findViewById(2131363121);
      r.e(localView, "view.findViewById(R.id.secondary)");
      this.k = ((TextView)localView);
      localView = paramView.findViewById(2131362877);
      r.e(localView, "view.findViewById(R.id.no_data)");
      this.l = localView;
      localView = paramView.findViewById(2131362910);
      r.e(localView, "view.findViewById(R.id.number)");
      this.m = ((LimitNumberView)localView);
      paramView = paramView.findViewById(2131362684);
      r.e(paramView, "view.findViewById(R.id.limit_container)");
      this.n = paramView;
    }
    
    public final View a()
    {
      return this.n;
    }
    
    public final View b()
    {
      return this.l;
    }
    
    public final LimitNumberView c()
    {
      return this.m;
    }
    
    public final TextView d()
    {
      return this.j;
    }
    
    public final TextView e()
    {
      return this.k;
    }
    
    public final TextView f()
    {
      return this.i;
    }
    
    public final TextView g()
    {
      return this.h;
    }
    
    public final View h()
    {
      return this.g;
    }
    
    public final TextView i()
    {
      return this.a;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.d1
 * JD-Core Version:    0.7.0.1
 */