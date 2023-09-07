package t3;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.miui.calendar.ad.AdSchema;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.single.custom.ad.AdSingleCard;
import com.miui.calendar.card.single.custom.ad.AdSingleCard.e;
import com.miui.calendar.util.e0;
import com.miui.calendar.view.OnlineImageView;
import com.miui.calendar.web.d;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.z;
import s3.a.a;

@Metadata(bv={}, d1={""}, d2={"Lt3/c;", "Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;", "", "j", "", "i", "Ls3/a$a;", "Ls3/a;", "holder", "position", "Lkotlin/u;", "g", "", "", "", "params", "M", "Landroid/view/View;", "view", "h", "Landroid/content/Context;", "context", "Lcom/miui/calendar/card/Card$ContainerType;", "containerType", "Ljava/util/Calendar;", "desiredDay", "Landroid/widget/BaseAdapter;", "adapter", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V", "a", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class c
  extends AdSingleCard
{
  public static final b A = new b(null);
  
  public c(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, 68, paramContainerType, paramCalendar, paramBaseAdapter);
  }
  
  private static final void X(c paramc, View paramView)
  {
    r.f(paramc, "this$0");
    paramView = d.d(paramc.a, paramc.t.appPrivacy);
    paramc.a.startActivity(paramView);
  }
  
  private static final void Y(c paramc, View paramView)
  {
    r.f(paramc, "this$0");
    paramView = d.d(paramc.a, paramc.t.appPermission);
    paramc.a.startActivity(paramView);
  }
  
  public void M(Map<String, Object> paramMap)
  {
    r.f(paramMap, "params");
    paramMap.put("ad_day_offset", String.valueOf(e0.d(this.e, Calendar.getInstance())));
  }
  
  public void g(a.a parama, int paramInt)
  {
    r.f(parama, "holder");
    super.g(parama, paramInt);
    parama = (a)parama;
    Object localObject1 = parama.s;
    if (localObject1 != null) {
      ((OnlineImageView)localObject1).a(this.t.iconUrl, 2131231433, 2131231431);
    }
    float f1 = this.a.getResources().getDimension(2131165596);
    float f2 = this.a.getResources().getDimension(2131165595);
    Object localObject2 = parama.G;
    if (localObject2 != null)
    {
      localObject1 = this.t.appDeveloper;
      if (localObject1 != null)
      {
        ((TextView)localObject2).setText((CharSequence)localObject1);
        localObject1 = parama.G;
        if (this.t.appDeveloper.length() > 18) {
          f2 = f1;
        }
        ((TextView)localObject1).setTextSize(2, f2);
      }
    }
    f2 = this.a.getResources().getDimension(2131165613);
    f1 = this.a.getResources().getDimension(2131165612);
    float f3;
    if (parama.H != null)
    {
      localObject1 = this.t.appVersion;
      if (localObject1 != null)
      {
        localObject2 = U((String)localObject1);
        localObject1 = parama.H;
        Object localObject3 = z.a;
        localObject3 = new StringBuilder();
        ((StringBuilder)localObject3).append("| ");
        ((StringBuilder)localObject3).append((String)localObject2);
        localObject2 = String.format(((StringBuilder)localObject3).toString(), Arrays.copyOf(new Object[0], 0));
        r.e(localObject2, "format(format, *args)");
        ((TextView)localObject1).setText((CharSequence)localObject2);
        localObject1 = parama.H;
        if (this.t.appVersion.length() > 20) {
          f3 = f2;
        } else {
          f3 = f1;
        }
        ((TextView)localObject1).setTextSize(2, f3);
      }
    }
    localObject2 = parama.J;
    if (localObject2 != null)
    {
      localObject1 = this.t.appVersion;
      if (localObject1 != null)
      {
        if (((String)localObject1).length() > 20) {
          f3 = f2;
        } else {
          f3 = f1;
        }
        ((TextView)localObject2).setTextSize(2, f3);
        parama.J.setOnClickListener(new a(this));
      }
    }
    localObject2 = parama.I;
    if (localObject2 != null)
    {
      localObject1 = this.t.appVersion;
      if (localObject1 != null)
      {
        if (((String)localObject1).length() <= 20) {
          f2 = f1;
        }
        ((TextView)localObject2).setTextSize(2, f2);
        parama.I.setOnClickListener(new b(this));
      }
    }
  }
  
  public a.a h(View paramView)
  {
    r.f(paramView, "view");
    return new a(paramView);
  }
  
  public int i()
  {
    return 2131558477;
  }
  
  public boolean j()
  {
    boolean bool;
    if ((super.j()) && (!TextUtils.isEmpty(this.t.packageName)) && (g4.a.a(this.a))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lt3/c$a;", "Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;", "Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;", "Landroid/view/View;", "view", "<init>", "(Lt3/c;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public final class a
    extends AdSingleCard.e
  {
    public a()
    {
      super(localView);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lt3/c$b;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     t3.c
 * JD-Core Version:    0.7.0.1
 */