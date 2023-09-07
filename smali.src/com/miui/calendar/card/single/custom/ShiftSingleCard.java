package com.miui.calendar.card.single.custom;

import android.content.Context;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.Keep;
import com.android.calendar.common.Utils;
import com.android.calendar.settings.j;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.CardAdapter;
import com.miui.calendar.card.CardAdapter.DisplayMode;
import com.miui.calendar.card.b.b;
import com.miui.calendar.shift.ShiftReminderSchema.a;
import com.miui.calendar.shift.ShiftSchema;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.v;
import java.util.Calendar;
import k4.d;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import s3.a;
import s3.a.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/ShiftSingleCard;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard;", "Lkotlin/u;", "b", "Lcom/miui/calendar/card/b$b;", "onDataLoadCompletedListener", "e", "", "j", "", "i", "B", "Ls3/a$a;", "Ls3/a;", "holder", "position", "g", "Landroid/view/View;", "view", "h", "Ljava/lang/Class;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomCardExtraSchema;", "z", "s", "Z", "mIsQueried", "Lcom/miui/calendar/shift/ShiftSchema;", "t", "Lcom/miui/calendar/shift/ShiftSchema;", "mShift", "Landroid/content/Context;", "context", "Lcom/miui/calendar/card/Card$ContainerType;", "containerType", "Ljava/util/Calendar;", "desiredDay", "Landroid/widget/BaseAdapter;", "adapter", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V", "u", "a", "ShiftCardExtraSchema", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class ShiftSingleCard
  extends CustomSingleCard
{
  public static final a u = new a(null);
  private boolean s;
  private ShiftSchema t = d.c(this.a);
  
  public ShiftSingleCard(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, 53, paramContainerType, paramCalendar, paramBaseAdapter);
  }
  
  private static final void G(ShiftSingleCard paramShiftSingleCard, int paramInt, View paramView)
  {
    r.f(paramShiftSingleCard, "this$0");
    Utils.t1(paramShiftSingleCard.a, "来自首页卡片按钮");
    paramShiftSingleCard.k("card_change_clicked", paramInt, -1, null);
  }
  
  private static final void H(ShiftSingleCard paramShiftSingleCard, int paramInt, View paramView)
  {
    r.f(paramShiftSingleCard, "this$0");
    paramView = paramShiftSingleCard.t;
    r.c(paramView);
    if (paramView.isRemind) {
      Utils.s1(paramShiftSingleCard.a, "来自首页卡片");
    } else {
      Utils.t1(paramShiftSingleCard.a, "来自首页卡片");
    }
    paramShiftSingleCard.k("card_item_clicked", paramInt, -1, null);
  }
  
  private static final void I(ShiftSingleCard paramShiftSingleCard)
  {
    r.f(paramShiftSingleCard, "this$0");
    paramShiftSingleCard.s = true;
    paramShiftSingleCard.t = d.c(paramShiftSingleCard.a);
    paramShiftSingleCard.b.notifyDataSetChanged();
  }
  
  public int B()
  {
    return 1;
  }
  
  public void b()
  {
    this.t = d.c(this.a);
    super.b();
  }
  
  public void e(b.b paramb)
  {
    r.f(paramb, "onDataLoadCompletedListener");
    if (!this.s)
    {
      Object localObject = this.p;
      if ((localObject != null) && ((localObject instanceof ShiftCardExtraSchema)))
      {
        r.d(localObject, "null cannot be cast to non-null type com.miui.calendar.card.single.custom.ShiftSingleCard.ShiftCardExtraSchema");
        long l = ((ShiftCardExtraSchema)localObject).getConfigVersion();
        localObject = this.t;
        r.c(localObject);
        if (l > ((ShiftSchema)localObject).version)
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("local config version is ");
          localObject = this.t;
          r.c(localObject);
          localStringBuilder.append(((ShiftSchema)localObject).version);
          localStringBuilder.append(", server config version is ");
          localStringBuilder.append(l);
          localStringBuilder.append(", need sync");
          com.miui.calendar.util.z.a("Cal:D:ShiftSingleCard", localStringBuilder.toString());
          d.i(this.a, new b0(this));
        }
      }
    }
    super.e(paramb);
  }
  
  public void g(a.a parama, int paramInt)
  {
    r.f(parama, "holder");
    if (!(parama instanceof b))
    {
      com.miui.calendar.util.z.m("Cal:D:ShiftSingleCard", "bindView(): holder error!");
      return;
    }
    super.g(parama, paramInt);
    Object localObject1 = this.b;
    Object localObject2;
    if ((localObject1 instanceof CardAdapter))
    {
      r.d(localObject1, "null cannot be cast to non-null type com.miui.calendar.card.CardAdapter");
      if (((CardAdapter)localObject1).d() == CardAdapter.DisplayMode.PREVIEW_IN_DETAIL)
      {
        localObject1 = (b)parama;
        ((b)localObject1).b().setVisibility(8);
        localObject2 = ((b)localObject1).h();
        parama = this.a;
        ((TextView)localObject2).setText(parama.getString(2131887479, new Object[] { ShiftReminderSchema.a.a(parama, 1) }));
        ((b)localObject1).e().setVisibility(0);
        ((b)localObject1).f().setVisibility(0);
        ((b)localObject1).f().setText(s0.q(this.a, 450, true));
        ((b)localObject1).a().setVisibility(0);
        ((b)localObject1).d().setText(this.a.getString(2131887477, new Object[] { Integer.valueOf(2) }));
        return;
      }
    }
    localObject1 = this.t;
    r.c(localObject1);
    if (((ShiftSchema)localObject1).isRemind)
    {
      localObject1 = (b)parama;
      ((b)localObject1).c().setVisibility(8);
      ((b)localObject1).h().setVisibility(0);
      long l = System.currentTimeMillis();
      localObject2 = this.t;
      r.c(localObject2);
      Object localObject3;
      Object localObject4;
      if (((ShiftSchema)localObject2).isStartShift(l))
      {
        ((b)localObject1).b().setVisibility(0);
        localObject3 = ((b)localObject1).h();
        localObject4 = this.a;
        localObject2 = this.t;
        r.c(localObject2);
        ((TextView)localObject3).setText(((Context)localObject4).getString(2131887479, new Object[] { ShiftReminderSchema.a.a((Context)localObject4, ((ShiftSchema)localObject2).getShiftType(l)) }));
        ((b)localObject1).e().setVisibility(0);
        localObject2 = this.t;
        r.c(localObject2);
        if (((ShiftSchema)localObject2).getShiftType(l) == 0)
        {
          ((b)localObject1).f().setVisibility(8);
          ((b)localObject1).a().setVisibility(8);
        }
        else
        {
          ((b)localObject1).f().setVisibility(0);
          localObject2 = ((b)localObject1).f();
          localObject4 = this.a;
          localObject3 = this.t;
          r.c(localObject3);
          ((TextView)localObject2).setText(s0.q((Context)localObject4, ((ShiftSchema)localObject3).getShiftReminderMinutes(l), true));
          ((b)localObject1).a().setVisibility(0);
        }
        localObject4 = ((b)localObject1).d();
        localObject2 = this.a;
        localObject1 = this.t;
        r.c(localObject1);
        ((TextView)localObject4).setText(((Context)localObject2).getString(2131887477, new Object[] { Integer.valueOf(((ShiftSchema)localObject1).getReminderIndex(System.currentTimeMillis()) + 1) }));
      }
      else
      {
        ((b)localObject1).b().setVisibility(0);
        localObject4 = ((b)localObject1).h();
        localObject3 = this.a;
        localObject2 = this.t;
        r.c(localObject2);
        ((TextView)localObject4).setText(((Context)localObject3).getString(2131887480, new Object[] { s0.g((Context)localObject3, ((ShiftSchema)localObject2).startTimeMillis) }));
        ((b)localObject1).e().setVisibility(8);
      }
    }
    else
    {
      localObject1 = (b)parama;
      ((b)localObject1).b().setVisibility(8);
      ((b)localObject1).c().setVisibility(0);
      ((b)localObject1).h().setVisibility(8);
      ((b)localObject1).e().setVisibility(8);
    }
    parama = (b)parama;
    parama.b().setOnClickListener(new z(this, paramInt));
    v.k(parama.b());
    parama.g().setOnClickListener(new a0(this, paramInt));
    v.k(parama.g());
  }
  
  public a.a h(View paramView)
  {
    r.f(paramView, "view");
    return new b(paramView);
  }
  
  public int i()
  {
    return 2131558932;
  }
  
  public boolean j()
  {
    boolean bool;
    if ((this.m != null) && (this.t != null) && (j.q(this.a))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected Class<? extends CustomSingleCard.CustomCardExtraSchema> z()
  {
    return ShiftCardExtraSchema.class;
  }
  
  @Metadata(d1={""}, d2={"Lcom/miui/calendar/card/single/custom/ShiftSingleCard$ShiftCardExtraSchema;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomCardExtraSchema;", "(Lcom/miui/calendar/card/single/custom/ShiftSingleCard;)V", "configVersion", "", "getConfigVersion", "()J", "setConfigVersion", "(J)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
  @Keep
  private final class ShiftCardExtraSchema
    extends CustomSingleCard.CustomCardExtraSchema
  {
    private long configVersion;
    
    public final long getConfigVersion()
    {
      return this.configVersion;
    }
    
    public final void setConfigVersion(long paramLong)
    {
      this.configVersion = paramLong;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/ShiftSingleCard$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$g;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard;", "Landroid/widget/TextView;", "l", "Landroid/widget/TextView;", "b", "()Landroid/widget/TextView;", "setEditReminderView", "(Landroid/widget/TextView;)V", "editReminderView", "m", "h", "setShiftTypeView", "shiftTypeView", "Landroid/view/View;", "n", "Landroid/view/View;", "e", "()Landroid/view/View;", "setReminderRootView", "(Landroid/view/View;)V", "reminderRootView", "o", "f", "setReminderTimeView", "reminderTimeView", "p", "a", "setDividerView", "dividerView", "q", "d", "setReminderDayView", "reminderDayView", "r", "c", "setNoDatView", "noDatView", "s", "g", "setShiftContainer", "shiftContainer", "view", "<init>", "(Lcom/miui/calendar/card/single/custom/ShiftSingleCard;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class b
    extends CustomSingleCard.g
  {
    private TextView l;
    private TextView m;
    private View n;
    private TextView o;
    private View p;
    private TextView q;
    private View r;
    private View s;
    
    public b()
    {
      super(localObject);
      this$1 = localObject.findViewById(2131362396);
      r.e(ShiftSingleCard.this, "view.findViewById(R.id.edit_reminder)");
      this.l = ((TextView)ShiftSingleCard.this);
      this$1 = localObject.findViewById(2131363159);
      r.e(ShiftSingleCard.this, "view.findViewById(R.id.shift_type)");
      this.m = ((TextView)ShiftSingleCard.this);
      this$1 = localObject.findViewById(2131363025);
      r.e(ShiftSingleCard.this, "view.findViewById(R.id.reminder_root)");
      this.n = ShiftSingleCard.this;
      this$1 = localObject.findViewById(2131363030);
      r.e(ShiftSingleCard.this, "view.findViewById(R.id.reminder_time)");
      this.o = ((TextView)ShiftSingleCard.this);
      this$1 = localObject.findViewById(2131362368);
      r.e(ShiftSingleCard.this, "view.findViewById(R.id.divider)");
      this.p = ShiftSingleCard.this;
      this$1 = localObject.findViewById(2131363023);
      r.e(ShiftSingleCard.this, "view.findViewById(R.id.reminder_day)");
      this.q = ((TextView)ShiftSingleCard.this);
      this$1 = localObject.findViewById(2131362877);
      r.e(ShiftSingleCard.this, "view.findViewById(R.id.no_data)");
      this.r = ShiftSingleCard.this;
      this$1 = localObject.findViewById(2131363158);
      r.e(ShiftSingleCard.this, "view.findViewById(R.id.shift_container)");
      this.s = ShiftSingleCard.this;
    }
    
    public final View a()
    {
      return this.p;
    }
    
    public final TextView b()
    {
      return this.l;
    }
    
    public final View c()
    {
      return this.r;
    }
    
    public final TextView d()
    {
      return this.q;
    }
    
    public final View e()
    {
      return this.n;
    }
    
    public final TextView f()
    {
      return this.o;
    }
    
    public final View g()
    {
      return this.s;
    }
    
    public final TextView h()
    {
      return this.m;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.single.custom.ShiftSingleCard
 * JD-Core Version:    0.7.0.1
 */