package com.android.calendar.homepage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.LongSparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.android.calendar.common.Utils;
import com.android.calendar.common.Utils.DisplayType;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.event.e0;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.w;
import com.miui.calendar.util.x0;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.j;
import kotlin.jvm.internal.r;
import kotlin.u;
import kotlinx.coroutines.h;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.w0;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/WeekAgendaView;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Lkotlin/u;", "w", "Ljava/util/Calendar;", "day", "Lcom/android/calendar/homepage/WeekAgendaView$b;", "u", "", "itemCount", "setItemCount", "B", "weekNum", "", "isLast", "y", "Lcom/android/calendar/homepage/h1$b;", "monthViewTouchEventCallback", "setMonthViewTouchEventCallback", "h", "oldw", "oldh", "onSizeChanged", "A", "v", "weekFirstDay", "setWeekFirstDay", "", "Lcom/android/calendar/common/event/schema/Event;", "events", "setEvents", "force", "z", "C", "a", "Landroid/content/Context;", "mContext", "b", "Ljava/util/List;", "mEvents", "c", "I", "mDayCount", "d", "Ljava/util/Calendar;", "mWeekFirstDay", "Landroid/util/LongSparseArray;", "", "e", "Landroid/util/LongSparseArray;", "mBirthDays", "f", "mAnniversaryEvents", "g", "mCountdownEvents", "mAgendaEvents", "i", "mItemContainerList", "j", "ITEM_TEXT_VIEW_WIDTH", "k", "ITEM_TEXT_VIEW_HEIGHT", "l", "ITEM_ICON_PADDING", "m", "ITEM_TEXT_VIEW_MARGIN_TOP", "", "n", "F", "ITEM_TEXT_VIEW_TEXT_SIZE", "o", "ITEM_TEXT_MORE_PADDING_LEFT", "p", "ITEM_TEXT_PADDING_TOP", "q", "HOLIDAY_TEXT_COLOR", "r", "mPadding", "mWidth", "MIN_HEIGHT", "x", "MAX_HEIGHT", "MAX_MONTH_HEIGHT", "AGENDA_ITEM_HEIGHT", "D", "Lcom/android/calendar/homepage/h1$b;", "mMonthViewTouchEventCallback", "E", "Z", "getNeedRefresh", "()Z", "setNeedRefresh", "(Z)V", "needRefresh", "mItemCount", "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "dayCount", "(Landroid/content/Context;Ljava/util/Calendar;II)V", "H", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class WeekAgendaView
  extends LinearLayout
{
  public static final a H = new a(null);
  private static final List<Event> I = new ArrayList(0);
  private h1.b D;
  private boolean E = true;
  private int F = 4;
  public Map<Integer, View> G;
  private Context a;
  private List<? extends Event> b;
  private int c;
  private Calendar d;
  private final LongSparseArray<List<Event>> e = new LongSparseArray();
  private final LongSparseArray<List<Event>> f = new LongSparseArray();
  private final LongSparseArray<List<Event>> g = new LongSparseArray();
  private final LongSparseArray<List<Event>> h = new LongSparseArray();
  private List<b> i;
  private int j;
  private int k;
  private int l;
  private int m;
  private float n;
  private int o;
  private int p;
  private int q;
  private int r;
  private int v;
  private int w;
  private int x;
  private float y;
  private int z;
  
  public WeekAgendaView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    w(paramContext);
  }
  
  public WeekAgendaView(Context paramContext, Calendar paramCalendar, int paramInt)
  {
    this(paramContext, paramCalendar, paramInt, 0, 8, null);
  }
  
  public WeekAgendaView(Context paramContext, Calendar paramCalendar, int paramInt1, int paramInt2)
  {
    this(paramContext, null, 0, 6, null);
    this.c = paramInt2;
    this.d = paramCalendar;
    this.F = paramInt1;
    this.w = x0.Z(paramContext, paramInt1);
    this.x = ((int)x0.Y(paramContext, paramInt1));
    this.z = ((int)x0.R(paramContext));
    paramCalendar = getContext();
    r.e(paramCalendar, "getContext()");
    this.y = (x0.J(paramCalendar) + getResources().getDimension(2131165483) - 100);
    w(paramContext);
  }
  
  private final b u(Calendar paramCalendar)
  {
    paramCalendar = new b(this.a, paramCalendar);
    paramCalendar.setLayoutParams(new LinearLayout.LayoutParams((this.v - this.r * 2) / this.c, -1));
    addView(paramCalendar);
    return paramCalendar;
  }
  
  private final void w(Context paramContext)
  {
    this.a = paramContext;
    r.c(paramContext);
    this.v = DeviceUtils.w(paramContext);
    paramContext = paramContext.getResources();
    Object localObject = this.a;
    r.c(localObject);
    this.j = ((int)x0.X((Context)localObject));
    localObject = this.a;
    r.c(localObject);
    this.k = ((int)x0.R((Context)localObject));
    localObject = this.a;
    r.c(localObject);
    this.m = ((int)x0.T((Context)localObject, this.F));
    localObject = this.a;
    r.c(localObject);
    this.n = x0.W((Context)localObject);
    localObject = this.a;
    r.c(localObject);
    this.o = ((int)x0.U((Context)localObject));
    localObject = this.a;
    r.c(localObject);
    this.p = ((int)x0.V((Context)localObject));
    localObject = this.a;
    r.c(localObject);
    this.l = ((int)x0.S((Context)localObject));
    this.r = paramContext.getDimensionPixelOffset(2131166877);
    this.q = paramContext.getColor(2131100697);
    int i1 = 0;
    setOrientation(0);
    setGravity(1);
    this.i = new ArrayList(this.c);
    int i2 = this.c;
    while (i1 < i2)
    {
      paramContext = this.d;
      r.c(paramContext);
      paramContext = paramContext.clone();
      r.d(paramContext, "null cannot be cast to non-null type java.util.Calendar");
      paramContext = (Calendar)paramContext;
      paramContext.add(5, i1);
      b localb = u(paramContext);
      localObject = this.i;
      paramContext = (Context)localObject;
      if (localObject == null)
      {
        r.x("mItemContainerList");
        paramContext = null;
      }
      paramContext.add(localb);
      i1++;
    }
  }
  
  private static final void x(WeekAgendaView paramWeekAgendaView, int paramInt)
  {
    r.f(paramWeekAgendaView, "this$0");
    if (((Utils.t(paramWeekAgendaView.getContext()) == 6) || (paramInt > paramWeekAgendaView.w)) && (paramInt >= paramWeekAgendaView.z))
    {
      ViewParent localViewParent;
      if (x0.t0())
      {
        localViewParent = paramWeekAgendaView.getParent();
        r.d(localViewParent, "null cannot be cast to non-null type android.view.View");
        if (((View)localViewParent).getHeight() < paramWeekAgendaView.y) {}
      }
      else
      {
        boolean bool = true;
        if ((paramWeekAgendaView.getParent() instanceof h1))
        {
          localViewParent = paramWeekAgendaView.getParent();
          r.d(localViewParent, "null cannot be cast to non-null type com.android.calendar.homepage.MonthView");
          bool = ((h1)localViewParent).e();
        }
        if (bool)
        {
          paramWeekAgendaView.A();
          return;
        }
        paramWeekAgendaView.v();
        return;
      }
    }
    paramWeekAgendaView.v();
  }
  
  public final void A()
  {
    setVisibility(0);
  }
  
  public final void B()
  {
    List localList = this.i;
    Object localObject = localList;
    if (localList == null)
    {
      r.x("mItemContainerList");
      localObject = null;
    }
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      ((b)((Iterator)localObject).next()).p();
    }
  }
  
  public final void C()
  {
    Log.d("Cal:D:WeekAgendaView", "updateRefreshState: ");
    this.E = true;
    List localList = this.i;
    Object localObject = localList;
    if (localList == null)
    {
      r.x("mItemContainerList");
      localObject = null;
    }
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      ((b)((Iterator)localObject).next()).removeAllViews();
    }
  }
  
  public final boolean getNeedRefresh()
  {
    return this.E;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt1 == paramInt3) && (paramInt2 == paramInt4)) {
      return;
    }
    this.v = paramInt1;
    postDelayed(new k1(this, paramInt2), 250L);
  }
  
  public final void setEvents(List<? extends Event> paramList)
  {
    if (this.b == paramList) {
      return;
    }
    this.b = paramList;
    this.e.clear();
    this.f.clear();
    this.g.clear();
    this.h.clear();
    int i1 = 0;
    int i2 = i1;
    if (paramList != null)
    {
      i2 = i1;
      if ((paramList.isEmpty() ^ true) == true) {
        i2 = 1;
      }
    }
    if (i2 != 0)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        Event localEvent = (Event)localIterator.next();
        long l1 = localEvent.getEx().getStartJulianDay();
        List localList;
        if (localEvent.getEventType() == 7)
        {
          localList = (List)this.e.get(l1);
          paramList = localList;
          if (localList == null)
          {
            paramList = new ArrayList();
            this.e.put(l1, paramList);
          }
        }
        else if (localEvent.getEventType() == 8)
        {
          localList = (List)this.f.get(l1);
          paramList = localList;
          if (localList == null)
          {
            paramList = new ArrayList();
            this.f.put(l1, paramList);
          }
        }
        else if (localEvent.getEventType() == 9)
        {
          localList = (List)this.g.get(l1);
          paramList = localList;
          if (localList == null)
          {
            paramList = new ArrayList();
            this.g.put(l1, paramList);
          }
        }
        else
        {
          localList = (List)this.h.get(l1);
          paramList = localList;
          if (localList == null)
          {
            paramList = new ArrayList();
            this.h.put(l1, paramList);
          }
        }
        paramList.add(localEvent);
      }
    }
  }
  
  public final void setItemCount(final int paramInt)
  {
    h.d(l0.a(w0.b()), null, null, new SuspendLambda(paramInt, null)
    {
      int label;
      
      public final c<u> create(Object paramAnonymousObject, c<?> paramAnonymousc)
      {
        return new 1(this.this$0, paramInt, paramAnonymousc);
      }
      
      public final Object invoke(k0 paramAnonymousk0, c<? super u> paramAnonymousc)
      {
        return ((1)create(paramAnonymousk0, paramAnonymousc)).invokeSuspend(u.a);
      }
      
      public final Object invokeSuspend(Object paramAnonymousObject)
      {
        kotlin.coroutines.intrinsics.a.d();
        if (this.label == 0)
        {
          j.b(paramAnonymousObject);
          WeekAgendaView.t(this.this$0, paramInt);
          Object localObject = this.this$0;
          paramAnonymousObject = WeekAgendaView.m((WeekAgendaView)localObject);
          r.c(paramAnonymousObject);
          WeekAgendaView.s((WeekAgendaView)localObject, x0.Z(paramAnonymousObject, paramInt));
          paramAnonymousObject = this.this$0;
          localObject = WeekAgendaView.m(paramAnonymousObject);
          r.c(localObject);
          WeekAgendaView.r(paramAnonymousObject, (int)x0.Y((Context)localObject, paramInt));
          localObject = this.this$0;
          paramAnonymousObject = WeekAgendaView.m((WeekAgendaView)localObject);
          r.c(paramAnonymousObject);
          WeekAgendaView.q((WeekAgendaView)localObject, (int)x0.T(paramAnonymousObject, WeekAgendaView.o(this.this$0)));
          return u.a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
      }
    }, 3, null);
  }
  
  public final void setMonthViewTouchEventCallback(h1.b paramb)
  {
    this.D = paramb;
  }
  
  public final void setNeedRefresh(boolean paramBoolean)
  {
    this.E = paramBoolean;
  }
  
  public final void setWeekFirstDay(Calendar paramCalendar)
  {
    this.d = paramCalendar;
    List localList = this.i;
    paramCalendar = localList;
    if (localList == null)
    {
      r.x("mItemContainerList");
      paramCalendar = null;
    }
    if ((paramCalendar.isEmpty() ^ true))
    {
      int i1 = 0;
      int i2 = this.c;
      while (i1 < i2)
      {
        paramCalendar = this.d;
        r.c(paramCalendar);
        paramCalendar = paramCalendar.clone();
        r.d(paramCalendar, "null cannot be cast to non-null type java.util.Calendar");
        Calendar localCalendar = (Calendar)paramCalendar;
        localCalendar.add(5, i1);
        localList = this.i;
        paramCalendar = localList;
        if (localList == null)
        {
          r.x("mItemContainerList");
          paramCalendar = null;
        }
        ((b)paramCalendar.get(i1)).setMThisDay(localCalendar);
        i1++;
      }
    }
  }
  
  public final void v()
  {
    setVisibility(4);
  }
  
  public final void y(int paramInt, boolean paramBoolean) {}
  
  public final void z(boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("refreshAllViews: needRefresh=");
    localStringBuilder.append(this.E);
    localStringBuilder.append(" , force=");
    localStringBuilder.append(paramBoolean);
    localStringBuilder.append(" , mEvents.size={");
    Object localObject1 = this.b;
    Object localObject2 = null;
    if (localObject1 != null) {
      localObject1 = Integer.valueOf(((List)localObject1).size());
    } else {
      localObject1 = null;
    }
    localStringBuilder.append(localObject1);
    localStringBuilder.append('}');
    Log.d("Cal:D:WeekAgendaView", localStringBuilder.toString());
    if ((paramBoolean) || (this.E))
    {
      this.E = false;
      localObject1 = this.i;
      if (localObject1 == null)
      {
        r.x("mItemContainerList");
        localObject1 = localObject2;
      }
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((b)((Iterator)localObject1).next()).p();
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/WeekAgendaView$a;", "", "", "Lcom/android/calendar/common/event/schema/Event;", "EMPTY_EVENT_LIST", "Ljava/util/List;", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/WeekAgendaView$b;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Lkotlin/u;", "m", "", "Lcom/android/calendar/common/event/schema/Event;", "eventList", "", "o", "i", "event", "f", "", "more", "k", "w", "h", "oldw", "oldh", "onSizeChanged", "removeAllViews", "p", "a", "Landroid/content/Context;", "mContext", "Ljava/util/Calendar;", "b", "Ljava/util/Calendar;", "getMThisDay", "()Ljava/util/Calendar;", "setMThisDay", "(Ljava/util/Calendar;)V", "mThisDay", "c", "I", "holidayNum", "d", "Ljava/util/List;", "mCachedEventList", "<init>", "(Lcom/android/calendar/homepage/WeekAgendaView;Landroid/content/Context;)V", "calendar", "(Lcom/android/calendar/homepage/WeekAgendaView;Landroid/content/Context;Ljava/util/Calendar;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public final class b
    extends LinearLayout
  {
    private Context a;
    private Calendar b;
    private final int c;
    private List<Event> d;
    public Map<Integer, View> e;
    
    public b()
    {
      super();
    }
    
    public b(Calendar paramCalendar)
    {
      this(paramCalendar);
      Object localObject;
      this.b = localObject;
      m(paramCalendar);
    }
    
    private final void f(Event paramEvent)
    {
      Object localObject1 = this.a;
      r.c(localObject1);
      int i = Utils.A(((Context)localObject1).getResources(), paramEvent, Utils.DisplayType.ACCOUNT);
      if (8 == paramEvent.getEventType()) {
        localObject1 = androidx.vectordrawable.graphics.drawable.d.b(getResources(), 2131231331, getContext().getTheme());
      } else if (7 == paramEvent.getEventType()) {
        localObject1 = androidx.vectordrawable.graphics.drawable.d.b(getResources(), 2131231332, getContext().getTheme());
      } else if (9 == paramEvent.getEventType()) {
        localObject1 = androidx.vectordrawable.graphics.drawable.d.b(getResources(), 2131231333, getContext().getTheme());
      } else {
        localObject1 = null;
      }
      if (localObject1 != null) {
        ((androidx.vectordrawable.graphics.drawable.d)localObject1).setTint(i);
      }
      LinearLayout localLinearLayout = new LinearLayout(this.a);
      Object localObject2 = new LinearLayout.LayoutParams(WeekAgendaView.i(WeekAgendaView.this), WeekAgendaView.f(WeekAgendaView.this));
      ((LinearLayout.LayoutParams)localObject2).topMargin = WeekAgendaView.g(WeekAgendaView.this);
      localLinearLayout.setLayoutParams((ViewGroup.LayoutParams)localObject2);
      localLinearLayout.setPadding(WeekAgendaView.d(WeekAgendaView.this), 0, WeekAgendaView.d(WeekAgendaView.this), 0);
      localObject2 = this.a;
      r.c(localObject2);
      localObject2 = ((Context)localObject2).getResources().getDrawable(2131230955);
      Object localObject3 = this.a;
      r.c(localObject3);
      androidx.core.graphics.drawable.a.n((Drawable)localObject2, Utils.A(((Context)localObject3).getResources(), paramEvent, Utils.DisplayType.FILL));
      localLinearLayout.setBackground((Drawable)localObject2);
      if (localObject1 != null)
      {
        localObject3 = new ImageView(this.a);
        localObject2 = new LinearLayout.LayoutParams(-2, -2);
        ((ViewGroup.MarginLayoutParams)localObject2).setMarginEnd(-17);
        ((ViewGroup.MarginLayoutParams)localObject2).setMarginStart(-17);
        ((ImageView)localObject3).setImageDrawable((Drawable)localObject1);
        ((View)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject2);
        post(new n1(localLinearLayout, (ImageView)localObject3));
      }
      localObject1 = new TextView(this.a);
      localObject2 = new LinearLayout.LayoutParams(-1, -2);
      ((LinearLayout.LayoutParams)localObject2).gravity = 16;
      ((LinearLayout.LayoutParams)localObject2).topMargin = WeekAgendaView.e(WeekAgendaView.this);
      ((View)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
      ((TextView)localObject1).setTypeface(w.d());
      ((TextView)localObject1).setTextSize(0, WeekAgendaView.h(WeekAgendaView.this));
      ((TextView)localObject1).setMaxLines(1);
      ((TextView)localObject1).setText(e0.d(this.a, paramEvent.getTitle()));
      ((TextView)localObject1).getPaint().setFakeBoldText(true);
      ((TextView)localObject1).setTextColor(i);
      post(new o1(localLinearLayout, (TextView)localObject1, this));
    }
    
    private static final void g(LinearLayout paramLinearLayout, ImageView paramImageView)
    {
      r.f(paramLinearLayout, "$layout");
      r.f(paramImageView, "$iconView");
      paramLinearLayout.addView(paramImageView);
    }
    
    private static final void h(LinearLayout paramLinearLayout, TextView paramTextView, b paramb)
    {
      r.f(paramLinearLayout, "$layout");
      r.f(paramTextView, "$textView");
      r.f(paramb, "this$0");
      paramLinearLayout.addView(paramTextView);
      paramb.addView(paramLinearLayout);
    }
    
    private final void i()
    {
      long l = s0.m(this.b);
      ArrayList localArrayList = new ArrayList();
      Object localObject = WeekAgendaView.l(WeekAgendaView.this).get(l, WeekAgendaView.b());
      r.e(localObject, "mBirthDays[juliaDay, EMPTY_EVENT_LIST]");
      localArrayList.addAll((Collection)localObject);
      localObject = WeekAgendaView.k(WeekAgendaView.this).get(l, WeekAgendaView.b());
      r.e(localObject, "mAnniversaryEvents[juliaDay, EMPTY_EVENT_LIST]");
      localArrayList.addAll((Collection)localObject);
      localObject = WeekAgendaView.n(WeekAgendaView.this).get(l, WeekAgendaView.b());
      r.e(localObject, "mCountdownEvents[juliaDay, EMPTY_EVENT_LIST]");
      localArrayList.addAll((Collection)localObject);
      localObject = WeekAgendaView.j(WeekAgendaView.this).get(l, WeekAgendaView.b());
      r.e(localObject, "mAgendaEvents[juliaDay, EMPTY_EVENT_LIST]");
      localArrayList.addAll((Collection)localObject);
      if (!o(localArrayList)) {
        return;
      }
      post(new l1(this));
      int i = this.c;
      localObject = localArrayList.iterator();
      int j;
      for (;;)
      {
        j = i;
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
        Event localEvent = (Event)((Iterator)localObject).next();
        i++;
        j = i;
        if (i >= WeekAgendaView.o(WeekAgendaView.this)) {
          break;
        }
        f(localEvent);
      }
      i = this.c;
      j -= i;
      if ((i + j == WeekAgendaView.o(WeekAgendaView.this)) && (j == localArrayList.size())) {
        f((Event)localArrayList.get(j - 1));
      } else if (j < localArrayList.size()) {
        k(localArrayList.size() - j + 1);
      }
    }
    
    private static final void j(b paramb)
    {
      r.f(paramb, "this$0");
      paramb.removeAllViewsInLayout();
    }
    
    private final void k(int paramInt)
    {
      TextView localTextView = new TextView(this.a);
      Object localObject = new LinearLayout.LayoutParams(WeekAgendaView.i(WeekAgendaView.this), WeekAgendaView.f(WeekAgendaView.this));
      ((LinearLayout.LayoutParams)localObject).topMargin = WeekAgendaView.g(WeekAgendaView.this);
      localTextView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      localTextView.setTextSize(0, WeekAgendaView.h(WeekAgendaView.this));
      localTextView.setMaxLines(1);
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append('+');
      ((StringBuilder)localObject).append(paramInt);
      localTextView.setText(((StringBuilder)localObject).toString());
      localTextView.setGravity(16);
      localTextView.setPadding(WeekAgendaView.d(WeekAgendaView.this), 0, WeekAgendaView.d(WeekAgendaView.this), 0);
      localTextView.setTextColor(WeekAgendaView.c(WeekAgendaView.this));
      localTextView.setTypeface(w.d());
      post(new m1(this, localTextView));
    }
    
    private static final void l(b paramb, TextView paramTextView)
    {
      r.f(paramb, "this$0");
      r.f(paramTextView, "$textView");
      paramb.addView(paramTextView);
    }
    
    private final void m(Context paramContext)
    {
      this.a = paramContext;
      setOrientation(1);
      setGravity(1);
      i();
      setOnClickListener(new p1(WeekAgendaView.this, this));
    }
    
    private static final void n(WeekAgendaView paramWeekAgendaView, b paramb, View paramView)
    {
      r.f(paramWeekAgendaView, "this$0");
      r.f(paramb, "this$1");
      if (WeekAgendaView.p(paramWeekAgendaView) != null)
      {
        paramWeekAgendaView = WeekAgendaView.p(paramWeekAgendaView);
        r.c(paramWeekAgendaView);
        paramWeekAgendaView.a(paramb.b);
      }
    }
    
    private final boolean o(List<Event> paramList)
    {
      List localList = this.d;
      boolean bool = true;
      if (localList != null)
      {
        int i;
        if ((localList != null) && (localList.size() == paramList.size())) {
          i = 1;
        } else {
          i = 0;
        }
        if (i != 0)
        {
          int j = paramList.size();
          for (i = 0; i < j; i++)
          {
            localList = this.d;
            r.c(localList);
            if (((Event)localList.get(i)).getId() != ((Event)paramList.get(i)).getId())
            {
              this.d = paramList;
              break label122;
            }
          }
          bool = false;
          label122:
          return bool;
        }
      }
      this.d = paramList;
      return true;
    }
    
    public final Calendar getMThisDay()
    {
      return this.b;
    }
    
    protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
      if (!DeviceUtils.K())
      {
        View localView;
        for (paramInt1 = 0;; paramInt1++)
        {
          paramInt3 = paramInt1;
          if (paramInt1 >= getChildCount()) {
            break;
          }
          localView = getChildAt(paramInt1);
          paramInt3 = paramInt1;
          if (localView.getBottom() > paramInt2) {
            break;
          }
          if (localView.getVisibility() != 0)
          {
            localView.setVisibility(0);
            localView.startAnimation(AnimationUtils.loadAnimation(this.a, 2130772053));
          }
        }
        while (paramInt3 < getChildCount())
        {
          localView = getChildAt(paramInt3);
          if ((localView.getBottom() > paramInt2) && (localView.getVisibility() != 4))
          {
            localView.setVisibility(4);
            localView.startAnimation(AnimationUtils.loadAnimation(this.a, 2130772054));
          }
          paramInt3++;
        }
      }
    }
    
    public final void p()
    {
      i();
    }
    
    public void removeAllViews()
    {
      removeAllViewsInLayout();
      this.d = null;
    }
    
    public final void setMThisDay(Calendar paramCalendar)
    {
      this.b = paramCalendar;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.WeekAgendaView
 * JD-Core Version:    0.7.0.1
 */