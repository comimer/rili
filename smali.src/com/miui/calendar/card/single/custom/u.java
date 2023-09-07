package com.miui.calendar.card.single.custom;

import android.content.Context;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.android.calendar.common.Utils;
import com.android.calendar.settings.j;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.CardAdapter;
import com.miui.calendar.card.CardAdapter.DisplayMode;
import com.miui.calendar.card.b.b;
import com.miui.calendar.limit.LimitSchema;
import com.miui.calendar.util.v;
import com.miui.calendar.util.z;
import com.miui.calendar.view.LimitNumberView;
import java.util.Calendar;
import java.util.Formatter;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import s3.a.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/u;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard;", "Lkotlin/u;", "b", "Lcom/miui/calendar/card/b$b;", "onDataLoadCompletedListener", "e", "", "j", "", "i", "B", "Ls3/a$a;", "Ls3/a;", "holder", "position", "g", "Landroid/view/View;", "view", "h", "s", "Z", "mIsQueried", "", "t", "Ljava/lang/String;", "mLimitCity", "Lcom/miui/calendar/limit/LimitSchema;", "u", "Lcom/miui/calendar/limit/LimitSchema;", "mLimit", "Landroid/content/Context;", "context", "Lcom/miui/calendar/card/Card$ContainerType;", "containerType", "Ljava/util/Calendar;", "desiredDay", "Landroid/widget/BaseAdapter;", "adapter", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V", "v", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class u
  extends CustomSingleCard
{
  public static final a v = new a(null);
  private boolean s;
  private String t;
  private LimitSchema u;
  
  public u(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, 52, paramContainerType, paramCalendar, paramBaseAdapter);
  }
  
  private static final void G(u paramu, int paramInt, View paramView)
  {
    kotlin.jvm.internal.r.f(paramu, "this$0");
    Utils.r1(paramu.a, "来自首页卡片按钮");
    paramu.k("card_change_clicked", paramInt, -1, null);
  }
  
  private static final void H(u paramu, int paramInt, View paramView)
  {
    kotlin.jvm.internal.r.f(paramu, "this$0");
    if (paramu.u != null)
    {
      Utils.q1(paramu.a, "来自首页卡片");
      paramu.k("card_item_clicked", paramInt, -1, null);
    }
  }
  
  private static final void I(u paramu)
  {
    kotlin.jvm.internal.r.f(paramu, "this$0");
    paramu.s = true;
    Object localObject = com.miui.calendar.limit.a.i(paramu.a);
    paramu.t = ((String)localObject);
    LimitSchema localLimitSchema = com.miui.calendar.limit.a.j(paramu.a, (String)localObject);
    localObject = paramu.u;
    if ((localObject == null) || (!kotlin.jvm.internal.r.a(localObject, localLimitSchema)))
    {
      paramu.u = localLimitSchema;
      paramu.b.notifyDataSetChanged();
    }
  }
  
  public int B()
  {
    return 1;
  }
  
  public void b()
  {
    String str = com.miui.calendar.limit.a.i(this.a);
    this.t = str;
    this.u = com.miui.calendar.limit.a.j(this.a, str);
    super.b();
  }
  
  public void e(b.b paramb)
  {
    kotlin.jvm.internal.r.f(paramb, "onDataLoadCompletedListener");
    if (!this.s) {
      com.miui.calendar.limit.a.n(this.a, new t(this), "启动首页");
    }
    super.e(paramb);
  }
  
  public void g(a.a parama, int paramInt)
  {
    kotlin.jvm.internal.r.f(parama, "holder");
    if (!(parama instanceof b))
    {
      z.m("Cal:D:LimitSingleCard", "bindView(): holder error!");
      return;
    }
    super.g(parama, paramInt);
    Object localObject1 = this.b;
    if ((localObject1 instanceof CardAdapter))
    {
      kotlin.jvm.internal.r.d(localObject1, "null cannot be cast to non-null type com.miui.calendar.card.CardAdapter");
      if (((CardAdapter)localObject1).d() == CardAdapter.DisplayMode.PREVIEW_IN_DETAIL)
      {
        parama = (b)parama;
        parama.d().setText(2131886807);
        parama.e().setVisibility(0);
        parama.e().setText(2131886812);
        parama.c().setVisibility(8);
        parama.f().setVisibility(4);
        parama.h().setVisibility(8);
        return;
      }
    }
    Object localObject2;
    if ((!TextUtils.isEmpty(this.t)) && (!TextUtils.equals(this.t, "未选择")))
    {
      localObject2 = (b)parama;
      localObject1 = ((CustomSingleCard.g)localObject2).e;
      ((TextView)localObject1).setText(((TextView)localObject1).getText());
      ((b)localObject2).h().setVisibility(0);
      ((b)localObject2).g().setVisibility(0);
      ((b)localObject2).g().setText(this.t);
    }
    else
    {
      localObject1 = (b)parama;
      ((b)localObject1).g().setVisibility(8);
      ((b)localObject1).h().setVisibility(8);
    }
    parama = (b)parama;
    parama.f().setVisibility(0);
    parama.f().setOnClickListener(new r(this, paramInt));
    v.k(parama.f());
    localObject1 = this.u;
    if (localObject1 != null)
    {
      kotlin.jvm.internal.r.c(localObject1);
      if (!TextUtils.isEmpty(((LimitSchema)localObject1).number))
      {
        localObject1 = this.u;
        kotlin.jvm.internal.r.c(localObject1);
        if (!TextUtils.isEmpty(((LimitSchema)localObject1).desc))
        {
          parama.b().setVisibility(8);
          parama.d().setText(2131886807);
          parama.d().setVisibility(0);
          parama.e().setVisibility(0);
          localObject1 = this.u;
          kotlin.jvm.internal.r.c(localObject1);
          if (TextUtils.isEmpty(((LimitSchema)localObject1).remark))
          {
            localObject1 = new Formatter(new StringBuilder(50), Locale.getDefault());
            localObject2 = Calendar.getInstance();
            localObject1 = DateUtils.formatDateRange(this.a, (Formatter)localObject1, ((Calendar)localObject2).getTimeInMillis(), ((Calendar)localObject2).getTimeInMillis(), 18, ((Calendar)localObject2).getTimeZone().getID());
            kotlin.jvm.internal.r.e(localObject1, "formatDateRange(mContext…AY, calendar.timeZone.id)");
            parama.e().setText(((Formatter)localObject1).toString());
          }
          else
          {
            localObject1 = parama.e();
            localObject2 = this.u;
            kotlin.jvm.internal.r.c(localObject2);
            ((TextView)localObject1).setText(((LimitSchema)localObject2).remark);
          }
          parama.c().setVisibility(0);
          parama.c().setItemLayoutId(2131558658);
          localObject2 = parama.c();
          localObject1 = this.u;
          kotlin.jvm.internal.r.c(localObject1);
          ((LimitNumberView)localObject2).setLimitNumber(((LimitSchema)localObject1).desc);
          break label565;
        }
      }
    }
    if (this.u == null)
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
    label565:
    parama.a().setOnClickListener(new s(this, paramInt));
    v.k(parama.a());
  }
  
  public a.a h(View paramView)
  {
    kotlin.jvm.internal.r.f(paramView, "view");
    return new b(paramView);
  }
  
  public int i()
  {
    return 2131558657;
  }
  
  public boolean j()
  {
    boolean bool;
    if ((this.m != null) && (j.q(this.a))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/u$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/u$b;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$g;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard;", "Landroid/view/View;", "l", "Landroid/view/View;", "h", "()Landroid/view/View;", "setTitleDividerView", "(Landroid/view/View;)V", "titleDividerView", "Landroid/widget/TextView;", "m", "Landroid/widget/TextView;", "g", "()Landroid/widget/TextView;", "setSubTitleView", "(Landroid/widget/TextView;)V", "subTitleView", "n", "f", "setSetReminderView", "setReminderView", "o", "d", "setPrimaryTextView", "primaryTextView", "p", "e", "setSecondaryTextView", "secondaryTextView", "q", "b", "setNoDataView", "noDataView", "Lcom/miui/calendar/view/LimitNumberView;", "r", "Lcom/miui/calendar/view/LimitNumberView;", "c", "()Lcom/miui/calendar/view/LimitNumberView;", "setNumberView", "(Lcom/miui/calendar/view/LimitNumberView;)V", "numberView", "s", "a", "setLimitContainer", "limitContainer", "view", "<init>", "(Lcom/miui/calendar/card/single/custom/u;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class b
    extends CustomSingleCard.g
  {
    private View l;
    private TextView m;
    private TextView n;
    private TextView o;
    private TextView p;
    private View q;
    private LimitNumberView r;
    private View s;
    
    public b()
    {
      super(localObject);
      this$1 = localObject.findViewById(2131363384);
      kotlin.jvm.internal.r.e(u.this, "view.findViewById(R.id.title_divider)");
      this.l = u.this;
      this$1 = localObject.findViewById(2131363263);
      kotlin.jvm.internal.r.e(u.this, "view.findViewById(R.id.sub_title)");
      this.m = ((TextView)u.this);
      this$1 = localObject.findViewById(2131363147);
      kotlin.jvm.internal.r.e(u.this, "view.findViewById(R.id.set_reminder)");
      this.n = ((TextView)u.this);
      this$1 = localObject.findViewById(2131362984);
      kotlin.jvm.internal.r.e(u.this, "view.findViewById(R.id.primary)");
      this.o = ((TextView)u.this);
      this$1 = localObject.findViewById(2131363121);
      kotlin.jvm.internal.r.e(u.this, "view.findViewById(R.id.secondary)");
      this.p = ((TextView)u.this);
      this$1 = localObject.findViewById(2131362877);
      kotlin.jvm.internal.r.e(u.this, "view.findViewById(R.id.no_data)");
      this.q = u.this;
      this$1 = localObject.findViewById(2131362910);
      kotlin.jvm.internal.r.e(u.this, "view.findViewById(R.id.number)");
      this.r = ((LimitNumberView)u.this);
      this$1 = localObject.findViewById(2131362684);
      kotlin.jvm.internal.r.e(u.this, "view.findViewById(R.id.limit_container)");
      this.s = u.this;
    }
    
    public final View a()
    {
      return this.s;
    }
    
    public final View b()
    {
      return this.q;
    }
    
    public final LimitNumberView c()
    {
      return this.r;
    }
    
    public final TextView d()
    {
      return this.o;
    }
    
    public final TextView e()
    {
      return this.p;
    }
    
    public final TextView f()
    {
      return this.n;
    }
    
    public final TextView g()
    {
      return this.m;
    }
    
    public final View h()
    {
      return this.l;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.single.custom.u
 * JD-Core Version:    0.7.0.1
 */