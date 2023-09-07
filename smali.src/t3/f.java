package t3;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.miui.calendar.ad.AdSchema;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.single.custom.ad.AdSingleCard;
import com.miui.calendar.card.single.custom.ad.AdSingleCard.e;
import com.miui.calendar.util.v;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import s3.a.a;

@Metadata(bv={}, d1={""}, d2={"Lt3/f;", "Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;", "", "position", "Lkotlin/u;", "Z", "", "j", "i", "Ls3/a$a;", "Ls3/a;", "holder", "g", "Landroid/view/View;", "view", "h", "Landroid/content/Context;", "context", "Lcom/miui/calendar/card/Card$ContainerType;", "containerType", "Ljava/util/Calendar;", "desiredDay", "Landroid/widget/BaseAdapter;", "adapter", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V", "a", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class f
  extends AdSingleCard
{
  public static final a A = new a(null);
  
  public f(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, 79, paramContainerType, paramCalendar, paramBaseAdapter);
  }
  
  private static final void X(f paramf, int paramInt, View paramView)
  {
    r.f(paramf, "this$0");
    paramf.Z(paramInt);
  }
  
  private static final void Y(f paramf, int paramInt, View paramView)
  {
    r.f(paramf, "this$0");
    paramf.Z(paramInt);
  }
  
  private final void Z(int paramInt)
  {
    AdSchema.onGeneralAdItemClicked(this.a, this.t);
    HashMap localHashMap = new HashMap();
    M(localHashMap);
    l("card_item_clicked", paramInt, -1, null, localHashMap);
  }
  
  public void g(a.a parama, int paramInt)
  {
    super.g(parama, paramInt);
    if ((parama instanceof b)) {
      parama = (b)parama;
    } else {
      parama = null;
    }
    if (parama == null) {
      return;
    }
    Object localObject = this.t.buttonName;
    int i = 0;
    int j;
    if ((localObject != null) && (((CharSequence)localObject).length() != 0)) {
      j = 0;
    } else {
      j = 1;
    }
    if (j == 0)
    {
      localObject = parama.a();
      if (localObject != null) {
        ((TextView)localObject).setText(this.t.buttonName);
      }
    }
    localObject = this.t.buttonColor;
    if (localObject != null)
    {
      j = i;
      if (((CharSequence)localObject).length() != 0) {}
    }
    else
    {
      j = 1;
    }
    if (j == 0) {
      try
      {
        localObject = this.a.getResources().getDrawable(2131230914);
        r.d(localObject, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable");
        GradientDrawable localGradientDrawable = (GradientDrawable)localObject;
        localGradientDrawable.setColor(Color.parseColor(this.t.buttonColor));
        localObject = parama.a();
        if (localObject != null) {
          ((View)localObject).setBackground(localGradientDrawable);
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    ViewGroup localViewGroup = parama.l;
    if (localViewGroup != null)
    {
      localViewGroup.setOnClickListener(new d(this, paramInt));
      v.k(parama.l);
    }
    if (parama.a() != null)
    {
      parama.a().setOnClickListener(new e(this, paramInt));
      v.k(parama.a());
    }
  }
  
  public a.a h(View paramView)
  {
    return new b(paramView);
  }
  
  public int i()
  {
    return 2131558641;
  }
  
  public boolean j()
  {
    if (super.j())
    {
      List localList = this.t.imgUrls;
      if ((localList != null) && (localList.size() > 0)) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lt3/f$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lt3/f$b;", "Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;", "Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;", "Landroid/widget/TextView;", "adAction", "Landroid/widget/TextView;", "a", "()Landroid/widget/TextView;", "Landroid/view/View;", "view", "<init>", "(Lt3/f;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class b
    extends AdSingleCard.e
  {
    private final TextView P;
    
    public b()
    {
      super(localView);
      if (localView != null) {
        this$1 = (TextView)localView.findViewById(2131361908);
      } else {
        this$1 = null;
      }
      this.P = f.this;
    }
    
    public final TextView a()
    {
      return this.P;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     t3.f
 * JD-Core Version:    0.7.0.1
 */