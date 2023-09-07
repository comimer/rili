package u3;

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
import g4.a;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.z;
import s3.a.a;

@Metadata(bv={}, d1={""}, d2={"Lu3/h;", "Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;", "", "j", "", "i", "Ls3/a$a;", "Ls3/a;", "holder", "position", "Lkotlin/u;", "g", "", "", "", "params", "M", "Landroid/view/View;", "view", "h", "Landroid/content/Context;", "context", "Lcom/miui/calendar/card/Card$ContainerType;", "containerType", "Ljava/util/Calendar;", "desiredDay", "Landroid/widget/BaseAdapter;", "adapter", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V", "a", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class h
  extends AdSingleCard
{
  public static final b A = new b(null);
  
  public h(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, 68, paramContainerType, paramCalendar, paramBaseAdapter);
  }
  
  private static final void X(h paramh, View paramView)
  {
    r.f(paramh, "this$0");
    paramView = d.d(paramh.a, paramh.t.appPrivacy);
    paramh.a.startActivity(paramView);
  }
  
  private static final void Y(h paramh, View paramView)
  {
    r.f(paramh, "this$0");
    paramView = d.d(paramh.a, paramh.t.appPermission);
    paramh.a.startActivity(paramView);
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
    a locala = (a)parama;
    parama = locala.s;
    if (parama != null) {
      parama.a(this.t.iconUrl, 2131231433, 2131231431);
    }
    Object localObject1 = locala.G;
    if (localObject1 != null)
    {
      parama = this.t.appDeveloper;
      if (parama != null)
      {
        if (parama.length() > 19) {
          parama = this.t.appDeveloper.subSequence(0, 19);
        } else {
          parama = this.t.appDeveloper;
        }
        ((TextView)localObject1).setText(parama);
      }
    }
    if (locala.H != null)
    {
      parama = this.t.appVersion;
      if (parama != null)
      {
        localObject1 = U(parama);
        parama = locala.H;
        Object localObject2 = z.a;
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("| ");
        ((StringBuilder)localObject2).append((String)localObject1);
        localObject1 = String.format(((StringBuilder)localObject2).toString(), Arrays.copyOf(new Object[0], 0));
        r.e(localObject1, "format(format, *args)");
        parama.setText((CharSequence)localObject1);
      }
    }
    parama = locala.J;
    if ((parama != null) && (this.t.appVersion != null)) {
      parama.setOnClickListener(new f(this));
    }
    parama = locala.I;
    if ((parama != null) && (this.t.appVersion != null)) {
      parama.setOnClickListener(new g(this));
    }
    parama = locala.C;
    if (parama != null)
    {
      localObject1 = this.t;
      paramInt = ((AdSchema)localObject1).apkSize;
      if ((localObject1 != null) && (paramInt == 0)) {
        paramInt = 1;
      } else {
        paramInt = 0;
      }
      if (paramInt == 0)
      {
        if (parama != null) {
          parama.setVisibility(0);
        }
        paramInt = this.t.apkSize / 1048576;
        locala.C.setText(this.a.getResources().getString(2131886152, new Object[] { Integer.valueOf(paramInt) }));
        break label369;
      }
    }
    if (parama != null) {
      parama.setVisibility(8);
    }
    label369:
    parama = locala.w;
    if (parama != null)
    {
      long l1 = this.t.totalDownloadNum;
      if (parama != null) {
        parama.setVisibility(0);
      }
      l1 = this.t.totalDownloadNum;
      if (l1 < 1000L)
      {
        parama = String.valueOf(l1);
      }
      else if (l1 < 10000L)
      {
        long l2 = 100;
        parama = String.valueOf(l1 / l2 * l2);
      }
      else
      {
        double d;
        if (l1 < 100000L)
        {
          d = l1;
          parama = this.a.getResources();
          localObject1 = z.a;
          localObject1 = String.format("%.1f", Arrays.copyOf(new Object[] { Double.valueOf(d / 10000) }, 1));
          r.e(localObject1, "format(format, *args)");
          parama = parama.getString(2131886170, new Object[] { localObject1 });
          r.e(parama, "mContext.resources.getSt…(\"%.1f\", (num1 / 10000)))");
        }
        else if (l1 < 100000000L)
        {
          parama = this.a.getResources().getString(2131886170, new Object[] { String.valueOf(l1 / 10000) });
          r.e(parama, "mContext.resources.getSt…(num / 10000).toString())");
        }
        else if (l1 < 1000000000L)
        {
          d = l1;
          parama = this.a.getResources();
          localObject1 = z.a;
          localObject1 = String.format("%.1f", Arrays.copyOf(new Object[] { Double.valueOf(d / 100000000) }, 1));
          r.e(localObject1, "format(format, *args)");
          parama = parama.getString(2131886171, new Object[] { localObject1 });
          r.e(parama, "mContext.resources.getSt…1f\", (num1 / 100000000)))");
        }
        else
        {
          parama = this.a.getResources().getString(2131886171, new Object[] { String.valueOf(l1 / 100000000) });
          r.e(parama, "mContext.resources.getSt… / 100000000).toString())");
        }
      }
      locala.w.setText(parama);
    }
    else if (parama != null)
    {
      parama.setVisibility(8);
    }
  }
  
  public a.a h(View paramView)
  {
    r.f(paramView, "view");
    return new a(paramView);
  }
  
  public int i()
  {
    return 2131558481;
  }
  
  public boolean j()
  {
    boolean bool;
    if ((super.j()) && (!TextUtils.isEmpty(this.t.packageName)) && (a.a(this.a))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lu3/h$a;", "Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;", "Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;", "Landroid/view/View;", "view", "<init>", "(Lu3/h;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public final class a
    extends AdSingleCard.e
  {
    public a()
    {
      super(localView);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lu3/h$b;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     u3.h
 * JD-Core Version:    0.7.0.1
 */