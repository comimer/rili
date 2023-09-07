package com.android.calendar.homepage.productivity;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView.c0;
import androidx.recyclerview.widget.RecyclerView.g;
import androidx.recyclerview.widget.RecyclerView.o;
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
import com.android.calendar.event.c0;
import com.android.calendar.homepage.ListLayout;
import com.miui.calendar.util.b1;
import com.miui.calendar.util.g.a0;
import com.miui.calendar.util.g.j;
import com.miui.calendar.util.g.k;
import com.miui.calendar.util.g.u;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.x0;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.j;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.h;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.w0;
import miuix.animation.ITouchStyle;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/productivity/ProductivityListLayout;", "Lcom/android/calendar/homepage/ListLayout;", "Ljava/util/Calendar;", "getPreferTime", "Lcom/android/calendar/common/event/schema/Event;", "event", "", "offsetY", "Lkotlin/u;", "W", "Lcom/miui/calendar/util/g$a0;", "R", "", "P", "getViewType", "Lcom/miui/calendar/util/g$j;", "a", "z", "S", "s", "w", "Lcom/miui/calendar/view/u;", "i", "Landroid/view/View;", "view", "x", "y", "startX", "startY", "f", "Lkotlin/Function0;", "onLoadFinished", "T", "", "getDefPosition", "translationY", "v", "r", "Landroid/view/View;", "viewContainer", "Lmiuix/recyclerview/widget/RecyclerView;", "Lmiuix/recyclerview/widget/RecyclerView;", "recyclerView", "Landroid/widget/TextView;", "Landroid/widget/TextView;", "noEventHint", "Landroid/widget/Button;", "Landroid/widget/Button;", "btnAddEvent", "Lcom/android/calendar/homepage/productivity/ProductivityListLayout$b;", "Lcom/android/calendar/homepage/productivity/ProductivityListLayout$b;", "adapter", "contentMaskLayout", "D", "itemMaskShadow", "Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;", "E", "Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;", "maskItem", "F", "I", "touchSlop", "G", "Z", "longPressed", "getDesiredDay", "()Ljava/util/Calendar;", "desiredDay", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "b", "c", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class ProductivityListLayout
  extends ListLayout
{
  public static final a I = new a(null);
  private final View D;
  private final c E;
  private final int F;
  private boolean G;
  public Map<Integer, View> H;
  private final View r;
  private final miuix.recyclerview.widget.RecyclerView v;
  private final TextView w;
  private final Button x;
  private final b y;
  private final View z;
  
  public ProductivityListLayout(Context paramContext)
  {
    super(paramContext);
    Object localObject1 = View.inflate(paramContext, 2131558653, this);
    r.e(localObject1, "inflate(context, R.layou…_view_productivity, this)");
    this.r = ((View)localObject1);
    Object localObject2 = ((View)localObject1).findViewById(2131363017);
    r.e(localObject2, "viewContainer.findViewById(R.id.recycler_view)");
    localObject2 = (miuix.recyclerview.widget.RecyclerView)localObject2;
    this.v = ((miuix.recyclerview.widget.RecyclerView)localObject2);
    Object localObject3 = new LinearLayoutManager(paramContext);
    ((LinearLayoutManager)localObject3).setInitialPrefetchItemCount(8);
    ((androidx.recyclerview.widget.RecyclerView)localObject2).setLayoutManager((RecyclerView.o)localObject3);
    localObject3 = new b(paramContext);
    this.y = ((b)localObject3);
    ((androidx.recyclerview.widget.RecyclerView)localObject2).setAdapter((RecyclerView.g)localObject3);
    localObject2 = ((View)localObject1).findViewById(2131362219);
    r.e(localObject2, "viewContainer.findViewById(R.id.content_mask)");
    this.z = ((View)localObject2);
    localObject3 = ((View)localObject1).findViewById(2131362640);
    r.e(localObject3, "viewContainer.findViewById(R.id.item_mask_shadow)");
    this.D = ((View)localObject3);
    localObject3 = ((View)localObject1).findViewById(2131362639);
    r.e(localObject3, "viewContainer.findViewById(R.id.item_mask)");
    this.E = new c((View)localObject3);
    ((View)localObject2).setVisibility(8);
    localObject2 = ((View)localObject1).findViewById(2131363347);
    r.e(localObject2, "viewContainer.findViewBy…(R.id.text_no_event_hint)");
    this.w = ((TextView)localObject2);
    localObject1 = ((View)localObject1).findViewById(2131362056);
    r.e(localObject1, "viewContainer.findViewById(R.id.btn_add_event)");
    localObject1 = (Button)localObject1;
    this.x = ((Button)localObject1);
    ((View)localObject1).setOnClickListener(new b(paramContext, this));
    this.F = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    U(this, null, 1, null);
  }
  
  private static final void D(Context paramContext, ProductivityListLayout paramProductivityListLayout, View paramView)
  {
    r.f(paramContext, "$context");
    r.f(paramProductivityListLayout, "this$0");
    Utils.j(paramContext, paramProductivityListLayout.getPreferTime());
  }
  
  private final boolean P()
  {
    RecyclerView.o localo = this.v.getLayoutManager();
    r.d(localo, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
    if (((LinearLayoutManager)localo).findFirstVisibleItemPosition() > 0) {
      return true;
    }
    int i = this.v.getPaddingTop();
    int j = this.v.getChildCount();
    for (int k = 0; k < j; k++) {
      if (this.v.getChildAt(k).getTop() < i) {
        return true;
      }
    }
    return false;
  }
  
  private static final boolean Q(ProductivityListLayout paramProductivityListLayout, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    r.f(paramProductivityListLayout, "this$0");
    r.f(paramView, "<anonymous parameter 0>");
    boolean bool1 = paramProductivityListLayout.G;
    boolean bool2 = false;
    if (bool1) {
      return false;
    }
    if (paramInt2 > paramInt4)
    {
      paramView = paramProductivityListLayout.v.getLayoutManager();
      r.d(paramView, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
      int i = ((LinearLayoutManager)paramView).findFirstVisibleItemPosition();
      if (!x0.y0(paramProductivityListLayout.v))
      {
        paramView = paramProductivityListLayout.v.getAdapter();
        int j;
        if (paramView != null) {
          j = paramView.getItemCount();
        } else {
          j = -1;
        }
        if (i == j)
        {
          paramView = paramProductivityListLayout.v.getParent();
          r.d(paramView, "null cannot be cast to non-null type android.view.View");
          if (((View)paramView).getTranslationY() < paramProductivityListLayout.getMVerticalMotionUtil().h() - paramProductivityListLayout.getMVerticalMotionUtil().d()) {}
        }
        else
        {
          if (paramProductivityListLayout.f(paramProductivityListLayout.v, paramInt1, paramInt2, paramInt3, paramInt4)) {
            break label219;
          }
        }
      }
    }
    else
    {
      if (paramProductivityListLayout.getMContainer().getY() + paramProductivityListLayout.getMVerticalMotionUtil().h() <= paramProductivityListLayout.getMVerticalMotionUtil().g()) {
        break label199;
      }
    }
    label199:
    while (!paramProductivityListLayout.f(paramProductivityListLayout.v, paramInt1, paramInt2, paramInt3, paramInt4))
    {
      bool2 = true;
      break;
    }
    label219:
    return bool2;
  }
  
  private final void R(g.a0 parama0)
  {
    U(this, null, 1, null);
  }
  
  private static final void V(ProductivityListLayout paramProductivityListLayout)
  {
    r.f(paramProductivityListLayout, "this$0");
    va.b localb = new va.b(paramProductivityListLayout.getContext());
    localb.h(16);
    Context localContext = paramProductivityListLayout.getContext();
    r.e(localContext, "context");
    int i = (int)x0.O(localContext, 38.0F);
    localb.o(2131887331);
    localb.q(paramProductivityListLayout.v, 0, i, false);
    b2.a.l(paramProductivityListLayout.getContext(), "key_productivity_guide_has_shown", true);
  }
  
  private final void W(Event paramEvent, int paramInt)
  {
    this.z.setVisibility(0);
    this.D.setTranslationY(paramInt);
    this.E.i(paramEvent);
  }
  
  private final Calendar getDesiredDay()
  {
    Calendar localCalendar = Utils.V();
    r.e(localCalendar, "getToDate()");
    return localCalendar;
  }
  
  private final Calendar getPreferTime()
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(1, Utils.V().get(1));
    localCalendar.set(6, Utils.V().get(6));
    return localCalendar;
  }
  
  public final void S()
  {
    View localView = this.r;
    localView.setTranslationY(localView.getHeight());
  }
  
  public final void T(final w7.a<kotlin.u> parama)
  {
    h.d(l0.a(w0.c()), null, null, new SuspendLambda(parama, null)
    {
      int label;
      
      public final kotlin.coroutines.c<kotlin.u> create(Object paramAnonymousObject, kotlin.coroutines.c<?> paramAnonymousc)
      {
        return new 1(this.this$0, parama, paramAnonymousc);
      }
      
      public final Object invoke(k0 paramAnonymousk0, kotlin.coroutines.c<? super kotlin.u> paramAnonymousc)
      {
        return ((1)create(paramAnonymousk0, paramAnonymousc)).invokeSuspend(kotlin.u.a);
      }
      
      public final Object invokeSuspend(Object paramAnonymousObject)
      {
        Object localObject1 = kotlin.coroutines.intrinsics.a.d();
        int i = this.label;
        if (i != 0)
        {
          if (i == 1) {
            j.b(paramAnonymousObject);
          } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
          }
        }
        else
        {
          j.b(paramAnonymousObject);
          paramAnonymousObject = h.b(l0.a(w0.b()), null, null, new SuspendLambda(this.this$0, null)
          {
            int label;
            
            public final kotlin.coroutines.c<kotlin.u> create(Object paramAnonymous2Object, kotlin.coroutines.c<?> paramAnonymous2c)
            {
              return new 1(this.this$0, paramAnonymous2c);
            }
            
            public final Object invoke(k0 paramAnonymous2k0, kotlin.coroutines.c<? super List<? extends Event>> paramAnonymous2c)
            {
              return ((1)create(paramAnonymous2k0, paramAnonymous2c)).invokeSuspend(kotlin.u.a);
            }
            
            public final Object invokeSuspend(Object paramAnonymous2Object)
            {
              kotlin.coroutines.intrinsics.a.d();
              if (this.label == 0)
              {
                j.b(paramAnonymous2Object);
                paramAnonymous2Object = s1.e.a;
                Context localContext = this.this$0.getContext();
                r.e(localContext, "context");
                List localList = c0.b(paramAnonymous2Object, localContext, com.miui.calendar.util.e0.i(ProductivityListLayout.H(this.this$0)), 1, 0, null, 24, null);
                localContext = this.this$0.getContext();
                r.e(localContext, "context");
                c0.c(paramAnonymous2Object, localContext, localList);
                s1.e.j(this.this$0.getContext(), localList);
                return localList;
              }
              throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
          }, 3, null);
          this.label = 1;
          Object localObject2 = paramAnonymousObject.E(this);
          paramAnonymousObject = localObject2;
          if (localObject2 == localObject1) {
            return localObject1;
          }
        }
        paramAnonymousObject = (List)paramAnonymousObject;
        if ((paramAnonymousObject.isEmpty() ^ true))
        {
          ProductivityListLayout.E(this.this$0).h(paramAnonymousObject);
          ProductivityListLayout.E(this.this$0).notifyDataSetChanged();
          ProductivityListLayout.L(this.this$0).setVisibility(this.this$0.getVisibility());
          ProductivityListLayout.G(this.this$0).setVisibility(8);
          ProductivityListLayout.F(this.this$0).setVisibility(8);
          ProductivityListLayout.K(this.this$0).setVisibility(8);
          paramAnonymousObject = parama;
          if (paramAnonymousObject != null) {
            paramAnonymousObject.invoke();
          }
        }
        else
        {
          ProductivityListLayout.L(this.this$0).setVisibility(8);
          ProductivityListLayout.G(this.this$0).setVisibility(8);
          ProductivityListLayout.F(this.this$0).setVisibility(this.this$0.getVisibility());
          ProductivityListLayout.K(this.this$0).setVisibility(this.this$0.getVisibility());
        }
        return kotlin.u.a;
      }
    }, 3, null);
  }
  
  public void a(g.j paramj)
  {
    r.f(paramj, "event");
    if ((paramj instanceof g.u)) {
      U(this, null, 1, null);
    } else if ((paramj instanceof g.a0)) {
      R((g.a0)paramj);
    }
  }
  
  public boolean f(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    r.f(paramView, "view");
    boolean bool;
    if (paramInt2 > paramInt4) {
      bool = P();
    } else {
      bool = true;
    }
    return bool;
  }
  
  public float getDefPosition()
  {
    return getMVerticalMotionUtil().g();
  }
  
  public int getViewType()
  {
    return 6;
  }
  
  public com.miui.calendar.view.u i()
  {
    return new a(this);
  }
  
  public void s()
  {
    super.s();
    if (isShown()) {
      return;
    }
    U(this, null, 1, null);
  }
  
  public void v(float paramFloat) {}
  
  public void w()
  {
    super.w();
    com.miui.calendar.util.g.c(new g.k(0, false, true));
  }
  
  public void z()
  {
    super.z();
    this.r.setTranslationY(0.0F);
    if (!b2.a.d(getContext(), "key_productivity_guide_has_shown", false)) {
      postDelayed(new c(this), 300L);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/productivity/ProductivityListLayout$a;", "", "", "KEY_CLIP_DATA", "Ljava/lang/String;", "KEY_EVENT", "TAG", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/productivity/ProductivityListLayout$b;", "Landroidx/recyclerview/widget/RecyclerView$g;", "Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;", "Lcom/android/calendar/homepage/productivity/ProductivityListLayout;", "", "getItemCount", "Landroid/view/ViewGroup;", "parent", "viewType", "g", "holderProductivity", "position", "Lkotlin/u;", "f", "Landroid/view/LayoutInflater;", "kotlin.jvm.PlatformType", "a", "Landroid/view/LayoutInflater;", "layoutInflater", "", "Lcom/android/calendar/common/event/schema/Event;", "b", "Ljava/util/List;", "getEvents", "()Ljava/util/List;", "h", "(Ljava/util/List;)V", "events", "Landroid/content/Context;", "context", "<init>", "(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Landroid/content/Context;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public final class b
    extends RecyclerView.g<ProductivityListLayout.c>
  {
    private final LayoutInflater a;
    private List<? extends Event> b;
    
    public b()
    {
      this.a = LayoutInflater.from(localObject);
    }
    
    public void f(ProductivityListLayout.c paramc, int paramInt)
    {
      r.f(paramc, "holderProductivity");
      List localList = this.b;
      r.c(localList);
      paramc.i((Event)localList.get(paramInt));
    }
    
    public ProductivityListLayout.c g(ViewGroup paramViewGroup, int paramInt)
    {
      r.f(paramViewGroup, "parent");
      View localView = this.a.inflate(2131558915, paramViewGroup, false);
      paramViewGroup = ProductivityListLayout.this;
      r.e(localView, "view");
      return new ProductivityListLayout.c(paramViewGroup, localView);
    }
    
    public int getItemCount()
    {
      List localList = this.b;
      int i;
      if (localList != null) {
        i = localList.size();
      } else {
        i = 0;
      }
      return i;
    }
    
    public final void h(List<? extends Event> paramList)
    {
      this.b = paramList;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;", "Landroidx/recyclerview/widget/RecyclerView$c0;", "Lcom/android/calendar/common/event/schema/Event;", "event", "Lkotlin/u;", "t", "v", "", "text", "y", "d", "f", "e", "g", "s", "n", "p", "r", "h", "q", "o", "m", "x", "", "startTimeMillis", "endTimeMillis", "", "isAllDay", "w", "timezone", "Ljava/util/Calendar;", "desiredDay", "Lkotlin/Pair;", "u", "i", "Landroid/view/View;", "a", "Landroid/view/View;", "getView", "()Landroid/view/View;", "view", "Landroid/widget/ImageView;", "b", "Landroid/widget/ImageView;", "iconImageView", "Landroid/widget/TextView;", "c", "Landroid/widget/TextView;", "primaryTextView", "secondaryTextView", "getDatetimeGroup", "datetimeGroup", "getStartDatetime", "()Landroid/widget/TextView;", "startDatetime", "endDatetime", "getAllDayLabel", "allDayLabel", "Ljava/lang/Runnable;", "Ljava/lang/Runnable;", "longPressedRunnable", "", "j", "F", "itemTouchStartX", "k", "itemTouchStartY", "<init>", "(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public final class c
    extends RecyclerView.c0
  {
    private final View a;
    private final ImageView b;
    private final TextView c;
    private final TextView d;
    private final View e;
    private final TextView f;
    private final TextView g;
    private final TextView h;
    private Runnable i;
    private float j;
    private float k;
    
    public c()
    {
      super();
      this.a = localObject;
      this$1 = localObject.findViewById(2131362563);
      r.e(ProductivityListLayout.this, "view.findViewById(R.id.icon)");
      this.b = ((ImageView)ProductivityListLayout.this);
      this$1 = localObject.findViewById(2131362984);
      r.e(ProductivityListLayout.this, "view.findViewById(R.id.primary)");
      this.c = ((TextView)ProductivityListLayout.this);
      this$1 = localObject.findViewById(2131363121);
      r.e(ProductivityListLayout.this, "view.findViewById(R.id.secondary)");
      this.d = ((TextView)ProductivityListLayout.this);
      this$1 = localObject.findViewById(2131361921);
      r.e(ProductivityListLayout.this, "view.findViewById(R.id.agenda_item_datetime_group)");
      this.e = ProductivityListLayout.this;
      this$1 = localObject.findViewById(2131363240);
      r.e(ProductivityListLayout.this, "view.findViewById(R.id.start_datetime)");
      this.f = ((TextView)ProductivityListLayout.this);
      this$1 = localObject.findViewById(2131362410);
      r.e(ProductivityListLayout.this, "view.findViewById(R.id.end_datetime)");
      this.g = ((TextView)ProductivityListLayout.this);
      this$1 = localObject.findViewById(2131361943);
      r.e(ProductivityListLayout.this, "view.findViewById(R.id.all_day_label)");
      this.h = ((TextView)ProductivityListLayout.this);
    }
    
    private final void d(Event paramEvent)
    {
      this.c.setText(com.android.calendar.event.e0.d(ProductivityListLayout.this.getContext(), paramEvent.getTitle()));
      String str = paramEvent.getLocation();
      int m;
      if ((str != null) && (str.length() != 0)) {
        m = 0;
      } else {
        m = 1;
      }
      if (m != 0) {
        v();
      } else {
        y(paramEvent.getLocation());
      }
      if ((paramEvent.getEx().isCanceledMeeting()) || (paramEvent.getEx().isRejectAgenda()))
      {
        paramEvent = this.c;
        paramEvent.setPaintFlags(paramEvent.getPaintFlags() | 0x10);
      }
    }
    
    private final void e(Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.AnniversaryEvent");
      AnniversaryEvent localAnniversaryEvent = (AnniversaryEvent)paramEvent;
      this.b.setImageResource(2131231244);
      paramEvent = new StringBuilder();
      paramEvent.append(ProductivityListLayout.this.getContext().getString(2131886194));
      paramEvent.append(" | ");
      paramEvent.append(localAnniversaryEvent.getDateString(ProductivityListLayout.this.getContext()));
      y(paramEvent.toString());
      int m = localAnniversaryEvent.calAnniversary(ProductivityListLayout.H(ProductivityListLayout.this));
      if (m > 0)
      {
        paramEvent = ProductivityListLayout.this.getContext().getResources().getQuantityString(2131755029, m, new Object[] { Integer.valueOf(m) });
      }
      else
      {
        m = localAnniversaryEvent.calDays(ProductivityListLayout.H(ProductivityListLayout.this));
        paramEvent = ProductivityListLayout.this.getContext().getResources().getQuantityString(2131755026, m, new Object[] { Integer.valueOf(m) });
      }
      r.e(paramEvent, "if (years > 0) {\n       …days, days)\n            }");
      TextView localTextView = this.c;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(localAnniversaryEvent.getContent());
      localStringBuilder.append(" · ");
      localStringBuilder.append(paramEvent);
      localTextView.setText(localStringBuilder.toString());
    }
    
    private final void f(Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.BirthdayEvent");
      paramEvent = (BirthdayEvent)paramEvent;
      this.b.setImageResource(2131231248);
      this.c.setText(paramEvent.getTitle());
      y(paramEvent.getDateString(ProductivityListLayout.this.getContext()));
    }
    
    private final void g(Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.CountdownEvent");
      CountdownEvent localCountdownEvent = (CountdownEvent)paramEvent;
      this.b.setImageResource(2131231272);
      paramEvent = new StringBuilder();
      paramEvent.append(ProductivityListLayout.this.getContext().getResources().getString(2131886391));
      paramEvent.append(" | ");
      paramEvent.append(localCountdownEvent.getDateString(ProductivityListLayout.this.getContext(), ProductivityListLayout.H(ProductivityListLayout.this)));
      Object localObject = paramEvent.toString();
      paramEvent = (Event)localObject;
      if (localCountdownEvent.getRepeatType() > 0)
      {
        paramEvent = new StringBuilder();
        paramEvent.append((String)localObject);
        paramEvent.append(" | ");
        paramEvent.append(ProductivityListLayout.this.getContext().getResources().getStringArray(2130903114)[localCountdownEvent.getRepeatType()]);
        paramEvent = paramEvent.toString();
      }
      y(paramEvent);
      int m = localCountdownEvent.calDays(ProductivityListLayout.H(ProductivityListLayout.this));
      localObject = this.c;
      if (m == 0)
      {
        paramEvent = new StringBuilder();
        paramEvent.append(localCountdownEvent.getContent());
        paramEvent.append(" · ");
        paramEvent.append(ProductivityListLayout.this.getContext().getString(2131886392));
        paramEvent = paramEvent.toString();
      }
      else
      {
        paramEvent = new StringBuilder();
        paramEvent.append(localCountdownEvent.getContent());
        paramEvent.append(" · ");
        paramEvent.append(ProductivityListLayout.this.getContext().getResources().getQuantityString(2131755059, m, new Object[] { Integer.valueOf(m) }));
        paramEvent = paramEvent.toString();
      }
      ((TextView)localObject).setText(paramEvent);
    }
    
    private final void h(Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.CreditEvent");
      CreditEvent localCreditEvent = (CreditEvent)paramEvent;
      Object localObject = this.c;
      paramEvent = localCreditEvent.getAccount();
      if ((paramEvent != null) && (paramEvent.length() != 0)) {
        m = 0;
      } else {
        m = 1;
      }
      if (m != 0) {
        paramEvent = ProductivityListLayout.this.getContext().getString(2131886787);
      } else {
        paramEvent = ProductivityListLayout.this.getContext().getString(2131886786, new Object[] { localCreditEvent.getAccount() });
      }
      ((TextView)localObject).setText(paramEvent);
      paramEvent = Calendar.getInstance();
      localObject = Calendar.getInstance();
      ((Calendar)localObject).setTimeInMillis(localCreditEvent.getRepaymentTime());
      int n = com.miui.calendar.util.e0.i(paramEvent);
      int i1 = com.miui.calendar.util.e0.i(ProductivityListLayout.H(ProductivityListLayout.this));
      int m = com.miui.calendar.util.e0.i((Calendar)localObject);
      paramEvent = s0.h(ProductivityListLayout.this.getContext(), localCreditEvent.getRepaymentTime(), 2131886416);
      if (m < n) {
        paramEvent = ProductivityListLayout.this.getContext().getString(2131886790, new Object[] { paramEvent });
      } else if (n == i1) {
        paramEvent = ProductivityListLayout.this.getContext().getString(2131886788, new Object[] { paramEvent, String.valueOf(m - n + 1) });
      } else {
        paramEvent = ProductivityListLayout.this.getContext().getString(2131886789, new Object[] { paramEvent });
      }
      y(paramEvent);
    }
    
    private static final boolean j(c paramc, ProductivityListLayout paramProductivityListLayout, Event paramEvent, View paramView, MotionEvent paramMotionEvent)
    {
      r.f(paramc, "this$0");
      r.f(paramProductivityListLayout, "this$1");
      r.f(paramEvent, "$event");
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      int m = paramMotionEvent.getAction();
      if (m != 0)
      {
        if (m != 1)
        {
          if (m != 2)
          {
            if (m == 3)
            {
              if (ProductivityListLayout.I(paramProductivityListLayout)) {
                paramc.t(paramEvent);
              }
              ProductivityListLayout.N(paramProductivityListLayout, false);
              paramProductivityListLayout.removeCallbacks(paramc.i);
              ProductivityListLayout.G(paramProductivityListLayout).setVisibility(8);
            }
          }
          else if ((ProductivityListLayout.I(paramProductivityListLayout)) && (Math.abs(paramc.k - f2) >= ProductivityListLayout.M(paramProductivityListLayout)))
          {
            paramc.t(paramEvent);
            ProductivityListLayout.N(paramProductivityListLayout, false);
          }
        }
        else
        {
          paramProductivityListLayout.removeCallbacks(paramc.i);
          if (!ProductivityListLayout.I(paramProductivityListLayout)) {
            paramView.performClick();
          }
          ProductivityListLayout.N(paramProductivityListLayout, false);
          ProductivityListLayout.G(paramProductivityListLayout).setVisibility(8);
        }
      }
      else
      {
        paramEvent = new f(paramProductivityListLayout, paramEvent, paramc);
        paramc.i = paramEvent;
        paramProductivityListLayout.postDelayed(paramEvent, 500L);
        paramc.j = f1;
        paramc.k = f2;
      }
      return true;
    }
    
    private static final void k(ProductivityListLayout paramProductivityListLayout, Event paramEvent, c paramc)
    {
      r.f(paramProductivityListLayout, "this$0");
      r.f(paramEvent, "$event");
      r.f(paramc, "this$1");
      ProductivityListLayout.N(paramProductivityListLayout, true);
      if ((paramEvent.getEx().canModifyEvent()) && (!paramEvent.getEx().isSolarRepeating()))
      {
        ProductivityListLayout.O(paramProductivityListLayout, paramEvent, paramc.a.getTop());
        ProductivityListLayout.G(paramProductivityListLayout).setVisibility(0);
        paramc.a.performHapticFeedback(0, 2);
      }
      else
      {
        paramEvent = paramProductivityListLayout.getContext();
        r.e(paramEvent, "context");
        paramProductivityListLayout = paramProductivityListLayout.getResources().getString(2131887330);
        r.e(paramProductivityListLayout, "resources.getString(R.st…tivity_cannot_move_event)");
        t0.e(paramEvent, paramProductivityListLayout, 0, 4, null);
      }
    }
    
    private static final void l(Event paramEvent, ProductivityListLayout paramProductivityListLayout, View paramView)
    {
      r.f(paramEvent, "$event");
      r.f(paramProductivityListLayout, "this$0");
      if (paramEvent.getEventType() == 8)
      {
        paramEvent = p1.b.b(paramProductivityListLayout.getContext(), (AnniversaryEvent)paramEvent, ProductivityListLayout.H(paramProductivityListLayout));
        paramEvent.setFlags(268435456);
        paramProductivityListLayout.getContext().startActivity(paramEvent);
        return;
      }
      if (paramEvent.getEventType() == 9)
      {
        paramEvent = w1.b.b(paramProductivityListLayout.getContext(), (CountdownEvent)paramEvent, ProductivityListLayout.H(paramProductivityListLayout));
        paramEvent.setFlags(268435456);
        paramProductivityListLayout.getContext().startActivity(paramEvent);
        return;
      }
      t1.a.n(paramProductivityListLayout.getContext(), paramEvent, 268435456);
    }
    
    private final void m(Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.ElectricityBillEvent");
      ElectricityBillEvent localElectricityBillEvent = (ElectricityBillEvent)paramEvent;
      TextView localTextView = this.c;
      paramEvent = localElectricityBillEvent.getAccount();
      int m;
      if ((paramEvent != null) && (paramEvent.length() != 0)) {
        m = 0;
      } else {
        m = 1;
      }
      if (m != 0) {
        paramEvent = ProductivityListLayout.this.getContext().getString(2131886795);
      } else {
        paramEvent = ProductivityListLayout.this.getContext().getString(2131886794, new Object[] { localElectricityBillEvent.getAccount() });
      }
      localTextView.setText(paramEvent);
      paramEvent = s0.h(ProductivityListLayout.this.getContext(), localElectricityBillEvent.getStartTimeMillis(), 2131886416);
      y(ProductivityListLayout.this.getContext().getString(2131886798, new Object[] { paramEvent }));
    }
    
    private final void n(Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.FlightEvent");
      paramEvent = (FlightEvent)paramEvent;
      this.c.setText(ProductivityListLayout.this.getContext().getString(2131887767, new Object[] { paramEvent.getFlightNum(), paramEvent.getDepCity(), paramEvent.getArrCity() }));
      v();
    }
    
    private final void o(Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.GasBillEvent");
      GasBillEvent localGasBillEvent = (GasBillEvent)paramEvent;
      TextView localTextView = this.c;
      paramEvent = localGasBillEvent.getAccount();
      int m;
      if ((paramEvent != null) && (paramEvent.length() != 0)) {
        m = 0;
      } else {
        m = 1;
      }
      if (m != 0) {
        paramEvent = ProductivityListLayout.this.getContext().getString(2131886797);
      } else {
        paramEvent = ProductivityListLayout.this.getContext().getString(2131886796, new Object[] { localGasBillEvent.getAccount() });
      }
      localTextView.setText(paramEvent);
      paramEvent = s0.h(ProductivityListLayout.this.getContext(), localGasBillEvent.getStartTimeMillis(), 2131886416);
      y(ProductivityListLayout.this.getContext().getString(2131886798, new Object[] { paramEvent }));
    }
    
    private final void p(Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.HotelEvent");
      HotelEvent localHotelEvent = (HotelEvent)paramEvent;
      this.c.setText(localHotelEvent.getHotelName());
      paramEvent = s0.h(ProductivityListLayout.this.getContext(), localHotelEvent.getCheckInTimeMillis(), 2131886416);
      y(ProductivityListLayout.this.getContext().getString(2131887768, new Object[] { paramEvent }));
      w(localHotelEvent.getStartTimeMillis(), localHotelEvent.getEndTimeMillis(), true);
    }
    
    private final void q(Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.LoanEvent");
      LoanEvent localLoanEvent = (LoanEvent)paramEvent;
      Object localObject = this.c;
      paramEvent = localLoanEvent.getBankName();
      if ((paramEvent != null) && (paramEvent.length() != 0)) {
        m = 0;
      } else {
        m = 1;
      }
      if (m != 0) {
        paramEvent = ProductivityListLayout.this.getContext().getString(2131886801);
      } else {
        paramEvent = ProductivityListLayout.this.getContext().getString(2131886800, new Object[] { localLoanEvent.getBankName() });
      }
      ((TextView)localObject).setText(paramEvent);
      localObject = Calendar.getInstance();
      paramEvent = Calendar.getInstance();
      paramEvent.setTimeInMillis(localLoanEvent.getRepaymentTimeMillis());
      int m = com.miui.calendar.util.e0.i((Calendar)localObject);
      int n = com.miui.calendar.util.e0.i(ProductivityListLayout.H(ProductivityListLayout.this));
      int i1 = com.miui.calendar.util.e0.i(paramEvent);
      paramEvent = s0.h(ProductivityListLayout.this.getContext(), localLoanEvent.getRepaymentTimeMillis(), 2131886416);
      if (i1 < m) {
        paramEvent = ProductivityListLayout.this.getContext().getString(2131886790, new Object[] { paramEvent });
      } else if (m == n) {
        paramEvent = ProductivityListLayout.this.getContext().getString(2131886788, new Object[] { paramEvent, String.valueOf(i1 - m + 1) });
      } else {
        paramEvent = ProductivityListLayout.this.getContext().getString(2131886789, new Object[] { paramEvent });
      }
      y(paramEvent);
    }
    
    private final void r(Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.MovieEvent");
      paramEvent = (MovieEvent)paramEvent;
      this.c.setText(paramEvent.getMovieName());
      y(paramEvent.getCinema());
    }
    
    private final void s(Event paramEvent)
    {
      r.d(paramEvent, "null cannot be cast to non-null type com.android.calendar.common.event.schema.TrainEvent");
      TrainEvent localTrainEvent = (TrainEvent)paramEvent;
      paramEvent = localTrainEvent.getArrStation();
      int m;
      if ((paramEvent != null) && (paramEvent.length() != 0)) {
        m = 0;
      } else {
        m = 1;
      }
      if (m != 0)
      {
        this.c.setText(ProductivityListLayout.this.getContext().getString(2131887774, new Object[] { localTrainEvent.getTrainNum(), localTrainEvent.getDepStation() }));
        y(ProductivityListLayout.this.getContext().getString(2131887730));
      }
      else
      {
        this.c.setText(ProductivityListLayout.this.getContext().getString(2131887773, new Object[] { localTrainEvent.getTrainNum(), localTrainEvent.getDepStation(), localTrainEvent.getArrStation() }));
        v();
      }
    }
    
    private final void t(Event paramEvent)
    {
      if ((paramEvent.getEx().canModifyEvent()) && (!paramEvent.getEx().isSolarRepeating()))
      {
        ProductivityListLayout.this.S();
        b1.k(ProductivityListLayout.J(ProductivityListLayout.this), ProductivityListLayout.J(ProductivityListLayout.this).g(), ProductivityListLayout.J(ProductivityListLayout.this).d(), null, 4, null);
        Object localObject = new Intent();
        ((Intent)localObject).putExtra("event", paramEvent);
        localObject = ClipData.newIntent("eventData", (Intent)localObject);
        View localView = this.a;
        Context localContext = ProductivityListLayout.this.getContext();
        r.e(localContext, "context");
        localView.startDragAndDrop((ClipData)localObject, new g(localContext, paramEvent), this, 512);
      }
    }
    
    private final Pair<String, String> u(long paramLong1, long paramLong2, String paramString, Calendar paramCalendar)
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
        paramString = localSimpleDateFormat.format(new Date(paramLong1));
        paramCalendar = str2;
      }
      return new Pair(paramString, paramCalendar);
    }
    
    private final void v()
    {
      this.d.setVisibility(8);
    }
    
    private final void w(long paramLong1, long paramLong2, boolean paramBoolean)
    {
      if (paramBoolean)
      {
        this.e.setVisibility(8);
        this.h.setVisibility(0);
      }
      else
      {
        this.e.setVisibility(0);
        this.h.setVisibility(8);
        String str = ProductivityListLayout.H(ProductivityListLayout.this).getTimeZone().getID();
        r.e(str, "desiredDay.timeZone.id");
        Object localObject = u(paramLong1, paramLong2, str, ProductivityListLayout.H(ProductivityListLayout.this));
        str = (String)((Pair)localObject).component1();
        localObject = (String)((Pair)localObject).component2();
        this.f.setText(str);
        this.g.setText((CharSequence)localObject);
      }
    }
    
    private final void x(Event paramEvent)
    {
      int m = Utils.x(ProductivityListLayout.this.getContext().getResources(), paramEvent.getEx().getAccountName(), paramEvent.getEx().getAccountType(), paramEvent.getEx().getCalendarDisplayName(), paramEvent.getColor());
      paramEvent = ProductivityListLayout.this.getContext().getResources().getDrawable(2131231262, ProductivityListLayout.this.getContext().getTheme());
      paramEvent.mutate();
      paramEvent.setTint(m);
      this.b.setImageDrawable(paramEvent);
    }
    
    private final void y(String paramString)
    {
      this.d.setVisibility(0);
      this.d.setText(paramString);
    }
    
    public final void i(Event paramEvent)
    {
      r.f(paramEvent, "event");
      x(paramEvent);
      w(paramEvent.getStartTimeMillis(), paramEvent.getEndTimeMillis(), paramEvent.isAllDay());
      TextView localTextView = this.c;
      localTextView.setPaintFlags(localTextView.getPaintFlags() & 0xFFFFFFEF);
      int m = paramEvent.getEventType();
      if (m != 3)
      {
        if (m != 7)
        {
          if (m != 8)
          {
            if (m != 9) {
              switch (m)
              {
              default: 
                d(paramEvent);
                break;
              case 17: 
                r(paramEvent);
                break;
              case 16: 
                q(paramEvent);
                break;
              case 15: 
                p(paramEvent);
                break;
              case 14: 
                o(paramEvent);
                break;
              case 13: 
                m(paramEvent);
                break;
              case 12: 
                s(paramEvent);
                break;
              case 11: 
                n(paramEvent);
                break;
              }
            } else {
              g(paramEvent);
            }
          }
          else {
            e(paramEvent);
          }
        }
        else {
          f(paramEvent);
        }
      }
      else {
        h(paramEvent);
      }
      miuix.animation.a.y(new View[] { this.a }).d().P(this.a, new d9.a[0]);
      this.a.setOnTouchListener(new d(this, ProductivityListLayout.this, paramEvent));
      this.a.setOnClickListener(new e(paramEvent, ProductivityListLayout.this));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.productivity.ProductivityListLayout
 * JD-Core Version:    0.7.0.1
 */