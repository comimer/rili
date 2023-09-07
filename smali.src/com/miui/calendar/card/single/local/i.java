package com.miui.calendar.card.single.local;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.android.calendar.common.ModuleSchema;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.b.b;
import com.miui.calendar.holiday.model.HolidayBriefSchema;
import com.miui.calendar.holiday.model.HolidayBriefSchema.HolidayBriefExtraSchema;
import com.miui.calendar.holiday.model.HolidaySchema;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.x;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import com.miui.calendar.view.DynamicLinearLayout;
import com.miui.calendar.view.OnlineImageView;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Calendar;
import java.util.HashMap;
import java.util.HashMap<Ljava.lang.String;Ljava.lang.Object;>;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import miuix.animation.ITouchStyle;
import miuix.animation.ITouchStyle.TouchType;
import miuix.animation.d;
import s3.a.a;
import z3.g.d;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/local/i;", "Lcom/miui/calendar/card/single/local/LocalSingleCard;", "Lcom/miui/calendar/view/DynamicLinearLayout;", "container", "", "Lcom/android/calendar/common/ModuleSchema;", "schemas", "", "position", "Lkotlin/u;", "H", "Ljava/util/HashMap;", "", "", "params", "holidayId", "N", "Lcom/miui/calendar/holiday/model/HolidaySchema;", "holiday", "Lcom/miui/calendar/holiday/model/HolidayBriefSchema;", "holidayBrief", "O", "b", "a", "Lcom/miui/calendar/card/b$b;", "onDataLoadCompletedListener", "e", "", "j", "i", "Ls3/a$a;", "Ls3/a;", "holder", "g", "Lcom/miui/calendar/card/single/local/i$b;", "buttonsViewHolder", "J", "Landroid/view/View;", "view", "h", "q", "Ljava/util/List;", "mCachedHolidays", "r", "mHolidays", "", "s", "Ljava/util/Map;", "mHolidayBriefs", "t", "Z", "mDataQueried", "u", "I", "mLastPaddingBottom", "v", "mPaddingTop", "w", "mPaddingBottom", "x", "mPaddingStartEnd", "Landroid/content/Context;", "context", "Lcom/miui/calendar/card/Card$ContainerType;", "containerType", "Ljava/util/Calendar;", "desiredDay", "Landroid/widget/BaseAdapter;", "adapter", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V", "y", "c", "d", "f", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class i
  extends LocalSingleCard
{
  public static final c y = new c(null);
  private List<? extends HolidaySchema> q;
  private List<? extends HolidaySchema> r;
  private Map<String, ? extends HolidayBriefSchema> s;
  private boolean t;
  private final int u;
  private final int v;
  private final int w;
  private final int x;
  
  public i(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, 8, paramContainerType, paramCalendar, paramBaseAdapter);
    paramContext = paramContext.getResources();
    this.u = paramContext.getDimensionPixelOffset(2131165655);
    this.v = paramContext.getDimensionPixelOffset(2131165656);
    this.w = paramContext.getDimensionPixelOffset(2131165654);
    this.x = paramContext.getDimensionPixelOffset(2131166250);
  }
  
  private final void H(DynamicLinearLayout paramDynamicLinearLayout, List<? extends ModuleSchema> paramList, int paramInt)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      paramDynamicLinearLayout.setVisibility(0);
      paramDynamicLinearLayout.setAdapter(new a(paramList));
      paramDynamicLinearLayout.setOnItemClickListener(new h(this, paramInt, paramList));
    }
    else
    {
      paramDynamicLinearLayout.setVisibility(8);
    }
  }
  
  private static final void I(i parami, int paramInt1, List paramList, int paramInt2)
  {
    r.f(parami, "this$0");
    parami.k("card_button_clicked", paramInt1, paramInt2, ((ModuleSchema)paramList.get(paramInt2)).title);
    ((ModuleSchema)paramList.get(paramInt2)).sendIntentForDeepLink(parami.a);
  }
  
  private static final void K(i parami, int paramInt, ModuleSchema paramModuleSchema, View paramView)
  {
    r.f(parami, "this$0");
    parami.k("card_button_clicked", paramInt, 0, paramModuleSchema.title);
    paramModuleSchema.sendIntentForDeepLink(parami.a);
  }
  
  private static final boolean L(View paramView, MotionEvent paramMotionEvent)
  {
    r.f(paramView, "v");
    r.f(paramMotionEvent, "event");
    miuix.animation.a.y(new View[] { paramView }).d().O(1.0F, new ITouchStyle.TouchType[] { ITouchStyle.TouchType.DOWN }).O(1.0F, new ITouchStyle.TouchType[] { ITouchStyle.TouchType.UP }).e(paramMotionEvent);
    if (paramMotionEvent.getAction() == 1) {
      paramView.performClick();
    }
    return true;
  }
  
  private static final void M(i parami, int paramInt1, int paramInt2)
  {
    r.f(parami, "this$0");
    Object localObject1 = parami.r;
    if (localObject1 != null)
    {
      r.c(localObject1);
      if (paramInt2 < ((List)localObject1).size())
      {
        localObject1 = parami.r;
        r.c(localObject1);
        Object localObject2 = (HolidaySchema)((List)localObject1).get(paramInt2);
        localObject1 = parami.s;
        r.c(localObject1);
        Object localObject3 = (HolidayBriefSchema)((Map)localObject1).get(((HolidaySchema)localObject2).name);
        if (localObject3 != null) {
          localObject1 = ((HolidayBriefSchema)localObject3).extra;
        } else {
          localObject1 = null;
        }
        int i = parami.O((HolidaySchema)localObject2, (HolidayBriefSchema)localObject3);
        Object localObject4 = new HashMap();
        if (i != 0)
        {
          if (i != 1)
          {
            if (i == 2) {
              ((Map)localObject4).put("style", "节日卡片大图&文字描述");
            }
          }
          else {
            ((Map)localObject4).put("style", "节日卡片大图");
          }
        }
        else {
          ((Map)localObject4).put("style", "节日卡片列表");
        }
        if (localObject1 != null) {
          localObject4 = ((HolidayBriefSchema.HolidayBriefExtraSchema)localObject1).action;
        } else {
          localObject4 = null;
        }
        if (localObject4 != null)
        {
          parami.l("card_item_clicked", paramInt1, paramInt2, ((HolidaySchema)localObject2).name, parami.N(null, ((HolidaySchema)localObject2).holidayId));
          localObject4 = new HashMap();
          Object localObject5 = ((HolidayBriefSchema)localObject3).style;
          if (localObject5 != null) {
            ((Map)localObject4).put("style", x.c(localObject5));
          }
          localObject5 = Boolean.TRUE;
          ((Map)localObject4).put("holiday", String.valueOf(localObject5));
          ((Map)localObject4).put("showShare", String.valueOf(localObject5));
          ((Map)localObject4).put("title", ((HolidayBriefSchema)localObject3).name);
          localObject3 = new StringBuilder();
          ((StringBuilder)localObject3).append("");
          ((StringBuilder)localObject3).append(((HolidaySchema)localObject2).holidayId);
          ((Map)localObject4).put("holidayId", ((StringBuilder)localObject3).toString());
          localObject2 = new HashMap();
          ((Map)localObject2).put("share_image_url", ((HolidayBriefSchema.HolidayBriefExtraSchema)localObject1).shareImage);
          ((HolidayBriefSchema.HolidayBriefExtraSchema)localObject1).action.sendIntent(parami.a, (Map)localObject4, 0, (Map)localObject2);
        }
      }
    }
  }
  
  private final HashMap<String, Object> N(HashMap<String, Object> paramHashMap, int paramInt)
  {
    Object localObject1;
    if (paramHashMap != null)
    {
      localObject1 = paramHashMap;
      if (paramHashMap.size() != 0) {}
    }
    else
    {
      localObject1 = new HashMap();
    }
    int i = 0;
    paramHashMap = this.r;
    r.c(paramHashMap);
    int j = paramHashMap.size();
    for (Object localObject2 = ""; i < j; localObject2 = paramHashMap)
    {
      paramHashMap = this.r;
      r.c(paramHashMap);
      HolidaySchema localHolidaySchema = (HolidaySchema)paramHashMap.get(i);
      paramHashMap = (HashMap<String, Object>)localObject2;
      if (localHolidaySchema != null)
      {
        String str = ",";
        if (paramInt == -1)
        {
          paramHashMap = new StringBuilder();
          paramHashMap.append((String)localObject2);
          if (TextUtils.isEmpty((CharSequence)localObject2)) {
            str = "";
          }
          paramHashMap.append(str);
          paramHashMap.append('_');
          paramHashMap.append(localHolidaySchema.name);
          paramHashMap.append('_');
          paramHashMap.append(localHolidaySchema.holidayId);
          paramHashMap = paramHashMap.toString();
        }
        else
        {
          paramHashMap = (HashMap<String, Object>)localObject2;
          if (localHolidaySchema.holidayId == paramInt)
          {
            paramHashMap = new StringBuilder();
            paramHashMap.append((String)localObject2);
            if (TextUtils.isEmpty((CharSequence)localObject2)) {
              str = "";
            }
            paramHashMap.append(str);
            paramHashMap.append('_');
            paramHashMap.append(localHolidaySchema.name);
            paramHashMap.append('_');
            paramHashMap.append(localHolidaySchema.holidayId);
            paramHashMap = paramHashMap.toString();
          }
        }
      }
      i++;
    }
    ((Map)localObject1).put("name", localObject2);
    return localObject1;
  }
  
  private final int O(HolidaySchema paramHolidaySchema, HolidayBriefSchema paramHolidayBriefSchema)
  {
    Object localObject = this.a;
    r.e(localObject, "mContext");
    if ((!r.a("NA", DeviceUtils.p((Context)localObject))) && ((!this.t) || (paramHolidayBriefSchema != null)))
    {
      if (paramHolidayBriefSchema != null)
      {
        i = paramHolidayBriefSchema.categoryId;
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("getLayoutType(): load today data (holidayBrief), layoutType = ");
        ((StringBuilder)localObject).append(i);
        z.a("Cal:D:HolidaySingleCard", ((StringBuilder)localObject).toString());
        break label143;
      }
      if (paramHolidaySchema != null)
      {
        i = paramHolidaySchema.categoryId;
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("getLayoutType(): load sync data (holiday), layoutType = ");
        ((StringBuilder)localObject).append(i);
        z.a("Cal:D:HolidaySingleCard", ((StringBuilder)localObject).toString());
        break label143;
      }
    }
    else
    {
      z.a("Cal:D:HolidaySingleCard", "getLayoutType(): no network or load fail");
    }
    int i = 0;
    label143:
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("getLayoutType(): mDataQueried = ");
    localStringBuilder.append(this.t);
    localStringBuilder.append(", holiday.categoryId  = ");
    localObject = null;
    if (paramHolidaySchema != null) {
      paramHolidaySchema = Integer.valueOf(paramHolidaySchema.categoryId);
    } else {
      paramHolidaySchema = null;
    }
    localStringBuilder.append(paramHolidaySchema);
    localStringBuilder.append(", holidayBrief.categoryId  = ");
    paramHolidaySchema = (HolidaySchema)localObject;
    if (paramHolidayBriefSchema != null) {
      paramHolidaySchema = Integer.valueOf(paramHolidayBriefSchema.categoryId);
    }
    localStringBuilder.append(paramHolidaySchema);
    localStringBuilder.append(", layoutType = ");
    localStringBuilder.append(i);
    z.a("Cal:D:HolidaySingleCard", localStringBuilder.toString());
    return i;
  }
  
  public final void J(int paramInt, b paramb)
  {
    r.f(paramb, "buttonsViewHolder");
    Object localObject1 = this.r;
    r.c(localObject1);
    int i = ((List)localObject1).size();
    Object localObject2 = null;
    if (i > 0)
    {
      localObject1 = this.r;
      r.c(localObject1);
      localObject1 = (HolidaySchema)((List)localObject1).get(0);
    }
    else
    {
      localObject1 = null;
    }
    Object localObject3;
    if (localObject1 != null)
    {
      localObject3 = this.s;
      r.c(localObject3);
      localObject3 = (HolidayBriefSchema)((Map)localObject3).get(((HolidaySchema)localObject1).name);
    }
    else
    {
      localObject3 = null;
    }
    localObject1 = localObject2;
    if (localObject3 != null) {
      localObject1 = ((HolidayBriefSchema)localObject3).extra;
    }
    if (localObject1 != null)
    {
      localObject3 = ((HolidayBriefSchema.HolidayBriefExtraSchema)localObject1).buttonActions;
      if ((localObject3 != null) && (((List)localObject3).size() != 0))
      {
        if (((HolidayBriefSchema.HolidayBriefExtraSchema)localObject1).buttonActions.size() == 1)
        {
          paramb.a().setVisibility(0);
          paramb.b().setVisibility(8);
          localObject1 = (ModuleSchema)((HolidayBriefSchema.HolidayBriefExtraSchema)localObject1).buttonActions.get(0);
          if (!TextUtils.isEmpty(((ModuleSchema)localObject1).actionIcon)) {
            paramb.c().a(l0.e(((ModuleSchema)localObject1).actionIcon), 2131231433, 2131231431);
          } else {
            paramb.c().setVisibility(8);
          }
          paramb.d().setText(((ModuleSchema)localObject1).title);
          paramb.d().setTextColor(this.a.getResources().getColor(2131099816));
          paramb.e().setOnClickListener(new g(this, paramInt, (ModuleSchema)localObject1));
          return;
        }
        paramb.a().setVisibility(8);
        paramb.b().setVisibility(0);
        H(paramb.b(), ((HolidayBriefSchema.HolidayBriefExtraSchema)localObject1).buttonActions, paramInt);
        return;
      }
    }
    paramb.a().setVisibility(8);
    paramb.b().setVisibility(8);
  }
  
  public void a()
  {
    this.r = this.q;
    super.a();
  }
  
  public void b()
  {
    this.s = z3.g.g().f(this.a, this.e.getTimeInMillis());
    super.b();
  }
  
  public void e(b.b paramb)
  {
    r.f(paramb, "onDataLoadCompletedListener");
    if (z0.n(this.a))
    {
      Calendar localCalendar = Calendar.getInstance(TimeZone.getTimeZone("GMT+8"));
      localCalendar.set(1, this.e.get(1));
      localCalendar.set(2, this.e.get(2));
      localCalendar.set(5, this.e.get(5));
      z3.g.g().d(this.a, localCalendar.getTimeInMillis(), new e(this, paramb));
    }
    super.e(paramb);
  }
  
  public void g(a.a parama, int paramInt)
  {
    r.f(parama, "holder");
    if ((this.r != null) && (this.s != null) && ((parama instanceof f)))
    {
      f localf = (f)parama;
      localf.b().setAdapter(new d());
      localf.b().setOnItemTouchListener(new e());
      localf.b().setOnItemClickListener(new f(this, paramInt));
      if (this.i == null) {
        J(paramInt, localf.a());
      } else {
        y.a(localf.a());
      }
      super.g(parama, paramInt);
      return;
    }
    z.m("Cal:D:HolidaySingleCard", "bindView(): no data or holder error!");
  }
  
  public a.a h(View paramView)
  {
    r.f(paramView, "view");
    return new f(paramView);
  }
  
  public int i()
  {
    return 2131558599;
  }
  
  public boolean j()
  {
    if (this.s != null)
    {
      List localList = this.r;
      if (localList != null)
      {
        r.c(localList);
        if (localList.size() > 0) {
          return true;
        }
      }
    }
    boolean bool = false;
    return bool;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/local/i$a;", "Lcom/miui/calendar/view/i;", "", "position", "Landroid/widget/TextView;", "e", "a", "Landroid/view/View;", "convertView", "b", "", "Lcom/android/calendar/common/ModuleSchema;", "Ljava/util/List;", "mActions", "<init>", "(Lcom/miui/calendar/card/single/local/i;Ljava/util/List;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class a
    extends com.miui.calendar.view.i
  {
    private final List<ModuleSchema> b;
    
    public a()
    {
      Object localObject;
      this.b = localObject;
    }
    
    private final TextView e(int paramInt)
    {
      TextView localTextView = new TextView(i.z(i.this));
      localTextView.setTextSize(0, i.z(i.this).getResources().getDimensionPixelSize(2131167309));
      localTextView.setTextColor(i.z(i.this).getResources().getColor(2131100756));
      localTextView.setBackgroundResource(2131232330);
      localTextView.setGravity(17);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1, 1.0F);
      if (paramInt != 0) {
        localLayoutParams.leftMargin = 1;
      }
      localTextView.setLayoutParams(localLayoutParams);
      return localTextView;
    }
    
    public int a()
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
    
    public View b(int paramInt, View paramView)
    {
      Object localObject1;
      if (paramView == null)
      {
        localObject1 = e(paramInt);
        paramView = new a((View)localObject1);
        ((View)localObject1).setTag(paramView);
      }
      else
      {
        localObject1 = paramView.getTag();
        r.d(localObject1, "null cannot be cast to non-null type com.miui.calendar.card.single.local.HolidaySingleCard.ActionItemAdapter.ActionItemViewHolder");
        localObject2 = (a)localObject1;
        localObject1 = paramView;
        paramView = (View)localObject2;
      }
      Object localObject2 = this.b;
      r.c(localObject2);
      localObject2 = (ModuleSchema)((List)localObject2).get(paramInt);
      paramView.a().setText(((ModuleSchema)localObject2).title);
      paramView.a().setTextColor(i.z(i.this).getResources().getColor(2131099816));
      return localObject1;
    }
    
    @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/local/i$a$a;", "", "Landroid/widget/TextView;", "a", "Landroid/widget/TextView;", "()Landroid/widget/TextView;", "setTextView", "(Landroid/widget/TextView;)V", "textView", "Landroid/view/View;", "view", "<init>", "(Lcom/miui/calendar/card/single/local/i$a;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
    private final class a
    {
      private TextView a;
      
      public a()
      {
        this.a = ((TextView)localObject);
      }
      
      public final TextView a()
      {
        return this.a;
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/local/i$b;", "", "Landroid/view/View;", "a", "Landroid/view/View;", "()Landroid/view/View;", "setButtonContainerLine1", "(Landroid/view/View;)V", "buttonContainerLine1", "b", "e", "setButtonLine1View", "buttonLine1View", "Lcom/miui/calendar/view/OnlineImageView;", "c", "Lcom/miui/calendar/view/OnlineImageView;", "()Lcom/miui/calendar/view/OnlineImageView;", "setButtonLine1IconView", "(Lcom/miui/calendar/view/OnlineImageView;)V", "buttonLine1IconView", "Landroid/widget/TextView;", "d", "Landroid/widget/TextView;", "()Landroid/widget/TextView;", "setButtonLine1TitleView", "(Landroid/widget/TextView;)V", "buttonLine1TitleView", "Lcom/miui/calendar/view/DynamicLinearLayout;", "Lcom/miui/calendar/view/DynamicLinearLayout;", "()Lcom/miui/calendar/view/DynamicLinearLayout;", "setButtonContainerLine2", "(Lcom/miui/calendar/view/DynamicLinearLayout;)V", "buttonContainerLine2", "view", "<init>", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b
  {
    private View a;
    private View b;
    private OnlineImageView c;
    private TextView d;
    private DynamicLinearLayout e;
    
    public b(View paramView)
    {
      View localView = paramView.findViewById(2131362081);
      r.e(localView, "view.findViewById(R.id.button_container_line_1)");
      this.a = localView;
      localView = paramView.findViewById(2131362085);
      r.e(localView, "view.findViewById(R.id.button_line_1)");
      this.b = localView;
      localView = paramView.findViewById(2131362086);
      r.d(localView, "null cannot be cast to non-null type com.miui.calendar.view.OnlineImageView");
      this.c = ((OnlineImageView)localView);
      localView = paramView.findViewById(2131362087);
      r.d(localView, "null cannot be cast to non-null type android.widget.TextView");
      this.d = ((TextView)localView);
      paramView = paramView.findViewById(2131362082);
      r.d(paramView, "null cannot be cast to non-null type com.miui.calendar.view.DynamicLinearLayout");
      this.e = ((DynamicLinearLayout)paramView);
    }
    
    public final View a()
    {
      return this.a;
    }
    
    public final DynamicLinearLayout b()
    {
      return this.e;
    }
    
    public final OnlineImageView c()
    {
      return this.c;
    }
    
    public final TextView d()
    {
      return this.d;
    }
    
    public final View e()
    {
      return this.b;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/local/i$c;", "", "Lcom/miui/calendar/card/single/local/i$b;", "buttonsViewHolder", "Lkotlin/u;", "a", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class c
  {
    public final void a(i.b paramb)
    {
      r.f(paramb, "buttonsViewHolder");
      paramb.a().setVisibility(8);
      paramb.b().setVisibility(8);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/local/i$d;", "Lcom/miui/calendar/view/i;", "Lcom/miui/calendar/card/single/local/i$d$a;", "Lcom/miui/calendar/card/single/local/i;", "itemViewHolder", "Lcom/miui/calendar/holiday/model/HolidaySchema;", "holiday", "Lcom/miui/calendar/holiday/model/HolidayBriefSchema;", "holidayBrief", "", "position", "Lkotlin/u;", "e", "a", "Landroid/view/View;", "convertView", "b", "<init>", "(Lcom/miui/calendar/card/single/local/i;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class d
    extends com.miui.calendar.view.i
  {
    private final void e(a parama, HolidaySchema paramHolidaySchema, HolidayBriefSchema paramHolidayBriefSchema, int paramInt)
    {
      parama.b().setVisibility(0);
      parama.c().setText(paramHolidaySchema.name);
      if (paramHolidayBriefSchema != null)
      {
        if (!TextUtils.isEmpty(paramHolidayBriefSchema.description))
        {
          parama.d().setVisibility(0);
          parama.d().setText(paramHolidayBriefSchema.description);
        }
        else
        {
          parama.d().setVisibility(8);
        }
        if (!TextUtils.isEmpty(paramHolidayBriefSchema.icon))
        {
          parama.a().setVisibility(0);
          parama.a().a(l0.e(paramHolidayBriefSchema.icon), 0, 0);
        }
        else
        {
          parama.a().setVisibility(8);
        }
      }
      else
      {
        parama.d().setVisibility(8);
        parama.a().setVisibility(8);
      }
      int i = i.E(this.b);
      int j = i.C(this.b);
      int k = i.D(this.b);
      if (paramInt == 0)
      {
        paramHolidaySchema = i.B(this.b);
        r.c(paramHolidaySchema);
        if (paramHolidaySchema.size() > 1)
        {
          parama.b().setBackgroundResource(2131231044);
          j /= 2;
          paramInt = i;
          break label294;
        }
      }
      if (paramInt == 0)
      {
        parama.b().setBackgroundResource(2131231037);
        paramInt = i;
      }
      else
      {
        paramHolidaySchema = i.B(this.b);
        r.c(paramHolidaySchema);
        if ((paramInt == paramHolidaySchema.size() - 1) && (this.b.i == null))
        {
          paramInt = i / 2;
          parama.b().setBackgroundResource(2131231035);
        }
        else
        {
          parama.b().setBackgroundResource(2131231040);
          paramInt = i;
        }
      }
      label294:
      parama.b().setPadding(k, paramInt, k, j);
    }
    
    public int a()
    {
      List localList = i.B(this.b);
      r.c(localList);
      return localList.size();
    }
    
    public View b(int paramInt, View paramView)
    {
      Object localObject1 = i.B(this.b);
      r.c(localObject1);
      HolidaySchema localHolidaySchema = (HolidaySchema)((List)localObject1).get(paramInt);
      if (i.A(this.b) == null)
      {
        localObject1 = null;
      }
      else
      {
        localObject1 = i.A(this.b);
        r.c(localObject1);
        localObject1 = (HolidayBriefSchema)((Map)localObject1).get(localHolidaySchema.name);
      }
      Object localObject2;
      if (paramView == null)
      {
        localObject2 = LayoutInflater.from(i.z(this.b)).inflate(2131558601, null);
        paramView = new a((View)localObject2);
        ((View)localObject2).setTag(paramView);
      }
      else
      {
        localObject2 = paramView.getTag();
        r.d(localObject2, "null cannot be cast to non-null type com.miui.calendar.card.single.local.HolidaySingleCard.EventItemAdapter.EventItemViewHolder");
        a locala = (a)localObject2;
        localObject2 = paramView;
        paramView = locala;
      }
      e(paramView, localHolidaySchema, (HolidayBriefSchema)localObject1, paramInt);
      return localObject2;
    }
    
    @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/local/i$d$a;", "", "Landroid/view/View;", "a", "Landroid/view/View;", "b", "()Landroid/view/View;", "setListRootView", "(Landroid/view/View;)V", "listRootView", "Landroid/widget/TextView;", "Landroid/widget/TextView;", "c", "()Landroid/widget/TextView;", "setPrimaryTextView", "(Landroid/widget/TextView;)V", "primaryTextView", "d", "setSecondaryTextView", "secondaryTextView", "Lcom/miui/calendar/view/OnlineImageView;", "Lcom/miui/calendar/view/OnlineImageView;", "()Lcom/miui/calendar/view/OnlineImageView;", "setHolidayImageView", "(Lcom/miui/calendar/view/OnlineImageView;)V", "holidayImageView", "view", "<init>", "(Lcom/miui/calendar/card/single/local/i$d;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
    private final class a
    {
      private View a;
      private TextView b;
      private TextView c;
      private OnlineImageView d;
      
      public a()
      {
        this$1 = localObject.findViewById(2131363078);
        r.e(i.d.this, "view.findViewById(R.id.root_list)");
        this.a = i.d.this;
        this$1 = localObject.findViewById(2131362984);
        r.d(i.d.this, "null cannot be cast to non-null type android.widget.TextView");
        this.b = ((TextView)i.d.this);
        this$1 = localObject.findViewById(2131363121);
        r.d(i.d.this, "null cannot be cast to non-null type android.widget.TextView");
        this.c = ((TextView)i.d.this);
        this$1 = localObject.findViewById(2131362537);
        r.d(i.d.this, "null cannot be cast to non-null type com.miui.calendar.view.OnlineImageView");
        this.d = ((OnlineImageView)i.d.this);
      }
      
      public final OnlineImageView a()
      {
        return this.d;
      }
      
      public final View b()
      {
        return this.a;
      }
      
      public final TextView c()
      {
        return this.b;
      }
      
      public final TextView d()
      {
        return this.c;
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/local/i$e;", "Lz3/g$d;", "", "", "Lcom/miui/calendar/holiday/model/HolidayBriefSchema;", "result", "Lkotlin/u;", "c", "a", "Lcom/miui/calendar/card/b$b;", "Lcom/miui/calendar/card/b$b;", "getOnDataLoadCompletedListener", "()Lcom/miui/calendar/card/b$b;", "onDataLoadCompletedListener", "Ljava/lang/ref/WeakReference;", "Lcom/miui/calendar/card/single/local/i;", "b", "Ljava/lang/ref/WeakReference;", "getHolidayScWR", "()Ljava/lang/ref/WeakReference;", "holidayScWR", "card", "<init>", "(Lcom/miui/calendar/card/single/local/i;Lcom/miui/calendar/card/b$b;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private static final class e
    implements g.d<Map<String, ? extends HolidayBriefSchema>>
  {
    private final b.b a;
    private final WeakReference<i> b;
    
    public e(i parami, b.b paramb)
    {
      this.a = paramb;
      this.b = new WeakReference(parami);
    }
    
    public void a()
    {
      i locali = (i)this.b.get();
      if (locali == null) {
        return;
      }
      z.m("Cal:D:HolidaySingleCard", "query holiday brief failed");
      i.F(locali, true);
      i.y(locali).notifyDataSetChanged();
    }
    
    public void c(Map<String, ? extends HolidayBriefSchema> paramMap)
    {
      i locali = (i)this.b.get();
      if (locali == null) {
        return;
      }
      if (paramMap != null)
      {
        i.G(locali, paramMap);
        this.a.a();
      }
      i.F(locali, true);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/local/i$f;", "Ls3/a$a;", "Ls3/a;", "Landroid/widget/LinearLayout;", "e", "Landroid/widget/LinearLayout;", "getRoot", "()Landroid/widget/LinearLayout;", "setRoot", "(Landroid/widget/LinearLayout;)V", "root", "Lcom/miui/calendar/view/DynamicLinearLayout;", "f", "Lcom/miui/calendar/view/DynamicLinearLayout;", "b", "()Lcom/miui/calendar/view/DynamicLinearLayout;", "setListContainerView", "(Lcom/miui/calendar/view/DynamicLinearLayout;)V", "listContainerView", "Lcom/miui/calendar/card/single/local/i$b;", "g", "Lcom/miui/calendar/card/single/local/i$b;", "a", "()Lcom/miui/calendar/card/single/local/i$b;", "setButtonsViewHolder", "(Lcom/miui/calendar/card/single/local/i$b;)V", "buttonsViewHolder", "Landroid/view/View;", "view", "<init>", "(Lcom/miui/calendar/card/single/local/i;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class f
    extends a.a
  {
    private LinearLayout e;
    private DynamicLinearLayout f;
    private i.b g;
    
    public f()
    {
      super(localObject);
      this$1 = localObject.findViewById(2131363074);
      r.e(i.this, "view.findViewById(R.id.root)");
      this.e = ((LinearLayout)i.this);
      this$1 = localObject.findViewById(2131362691);
      r.d(i.this, "null cannot be cast to non-null type com.miui.calendar.view.DynamicLinearLayout");
      this.f = ((DynamicLinearLayout)i.this);
      this.g = new i.b(localObject);
    }
    
    public final i.b a()
    {
      return this.g;
    }
    
    public final DynamicLinearLayout b()
    {
      return this.f;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.single.local.i
 * JD-Core Version:    0.7.0.1
 */