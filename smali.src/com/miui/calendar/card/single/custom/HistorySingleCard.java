package com.miui.calendar.card.single.custom;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.Keep;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.ActionSchema;
import com.android.calendar.common.ActionSchema.ParamsSchema;
import com.android.calendar.common.ModuleSchema;
import com.android.calendar.settings.j;
import com.google.gson.reflect.TypeToken;
import com.miui.calendar.account.mi.MiAccountSchema;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.b.b;
import com.miui.calendar.card.schema.CustomCardItemSchema;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.m;
import com.miui.calendar.util.q;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.web.PageData.StyleData;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Type;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import okhttp3.b0;
import org.json.JSONObject;
import s3.a.a;
import u1.b;
import u1.b.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/HistorySingleCard;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard;", "", "j", "Ljava/util/Calendar;", "desiredDay", "Lkotlin/u;", "f", "", "i", "B", "b", "Ls3/a$a;", "Ls3/a;", "holder", "position", "g", "Lcom/miui/calendar/card/b$b;", "onDataLoadCompletedListener", "e", "Landroid/view/View;", "view", "h", "Ljava/lang/Class;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;", "A", "", "s", "Ljava/lang/String;", "mDetailUrl", "t", "I", "mPaddingStartEnd", "u", "mLastPaddingBottom", "v", "mFirstPaddingTop", "w", "mPaddingTop", "x", "mPaddingBottom", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "y", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "mExtraSchema", "z", "mCacheData", "mCacheKey", "C", "Z", "mShouldShow", "Landroid/content/Context;", "context", "Lcom/miui/calendar/card/Card$ContainerType;", "containerType", "Landroid/widget/BaseAdapter;", "adapter", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V", "D", "a", "HistoryItemExtraSchema", "c", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class HistorySingleCard
  extends CustomSingleCard
{
  public static final a D = new a(null);
  private tc.a<b0> A;
  private String B;
  private boolean C = true;
  private String s = "http://staging-cnbj2-fds.api.xiaomi.net/calendar-history-today/index.html";
  private final int t;
  private final int u;
  private final int v;
  private final int w;
  private final int x;
  private CustomCardSchema y;
  private String z;
  
  public HistorySingleCard(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, 47, paramContainerType, paramCalendar, paramBaseAdapter);
    paramContext = paramContext.getResources();
    this.t = paramContext.getDimensionPixelOffset(2131166250);
    this.u = paramContext.getDimensionPixelOffset(2131165669);
    this.v = paramContext.getDimensionPixelOffset(2131165667);
    this.w = paramContext.getDimensionPixelOffset(2131165668);
    this.x = paramContext.getDimensionPixelOffset(2131167088);
    this.e = paramCalendar;
    paramContext = new StringBuilder();
    paramContext.append("disk_cache_key_class_history_data-");
    paramContext.append(s0.m(paramCalendar));
    this.B = paramContext.toString();
  }
  
  private static final void M(List paramList, HistorySingleCard paramHistorySingleCard, int paramInt, View paramView)
  {
    r.f(paramHistorySingleCard, "this$0");
    if ((paramList != null) && (paramList.size() > 0))
    {
      paramList = (CustomCardItemSchema)paramList.get(paramHistorySingleCard.n);
      String str = m.b(paramHistorySingleCard.a);
      r.e(str, "getOAID(mContext)");
      Object localObject = paramHistorySingleCard.e;
      int i = ((Calendar)localObject).get(2) + 1;
      int j = ((Calendar)localObject).get(5);
      localObject = new StringBuilder();
      if (i < 10) {
        ((StringBuilder)localObject).append("0");
      }
      ((StringBuilder)localObject).append(i);
      if (j < 10) {
        ((StringBuilder)localObject).append("0");
      }
      ((StringBuilder)localObject).append(j);
      paramView = paramView.getResources().getString(2131887678, new Object[] { String.valueOf(i), String.valueOf(j) });
      r.e(paramView, "view.resources.getString…String(), day.toString())");
      PageData.StyleData localStyleData = new PageData.StyleData();
      localStyleData.backgroundColor = "#E5E5E5";
      localStyleData.hideActionBar = false;
      localStyleData.darkMode = false;
      localStyleData.immersion = true;
      localStyleData.immersionAlphaStart = 200;
      localStyleData.immersionAlphaEnd = 300;
      if (y.i(CalendarApplication.e())) {
        try
        {
          paramView = Uri.parse(paramHistorySingleCard.s).buildUpon().appendQueryParameter("oaid", str).appendQueryParameter("style", x.c(localStyleData)).appendQueryParameter("holiday", "false").appendQueryParameter("showShare", "false").appendQueryParameter("title", paramView).appendQueryParameter("event_name", paramList.title).appendQueryParameter("date", ((StringBuilder)localObject).toString()).appendQueryParameter("from", "history").appendQueryParameter("url", paramHistorySingleCard.s).build();
          paramView = com.miui.calendar.web.d.d(CalendarApplication.e(), paramView.toString());
          paramView.addFlags(268435456);
          CalendarApplication.e().startActivity(paramView);
          paramHistorySingleCard.k("card_item_clicked", paramInt, paramHistorySingleCard.n, paramList.title);
        }
        catch (Exception paramList)
        {
          z.d("Cal:D:HistorySingleCard", "onCreate(): ", paramList);
        }
      }
    }
  }
  
  private static final void N(HistorySingleCard paramHistorySingleCard, b.b paramb, MiAccountSchema paramMiAccountSchema)
  {
    r.f(paramHistorySingleCard, "this$0");
    r.f(paramb, "$onDataLoadCompletedListener");
    if (paramMiAccountSchema == null)
    {
      q.h(paramHistorySingleCard.a, paramHistorySingleCard.B);
      paramHistorySingleCard.m.itemList = null;
      paramHistorySingleCard.C = false;
      paramHistorySingleCard.z = null;
      paramb.a();
      return;
    }
    Object localObject = paramMiAccountSchema.authToken;
    paramMiAccountSchema = paramMiAccountSchema.userId;
    paramMiAccountSchema = u1.d.b(paramHistorySingleCard.a, true, (String)localObject, paramMiAccountSchema);
    localObject = new HashMap();
    ((Map)localObject).put("cardIds", String.valueOf(paramHistorySingleCard.m.id));
    ((Map)localObject).put("targetTime", String.valueOf(paramHistorySingleCard.e.getTimeInMillis()));
    m.a(paramHistorySingleCard.a, (Map)localObject);
    localObject = l0.a(paramHistorySingleCard.a, (HashMap)localObject);
    u1.a locala = u1.d.f(null, 1, null);
    paramb = new c(paramb, paramHistorySingleCard);
    z.a("Cal:D:HistorySingleCard", "start query history card item");
    paramMiAccountSchema = locala.q(paramMiAccountSchema, (Map)localObject);
    paramHistorySingleCard.A = paramMiAccountSchema;
    if (paramMiAccountSchema != null)
    {
      r.c(paramMiAccountSchema);
      paramMiAccountSchema.q(new b(paramb));
    }
  }
  
  public Class<? extends CustomSingleCard.CustomItemExtraSchema> A()
  {
    return HistoryItemExtraSchema.class;
  }
  
  public int B()
  {
    int i = super.B();
    if (i <= 0) {
      i = 3;
    }
    return i;
  }
  
  public void b()
  {
    z.a("Cal:D:HistorySingleCard", "doInBackground");
    Object localObject1 = q.d(this.a, this.B);
    this.z = ((String)localObject1);
    boolean bool1 = TextUtils.isEmpty((CharSequence)localObject1);
    boolean bool2 = true;
    Object localObject3 = null;
    localObject1 = null;
    Object localObject4 = null;
    Object localObject2;
    if (!bool1)
    {
      Object localObject5 = localObject3;
      try
      {
        localObject1 = new com/miui/calendar/card/single/custom/HistorySingleCard$d;
        localObject5 = localObject3;
        ((d)localObject1).<init>();
        localObject5 = localObject3;
        Object localObject6 = ((TypeToken)localObject1).getType();
        localObject5 = localObject3;
        localObject1 = this.z;
        localObject5 = localObject3;
        r.e(localObject6, "jsonType");
        localObject5 = localObject3;
        localObject6 = (List)x.b((String)localObject1, (Type)localObject6);
        localObject1 = localObject4;
        if (localObject6 != null)
        {
          localObject1 = localObject4;
          localObject5 = localObject3;
          if ((((Collection)localObject6).isEmpty() ^ true))
          {
            localObject5 = localObject3;
            localObject1 = (CustomCardSchema)((List)localObject6).get(0);
          }
        }
        localObject5 = localObject1;
        super.C();
      }
      catch (Exception localException)
      {
        z.d("Cal:D:HistorySingleCard", "doInBackground() ", localException);
        localObject2 = localObject5;
      }
    }
    else
    {
      this.z = null;
    }
    this.y = ((CustomCardSchema)localObject2);
    if (localObject2 != null)
    {
      r.c(localObject2);
      localObject2 = ((CustomCardSchema)localObject2).itemList;
      r.e(localObject2, "mExtraSchema!!.itemList");
      if (!((Collection)localObject2).isEmpty()) {}
    }
    else
    {
      bool2 = false;
    }
    this.C = bool2;
    super.b();
  }
  
  public void e(b.b paramb)
  {
    r.f(paramb, "onDataLoadCompletedListener");
    z.a("Cal:D:HistorySingleCard", "queryData");
    if (this.m != null) {
      k3.d.g(new o(this, paramb));
    }
    super.e(paramb);
  }
  
  public void f(Calendar paramCalendar)
  {
    r.f(paramCalendar, "desiredDay");
    super.f(paramCalendar);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("disk_cache_key_class_history_data-");
    localStringBuilder.append(s0.m(paramCalendar));
    this.B = localStringBuilder.toString();
  }
  
  public void g(a.a parama, int paramInt)
  {
    r.f(parama, "holder");
    if (!(parama instanceof b))
    {
      z.m("Cal:D:HistorySingleCard", "bindView(): holder error!");
      return;
    }
    if ((this.y != null) && (this.m != null))
    {
      super.g(parama, paramInt);
      Object localObject1 = this.y;
      if (localObject1 == null) {
        return;
      }
      Object localObject2 = null;
      List localList;
      if (localObject1 != null) {
        localList = ((CustomCardSchema)localObject1).itemList;
      } else {
        localList = null;
      }
      Object localObject3 = localObject2;
      if (localObject1 != null)
      {
        localObject1 = ((CustomCardSchema)localObject1).action;
        localObject3 = localObject2;
        if (localObject1 != null)
        {
          localObject1 = ((ModuleSchema)localObject1).actionList;
          localObject3 = localObject2;
          if (localObject1 != null)
          {
            localObject1 = (ActionSchema)((List)localObject1).get(0);
            localObject3 = localObject2;
            if (localObject1 != null)
            {
              localObject1 = ((ActionSchema)localObject1).actionParams;
              localObject3 = localObject2;
              if (localObject1 != null) {
                localObject3 = ((ActionSchema.ParamsSchema)localObject1).url;
              }
            }
          }
        }
      }
      if (!TextUtils.isEmpty((CharSequence)localObject3))
      {
        r.c(localObject3);
        this.s = ((String)localObject3);
        parama = (b)parama;
        v.k(parama.c());
        if ((localList != null) && (localList.size() > 0))
        {
          localObject3 = (CustomCardItemSchema)localList.get(this.n);
          parama.a().setText(((CustomCardItemSchema)localObject3).title);
          parama.b().setText(((CustomCardItemSchema)localObject3).description);
        }
        else
        {
          this.C = false;
        }
        parama.c().setOnClickListener(new n(localList, this, paramInt));
      }
      return;
    }
    this.C = false;
  }
  
  public a.a h(View paramView)
  {
    r.f(paramView, "view");
    return new b(paramView);
  }
  
  public int i()
  {
    return 2131558598;
  }
  
  public boolean j()
  {
    boolean bool;
    if ((this.C) && (j.q(this.a))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  @Metadata(d1={""}, d2={"Lcom/miui/calendar/card/single/custom/HistorySingleCard$HistoryItemExtraSchema;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;", "(Lcom/miui/calendar/card/single/custom/HistorySingleCard;)V", "date", "", "getDate", "()Ljava/lang/String;", "setDate", "(Ljava/lang/String;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
  @Keep
  public final class HistoryItemExtraSchema
    extends CustomSingleCard.CustomItemExtraSchema
  {
    private String date;
    
    public final String getDate()
    {
      return this.date;
    }
    
    public final void setDate(String paramString)
    {
      this.date = paramString;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/HistorySingleCard$a;", "", "", "DEFAULT_ITEM_NUM_PER_PAGE", "I", "", "DISK_CACHE_KEY_CLASS_HISTORY_DATA", "Ljava/lang/String;", "TAG", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/HistorySingleCard$b;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$g;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard;", "Landroid/widget/TextView;", "l", "Landroid/widget/TextView;", "a", "()Landroid/widget/TextView;", "setEventName", "(Landroid/widget/TextView;)V", "eventName", "m", "b", "setEventTime", "eventTime", "Landroid/view/View;", "n", "Landroid/view/View;", "c", "()Landroid/view/View;", "setRootView", "(Landroid/view/View;)V", "rootView", "view", "<init>", "(Lcom/miui/calendar/card/single/custom/HistorySingleCard;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class b
    extends CustomSingleCard.g
  {
    private TextView l;
    private TextView m;
    private View n;
    
    public b()
    {
      super(localObject);
      this$1 = localObject.findViewById(2131362533);
      r.e(HistorySingleCard.this, "view.findViewById(R.id.history_container)");
      this.n = HistorySingleCard.this;
      this$1 = localObject.findViewById(2131362535);
      r.d(HistorySingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.l = ((TextView)HistorySingleCard.this);
      this$1 = localObject.findViewById(2131362534);
      r.d(HistorySingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.m = ((TextView)HistorySingleCard.this);
    }
    
    public final TextView a()
    {
      return this.l;
    }
    
    public final TextView b()
    {
      return this.m;
    }
    
    public final View c()
    {
      return this.n;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/HistorySingleCard$c;", "Lu1/b$a;", "Lorg/json/JSONObject;", "jsonObject", "Lkotlin/u;", "a", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "b", "Ljava/lang/ref/WeakReference;", "Lcom/miui/calendar/card/b$b;", "kotlin.jvm.PlatformType", "Ljava/lang/ref/WeakReference;", "getMListenerReference", "()Ljava/lang/ref/WeakReference;", "mListenerReference", "Lcom/miui/calendar/card/single/custom/HistorySingleCard;", "getMCardReference", "mCardReference", "listener", "card", "<init>", "(Lcom/miui/calendar/card/b$b;Lcom/miui/calendar/card/single/custom/HistorySingleCard;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private static final class c
    implements b.a
  {
    private final WeakReference<b.b> a;
    private final WeakReference<HistorySingleCard> b;
    
    public c(b.b paramb, HistorySingleCard paramHistorySingleCard)
    {
      this.a = new WeakReference(paramb);
      this.b = new WeakReference(paramHistorySingleCard);
    }
    
    public void a(JSONObject paramJSONObject)
    {
      r.f(paramJSONObject, "jsonObject");
      HistorySingleCard localHistorySingleCard = (HistorySingleCard)this.b.get();
      if (localHistorySingleCard == null) {
        return;
      }
      CustomCardSchema localCustomCardSchema = null;
      Object localObject = null;
      try
      {
        String str = paramJSONObject.getString("data");
        try
        {
          if (TextUtils.isEmpty(str))
          {
            z.c("Cal:D:HistorySingleCard", "onResponse history data is null");
            q.h(HistorySingleCard.H(localHistorySingleCard), HistorySingleCard.G(localHistorySingleCard));
            localHistorySingleCard.m.itemList = null;
            HistorySingleCard.L(localHistorySingleCard, false);
            HistorySingleCard.J(localHistorySingleCard, null);
            paramJSONObject = (b.b)this.a.get();
            if (paramJSONObject != null) {
              paramJSONObject.a();
            }
            return;
          }
          s4.d.d(str);
          paramJSONObject = new com/miui/calendar/card/single/custom/HistorySingleCard$c$a;
          paramJSONObject.<init>();
          paramJSONObject = paramJSONObject.getType();
          r.e(paramJSONObject, "object : TypeToken<List<…mCardSchema?>?>() {}.type");
          paramJSONObject = (List)x.b(str, paramJSONObject);
          if ((paramJSONObject != null) && (!paramJSONObject.isEmpty()))
          {
            if (TextUtils.equals(HistorySingleCard.F(localHistorySingleCard), str)) {
              return;
            }
            HistorySingleCard.J(localHistorySingleCard, str);
            boolean bool = true;
            HistorySingleCard.L(localHistorySingleCard, true);
            q.f(HistorySingleCard.H(localHistorySingleCard), HistorySingleCard.G(localHistorySingleCard), str);
            try
            {
              if ((paramJSONObject.isEmpty() ^ true))
              {
                HistorySingleCard.K(localHistorySingleCard, (CustomCardSchema)paramJSONObject.get(0));
                if (HistorySingleCard.I(localHistorySingleCard) != null)
                {
                  localCustomCardSchema = HistorySingleCard.I(localHistorySingleCard);
                  paramJSONObject = localObject;
                  if (localCustomCardSchema != null) {
                    paramJSONObject = localCustomCardSchema.itemList;
                  }
                  int i;
                  if ((paramJSONObject != null) && (!paramJSONObject.isEmpty())) {
                    i = 0;
                  } else {
                    i = 1;
                  }
                  if (i == 0) {}
                }
                else
                {
                  bool = false;
                }
                HistorySingleCard.L(localHistorySingleCard, bool);
              }
            }
            catch (Exception paramJSONObject)
            {
              z.d("Cal:D:HistorySingleCard", "doInBackground() ", paramJSONObject);
              HistorySingleCard.L(localHistorySingleCard, false);
            }
            localHistorySingleCard.C();
            localHistorySingleCard.a();
            paramJSONObject = (b.b)this.a.get();
            if (paramJSONObject == null) {
              return;
            }
            paramJSONObject.a();
            return;
          }
          z.c("Cal:D:HistorySingleCard", "onResponse history data is []");
          q.h(HistorySingleCard.H(localHistorySingleCard), HistorySingleCard.G(localHistorySingleCard));
          localHistorySingleCard.m.itemList = null;
          HistorySingleCard.L(localHistorySingleCard, false);
          HistorySingleCard.J(localHistorySingleCard, null);
          paramJSONObject = (b.b)this.a.get();
          if (paramJSONObject != null) {
            paramJSONObject.a();
          }
          return;
        }
        catch (Exception localException1)
        {
          paramJSONObject = str;
        }
        z.d("Cal:D:HistorySingleCard", "ResponseListener:", localException2);
      }
      catch (Exception localException2)
      {
        paramJSONObject = localCustomCardSchema;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("data:");
      localStringBuilder.append(paramJSONObject);
      z.c("Cal:D:HistorySingleCard", localStringBuilder.toString());
    }
    
    public void b(Exception paramException)
    {
      r.f(paramException, "e");
      z.d("Cal:D:HistorySingleCard", "onErrorResponse", paramException);
    }
    
    @Metadata(bv={}, d1={""}, d2={"com/miui/calendar/card/single/custom/HistorySingleCard$c$a", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
    public static final class a
      extends TypeToken<List<? extends CustomCardSchema>>
    {}
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/miui/calendar/card/single/custom/HistorySingleCard$d", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class d
    extends TypeToken<List<? extends CustomCardSchema>>
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.single.custom.HistorySingleCard
 * JD-Core Version:    0.7.0.1
 */