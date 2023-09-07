package com.miui.calendar.card.single.custom;

import android.content.Context;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.Keep;
import com.android.calendar.common.ModuleSchema;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.schema.CustomCardItemSchema;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.util.v;
import com.miui.calendar.util.z;
import com.miui.calendar.view.OnlineImageView;
import java.util.Calendar;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import s3.a.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/HealthSingleCard;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard;", "Landroid/view/View;", "healthView", "Landroid/widget/TextView;", "primaryTextView1", "Lcom/miui/calendar/view/OnlineImageView;", "imageView1", "imageView2", "imageView3", "Lcom/miui/calendar/card/schema/CustomCardItemSchema;", "cardItem", "", "cardPosition", "itemPosition", "Lkotlin/u;", "H", "primaryTextView", "F", "", "j", "i", "B", "Ls3/a$a;", "Ls3/a;", "holder", "position", "g", "view", "h", "Ljava/lang/Class;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;", "A", "Landroid/content/Context;", "context", "Lcom/miui/calendar/card/Card$ContainerType;", "containerType", "Ljava/util/Calendar;", "desiredDay", "Landroid/widget/BaseAdapter;", "adapter", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V", "s", "a", "HealthItemExtraSchema", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class HealthSingleCard
  extends CustomSingleCard
{
  public static final a s = new a(null);
  
  public HealthSingleCard(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, 32, paramContainerType, paramCalendar, paramBaseAdapter);
  }
  
  private final void F(TextView paramTextView, CustomCardItemSchema paramCustomCardItemSchema, int paramInt1, int paramInt2)
  {
    paramTextView.setText(paramCustomCardItemSchema.title);
    paramTextView.setOnClickListener(new l(paramCustomCardItemSchema, this, paramInt1, paramInt2));
    v.k(paramTextView);
  }
  
  private static final void G(CustomCardItemSchema paramCustomCardItemSchema, HealthSingleCard paramHealthSingleCard, int paramInt1, int paramInt2, View paramView)
  {
    r.f(paramCustomCardItemSchema, "$cardItem");
    r.f(paramHealthSingleCard, "this$0");
    paramView = paramCustomCardItemSchema.action;
    if (paramView != null) {
      paramView.sendIntent(paramHealthSingleCard.a);
    }
    paramHealthSingleCard.k("card_item_clicked", paramInt1, paramInt2, paramCustomCardItemSchema.title);
  }
  
  private final void H(View paramView, TextView paramTextView, OnlineImageView paramOnlineImageView1, OnlineImageView paramOnlineImageView2, OnlineImageView paramOnlineImageView3, CustomCardItemSchema paramCustomCardItemSchema, int paramInt1, int paramInt2)
  {
    paramTextView.setText(paramCustomCardItemSchema.title);
    if (paramInt2 < this.r.size())
    {
      paramTextView = this.r.get(paramInt2);
      r.d(paramTextView, "null cannot be cast to non-null type com.miui.calendar.card.single.custom.HealthSingleCard.HealthItemExtraSchema");
      paramTextView = (HealthItemExtraSchema)paramTextView;
      if (paramTextView.getImages() != null)
      {
        String[] arrayOfString = paramTextView.getImages();
        r.c(arrayOfString);
        int i;
        if (arrayOfString.length == 0) {
          i = 1;
        } else {
          i = 0;
        }
        if (i == 0)
        {
          paramOnlineImageView1.setVisibility(0);
          paramOnlineImageView2.setVisibility(0);
          paramOnlineImageView3.setVisibility(0);
          arrayOfString = paramTextView.getImages();
          r.c(arrayOfString);
          if (arrayOfString.length < 3)
          {
            arrayOfString = paramTextView.getImages();
            r.c(arrayOfString);
            paramOnlineImageView1.a(arrayOfString[0], 2131231433, 2131231431);
            paramOnlineImageView1 = paramTextView.getImages();
            r.c(paramOnlineImageView1);
            paramOnlineImageView2.a(paramOnlineImageView1[0], 2131231433, 2131231431);
            paramTextView = paramTextView.getImages();
            r.c(paramTextView);
            paramOnlineImageView3.a(paramTextView[0], 2131231433, 2131231431);
            break label288;
          }
          arrayOfString = paramTextView.getImages();
          r.c(arrayOfString);
          paramOnlineImageView1.a(arrayOfString[0], 2131231433, 2131231431);
          paramOnlineImageView1 = paramTextView.getImages();
          r.c(paramOnlineImageView1);
          paramOnlineImageView2.a(paramOnlineImageView1[1], 2131231433, 2131231431);
          paramTextView = paramTextView.getImages();
          r.c(paramTextView);
          paramOnlineImageView3.a(paramTextView[2], 2131231433, 2131231431);
          break label288;
        }
      }
      paramOnlineImageView1.setVisibility(8);
      paramOnlineImageView2.setVisibility(8);
      paramOnlineImageView3.setVisibility(8);
    }
    else
    {
      z.m("Cal:D:HealthSingleCard", "bindView() wrong extra data");
    }
    label288:
    paramView.setOnClickListener(new m(paramCustomCardItemSchema, this, paramInt1, paramInt2));
    v.k(paramView);
  }
  
  private static final void I(CustomCardItemSchema paramCustomCardItemSchema, HealthSingleCard paramHealthSingleCard, int paramInt1, int paramInt2, View paramView)
  {
    r.f(paramCustomCardItemSchema, "$cardItem");
    r.f(paramHealthSingleCard, "this$0");
    paramView = paramCustomCardItemSchema.action;
    if (paramView != null) {
      paramView.sendIntent(paramHealthSingleCard.a);
    }
    paramHealthSingleCard.k("card_item_clicked", paramInt1, paramInt2, paramCustomCardItemSchema.title);
  }
  
  public Class<? extends CustomSingleCard.CustomItemExtraSchema> A()
  {
    return HealthItemExtraSchema.class;
  }
  
  public int B()
  {
    return 3;
  }
  
  public void g(a.a parama, int paramInt)
  {
    r.f(parama, "holder");
    if (!(parama instanceof b))
    {
      z.m("Cal:D:HealthSingleCard", "bindView(): holder error!");
      return;
    }
    super.g(parama, paramInt);
    Object localObject1 = this.m.itemList;
    parama = (b)parama;
    View localView = parama.a();
    TextView localTextView = parama.e();
    Object localObject2 = parama.b();
    OnlineImageView localOnlineImageView = parama.c();
    Object localObject3 = parama.d();
    Object localObject4 = ((List)localObject1).get(this.n);
    r.e(localObject4, "cardItems[mShowPosition]");
    H(localView, localTextView, (OnlineImageView)localObject2, localOnlineImageView, (OnlineImageView)localObject3, (CustomCardItemSchema)localObject4, paramInt, this.n);
    localObject2 = parama.f();
    localObject3 = ((List)localObject1).get(this.n + 1);
    r.e(localObject3, "cardItems[mShowPosition + 1]");
    F((TextView)localObject2, (CustomCardItemSchema)localObject3, paramInt, this.n + 1);
    parama = parama.g();
    localObject1 = ((List)localObject1).get(this.n + 2);
    r.e(localObject1, "cardItems[mShowPosition + 2]");
    F(parama, (CustomCardItemSchema)localObject1, paramInt, this.n + 2);
  }
  
  public a.a h(View paramView)
  {
    r.f(paramView, "view");
    return new b(paramView);
  }
  
  public int i()
  {
    return 2131558595;
  }
  
  public boolean j()
  {
    Object localObject = this.m;
    if (localObject != null)
    {
      localObject = ((CustomCardSchema)localObject).itemList;
      if ((localObject != null) && (((List)localObject).size() >= 3)) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  @Metadata(d1={""}, d2={"Lcom/miui/calendar/card/single/custom/HealthSingleCard$HealthItemExtraSchema;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;", "(Lcom/miui/calendar/card/single/custom/HealthSingleCard;)V", "images", "", "", "getImages", "()[Ljava/lang/String;", "setImages", "([Ljava/lang/String;)V", "[Ljava/lang/String;", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
  @Keep
  private final class HealthItemExtraSchema
    extends CustomSingleCard.CustomItemExtraSchema
  {
    private String[] images;
    
    public final String[] getImages()
    {
      return this.images;
    }
    
    public final void setImages(String[] paramArrayOfString)
    {
      this.images = paramArrayOfString;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/HealthSingleCard$a;", "", "", "HEALTH_NUM", "I", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/HealthSingleCard$b;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$g;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard;", "Landroid/view/View;", "l", "Landroid/view/View;", "a", "()Landroid/view/View;", "setHealthView1", "(Landroid/view/View;)V", "healthView1", "Landroid/widget/TextView;", "m", "Landroid/widget/TextView;", "e", "()Landroid/widget/TextView;", "setPrimaryTextView1", "(Landroid/widget/TextView;)V", "primaryTextView1", "Lcom/miui/calendar/view/OnlineImageView;", "n", "Lcom/miui/calendar/view/OnlineImageView;", "b", "()Lcom/miui/calendar/view/OnlineImageView;", "setImageView1", "(Lcom/miui/calendar/view/OnlineImageView;)V", "imageView1", "o", "c", "setImageView2", "imageView2", "p", "d", "setImageView3", "imageView3", "q", "f", "setPrimaryTextView2", "primaryTextView2", "r", "g", "setPrimaryTextView3", "primaryTextView3", "view", "<init>", "(Lcom/miui/calendar/card/single/custom/HealthSingleCard;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class b
    extends CustomSingleCard.g
  {
    private View l;
    private TextView m;
    private OnlineImageView n;
    private OnlineImageView o;
    private OnlineImageView p;
    private TextView q;
    private TextView r;
    
    public b()
    {
      super(localObject);
      this$1 = localObject.findViewById(2131362525);
      r.e(HealthSingleCard.this, "view.findViewById(R.id.health1)");
      this.l = HealthSingleCard.this;
      this$1 = localObject.findViewById(2131362985);
      r.e(HealthSingleCard.this, "view.findViewById(R.id.primary1)");
      this.m = ((TextView)HealthSingleCard.this);
      this$1 = localObject.findViewById(2131362582);
      r.e(HealthSingleCard.this, "view.findViewById(R.id.image1)");
      this.n = ((OnlineImageView)HealthSingleCard.this);
      this$1 = localObject.findViewById(2131362583);
      r.e(HealthSingleCard.this, "view.findViewById(R.id.image2)");
      this.o = ((OnlineImageView)HealthSingleCard.this);
      this$1 = localObject.findViewById(2131362584);
      r.e(HealthSingleCard.this, "view.findViewById(R.id.image3)");
      this.p = ((OnlineImageView)HealthSingleCard.this);
      this$1 = localObject.findViewById(2131362986);
      r.e(HealthSingleCard.this, "view.findViewById(R.id.primary2)");
      this.q = ((TextView)HealthSingleCard.this);
      this$1 = localObject.findViewById(2131362987);
      r.e(HealthSingleCard.this, "view.findViewById(R.id.primary3)");
      this.r = ((TextView)HealthSingleCard.this);
    }
    
    public final View a()
    {
      return this.l;
    }
    
    public final OnlineImageView b()
    {
      return this.n;
    }
    
    public final OnlineImageView c()
    {
      return this.o;
    }
    
    public final OnlineImageView d()
    {
      return this.p;
    }
    
    public final TextView e()
    {
      return this.m;
    }
    
    public final TextView f()
    {
      return this.q;
    }
    
    public final TextView g()
    {
      return this.r;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.single.custom.HealthSingleCard
 * JD-Core Version:    0.7.0.1
 */