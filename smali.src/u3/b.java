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
import g4.a;
import java.util.Calendar;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import s3.a.a;

@Metadata(bv={}, d1={""}, d2={"Lu3/b;", "Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;", "", "j", "", "i", "Ls3/a$a;", "Ls3/a;", "holder", "position", "Lkotlin/u;", "g", "", "", "", "params", "M", "Landroid/view/View;", "view", "h", "Landroid/content/Context;", "context", "Lcom/miui/calendar/card/Card$ContainerType;", "containerType", "Ljava/util/Calendar;", "desiredDay", "Landroid/widget/BaseAdapter;", "adapter", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V", "a", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class b
  extends AdSingleCard
{
  public static final b A = new b(null);
  
  public b(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, 68, paramContainerType, paramCalendar, paramBaseAdapter);
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
    Object localObject = parama.s;
    if (localObject != null) {
      ((OnlineImageView)localObject).a(this.t.iconUrl, 2131231433, 2131231431);
    }
    localObject = parama.C;
    if (localObject != null)
    {
      AdSchema localAdSchema = this.t;
      int i = localAdSchema.apkSize;
      if ((localAdSchema != null) && (i == 0)) {
        paramInt = 1;
      } else {
        paramInt = 0;
      }
      if (paramInt == 0)
      {
        paramInt = i / 1048576;
        ((TextView)localObject).setText(this.a.getResources().getString(2131886152, new Object[] { Integer.valueOf(paramInt) }));
        paramInt = 0;
        break label137;
      }
    }
    if (localObject != null) {
      ((View)localObject).setVisibility(8);
    }
    paramInt = 1;
    label137:
    localObject = parama.w;
    if (localObject != null)
    {
      long l = this.t.totalDownloadNum / 10000;
      localObject = this.a.getResources().getString(2131886169, new Object[] { Long.valueOf(l) });
      r.e(localObject, "mContext.resources.getSt…nload_number_text_1, num)");
      parama.w.setText((CharSequence)localObject);
    }
    else
    {
      if (localObject != null) {
        ((View)localObject).setVisibility(8);
      }
      paramInt++;
    }
    if (paramInt > 0)
    {
      parama = parama.F;
      if (parama != null) {
        parama.setVisibility(8);
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
    return 2131558479;
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
  
  @Metadata(bv={}, d1={""}, d2={"Lu3/b$a;", "Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;", "Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;", "Landroid/view/View;", "view", "<init>", "(Lu3/b;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public final class a
    extends AdSingleCard.e
  {
    public a()
    {
      super(localView);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lu3/b$b;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     u3.b
 * JD-Core Version:    0.7.0.1
 */