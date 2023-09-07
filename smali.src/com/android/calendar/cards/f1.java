package com.android.calendar.cards;

import android.content.Context;
import com.android.calendar.application.CalendarApplication;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.limit.LimitSchema;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/f1;", "Lcom/android/calendar/cards/b;", "Lcom/android/calendar/cards/f1$a;", "Lkotlin/u;", "h", "i", "Lcom/android/calendar/cards/m1;", "b", "", "e", "", "c", "l", "f", "Lcom/android/calendar/cards/f1$a;", "mLimitData", "g", "Z", "mIsQueried", "Landroid/content/Context;", "Landroid/content/Context;", "getMContext", "()Landroid/content/Context;", "mContext", "Lcom/android/calendar/cards/t;", "mCardController", "<init>", "(Lcom/android/calendar/cards/t;)V", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class f1
  extends b<a>
{
  private a f = new a();
  private boolean g;
  private final Context h = CalendarApplication.e();
  
  public f1(t paramt)
  {
    super(paramt);
  }
  
  private static final void m(f1 paramf1)
  {
    r.f(paramf1, "this$0");
    paramf1.g = true;
    paramf1.f.h(com.miui.calendar.limit.a.i(paramf1.h));
    LimitSchema localLimitSchema = com.miui.calendar.limit.a.j(paramf1.h, paramf1.f.d());
    if ((paramf1.f.c() == null) || (!r.a(paramf1.f.c(), localLimitSchema))) {
      paramf1.f.g(localLimitSchema);
    }
    paramf1.g();
  }
  
  protected m1<?, ?> b()
  {
    return new d1(this.d);
  }
  
  protected int c()
  {
    return 52;
  }
  
  protected boolean e()
  {
    boolean bool;
    if (this.f.a() == null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected void h()
  {
    Object localObject = new a();
    this.f = ((a)localObject);
    ((a)localObject).h(com.miui.calendar.limit.a.i(this.h));
    localObject = this.f;
    ((a)localObject).g(com.miui.calendar.limit.a.j(this.h, ((a)localObject).d()));
    localObject = CardHelper.b.iterator();
    while (((Iterator)localObject).hasNext())
    {
      CustomCardSchema localCustomCardSchema = (CustomCardSchema)((Iterator)localObject).next();
      if (localCustomCardSchema.showType + 20 == 52)
      {
        this.f.e(localCustomCardSchema);
        b2.a.l(this.h, "preferences_limit_card_subscribed", true);
      }
    }
    CardHelper.l(this.f.a());
    this.f.f(CardHelper.a);
    if (!this.g) {
      com.miui.calendar.limit.a.n(this.h, new e1(this), "启动首页");
    } else {
      g();
    }
  }
  
  public void i()
  {
    super.i();
    com.miui.calendar.limit.a.m(this.h);
  }
  
  protected a l()
  {
    return this.f;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/f1$a;", "", "", "a", "Ljava/lang/String;", "d", "()Ljava/lang/String;", "h", "(Ljava/lang/String;)V", "limitCity", "Lcom/miui/calendar/limit/LimitSchema;", "b", "Lcom/miui/calendar/limit/LimitSchema;", "c", "()Lcom/miui/calendar/limit/LimitSchema;", "g", "(Lcom/miui/calendar/limit/LimitSchema;)V", "limit", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "()Lcom/miui/calendar/card/schema/CustomCardSchema;", "e", "(Lcom/miui/calendar/card/schema/CustomCardSchema;)V", "card", "Lcom/android/calendar/cards/CardHelper$CustomCardExtraSchema;", "Lcom/android/calendar/cards/CardHelper$CustomCardExtraSchema;", "()Lcom/android/calendar/cards/CardHelper$CustomCardExtraSchema;", "f", "(Lcom/android/calendar/cards/CardHelper$CustomCardExtraSchema;)V", "customCardSchema", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a
  {
    private String a;
    private LimitSchema b;
    private CustomCardSchema c;
    private CardHelper.CustomCardExtraSchema d;
    
    public final CustomCardSchema a()
    {
      return this.c;
    }
    
    public final CardHelper.CustomCardExtraSchema b()
    {
      return this.d;
    }
    
    public final LimitSchema c()
    {
      return this.b;
    }
    
    public final String d()
    {
      return this.a;
    }
    
    public final void e(CustomCardSchema paramCustomCardSchema)
    {
      this.c = paramCustomCardSchema;
    }
    
    public final void f(CardHelper.CustomCardExtraSchema paramCustomCardExtraSchema)
    {
      this.d = paramCustomCardExtraSchema;
    }
    
    public final void g(LimitSchema paramLimitSchema)
    {
      this.b = paramLimitSchema;
    }
    
    public final void h(String paramString)
    {
      this.a = paramString;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.f1
 * JD-Core Version:    0.7.0.1
 */