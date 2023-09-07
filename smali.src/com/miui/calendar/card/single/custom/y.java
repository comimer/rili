package com.miui.calendar.card.single.custom;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.calendar.settings.j;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.b.b;
import com.miui.calendar.util.z;
import f4.b;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.u;
import s3.a.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/y;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard;", "Lcom/miui/calendar/card/single/custom/y$b;", "viewHolder", "Lkotlin/u;", "K", "b", "Lcom/miui/calendar/card/b$b;", "onDataLoadCompletedListener", "e", "", "j", "Landroid/view/View;", "view", "Ls3/a$a;", "Ls3/a;", "h", "", "i", "holder", "position", "g", "t", "Z", "mIsInfoError", "J", "()Lkotlin/u;", "menstruationInfoAsync", "Landroid/content/Context;", "context", "Lcom/miui/calendar/card/Card$ContainerType;", "containerType", "Ljava/util/Calendar;", "desiredDay", "Landroid/widget/BaseAdapter;", "adapter", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V", "u", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class y
  extends CustomSingleCard
{
  public static final a u = new a(null);
  private f4.a s;
  private boolean t;
  
  public y(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, 57, paramContainerType, paramCalendar, paramBaseAdapter);
  }
  
  private static final void G(y paramy, f4.a parama)
  {
    r.f(paramy, "this$0");
    if (!r.a(parama, paramy.s))
    {
      paramy.s = parama;
      paramy.b.notifyDataSetChanged();
    }
  }
  
  private static final void H(y paramy, int paramInt, View paramView)
  {
    r.f(paramy, "this$0");
    if (!b.e(paramy.a))
    {
      b.g(paramy.a);
      return;
    }
    try
    {
      paramView = paramy.s;
      if (paramView == null)
      {
        paramy.J();
      }
      else
      {
        r.c(paramView);
        if (!TextUtils.isEmpty(paramView.d))
        {
          paramView = paramy.s;
          r.c(paramView);
          paramView = Intent.parseUri(paramView.d, 0);
          paramView.setFlags(268435456);
          paramy.a.startActivity(paramView);
          paramy.k("card_item_clicked", paramInt, -1, null);
        }
        else
        {
          paramView = paramy.a.getPackageManager().getLaunchIntentForPackage("com.mi.health");
          paramy.a.startActivity(paramView);
        }
      }
    }
    catch (Exception paramy)
    {
      z.d("Cal:D:MenstruationSingleCard", "onClick(): jump to health menstruation error. ", paramy);
    }
  }
  
  private static final void I(y paramy, a.a parama, int paramInt, View paramView)
  {
    r.f(paramy, "this$0");
    r.f(parama, "$holder");
    boolean bool = b2.a.d(paramy.a, "preferences_menstruation_is_private", true);
    b2.a.l(paramy.a, "preferences_menstruation_is_private", bool ^ true);
    paramy.K((b)parama);
    paramView = new HashMap();
    if (bool) {
      parama = "显示经期信息按钮";
    } else {
      parama = "隐藏经期信息按钮";
    }
    paramView.put("type", parama);
    paramy.l("card_button_clicked", paramInt, -1, null, paramView);
  }
  
  private final u J()
  {
    b.c(this.a, new x(this));
    return u.a;
  }
  
  private final void K(b paramb)
  {
    f4.a locala = this.s;
    if (locala == null) {
      return;
    }
    if (locala.a)
    {
      boolean bool = b2.a.d(this.a, "preferences_menstruation_is_private", true);
      Object localObject1 = paramb.d();
      int i;
      if (bool) {
        i = 2131231327;
      } else {
        i = 2131231326;
      }
      ((ImageView)localObject1).setImageResource(i);
      Object localObject2 = paramb.d();
      localObject1 = this.a.getResources();
      if (bool) {
        i = 2131887609;
      } else {
        i = 2131887608;
      }
      ((View)localObject2).setContentDescription(((Resources)localObject1).getString(i));
      localObject2 = paramb.b();
      if (bool) {
        localObject1 = locala.b;
      } else {
        localObject1 = this.a.getResources().getString(2131886883);
      }
      ((TextView)localObject2).setText((CharSequence)localObject1);
      localObject1 = paramb.c();
      if (bool) {
        paramb = locala.c;
      } else {
        paramb = this.a.getResources().getString(2131886882);
      }
      ((TextView)localObject1).setText(paramb);
    }
    else
    {
      paramb.b().setText(locala.b);
      paramb.c().setText(locala.c);
    }
  }
  
  public void b()
  {
    super.b();
    f4.a locala = b.d(this.a);
    if (locala == null)
    {
      this.t = true;
      locala = b.b(this.a);
    }
    else
    {
      this.t = false;
    }
    this.s = locala;
  }
  
  public void e(b.b paramb)
  {
    r.f(paramb, "onDataLoadCompletedListener");
    super.e(paramb);
    J();
  }
  
  public void g(a.a parama, int paramInt)
  {
    r.f(parama, "holder");
    if (!(parama instanceof b))
    {
      z.m("Cal:D:MenstruationSingleCard", "bindView(): holder error!");
      return;
    }
    super.g(parama, paramInt);
    b localb = (b)parama;
    localb.a().setOnClickListener(new v(this, paramInt));
    com.miui.calendar.util.v.k(localb.a());
    if (this.s != null)
    {
      ImageView localImageView = localb.d();
      f4.a locala = this.s;
      r.c(locala);
      int i;
      if (locala.a) {
        i = 0;
      } else {
        i = 8;
      }
      localImageView.setVisibility(i);
      localb.c().setVisibility(0);
      K(localb);
      localb.d().setOnClickListener(new w(this, parama, paramInt));
      com.miui.calendar.util.v.k(localb.d());
    }
  }
  
  public a.a h(View paramView)
  {
    r.f(paramView, "view");
    return new b(paramView);
  }
  
  public int i()
  {
    return 2131558673;
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
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/y$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/y$b;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$g;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard;", "Landroid/widget/ImageView;", "l", "Landroid/widget/ImageView;", "d", "()Landroid/widget/ImageView;", "showMenstruationIv", "Landroid/widget/TextView;", "m", "Landroid/widget/TextView;", "b", "()Landroid/widget/TextView;", "primaryTv", "n", "c", "secondaryTv", "Landroid/view/View;", "o", "Landroid/view/View;", "a", "()Landroid/view/View;", "contentView", "view", "<init>", "(Lcom/miui/calendar/card/single/custom/y;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class b
    extends CustomSingleCard.g
  {
    private final ImageView l;
    private final TextView m;
    private final TextView n;
    private final View o;
    
    public b()
    {
      super(localObject);
      this$1 = localObject.findViewById(2131362646);
      r.e(y.this, "view.findViewById(R.id.iv_eyes)");
      this.l = ((ImageView)y.this);
      this$1 = localObject.findViewById(2131362984);
      r.e(y.this, "view.findViewById(R.id.primary)");
      this.m = ((TextView)y.this);
      this$1 = localObject.findViewById(2131363121);
      r.e(y.this, "view.findViewById(R.id.secondary)");
      this.n = ((TextView)y.this);
      this$1 = localObject.findViewById(2131362221);
      r.e(y.this, "view.findViewById(R.id.content_root)");
      this.o = y.this;
    }
    
    public final View a()
    {
      return this.o;
    }
    
    public final TextView b()
    {
      return this.m;
    }
    
    public final TextView c()
    {
      return this.n;
    }
    
    public final ImageView d()
    {
      return this.l;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.single.custom.y
 * JD-Core Version:    0.7.0.1
 */