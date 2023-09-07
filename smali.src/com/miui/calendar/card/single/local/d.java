package com.miui.calendar.card.single.local;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.schema.LocalCardSchema;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import com.miui.calendar.view.OnlineImageView;
import java.util.Calendar;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import s3.a.a;
import y3.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/local/d;", "Lcom/miui/calendar/card/single/local/LocalSingleCard;", "", "s", "j", "", "i", "Ls3/a$a;", "Ls3/a;", "holder", "position", "Lkotlin/u;", "g", "Landroid/view/View;", "view", "h", "u", "()Z", "isThisCardSupport", "Landroid/content/Context;", "context", "Lcom/miui/calendar/card/Card$ContainerType;", "containerType", "Ljava/util/Calendar;", "desiredDay", "Landroid/widget/BaseAdapter;", "adapter", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V", "q", "a", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class d
  extends LocalSingleCard
{
  public static final a q = new a(null);
  
  public d(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, 12, paramContainerType, paramCalendar, paramBaseAdapter);
  }
  
  public void g(a.a parama, int paramInt)
  {
    r.f(parama, "holder");
    if (!(parama instanceof b))
    {
      z.m("Cal:D:CardIntroductionCard", "bindView(): holder error!");
      return;
    }
    parama = (b)parama;
    parama.b().a(l0.e(this.m.icon), 2131231433, 2131231431);
    x0.f(parama.c(), this.m.title);
    x0.f(parama.a(), this.m.description);
    parama.a().setText(this.m.description);
  }
  
  public a.a h(View paramView)
  {
    r.f(paramView, "view");
    return new b(paramView);
  }
  
  public int i()
  {
    return 2131558501;
  }
  
  public boolean j()
  {
    LocalCardSchema localLocalCardSchema = this.m;
    boolean bool;
    if ((localLocalCardSchema != null) && (!TextUtils.isEmpty(localLocalCardSchema.icon))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected boolean s()
  {
    boolean bool;
    if ((!u()) && (!super.s())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  protected final boolean u()
  {
    boolean bool;
    if ((a.b()) && (z0.n(this.a))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/local/d$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/local/d$b;", "Ls3/a$a;", "Ls3/a;", "Lcom/miui/calendar/view/OnlineImageView;", "e", "Lcom/miui/calendar/view/OnlineImageView;", "b", "()Lcom/miui/calendar/view/OnlineImageView;", "setIconView", "(Lcom/miui/calendar/view/OnlineImageView;)V", "iconView", "Landroid/widget/TextView;", "f", "Landroid/widget/TextView;", "c", "()Landroid/widget/TextView;", "setTitleView", "(Landroid/widget/TextView;)V", "titleView", "g", "a", "setDescriptionView", "descriptionView", "Landroid/view/View;", "view", "<init>", "(Lcom/miui/calendar/card/single/local/d;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class b
    extends a.a
  {
    private OnlineImageView e;
    private TextView f;
    private TextView g;
    
    public b()
    {
      super(localObject);
      this$1 = localObject.findViewById(2131362563);
      r.d(d.this, "null cannot be cast to non-null type com.miui.calendar.view.OnlineImageView");
      this.e = ((OnlineImageView)d.this);
      this$1 = localObject.findViewById(2131363373);
      r.d(d.this, "null cannot be cast to non-null type android.widget.TextView");
      this.f = ((TextView)d.this);
      this$1 = localObject.findViewById(2131362338);
      r.d(d.this, "null cannot be cast to non-null type android.widget.TextView");
      this.g = ((TextView)d.this);
    }
    
    public final TextView a()
    {
      return this.g;
    }
    
    public final OnlineImageView b()
    {
      return this.e;
    }
    
    public final TextView c()
    {
      return this.f;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.single.local.d
 * JD-Core Version:    0.7.0.1
 */