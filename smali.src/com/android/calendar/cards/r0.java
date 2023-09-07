package com.android.calendar.cards;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView.c0;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.ActionSchema;
import com.android.calendar.common.ActionSchema.ParamsSchema;
import com.android.calendar.common.ModuleSchema;
import com.miui.calendar.card.schema.CustomCardItemSchema;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.util.m;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.web.PageData.StyleData;
import com.miui.calendar.web.d;
import java.util.Calendar;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/r0;", "Lcom/android/calendar/cards/m1;", "Lcom/android/calendar/cards/r0$b;", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "value", "Lkotlin/u;", "f", "holder", "Landroid/content/Context;", "context", "g", "", "d", "c", "b", "I", "mShowPosition", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "mExtraSchema", "", "Ljava/lang/String;", "mDetailUrl", "Ljava/util/Calendar;", "date", "<init>", "(Ljava/util/Calendar;)V", "e", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class r0
  extends m1<b, CustomCardSchema>
{
  public static final a e = new a(null);
  private int b;
  private CustomCardSchema c;
  private String d = "http://staging-cnbj2-fds.api.xiaomi.net/calendar-history-today/index.html";
  
  public r0(Calendar paramCalendar)
  {
    super(paramCalendar);
  }
  
  private static final void h(List paramList, r0 paramr0, Context paramContext, b paramb, View paramView)
  {
    r.f(paramr0, "this$0");
    if ((paramList != null) && (paramList.size() > 0))
    {
      paramList = (CustomCardItemSchema)paramList.get(paramr0.b);
      paramContext = m.b(paramContext);
      r.e(paramContext, "getOAID(context)");
      Object localObject = paramr0.a;
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
      String str = paramView.getResources().getString(2131887678, new Object[] { String.valueOf(i), String.valueOf(j) });
      r.e(str, "view.resources.getString…String(), day.toString())");
      paramView = new PageData.StyleData();
      paramView.backgroundColor = "#E5E5E5";
      paramView.hideActionBar = false;
      paramView.darkMode = false;
      paramView.immersion = true;
      paramView.immersionAlphaStart = 200;
      paramView.immersionAlphaEnd = 300;
      if (y.i(CalendarApplication.e())) {
        try
        {
          paramContext = Uri.parse(paramr0.d).buildUpon().appendQueryParameter("oaid", paramContext).appendQueryParameter("style", x.c(paramView)).appendQueryParameter("holiday", "false").appendQueryParameter("showShare", "false").appendQueryParameter("title", str).appendQueryParameter("event_name", paramList.title).appendQueryParameter("date", ((StringBuilder)localObject).toString()).appendQueryParameter("from", "history").appendQueryParameter("url", paramr0.d).build();
          paramContext = d.d(CalendarApplication.e(), paramContext.toString());
          paramContext.addFlags(268435456);
          CalendarApplication.e().startActivity(paramContext);
          CardHelper.m("card_item_clicked", paramb.getAdapterPosition(), paramr0.b, paramList.title, paramr0.c);
        }
        catch (Exception paramList)
        {
          z.d("Cal:D:HistoryCard", "onCreate(): ", paramList);
        }
      }
    }
  }
  
  protected int c()
  {
    CustomCardSchema localCustomCardSchema = this.c;
    int i;
    if (localCustomCardSchema != null) {
      i = localCustomCardSchema.sequence;
    } else {
      i = 113;
    }
    return i;
  }
  
  protected int d()
  {
    return 47;
  }
  
  protected void f(CustomCardSchema paramCustomCardSchema)
  {
    this.c = paramCustomCardSchema;
  }
  
  protected void g(b paramb, Context paramContext)
  {
    Object localObject1 = null;
    Object localObject2;
    if (paramb != null) {
      localObject2 = paramb.d();
    } else {
      localObject2 = null;
    }
    if (localObject2 != null)
    {
      localObject3 = paramb.d();
      localObject2 = this.c;
      if (localObject2 != null) {
        localObject2 = ((CustomCardSchema)localObject2).title;
      } else {
        localObject2 = null;
      }
      ((TextView)localObject3).setText((CharSequence)localObject2);
    }
    Object localObject3 = this.c;
    if (localObject3 != null) {
      localObject2 = ((CustomCardSchema)localObject3).itemList;
    } else {
      localObject2 = null;
    }
    if (localObject3 != null)
    {
      localObject3 = ((CustomCardSchema)localObject3).action;
      if (localObject3 != null)
      {
        localObject3 = ((ModuleSchema)localObject3).actionList;
        if (localObject3 != null)
        {
          localObject3 = (ActionSchema)((List)localObject3).get(0);
          if (localObject3 != null)
          {
            localObject3 = ((ActionSchema)localObject3).actionParams;
            if (localObject3 != null)
            {
              localObject3 = ((ActionSchema.ParamsSchema)localObject3).url;
              break label156;
            }
          }
        }
      }
    }
    localObject3 = null;
    label156:
    if (!TextUtils.isEmpty((CharSequence)localObject3))
    {
      r.c(localObject3);
      this.d = ((String)localObject3);
      if (paramb != null) {
        localObject3 = paramb.c();
      } else {
        localObject3 = null;
      }
      v.k((View)localObject3);
      if ((localObject2 != null) && (((List)localObject2).size() > 0))
      {
        CustomCardItemSchema localCustomCardItemSchema = (CustomCardItemSchema)((List)localObject2).get(this.b);
        if (paramb != null) {
          localObject3 = paramb.a();
        } else {
          localObject3 = null;
        }
        if (localObject3 != null) {
          ((TextView)localObject3).setText(localCustomCardItemSchema.title);
        }
        localObject3 = localObject1;
        if (paramb != null) {
          localObject3 = paramb.b();
        }
        if (localObject3 != null) {
          ((TextView)localObject3).setText(localCustomCardItemSchema.description);
        }
      }
      if (paramb != null)
      {
        localObject3 = paramb.c();
        if (localObject3 != null) {
          ((View)localObject3).setOnClickListener(new q0((List)localObject2, this, paramContext, paramb));
        }
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/r0$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/r0$b;", "Landroidx/recyclerview/widget/RecyclerView$c0;", "Landroid/widget/TextView;", "a", "Landroid/widget/TextView;", "d", "()Landroid/widget/TextView;", "setTitleView", "(Landroid/widget/TextView;)V", "titleView", "b", "setEventName", "eventName", "c", "setEventTime", "eventTime", "Landroid/view/View;", "Landroid/view/View;", "()Landroid/view/View;", "setRootView", "(Landroid/view/View;)V", "rootView", "view", "<init>", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b
    extends RecyclerView.c0
  {
    private TextView a;
    private TextView b;
    private TextView c;
    private View d;
    
    public b(View paramView)
    {
      super();
      View localView = paramView.findViewById(2131363373);
      r.e(localView, "view.findViewById(R.id.title)");
      this.a = ((TextView)localView);
      localView = paramView.findViewById(2131362533);
      r.e(localView, "view.findViewById(R.id.history_container)");
      this.d = localView;
      localView = paramView.findViewById(2131362535);
      r.d(localView, "null cannot be cast to non-null type android.widget.TextView");
      this.b = ((TextView)localView);
      paramView = paramView.findViewById(2131362534);
      r.d(paramView, "null cannot be cast to non-null type android.widget.TextView");
      this.c = ((TextView)paramView);
    }
    
    public final TextView a()
    {
      return this.b;
    }
    
    public final TextView b()
    {
      return this.c;
    }
    
    public final View c()
    {
      return this.d;
    }
    
    public final TextView d()
    {
      return this.a;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.r0
 * JD-Core Version:    0.7.0.1
 */