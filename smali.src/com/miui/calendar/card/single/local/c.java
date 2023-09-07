package com.miui.calendar.card.single.local;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout.b;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.AnniversaryEvent;
import com.android.calendar.common.event.schema.BirthdayEvent;
import com.android.calendar.common.event.schema.CountdownEvent;
import com.android.calendar.common.event.schema.CreditEvent;
import com.android.calendar.common.event.schema.ElectricityBillEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.common.event.schema.FlightEvent;
import com.android.calendar.common.event.schema.GasBillEvent;
import com.android.calendar.common.event.schema.HotelEvent;
import com.android.calendar.common.event.schema.LoanEvent;
import com.android.calendar.common.event.schema.MovieEvent;
import com.android.calendar.common.event.schema.TrainEvent;
import com.android.calendar.common.event.schema.TravelEvent;
import com.android.calendar.event.EventInfoActivity;
import com.android.calendar.event.EventInfoActivity.EventInfo;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.view.DynamicLinearLayout;
import com.miui.calendar.view.i;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.r;
import miuix.animation.ITouchStyle;
import miuix.animation.ITouchStyle.TouchType;
import miuix.animation.d;
import s3.a.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/local/c;", "Lcom/miui/calendar/card/single/local/LocalSingleCard;", "", "itemPosition", "Ljava/util/ArrayList;", "Lcom/android/calendar/event/EventInfoActivity$EventInfo;", "Lkotlin/collections/ArrayList;", "eventInfoList", "F", "Lkotlin/u;", "a", "", "j", "i", "Ls3/a$a;", "Ls3/a;", "holder", "position", "g", "Landroid/view/View;", "view", "h", "q", "Z", "_isAllAllDay", "r", "I", "_firstPaddingTop", "s", "_lastPaddingBottom", "t", "_leftPadding", "u", "_rightPadding", "", "v", "[B", "bitmapData", "w", "maxBitmapHeight", "", "Lcom/android/calendar/common/event/schema/Event;", "x", "Ljava/util/List;", "getData", "()Ljava/util/List;", "setData", "(Ljava/util/List;)V", "data", "y", "mEvents", "z", "getLastAction", "()I", "setLastAction", "(I)V", "lastAction", "", "A", "lastPositionY", "Landroid/content/Context;", "context", "Lcom/miui/calendar/card/Card$ContainerType;", "containerType", "Ljava/util/Calendar;", "desiredDay", "Landroid/widget/BaseAdapter;", "adapter", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V", "B", "b", "c", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class c
  extends LocalSingleCard
{
  public static final c B = new c(null);
  private float A;
  private boolean q;
  private final int r = this.a.getResources().getDimensionPixelOffset(2131167088);
  private final int s = this.a.getResources().getDimensionPixelOffset(2131167088);
  private final int t = 0;
  private final int u = 0;
  private byte[] v;
  private final int w;
  private List<? extends Event> x;
  private List<? extends Event> y;
  private int z;
  
  public c(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, 16, paramContainerType, paramCalendar, paramBaseAdapter);
    int i = paramContext.getResources().getDimensionPixelOffset(2131166055);
    int j = paramContext.getResources().getDimensionPixelOffset(2131166052);
    this.w = (DeviceUtils.u(paramContext) - i - j);
    this.z = -1;
    this.A = -1.0F;
  }
  
  private static final boolean D(c paramc, View paramView, MotionEvent paramMotionEvent)
  {
    r.f(paramc, "this$0");
    r.f(paramView, "v");
    r.f(paramMotionEvent, "event");
    int i = 0;
    miuix.animation.a.y(new View[] { paramView }).d().O(1.0F, new ITouchStyle.TouchType[] { ITouchStyle.TouchType.DOWN }).O(1.0F, new ITouchStyle.TouchType[] { ITouchStyle.TouchType.UP }).e(paramMotionEvent);
    if (paramMotionEvent.getAction() == 1) {
      paramView.performClick();
    }
    if ((paramMotionEvent.getAction() == 3) && (paramc.z == 0))
    {
      if (paramc.A == paramMotionEvent.getY()) {
        i = 1;
      }
      if (i != 0) {
        paramView.performClick();
      }
    }
    paramc.z = paramMotionEvent.getAction();
    paramc.A = paramMotionEvent.getY();
    return true;
  }
  
  private static final void E(c paramc, int paramInt1, a.a parama, int paramInt2)
  {
    r.f(paramc, "this$0");
    r.f(parama, "$holder");
    Object localObject1 = paramc.y;
    if (localObject1 != null)
    {
      r.c(localObject1);
      if (paramInt2 < ((List)localObject1).size())
      {
        localObject1 = paramc.y;
        r.c(localObject1);
        Event localEvent = (Event)((List)localObject1).get(paramInt2);
        Object localObject2 = new HashMap();
        int i = localEvent.getEventType();
        if (i != 3)
        {
          if (i != 7)
          {
            if (i != 8)
            {
              if (i != 9) {
                switch (i)
                {
                default: 
                  localObject1 = "日程";
                  break;
                case 17: 
                  localObject1 = "电影票";
                  break;
                case 16: 
                  localObject1 = "贷款";
                  break;
                case 15: 
                  localObject1 = "酒店";
                  break;
                case 14: 
                  localObject1 = "燃气费";
                  break;
                case 13: 
                  localObject1 = "电费";
                  break;
                case 12: 
                  localObject1 = "火车票";
                  break;
                case 11: 
                  localObject1 = "飞机票";
                  break;
                }
              } else {
                localObject1 = "倒数日";
              }
            }
            else {
              localObject1 = "纪念日";
            }
          }
          else {
            localObject1 = "生日";
          }
        }
        else {
          localObject1 = "信用卡还款";
        }
        ((Map)localObject2).put("type", localObject1);
        paramc.l("card_item_clicked", paramInt1, paramInt2, null, (Map)localObject2);
        localObject1 = new Intent(paramc.a, EventInfoActivity.class);
        localObject2 = new ArrayList();
        Object localObject3 = paramc.y;
        Object localObject4;
        if (localObject3 != null)
        {
          localObject3 = ((Iterable)localObject3).iterator();
          while (((Iterator)localObject3).hasNext())
          {
            localObject4 = (Event)((Iterator)localObject3).next();
            ((ArrayList)localObject2).add(new EventInfoActivity.EventInfo(((Event)localObject4).getId(), ((Event)localObject4).getEventType(), ((Event)localObject4).getStartTimeMillis(), ((Event)localObject4).getEndTimeMillis(), 0, paramc.e, 16, null));
          }
        }
        localObject3 = (b)parama;
        if ((((b)localObject3).c().getTop() >= 0) && (paramc.w > ((b)localObject3).c().getHeight()))
        {
          localObject4 = new Rect();
          parama = new int[2];
          ((b)localObject3).c().getLocationInWindow(parama);
          ((Rect)localObject4).left = parama[0];
          paramInt1 = parama[1];
          ((Rect)localObject4).top = paramInt1;
          ((Rect)localObject4).bottom = (paramInt1 + ((b)localObject3).c().getHeight());
          ((Rect)localObject4).right = (((Rect)localObject4).left + ((b)localObject3).c().getWidth());
          ((Intent)localObject1).putExtra("extra_initial_rect", (Parcelable)localObject4);
          ((Intent)localObject1).putExtra("extra_initial_image", paramc.v);
        }
        ((Intent)localObject1).putExtra("extra_key_event_id", localEvent.getId());
        ((Intent)localObject1).putParcelableArrayListExtra("EXTRA_EVENT_INFO_LIST", paramc.F(paramInt2, (ArrayList)localObject2));
        try
        {
          parama = paramc.a;
          r.d(parama, "null cannot be cast to non-null type android.app.Activity");
          ((Activity)parama).overridePendingTransition(0, 0);
          paramc.a.startActivity((Intent)localObject1);
        }
        catch (Exception parama)
        {
          ((Intent)localObject1).removeExtra("extra_initial_image");
          paramc.a.startActivity((Intent)localObject1);
        }
      }
    }
  }
  
  private final ArrayList<EventInfoActivity.EventInfo> F(int paramInt, ArrayList<EventInfoActivity.EventInfo> paramArrayList)
  {
    int i = paramArrayList.size();
    int j = 200;
    if (i <= 200) {
      return paramArrayList;
    }
    i = 0;
    if (paramInt >= 100) {
      if (paramArrayList.size() - paramInt >= 100)
      {
        i = paramInt - 100;
        j = paramInt + 100;
      }
      else
      {
        i = paramArrayList.size() - 200;
        j = paramArrayList.size();
      }
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("limitAgendaList start:");
    localStringBuilder.append(i);
    localStringBuilder.append(" end:");
    localStringBuilder.append(j);
    z.a("Cal:D:AgendaGroupSingleCard", localStringBuilder.toString());
    return new ArrayList(paramArrayList.subList(i, j));
  }
  
  public void a()
  {
    this.v = null;
    Object localObject = this.x;
    this.y = ((List)localObject);
    this.q = true;
    if (localObject != null)
    {
      Iterator localIterator = ((Iterable)localObject).iterator();
      while (localIterator.hasNext())
      {
        localObject = (Event)localIterator.next();
        if ((!((Event)localObject).isAllDay()) && (((Event)localObject).getEventType() != 15)) {
          this.q = false;
        }
      }
    }
    super.a();
  }
  
  public void g(a.a parama, int paramInt)
  {
    r.f(parama, "holder");
    Object localObject = this.y;
    if ((localObject != null) && ((parama instanceof b)))
    {
      r.c(localObject);
      if (((List)localObject).isEmpty())
      {
        localObject = (b)parama;
        ((b)localObject).b().setVisibility(0);
        ((b)localObject).a().setVisibility(8);
      }
      else
      {
        localObject = (b)parama;
        ((b)localObject).b().setVisibility(8);
        ((b)localObject).a().setVisibility(0);
      }
      localObject = (b)parama;
      if (((b)localObject).a().getAdapter() == null) {
        ((b)localObject).a().setAdapter(new a());
      } else {
        ((b)localObject).a().getAdapter().c();
      }
      ((b)localObject).a().setOnItemTouchListener(new a(this));
      ((b)localObject).a().setOnItemClickListener(new b(this, paramInt, parama));
      super.g(parama, paramInt);
      return;
    }
    z.m("Cal:D:AgendaGroupSingleCard", "bindView(): no data or holder error!");
  }
  
  public a.a h(View paramView)
  {
    r.f(paramView, "view");
    return new b(paramView);
  }
  
  public int i()
  {
    return 2131558460;
  }
  
  public boolean j()
  {
    boolean bool;
    if (this.y != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/local/c$a;", "Lcom/miui/calendar/view/i;", "Lcom/miui/calendar/card/single/local/c$a$a;", "Lcom/miui/calendar/card/single/local/c;", "holder", "Lcom/android/calendar/common/event/schema/Event;", "event", "Lkotlin/u;", "e", "g", "f", "h", "p", "k", "m", "o", "i", "n", "l", "j", "s", "", "startTimeMillis", "endTimeMillis", "", "isAllDay", "r", "", "timezone", "Ljava/util/Calendar;", "desiredDay", "Lkotlin/Pair;", "q", "", "a", "c", "position", "Landroid/view/View;", "convertView", "b", "", "Ljava/util/List;", "getMDataList", "()Ljava/util/List;", "setMDataList", "(Ljava/util/List;)V", "mDataList", "<init>", "(Lcom/miui/calendar/card/single/local/c;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class a
    extends i
  {
    private List<? extends Event> b;
    
    private final void e(a parama, Event paramEvent)
    {
      parama.h().setText(com.android.calendar.event.e0.d(c.w(this.c), paramEvent.getTitle()));
      String str = paramEvent.getLocation();
      int i;
      if ((str != null) && (str.length() != 0)) {
        i = 0;
      } else {
        i = 1;
      }
      if (i != 0)
      {
        parama.k().setVisibility(8);
      }
      else
      {
        parama.k().setVisibility(0);
        parama.f().setText(paramEvent.getLocation());
        parama.j().setText("");
        parama.c().setVisibility(8);
      }
      if ((paramEvent.getEx().isCanceledMeeting()) || (paramEvent.getEx().isRejectAgenda())) {
        parama.h().setPaintFlags(parama.h().getPaintFlags() | 0x10);
      }
    }
    
    private final void f(a parama, Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.AnniversaryEvent");
      AnniversaryEvent localAnniversaryEvent = (AnniversaryEvent)paramEvent;
      parama.g().setImageResource(2131231244);
      parama.k().setVisibility(0);
      parama.c().setVisibility(0);
      parama.f().setText(c.w(this.c).getString(2131886194));
      parama.j().setText(localAnniversaryEvent.getDateString(c.w(this.c)));
      parama.j().setVisibility(0);
      parama.m().setVisibility(8);
      int i = localAnniversaryEvent.calAnniversary(c.x(this.c));
      if (i > 0)
      {
        paramEvent = c.w(this.c).getResources().getQuantityString(2131755029, i, new Object[] { Integer.valueOf(i) });
      }
      else
      {
        i = localAnniversaryEvent.calDays(c.x(this.c));
        paramEvent = c.w(this.c).getResources().getQuantityString(2131755026, i, new Object[] { Integer.valueOf(i) });
      }
      r.e(paramEvent, "if (years > 0) {\n       …ays, days);\n            }");
      parama = parama.h();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(localAnniversaryEvent.getContent());
      localStringBuilder.append(" · ");
      localStringBuilder.append(paramEvent);
      parama.setText(localStringBuilder.toString());
    }
    
    private final void g(a parama, Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.BirthdayEvent");
      paramEvent = (BirthdayEvent)paramEvent;
      parama.g().setImageResource(2131231248);
      parama.h().setText(paramEvent.getTitle());
      parama.f().setText(paramEvent.getDateString(c.w(this.c)));
      parama.c().setVisibility(8);
      parama.k().setVisibility(0);
      parama.j().setVisibility(8);
      parama.m().setVisibility(8);
    }
    
    private final void h(a parama, Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.CountdownEvent");
      CountdownEvent localCountdownEvent = (CountdownEvent)paramEvent;
      parama.g().setImageResource(2131231272);
      parama.k().setVisibility(0);
      parama.f().setText(c.w(this.c).getResources().getString(2131886391));
      parama.c().setVisibility(0);
      parama.j().setText(localCountdownEvent.getDateString(c.w(this.c), c.x(this.c)));
      if (localCountdownEvent.getRepeatType() > 0)
      {
        parama.d().setVisibility(0);
        parama.m().setVisibility(0);
        parama.m().setText(c.w(this.c).getResources().getStringArray(2130903114)[localCountdownEvent.getRepeatType()]);
      }
      else
      {
        parama.d().setVisibility(8);
        parama.m().setVisibility(8);
      }
      parama.j().setVisibility(0);
      int i = localCountdownEvent.calDays(c.x(this.c));
      paramEvent = parama.h();
      if (i == 0)
      {
        parama = new StringBuilder();
        parama.append(localCountdownEvent.getContent());
        parama.append(" · ");
        parama.append(c.w(this.c).getString(2131886392));
        parama = parama.toString();
      }
      else
      {
        parama = new StringBuilder();
        parama.append(localCountdownEvent.getContent());
        parama.append(" · ");
        parama.append(c.w(this.c).getResources().getQuantityString(2131755059, i, new Object[] { Integer.valueOf(i) }));
        parama = parama.toString();
      }
      paramEvent.setText(parama);
    }
    
    private final void i(a parama, Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.CreditEvent");
      CreditEvent localCreditEvent = (CreditEvent)paramEvent;
      Object localObject = parama.h();
      paramEvent = localCreditEvent.getAccount();
      if ((paramEvent != null) && (paramEvent.length() != 0)) {
        i = 0;
      } else {
        i = 1;
      }
      if (i != 0) {
        paramEvent = c.w(this.c).getString(2131886787);
      } else {
        paramEvent = c.w(this.c).getString(2131886786, new Object[] { localCreditEvent.getAccount() });
      }
      ((TextView)localObject).setText(paramEvent);
      paramEvent = Calendar.getInstance();
      localObject = Calendar.getInstance();
      ((Calendar)localObject).setTimeInMillis(localCreditEvent.getRepaymentTime());
      int i = com.miui.calendar.util.e0.i(paramEvent);
      int j = com.miui.calendar.util.e0.i(c.x(this.c));
      int k = com.miui.calendar.util.e0.i((Calendar)localObject);
      paramEvent = s0.h(c.w(this.c), localCreditEvent.getRepaymentTime(), 2131886416);
      if (k < i)
      {
        parama.f().setText(c.w(this.c).getString(2131886793));
        parama.c().setVisibility(0);
        parama.j().setText(paramEvent);
        parama.d().setVisibility(0);
        parama.m().setText(c.w(this.c).getString(2131886792));
        c.w(this.c).getString(2131886790, new Object[] { paramEvent });
      }
      else if (i == j)
      {
        parama.f().setText(c.w(this.c).getString(2131886793));
        parama.c().setVisibility(0);
        parama.j().setText(paramEvent);
        parama.d().setVisibility(0);
        parama.m().setText(c.w(this.c).getString(2131886791, new Object[] { String.valueOf(k - i + 1) }));
      }
      else
      {
        parama.f().setText(c.w(this.c).getString(2131886793));
        parama.c().setVisibility(0);
        parama.j().setText(paramEvent);
      }
      parama.k().setVisibility(0);
    }
    
    private final void j(a parama, Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.ElectricityBillEvent");
      ElectricityBillEvent localElectricityBillEvent = (ElectricityBillEvent)paramEvent;
      TextView localTextView = parama.h();
      paramEvent = localElectricityBillEvent.getAccount();
      int i;
      if ((paramEvent != null) && (paramEvent.length() != 0)) {
        i = 0;
      } else {
        i = 1;
      }
      if (i != 0) {
        paramEvent = c.w(this.c).getString(2131886795);
      } else {
        paramEvent = c.w(this.c).getString(2131886794, new Object[] { localElectricityBillEvent.getAccount() });
      }
      localTextView.setText(paramEvent);
      parama.k().setVisibility(0);
      paramEvent = s0.h(c.w(this.c), localElectricityBillEvent.getStartTimeMillis(), 2131886416);
      parama.f().setText(c.w(this.c).getString(2131886799));
      parama.c().setVisibility(0);
      parama.j().setText(paramEvent);
    }
    
    private final void k(a parama, Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.FlightEvent");
      paramEvent = (FlightEvent)paramEvent;
      parama.h().setText(c.w(this.c).getString(2131887767, new Object[] { paramEvent.getFlightNum(), paramEvent.getDepCity(), paramEvent.getArrCity() }));
      parama.k().setVisibility(8);
    }
    
    private final void l(a parama, Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.GasBillEvent");
      GasBillEvent localGasBillEvent = (GasBillEvent)paramEvent;
      TextView localTextView = parama.h();
      paramEvent = localGasBillEvent.getAccount();
      int i;
      if ((paramEvent != null) && (paramEvent.length() != 0)) {
        i = 0;
      } else {
        i = 1;
      }
      if (i != 0) {
        paramEvent = c.w(this.c).getString(2131886797);
      } else {
        paramEvent = c.w(this.c).getString(2131886796, new Object[] { localGasBillEvent.getAccount() });
      }
      localTextView.setText(paramEvent);
      parama.k().setVisibility(0);
      paramEvent = s0.h(c.w(this.c), localGasBillEvent.getStartTimeMillis(), 2131886416);
      parama.f().setText(c.w(this.c).getString(2131886799));
      parama.c().setVisibility(0);
      parama.j().setText(paramEvent);
    }
    
    private final void m(a parama, Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.HotelEvent");
      HotelEvent localHotelEvent = (HotelEvent)paramEvent;
      parama.h().setText(localHotelEvent.getHotelName());
      parama.k().setVisibility(0);
      paramEvent = s0.h(c.w(this.c), localHotelEvent.getCheckInTimeMillis(), 2131886416);
      parama.f().setText(c.w(this.c).getString(2131887769));
      parama.c().setVisibility(0);
      parama.j().setText(paramEvent);
      parama.j().setVisibility(0);
      parama.m().setVisibility(8);
      r(localHotelEvent.getStartTimeMillis(), localHotelEvent.getEndTimeMillis(), true, parama);
    }
    
    private final void n(a parama, Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.LoanEvent");
      LoanEvent localLoanEvent = (LoanEvent)paramEvent;
      Object localObject = parama.h();
      paramEvent = localLoanEvent.getBankName();
      if ((paramEvent != null) && (paramEvent.length() != 0)) {
        i = 0;
      } else {
        i = 1;
      }
      if (i != 0) {
        paramEvent = c.w(this.c).getString(2131886801);
      } else {
        paramEvent = c.w(this.c).getString(2131886800, new Object[] { localLoanEvent.getBankName() });
      }
      ((TextView)localObject).setText(paramEvent);
      paramEvent = Calendar.getInstance();
      localObject = Calendar.getInstance();
      ((Calendar)localObject).setTimeInMillis(localLoanEvent.getRepaymentTimeMillis());
      int i = com.miui.calendar.util.e0.i(paramEvent);
      int j = com.miui.calendar.util.e0.i(c.x(this.c));
      int k = com.miui.calendar.util.e0.i((Calendar)localObject);
      paramEvent = s0.h(c.w(this.c), localLoanEvent.getRepaymentTimeMillis(), 2131886416);
      if (k < i)
      {
        parama.f().setText(c.w(this.c).getString(2131886793));
        parama.c().setVisibility(0);
        parama.j().setText(paramEvent);
        parama.d().setVisibility(0);
        parama.m().setText(c.w(this.c).getString(2131886792));
      }
      else if (i == j)
      {
        parama.f().setText(c.w(this.c).getString(2131886793));
        parama.c().setVisibility(0);
        parama.j().setText(paramEvent);
        parama.d().setVisibility(0);
        parama.m().setText(c.w(this.c).getString(2131886791, new Object[] { String.valueOf(k - i + 1) }));
      }
      else
      {
        parama.f().setText(c.w(this.c).getString(2131886793));
        parama.c().setVisibility(0);
        parama.j().setText(paramEvent);
      }
      parama.k().setVisibility(0);
    }
    
    private final void o(a parama, Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.MovieEvent");
      paramEvent = (MovieEvent)paramEvent;
      parama.h().setText(paramEvent.getMovieName());
      parama.f().setText(paramEvent.getCinema());
      parama.c().setVisibility(8);
      parama.k().setVisibility(0);
    }
    
    private final void p(a parama, Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.TrainEvent");
      paramEvent = (TrainEvent)paramEvent;
      String str = paramEvent.getArrStation();
      int i;
      if ((str != null) && (str.length() != 0)) {
        i = 0;
      } else {
        i = 1;
      }
      if (i != 0)
      {
        parama.h().setText(c.w(this.c).getString(2131887774, new Object[] { paramEvent.getTrainNum(), paramEvent.getDepStation() }));
        parama.f().setText(c.w(this.c).getString(2131887730));
        parama.c().setVisibility(0);
        parama.k().setVisibility(0);
      }
      else
      {
        parama.h().setText(c.w(this.c).getString(2131887773, new Object[] { paramEvent.getTrainNum(), paramEvent.getDepStation(), paramEvent.getArrStation() }));
        parama.k().setVisibility(8);
      }
    }
    
    private final Pair<String, String> q(long paramLong1, long paramLong2, String paramString, Calendar paramCalendar)
    {
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("HH:mm", Locale.getDefault());
      localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone(paramString));
      String str1 = localSimpleDateFormat.format(new Date(paramLong1));
      paramString = localSimpleDateFormat.format(new Date(paramLong2));
      Object localObject = Calendar.getInstance();
      ((Calendar)localObject).set(paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5), 0, 0, 0);
      long l1 = ((Calendar)localObject).getTimeInMillis();
      ((Calendar)localObject).set(paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5), 23, 59, 59);
      long l2 = ((Calendar)localObject).getTimeInMillis();
      boolean bool = paramLong1 < l1;
      String str2 = "24:00";
      localObject = "00:00";
      if ((bool) && (paramLong2 > l2))
      {
        paramString = "24:00";
        paramCalendar = "00:00";
      }
      else
      {
        paramCalendar = str1;
      }
      if ((bool) && (paramLong2 < l2))
      {
        paramCalendar = localSimpleDateFormat.format(new Date(paramLong2));
        paramString = (String)localObject;
      }
      else
      {
        localObject = paramCalendar;
        paramCalendar = paramString;
        paramString = (String)localObject;
      }
      if ((bool) && (paramLong2 > l2))
      {
        paramCalendar = localSimpleDateFormat.format(new Date(paramLong1));
        paramString = str2;
      }
      else
      {
        localObject = paramCalendar;
        paramCalendar = paramString;
        paramString = (String)localObject;
      }
      return new Pair(paramCalendar, paramString);
    }
    
    private final void r(long paramLong1, long paramLong2, boolean paramBoolean, a parama)
    {
      if (paramBoolean)
      {
        parama.b().setVisibility(8);
        parama.a().setVisibility(0);
      }
      else
      {
        parama.b().setVisibility(0);
        parama.a().setVisibility(8);
        String str = c.x(this.c).getTimeZone().getID();
        r.e(str, "mDesiredDay.timeZone.id");
        Object localObject = c.x(this.c);
        r.e(localObject, "mDesiredDay");
        localObject = q(paramLong1, paramLong2, str, (Calendar)localObject);
        str = (String)((Pair)localObject).component1();
        localObject = (String)((Pair)localObject).component2();
        parama.l().setText(str);
        parama.e().setText((CharSequence)localObject);
      }
    }
    
    private final void s(a parama, Event paramEvent)
    {
      int i = Utils.x(c.w(this.c).getResources(), paramEvent.getEx().getAccountName(), paramEvent.getEx().getAccountType(), paramEvent.getEx().getCalendarDisplayName(), paramEvent.getColor());
      paramEvent = c.w(this.c).getResources().getDrawable(2131231262, c.w(this.c).getTheme());
      paramEvent.mutate();
      paramEvent.setTint(i);
      parama.g().setImageDrawable(paramEvent);
    }
    
    public int a()
    {
      List localList = c.y(this.c);
      int i;
      if (localList != null) {
        i = localList.size();
      } else {
        i = 0;
      }
      return i;
    }
    
    public View b(int paramInt, View paramView)
    {
      Object localObject1;
      if (paramView == null)
      {
        paramView = LayoutInflater.from(c.w(this.c)).inflate(2131558461, null);
        localObject1 = new a(paramView);
        paramView.setTag(localObject1);
      }
      else
      {
        localObject1 = paramView.getTag();
        r.d(localObject1, "null cannot be cast to non-null type com.miui.calendar.card.single.local.AgendaGroupSingleCard.AgendaItemAdapter.AgendaItemViewHolder");
        localObject1 = (a)localObject1;
      }
      Object localObject2 = c.y(this.c);
      int i;
      if ((localObject2 != null) && (((Collection)localObject2).size() == 1)) {
        i = 1;
      } else {
        i = 0;
      }
      if (i != 0)
      {
        ((a)localObject1).i().setBackgroundResource(2131231037);
        ((a)localObject1).i().setPadding(c.B(this.c), c.z(this.c), c.C(this.c), c.A(this.c));
      }
      else if (paramInt == 0)
      {
        ((a)localObject1).i().setBackgroundResource(2131231044);
        ((a)localObject1).i().setPadding(c.B(this.c), c.z(this.c), c.C(this.c), 0);
      }
      else
      {
        localObject2 = c.y(this.c);
        r.c(localObject2);
        if (paramInt == ((Collection)localObject2).size() - 1)
        {
          ((a)localObject1).i().setBackgroundResource(2131231034);
          ((a)localObject1).i().setPadding(c.B(this.c), 0, c.C(this.c), c.A(this.c));
        }
        else
        {
          ((a)localObject1).i().setBackgroundResource(2131231040);
          ((a)localObject1).i().setPadding(c.B(this.c), 0, c.C(this.c), 0);
        }
      }
      localObject2 = c.y(this.c);
      r.c(localObject2);
      localObject2 = (Event)((List)localObject2).get(paramInt);
      s((a)localObject1, (Event)localObject2);
      r(((Event)localObject2).getStartTimeMillis(), ((Event)localObject2).getEndTimeMillis(), ((Event)localObject2).isAllDay(), (a)localObject1);
      ((a)localObject1).h().setPaintFlags(((a)localObject1).h().getPaintFlags() & 0xFFFFFFEF);
      paramInt = ((Event)localObject2).getEventType();
      if (paramInt != 3)
      {
        if (paramInt != 7)
        {
          if (paramInt != 8)
          {
            if (paramInt != 9) {
              switch (paramInt)
              {
              default: 
                e((a)localObject1, (Event)localObject2);
                break;
              case 17: 
                o((a)localObject1, (Event)localObject2);
                break;
              case 16: 
                n((a)localObject1, (Event)localObject2);
                break;
              case 15: 
                m((a)localObject1, (Event)localObject2);
                break;
              case 14: 
                l((a)localObject1, (Event)localObject2);
                break;
              case 13: 
                j((a)localObject1, (Event)localObject2);
                break;
              case 12: 
                p((a)localObject1, (Event)localObject2);
                break;
              case 11: 
                k((a)localObject1, (Event)localObject2);
                break;
              }
            } else {
              h((a)localObject1, (Event)localObject2);
            }
          }
          else {
            f((a)localObject1, (Event)localObject2);
          }
        }
        else {
          g((a)localObject1, (Event)localObject2);
        }
      }
      else {
        i((a)localObject1, (Event)localObject2);
      }
      r.c(paramView);
      return paramView;
    }
    
    public void c()
    {
      if (r.a(this.b, c.y(this.c))) {
        return;
      }
      this.b = c.y(this.c);
      super.c();
    }
    
    @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/local/c$a$a;", "", "Landroid/widget/ImageView;", "a", "Landroid/widget/ImageView;", "g", "()Landroid/widget/ImageView;", "iconImageView", "Landroid/widget/TextView;", "b", "Landroid/widget/TextView;", "h", "()Landroid/widget/TextView;", "primaryTextView", "c", "f", "firstDescription", "d", "j", "secondDescription", "e", "m", "thirdDescription", "Landroid/view/View;", "Landroid/view/View;", "()Landroid/view/View;", "divider", "dividerLast", "Landroid/widget/LinearLayout;", "Landroid/widget/LinearLayout;", "k", "()Landroid/widget/LinearLayout;", "secondaryContainer", "i", "datetimeGroup", "l", "startDatetime", "endDatetime", "allDayLabel", "rootView", "view", "<init>", "(Lcom/miui/calendar/card/single/local/c$a;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
    private final class a
    {
      private final ImageView a;
      private final TextView b;
      private final TextView c;
      private final TextView d;
      private final TextView e;
      private final View f;
      private final View g;
      private final LinearLayout h;
      private final View i;
      private final TextView j;
      private final TextView k;
      private final TextView l;
      private final View m;
      
      public a()
      {
        this$1 = ((View)localObject1).findViewById(2131362563);
        r.e(c.a.this, "view.findViewById(R.id.icon)");
        this.a = ((ImageView)c.a.this);
        this$1 = ((View)localObject1).findViewById(2131362984);
        r.e(c.a.this, "view.findViewById(R.id.primary)");
        this.b = ((TextView)c.a.this);
        this$1 = ((View)localObject1).findViewById(2131362462);
        r.e(c.a.this, "view.findViewById(R.id.first_description)");
        this.c = ((TextView)c.a.this);
        this$1 = ((View)localObject1).findViewById(2131363126);
        r.e(c.a.this, "view.findViewById(R.id.secondary_description)");
        this.d = ((TextView)c.a.this);
        this$1 = ((View)localObject1).findViewById(2131363357);
        r.e(c.a.this, "view.findViewById(R.id.third_description)");
        this.e = ((TextView)c.a.this);
        this$1 = ((View)localObject1).findViewById(2131362111);
        r.e(c.a.this, "view.findViewById(R.id.card_divider)");
        this.f = c.a.this;
        this$1 = ((View)localObject1).findViewById(2131362112);
        r.e(c.a.this, "view.findViewById(R.id.card_divider_last)");
        this.g = c.a.this;
        this$1 = ((View)localObject1).findViewById(2131363125);
        r.e(c.a.this, "view.findViewById(R.id.secondary_container)");
        this.h = ((LinearLayout)c.a.this);
        this$1 = ((View)localObject1).findViewById(2131361921);
        r.e(c.a.this, "view.findViewById(R.id.agenda_item_datetime_group)");
        this.i = c.a.this;
        this$1 = ((View)localObject1).findViewById(2131363240);
        r.e(c.a.this, "view.findViewById(R.id.start_datetime)");
        this$1 = (TextView)c.a.this;
        this.j = c.a.this;
        Object localObject2 = ((View)localObject1).findViewById(2131362410);
        r.e(localObject2, "view.findViewById(R.id.end_datetime)");
        localObject2 = (TextView)localObject2;
        this.k = ((TextView)localObject2);
        View localView = ((View)localObject1).findViewById(2131361943);
        r.e(localView, "view.findViewById(R.id.all_day_label)");
        this.l = ((TextView)localView);
        Object localObject1 = ((View)localObject1).findViewById(2131363074);
        r.e(localObject1, "view.findViewById(R.id.root)");
        this.m = ((View)localObject1);
        if ((!DeviceUtils.F()) || (x0.p0()))
        {
          localObject1 = ((View)localObject2).getLayoutParams();
          r.d(localObject1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
          localObject1 = (ConstraintLayout.b)localObject1;
          ((ViewGroup.MarginLayoutParams)localObject1).topMargin = 0;
          ((View)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject1);
          localObject1 = c.a.this.getLayoutParams();
          r.d(localObject1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
          localObject1 = (ConstraintLayout.b)localObject1;
          ((ViewGroup.MarginLayoutParams)localObject1).topMargin = 0;
          c.a.this.setLayoutParams((ViewGroup.LayoutParams)localObject1);
        }
      }
      
      public final TextView a()
      {
        return this.l;
      }
      
      public final View b()
      {
        return this.i;
      }
      
      public final View c()
      {
        return this.f;
      }
      
      public final View d()
      {
        return this.g;
      }
      
      public final TextView e()
      {
        return this.k;
      }
      
      public final TextView f()
      {
        return this.c;
      }
      
      public final ImageView g()
      {
        return this.a;
      }
      
      public final TextView h()
      {
        return this.b;
      }
      
      public final View i()
      {
        return this.m;
      }
      
      public final TextView j()
      {
        return this.d;
      }
      
      public final LinearLayout k()
      {
        return this.h;
      }
      
      public final TextView l()
      {
        return this.j;
      }
      
      public final TextView m()
      {
        return this.e;
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/local/c$b;", "Ls3/a$a;", "Ls3/a;", "Landroid/view/View;", "e", "Landroid/view/View;", "c", "()Landroid/view/View;", "rootView", "Landroid/widget/TextView;", "f", "Landroid/widget/TextView;", "b", "()Landroid/widget/TextView;", "noEventsView", "Lcom/miui/calendar/view/DynamicLinearLayout;", "g", "Lcom/miui/calendar/view/DynamicLinearLayout;", "a", "()Lcom/miui/calendar/view/DynamicLinearLayout;", "containerView", "view", "<init>", "(Lcom/miui/calendar/card/single/local/c;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class b
    extends a.a
  {
    private final View e;
    private final TextView f;
    private final DynamicLinearLayout g;
    
    public b()
    {
      super(localObject);
      this.e = localObject;
      this$1 = localObject.findViewById(2131362882);
      r.e(c.this, "view.findViewById(R.id.no_events)");
      this.f = ((TextView)c.this);
      this$1 = localObject.findViewById(2131362207);
      r.e(c.this, "view.findViewById(R.id.container)");
      this.g = ((DynamicLinearLayout)c.this);
    }
    
    public final DynamicLinearLayout a()
    {
      return this.g;
    }
    
    public final TextView b()
    {
      return this.f;
    }
    
    public final View c()
    {
      return this.e;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/local/c$c;", "", "", "LIMIT_AGENDA_LIST_SIZE", "I", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class c {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.single.local.c
 * JD-Core Version:    0.7.0.1
 */