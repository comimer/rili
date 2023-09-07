package com.miui.calendar.card.single.custom;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.TextView;
import androidx.annotation.Keep;
import com.android.calendar.common.ModuleSchema;
import com.android.calendar.settings.j;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.schema.CustomCardItemSchema;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.view.OnlineImageView;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import miuix.animation.ITouchStyle;
import miuix.animation.ITouchStyle.TouchType;
import miuix.animation.a;
import miuix.animation.d;
import s3.a.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/FilmSingleCard;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard;", "Landroid/view/View;", "filmView", "Lcom/miui/calendar/view/OnlineImageView;", "imageView", "Landroid/widget/TextView;", "primaryTextView", "secondaryTextView", "Landroid/widget/RatingBar;", "ratingView", "ratingTextView", "Lcom/miui/calendar/card/schema/CustomCardItemSchema;", "cardItem", "", "cardPosition", "itemPosition", "Lkotlin/u;", "G", "", "j", "i", "B", "Ls3/a$a;", "Ls3/a;", "holder", "position", "g", "view", "h", "Ljava/lang/Class;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;", "A", "Landroid/content/Context;", "context", "Lcom/miui/calendar/card/Card$ContainerType;", "containerType", "Ljava/util/Calendar;", "desiredDay", "Landroid/widget/BaseAdapter;", "adapter", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V", "s", "a", "FilmItemExtraSchema", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class FilmSingleCard
  extends CustomSingleCard
{
  public static final a s = new a(null);
  
  public FilmSingleCard(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, 21, paramContainerType, paramCalendar, paramBaseAdapter);
  }
  
  private final void G(View paramView, OnlineImageView paramOnlineImageView, TextView paramTextView1, TextView paramTextView2, RatingBar paramRatingBar, TextView paramTextView3, CustomCardItemSchema paramCustomCardItemSchema, int paramInt1, int paramInt2)
  {
    paramOnlineImageView.a(paramCustomCardItemSchema.image, 2131231433, 2131231431);
    paramOnlineImageView.setContentDescription(paramCustomCardItemSchema.title);
    paramTextView1.setText(paramCustomCardItemSchema.title);
    if (TextUtils.isEmpty(paramCustomCardItemSchema.description))
    {
      paramTextView2.setVisibility(8);
    }
    else
    {
      paramTextView2.setVisibility(0);
      paramTextView2.setText(paramCustomCardItemSchema.description);
    }
    float f = 0.0F;
    if (paramInt2 < this.r.size())
    {
      paramOnlineImageView = this.r.get(paramInt2);
      r.d(paramOnlineImageView, "null cannot be cast to non-null type com.miui.calendar.card.single.custom.FilmSingleCard.FilmItemExtraSchema");
      paramOnlineImageView = ((FilmItemExtraSchema)paramOnlineImageView).getScore();
      r.c(paramOnlineImageView);
      f = Float.parseFloat(paramOnlineImageView);
    }
    paramRatingBar.setRating(f / 20.0F);
    paramOnlineImageView = kotlin.jvm.internal.z.a;
    paramOnlineImageView = String.format("%.1f", Arrays.copyOf(new Object[] { Float.valueOf(f / 10.0F) }, 1));
    r.e(paramOnlineImageView, "format(format, *args)");
    paramTextView3.setText(paramOnlineImageView);
    paramTextView1 = (ImageView)paramView.findViewById(2131362581);
    paramOnlineImageView = (LinearLayout)paramView.findViewById(2131362216);
    paramTextView1.setOnTouchListener(new g(paramTextView1, paramOnlineImageView, paramView));
    paramOnlineImageView.setOnTouchListener(new h(paramTextView1, paramOnlineImageView, paramView));
    paramView.setOnClickListener(new i(paramCustomCardItemSchema, this, paramInt1));
  }
  
  private static final boolean H(ImageView paramImageView, LinearLayout paramLinearLayout, View paramView1, View paramView2, MotionEvent paramMotionEvent)
  {
    r.f(paramView1, "$filmView");
    r.f(paramMotionEvent, "event");
    a.y(new View[] { paramImageView }).d().e(paramMotionEvent);
    paramLinearLayout = a.y(new View[] { paramLinearLayout }).d();
    paramImageView = ITouchStyle.TouchType.DOWN;
    paramView2 = paramLinearLayout.z(0.6F, new ITouchStyle.TouchType[] { paramImageView });
    paramLinearLayout = ITouchStyle.TouchType.UP;
    paramView2.z(1.0F, new ITouchStyle.TouchType[] { paramLinearLayout }).O(1.0F, new ITouchStyle.TouchType[] { paramImageView }).O(1.0F, new ITouchStyle.TouchType[] { paramLinearLayout }).e(paramMotionEvent);
    if (paramMotionEvent.getAction() == 1) {
      paramView1.performClick();
    }
    return true;
  }
  
  private static final boolean I(ImageView paramImageView, LinearLayout paramLinearLayout, View paramView1, View paramView2, MotionEvent paramMotionEvent)
  {
    r.f(paramView1, "$filmView");
    r.f(paramMotionEvent, "event");
    paramView2 = a.y(new View[] { paramImageView }).d();
    paramImageView = ITouchStyle.TouchType.DOWN;
    paramView2 = paramView2.O(1.0F, new ITouchStyle.TouchType[] { paramImageView });
    ITouchStyle.TouchType localTouchType = ITouchStyle.TouchType.UP;
    paramView2.O(1.0F, new ITouchStyle.TouchType[] { localTouchType }).e(paramMotionEvent);
    a.y(new View[] { paramLinearLayout }).d().z(0.6F, new ITouchStyle.TouchType[] { paramImageView }).z(1.0F, new ITouchStyle.TouchType[] { localTouchType }).O(1.0F, new ITouchStyle.TouchType[] { paramImageView }).O(1.0F, new ITouchStyle.TouchType[] { localTouchType }).e(paramMotionEvent);
    if (paramMotionEvent.getAction() == 1) {
      paramView1.performClick();
    }
    return true;
  }
  
  private static final void J(CustomCardItemSchema paramCustomCardItemSchema, FilmSingleCard paramFilmSingleCard, int paramInt, View paramView)
  {
    r.f(paramCustomCardItemSchema, "$cardItem");
    r.f(paramFilmSingleCard, "this$0");
    paramView = paramCustomCardItemSchema.action;
    if (paramView != null) {
      paramView.sendIntent(paramFilmSingleCard.a);
    }
    paramFilmSingleCard.k("card_item_clicked", paramInt, paramFilmSingleCard.n, paramCustomCardItemSchema.title);
  }
  
  public Class<? extends CustomSingleCard.CustomItemExtraSchema> A()
  {
    return FilmItemExtraSchema.class;
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
      com.miui.calendar.util.z.m("Cal:D:FilmSingleCard", "bindView(): holder error!");
      return;
    }
    super.g(parama, paramInt);
    Object localObject1 = this.m.itemList;
    if ((localObject1 != null) && (((List)localObject1).size() > 0))
    {
      parama = (b)parama;
      Object localObject2 = parama.a();
      Object localObject3 = parama.d();
      Object localObject4 = parama.g();
      Object localObject5 = parama.p();
      Object localObject6 = parama.m();
      TextView localTextView = parama.j();
      Object localObject7 = ((List)localObject1).get(this.n);
      r.e(localObject7, "cardItems[mShowPosition]");
      G((View)localObject2, (OnlineImageView)localObject3, (TextView)localObject4, (TextView)localObject5, (RatingBar)localObject6, localTextView, (CustomCardItemSchema)localObject7, paramInt, this.n);
      localObject5 = parama.b();
      localObject6 = parama.e();
      localObject2 = parama.h();
      localObject7 = parama.q();
      localObject3 = parama.n();
      localTextView = parama.k();
      localObject4 = ((List)localObject1).get(this.n + 1);
      r.e(localObject4, "cardItems[mShowPosition + 1]");
      G((View)localObject5, (OnlineImageView)localObject6, (TextView)localObject2, (TextView)localObject7, (RatingBar)localObject3, localTextView, (CustomCardItemSchema)localObject4, paramInt, this.n + 1);
      localObject6 = parama.c();
      localObject7 = parama.f();
      localTextView = parama.i();
      localObject4 = parama.r();
      localObject5 = parama.o();
      parama = parama.l();
      localObject1 = ((List)localObject1).get(this.n + 2);
      r.e(localObject1, "cardItems[mShowPosition + 2]");
      G((View)localObject6, (OnlineImageView)localObject7, localTextView, (TextView)localObject4, (RatingBar)localObject5, parama, (CustomCardItemSchema)localObject1, paramInt, this.n + 2);
    }
  }
  
  public a.a h(View paramView)
  {
    r.f(paramView, "view");
    return new b(paramView);
  }
  
  public int i()
  {
    return 2131558565;
  }
  
  public boolean j()
  {
    Object localObject = this.m;
    if (localObject != null)
    {
      localObject = ((CustomCardSchema)localObject).itemList;
      if ((localObject != null) && (((List)localObject).size() >= 3) && (j.q(this.a))) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  @Metadata(d1={""}, d2={"Lcom/miui/calendar/card/single/custom/FilmSingleCard$FilmItemExtraSchema;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;", "(Lcom/miui/calendar/card/single/custom/FilmSingleCard;)V", "score", "", "getScore", "()Ljava/lang/String;", "setScore", "(Ljava/lang/String;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
  @Keep
  public final class FilmItemExtraSchema
    extends CustomSingleCard.CustomItemExtraSchema
  {
    private String score;
    
    public final String getScore()
    {
      return this.score;
    }
    
    public final void setScore(String paramString)
    {
      this.score = paramString;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/FilmSingleCard$a;", "", "", "FILM_NUM", "I", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/FilmSingleCard$b;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$g;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard;", "Landroid/view/View;", "l", "Landroid/view/View;", "a", "()Landroid/view/View;", "setFilmView1", "(Landroid/view/View;)V", "filmView1", "Lcom/miui/calendar/view/OnlineImageView;", "m", "Lcom/miui/calendar/view/OnlineImageView;", "d", "()Lcom/miui/calendar/view/OnlineImageView;", "setImageView1", "(Lcom/miui/calendar/view/OnlineImageView;)V", "imageView1", "Landroid/widget/TextView;", "n", "Landroid/widget/TextView;", "g", "()Landroid/widget/TextView;", "setPrimaryTextView1", "(Landroid/widget/TextView;)V", "primaryTextView1", "o", "p", "setSecondaryTextView1", "secondaryTextView1", "Landroid/widget/RatingBar;", "Landroid/widget/RatingBar;", "()Landroid/widget/RatingBar;", "setRatingView1", "(Landroid/widget/RatingBar;)V", "ratingView1", "q", "j", "setRatingTextView1", "ratingTextView1", "r", "b", "setFilmView2", "filmView2", "s", "e", "setImageView2", "imageView2", "t", "h", "setPrimaryTextView2", "primaryTextView2", "u", "setSecondaryTextView2", "secondaryTextView2", "v", "setRatingView2", "ratingView2", "w", "k", "setRatingTextView2", "ratingTextView2", "x", "c", "setFilmView3", "filmView3", "y", "f", "setImageView3", "imageView3", "z", "i", "setPrimaryTextView3", "primaryTextView3", "A", "setSecondaryTextView3", "secondaryTextView3", "B", "setRatingView3", "ratingView3", "C", "setRatingTextView3", "ratingTextView3", "view", "<init>", "(Lcom/miui/calendar/card/single/custom/FilmSingleCard;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class b
    extends CustomSingleCard.g
  {
    private TextView A;
    private RatingBar B;
    private TextView C;
    private View l;
    private OnlineImageView m;
    private TextView n;
    private TextView o;
    private RatingBar p;
    private TextView q;
    private View r;
    private OnlineImageView s;
    private TextView t;
    private TextView u;
    private RatingBar v;
    private TextView w;
    private View x;
    private OnlineImageView y;
    private TextView z;
    
    public b()
    {
      super(localObject);
      this$1 = localObject.findViewById(2131362456);
      r.e(FilmSingleCard.this, "view.findViewById(R.id.film1)");
      this.l = FilmSingleCard.this;
      this$1 = FilmSingleCard.this.findViewById(2131362581);
      r.d(FilmSingleCard.this, "null cannot be cast to non-null type com.miui.calendar.view.OnlineImageView");
      this.m = ((OnlineImageView)FilmSingleCard.this);
      this$1 = this.l.findViewById(2131362984);
      r.d(FilmSingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.n = ((TextView)FilmSingleCard.this);
      this$1 = this.l.findViewById(2131363121);
      r.d(FilmSingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.o = ((TextView)FilmSingleCard.this);
      this$1 = this.l.findViewById(2131363000);
      r.d(FilmSingleCard.this, "null cannot be cast to non-null type android.widget.RatingBar");
      this.p = ((RatingBar)FilmSingleCard.this);
      this$1 = this.l.findViewById(2131363007);
      r.d(FilmSingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.q = ((TextView)FilmSingleCard.this);
      this$1 = localObject.findViewById(2131362457);
      r.e(FilmSingleCard.this, "view.findViewById(R.id.film2)");
      this.r = FilmSingleCard.this;
      this$1 = FilmSingleCard.this.findViewById(2131362581);
      r.d(FilmSingleCard.this, "null cannot be cast to non-null type com.miui.calendar.view.OnlineImageView");
      this.s = ((OnlineImageView)FilmSingleCard.this);
      this$1 = this.r.findViewById(2131362984);
      r.d(FilmSingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.t = ((TextView)FilmSingleCard.this);
      this$1 = this.r.findViewById(2131363121);
      r.d(FilmSingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.u = ((TextView)FilmSingleCard.this);
      this$1 = this.r.findViewById(2131363000);
      r.d(FilmSingleCard.this, "null cannot be cast to non-null type android.widget.RatingBar");
      this.v = ((RatingBar)FilmSingleCard.this);
      this$1 = this.r.findViewById(2131363007);
      r.d(FilmSingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.w = ((TextView)FilmSingleCard.this);
      this$1 = localObject.findViewById(2131362458);
      r.e(FilmSingleCard.this, "view.findViewById(R.id.film3)");
      this.x = FilmSingleCard.this;
      this$1 = FilmSingleCard.this.findViewById(2131362581);
      r.d(FilmSingleCard.this, "null cannot be cast to non-null type com.miui.calendar.view.OnlineImageView");
      this.y = ((OnlineImageView)FilmSingleCard.this);
      this$1 = this.x.findViewById(2131362984);
      r.d(FilmSingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.z = ((TextView)FilmSingleCard.this);
      this$1 = this.x.findViewById(2131363121);
      r.d(FilmSingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.A = ((TextView)FilmSingleCard.this);
      this$1 = this.x.findViewById(2131363000);
      r.d(FilmSingleCard.this, "null cannot be cast to non-null type android.widget.RatingBar");
      this.B = ((RatingBar)FilmSingleCard.this);
      this$1 = this.x.findViewById(2131363007);
      r.d(FilmSingleCard.this, "null cannot be cast to non-null type android.widget.TextView");
      this.C = ((TextView)FilmSingleCard.this);
    }
    
    public final View a()
    {
      return this.l;
    }
    
    public final View b()
    {
      return this.r;
    }
    
    public final View c()
    {
      return this.x;
    }
    
    public final OnlineImageView d()
    {
      return this.m;
    }
    
    public final OnlineImageView e()
    {
      return this.s;
    }
    
    public final OnlineImageView f()
    {
      return this.y;
    }
    
    public final TextView g()
    {
      return this.n;
    }
    
    public final TextView h()
    {
      return this.t;
    }
    
    public final TextView i()
    {
      return this.z;
    }
    
    public final TextView j()
    {
      return this.q;
    }
    
    public final TextView k()
    {
      return this.w;
    }
    
    public final TextView l()
    {
      return this.C;
    }
    
    public final RatingBar m()
    {
      return this.p;
    }
    
    public final RatingBar n()
    {
      return this.v;
    }
    
    public final RatingBar o()
    {
      return this.B;
    }
    
    public final TextView p()
    {
      return this.o;
    }
    
    public final TextView q()
    {
      return this.u;
    }
    
    public final TextView r()
    {
      return this.A;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.single.custom.FilmSingleCard
 * JD-Core Version:    0.7.0.1
 */