package com.miui.calendar.card.single.custom;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.TextView;
import androidx.annotation.Keep;
import com.android.calendar.common.ModuleSchema;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.b.b;
import com.miui.calendar.card.schema.CustomCardItemSchema;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.detail.FortuneSettingsActivity;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.q;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x;
import com.miui.calendar.util.z;
import java.io.UnsupportedEncodingException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Type;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import okhttp3.b0;
import org.json.JSONObject;
import s3.a.a;
import u1.b;
import u1.b.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/FortuneSingleCard;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard;", "Lkotlin/u;", "K", "b", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "card", "x", "Lcom/miui/calendar/card/b$b;", "onDataLoadCompletedListener", "e", "", "j", "", "i", "B", "Ls3/a$a;", "Ls3/a;", "holder", "position", "g", "Landroid/view/View;", "view", "h", "Ljava/lang/Class;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;", "A", "", "s", "Ljava/lang/String;", "mItemsStr", "t", "Z", "mIsQueried", "u", "mName", "v", "I", "mGender", "", "w", "J", "mBirthdayInMills", "mLove", "Landroid/content/Context;", "context", "Lcom/miui/calendar/card/Card$ContainerType;", "containerType", "Ljava/util/Calendar;", "desiredDay", "Landroid/widget/BaseAdapter;", "adapter", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V", "z", "a", "FortuneItemExtraSchema", "c", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class FortuneSingleCard
  extends CustomSingleCard
{
  public static final a z = new a(null);
  private String s;
  private boolean t;
  private String u;
  private int v = 1;
  private long w;
  private int x;
  private tc.a<b0> y;
  
  public FortuneSingleCard(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, 42, paramContainerType, paramCalendar, paramBaseAdapter);
  }
  
  private static final void I(FortuneSingleCard paramFortuneSingleCard, int paramInt, View paramView)
  {
    r.f(paramFortuneSingleCard, "this$0");
    paramFortuneSingleCard.K();
    paramFortuneSingleCard.k("card_more_clicked", paramInt, -1, null);
  }
  
  private static final void J(FortuneSingleCard paramFortuneSingleCard, int paramInt, View paramView)
  {
    r.f(paramFortuneSingleCard, "this$0");
    if ((!TextUtils.isEmpty(paramFortuneSingleCard.u)) && (paramFortuneSingleCard.w != 0L) && (paramFortuneSingleCard.m.action != null))
    {
      paramView = new HashMap();
      paramView.put("name", paramFortuneSingleCard.u);
      paramView.put("bir", new SimpleDateFormat("yyyy-MM-dd").format(new Date(paramFortuneSingleCard.w)));
      paramView.put("gender", String.valueOf(paramFortuneSingleCard.v));
      paramView.put("love", String.valueOf(paramFortuneSingleCard.x));
      paramFortuneSingleCard.m.action.sendIntent(paramFortuneSingleCard.a, paramView);
    }
    else
    {
      paramView = paramFortuneSingleCard.m.action;
      if (paramView != null) {
        paramView.sendIntent(paramFortuneSingleCard.a);
      }
    }
    paramFortuneSingleCard.k("card_item_clicked", paramInt, -1, null);
  }
  
  private final void K()
  {
    this.t = false;
    Intent localIntent = new Intent(this.a, FortuneSettingsActivity.class);
    localIntent.addFlags(268435456);
    this.a.startActivity(localIntent);
  }
  
  public Class<? extends CustomSingleCard.CustomItemExtraSchema> A()
  {
    return FortuneItemExtraSchema.class;
  }
  
  public int B()
  {
    return 1;
  }
  
  public void b()
  {
    this.u = b2.a.c(this.a, "preferences_fortune_name", "");
    this.v = b2.a.a(this.a, "preferences_fortune_gender", 1);
    this.w = b2.a.b(this.a, "preferences_fortune_birthday", 0L);
    this.x = b2.a.a(this.a, "preferences_fortune_love", 0);
    String str = q.d(this.a, "fortune_item");
    this.s = str;
    if (!TextUtils.isEmpty(str)) {
      try
      {
        CustomCardSchema localCustomCardSchema = this.l;
        str = this.s;
        Type localType = CustomCardItemSchema.getListType();
        r.e(localType, "getListType()");
        localCustomCardSchema.itemList = ((List)x.b(str, localType));
        super.C();
      }
      catch (Exception localException)
      {
        z.d("Cal:D:FortuneSingleCard", "doInBackground() ", localException);
      }
    } else {
      this.s = null;
    }
    super.b();
  }
  
  public void e(b.b paramb)
  {
    r.f(paramb, "onDataLoadCompletedListener");
    if ((!this.t) && (this.m != null))
    {
      String str1 = u1.d.c(this.a, false, null, null, 14, null);
      Object localObject1 = new HashMap();
      ((Map)localObject1).put("cardId", String.valueOf(this.m.id));
      Object localObject2 = this.u;
      String str2 = DeviceUtils.g(this.a);
      int i = 0;
      int j = i;
      if (!TextUtils.isEmpty(str2)) {
        try
        {
          str2 = str2.substring(str2.length() - 1);
          r.e(str2, "this as java.lang.String).substring(startIndex)");
          j = Integer.parseInt(str2);
        }
        catch (Exception localException1)
        {
          z.d("Cal:D:FortuneSingleCard", "queryData()", localException1);
          j = i;
        }
      }
      Object localObject3 = localObject2;
      if (TextUtils.isEmpty((CharSequence)localObject2))
      {
        localObject3 = this.a.getResources().getStringArray(2130903082);
        r.e(localObject3, "mContext.resources.getSt…rray.fortune_random_name)");
        localObject3 = localObject3[j];
      }
      try
      {
        localObject3 = URLEncoder.encode((String)localObject3, "utf-8");
        r.e(localObject3, "encode(name, \"utf-8\")");
        ((Map)localObject1).put("name", localObject3);
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        z.d("Cal:D:FortuneSingleCard", "queryData()", localUnsupportedEncodingException);
      }
      if (this.w == 0L)
      {
        localObject2 = this.a.getResources().getStringArray(2130903081);
        r.e(localObject2, "mContext.resources.getSt….fortune_random_birthday)");
        SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        localObject2 = localObject2[j];
        try
        {
          this.w = localSimpleDateFormat.parse((String)localObject2).getTime();
        }
        catch (Exception localException2)
        {
          localException2.printStackTrace();
          z.d("Cal:D:FortuneSingleCard", "queryData:", localException2);
        }
      }
      Object localObject4 = new SimpleDateFormat("yyyy-MM-dd").format(new Date(this.w));
      r.e(localObject4, "SimpleDateFormat(\"yyyy-M…t(Date(mBirthdayInMills))");
      ((Map)localObject1).put("bir", localObject4);
      ((Map)localObject1).put("gender", String.valueOf(this.v));
      ((Map)localObject1).put("love", String.valueOf(this.x));
      localObject2 = l0.a(this.a, (HashMap)localObject1);
      localObject1 = u1.d.f(null, 1, null);
      localObject4 = new c(this, paramb);
      z.a("Cal:D:FortuneSingleCard", "start query fortune card item");
      localObject2 = ((u1.a)localObject1).y(str1, (Map)localObject2);
      this.y = ((tc.a)localObject2);
      r.c(localObject2);
      ((tc.a)localObject2).q(new b((b.a)localObject4));
    }
    super.e(paramb);
  }
  
  public void g(a.a parama, int paramInt)
  {
    r.f(parama, "holder");
    if (!(parama instanceof b))
    {
      z.m("Cal:D:FortuneSingleCard", "bindView(): holder error!");
      return;
    }
    super.g(parama, paramInt);
    Object localObject1 = this.r.get(0);
    r.d(localObject1, "null cannot be cast to non-null type com.miui.calendar.card.single.custom.FortuneSingleCard.FortuneItemExtraSchema");
    FortuneItemExtraSchema localFortuneItemExtraSchema = (FortuneItemExtraSchema)localObject1;
    b localb = (b)parama;
    localb.e.setText(this.m.title);
    localb.e().setImageBitmap(v3.a.b(this.a, localFortuneItemExtraSchema.getZodiac()));
    localb.b().setRating(localFortuneItemExtraSchema.getAll());
    localb.f().setRating(localFortuneItemExtraSchema.getLove());
    localb.d().setRating(localFortuneItemExtraSchema.getMoney());
    localb.i().setRating(localFortuneItemExtraSchema.getCause());
    Object localObject2 = localb.a();
    Object localObject3 = new StringBuilder();
    ((StringBuilder)localObject3).append(this.a.getString(2131886638));
    boolean bool = TextUtils.isEmpty(localFortuneItemExtraSchema.getCw());
    localObject1 = "";
    if (bool) {
      parama = "";
    } else {
      parama = localFortuneItemExtraSchema.getCw();
    }
    ((StringBuilder)localObject3).append(parama);
    ((TextView)localObject2).setText(((StringBuilder)localObject3).toString());
    localObject3 = localb.h();
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append(this.a.getString(2131886644));
    if (TextUtils.isEmpty(localFortuneItemExtraSchema.getTh())) {
      parama = "";
    } else {
      parama = localFortuneItemExtraSchema.getTh();
    }
    ((StringBuilder)localObject2).append(parama);
    ((TextView)localObject3).setText(((StringBuilder)localObject2).toString());
    localObject2 = localb.j();
    localObject3 = new StringBuilder();
    ((StringBuilder)localObject3).append(this.a.getString(2131886646));
    if (TextUtils.isEmpty(localFortuneItemExtraSchema.getZz())) {
      parama = (a.a)localObject1;
    } else {
      parama = localFortuneItemExtraSchema.getZz();
    }
    ((StringBuilder)localObject3).append(parama);
    ((TextView)localObject2).setText(((StringBuilder)localObject3).toString());
    localb.g().setOnClickListener(new j(this, paramInt));
    v.k(localb.g());
    localb.c().setOnClickListener(new k(this, paramInt));
    v.k(localb.c());
  }
  
  public a.a h(View paramView)
  {
    r.f(paramView, "view");
    return new b(paramView);
  }
  
  public int i()
  {
    return 2131558570;
  }
  
  public boolean j()
  {
    Object localObject = this.m;
    if (localObject != null)
    {
      localObject = ((CustomCardSchema)localObject).itemList;
      if ((localObject != null) && (((List)localObject).size() > 0) && (this.r.size() > 0) && (com.android.calendar.settings.j.q(this.a))) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  public void x(CustomCardSchema paramCustomCardSchema)
  {
    r.f(paramCustomCardSchema, "card");
    Object localObject = this.m;
    if (localObject != null)
    {
      localObject = ((CustomCardSchema)localObject).itemList;
      if ((localObject != null) && (((List)localObject).size() > 0)) {
        paramCustomCardSchema.itemList = this.m.itemList;
      }
    }
    super.x(paramCustomCardSchema);
  }
  
  @Metadata(d1={""}, d2={"Lcom/miui/calendar/card/single/custom/FortuneSingleCard$FortuneItemExtraSchema;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;", "(Lcom/miui/calendar/card/single/custom/FortuneSingleCard;)V", "all", "", "getAll", "()I", "setAll", "(I)V", "cause", "getCause", "setCause", "cw", "", "getCw", "()Ljava/lang/String;", "setCw", "(Ljava/lang/String;)V", "love", "getLove", "setLove", "money", "getMoney", "setMoney", "th", "getTh", "setTh", "zodiac", "getZodiac", "setZodiac", "zz", "getZz", "setZz", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
  @Keep
  public final class FortuneItemExtraSchema
    extends CustomSingleCard.CustomItemExtraSchema
  {
    private int all;
    private int cause;
    private String cw;
    private int love;
    private int money;
    private String th;
    private String zodiac;
    private String zz;
    
    public final int getAll()
    {
      return this.all;
    }
    
    public final int getCause()
    {
      return this.cause;
    }
    
    public final String getCw()
    {
      return this.cw;
    }
    
    public final int getLove()
    {
      return this.love;
    }
    
    public final int getMoney()
    {
      return this.money;
    }
    
    public final String getTh()
    {
      return this.th;
    }
    
    public final String getZodiac()
    {
      return this.zodiac;
    }
    
    public final String getZz()
    {
      return this.zz;
    }
    
    public final void setAll(int paramInt)
    {
      this.all = paramInt;
    }
    
    public final void setCause(int paramInt)
    {
      this.cause = paramInt;
    }
    
    public final void setCw(String paramString)
    {
      this.cw = paramString;
    }
    
    public final void setLove(int paramInt)
    {
      this.love = paramInt;
    }
    
    public final void setMoney(int paramInt)
    {
      this.money = paramInt;
    }
    
    public final void setTh(String paramString)
    {
      this.th = paramString;
    }
    
    public final void setZodiac(String paramString)
    {
      this.zodiac = paramString;
    }
    
    public final void setZz(String paramString)
    {
      this.zz = paramString;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/FortuneSingleCard$a;", "", "", "DISK_CACHE_KEY_FORTUNE_ITEM", "Ljava/lang/String;", "TAG", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/FortuneSingleCard$b;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$g;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard;", "Landroid/widget/TextView;", "l", "Landroid/widget/TextView;", "g", "()Landroid/widget/TextView;", "setSetBaZiView", "(Landroid/widget/TextView;)V", "setBaZiView", "Landroid/view/View;", "m", "Landroid/view/View;", "c", "()Landroid/view/View;", "setContentRootView", "(Landroid/view/View;)V", "contentRootView", "Landroid/widget/ImageView;", "n", "Landroid/widget/ImageView;", "e", "()Landroid/widget/ImageView;", "setImageView", "(Landroid/widget/ImageView;)V", "imageView", "Landroid/widget/RatingBar;", "o", "Landroid/widget/RatingBar;", "b", "()Landroid/widget/RatingBar;", "setComprehensiveRatingView", "(Landroid/widget/RatingBar;)V", "comprehensiveRatingView", "p", "f", "setLoveRatingView", "loveRatingView", "q", "d", "setFinancialRatingView", "financialRatingView", "r", "i", "setWorkingRatingView", "workingRatingView", "s", "a", "setCaiWeiView", "caiWeiView", "t", "h", "setTaoHuaView", "taoHuaView", "u", "j", "setZhengChongView", "zhengChongView", "view", "<init>", "(Lcom/miui/calendar/card/single/custom/FortuneSingleCard;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class b
    extends CustomSingleCard.g
  {
    private TextView l;
    private View m;
    private ImageView n;
    private RatingBar o;
    private RatingBar p;
    private RatingBar q;
    private RatingBar r;
    private TextView s;
    private TextView t;
    private TextView u;
    
    public b()
    {
      super(localObject);
      this$1 = localObject.findViewById(2131363146);
      r.e(FortuneSingleCard.this, "view.findViewById(R.id.set_bazi)");
      this.l = ((TextView)FortuneSingleCard.this);
      this$1 = localObject.findViewById(2131362221);
      r.e(FortuneSingleCard.this, "view.findViewById(R.id.content_root)");
      this.m = FortuneSingleCard.this;
      this$1 = localObject.findViewById(2131362581);
      r.e(FortuneSingleCard.this, "view.findViewById(R.id.image)");
      this.n = ((ImageView)FortuneSingleCard.this);
      this$1 = localObject.findViewById(2131363001);
      r.e(FortuneSingleCard.this, "view.findViewById(R.id.rating_comprehensive)");
      this.o = ((RatingBar)FortuneSingleCard.this);
      this$1 = localObject.findViewById(2131363005);
      r.e(FortuneSingleCard.this, "view.findViewById(R.id.rating_love)");
      this.p = ((RatingBar)FortuneSingleCard.this);
      this$1 = localObject.findViewById(2131363003);
      r.e(FortuneSingleCard.this, "view.findViewById(R.id.rating_financial)");
      this.q = ((RatingBar)FortuneSingleCard.this);
      this$1 = localObject.findViewById(2131363008);
      r.e(FortuneSingleCard.this, "view.findViewById(R.id.rating_working)");
      this.r = ((RatingBar)FortuneSingleCard.this);
      this$1 = localObject.findViewById(2131362090);
      r.e(FortuneSingleCard.this, "view.findViewById(R.id.caiwei)");
      this.s = ((TextView)FortuneSingleCard.this);
      this$1 = localObject.findViewById(2131363325);
      r.e(FortuneSingleCard.this, "view.findViewById(R.id.taohua)");
      this.t = ((TextView)FortuneSingleCard.this);
      this$1 = localObject.findViewById(2131363614);
      r.e(FortuneSingleCard.this, "view.findViewById(R.id.zhengchong)");
      this.u = ((TextView)FortuneSingleCard.this);
    }
    
    public final TextView a()
    {
      return this.s;
    }
    
    public final RatingBar b()
    {
      return this.o;
    }
    
    public final View c()
    {
      return this.m;
    }
    
    public final RatingBar d()
    {
      return this.q;
    }
    
    public final ImageView e()
    {
      return this.n;
    }
    
    public final RatingBar f()
    {
      return this.p;
    }
    
    public final TextView g()
    {
      return this.l;
    }
    
    public final TextView h()
    {
      return this.t;
    }
    
    public final RatingBar i()
    {
      return this.r;
    }
    
    public final TextView j()
    {
      return this.u;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/FortuneSingleCard$c;", "Lu1/b$a;", "Lorg/json/JSONObject;", "jsonObject", "Lkotlin/u;", "a", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "b", "Ljava/lang/ref/WeakReference;", "Lcom/miui/calendar/card/b$b;", "Ljava/lang/ref/WeakReference;", "mListenerRef", "Lcom/miui/calendar/card/single/custom/FortuneSingleCard;", "mCardRef", "card", "listener", "<init>", "(Lcom/miui/calendar/card/single/custom/FortuneSingleCard;Lcom/miui/calendar/card/b$b;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private static final class c
    implements b.a
  {
    private final WeakReference<b.b> a;
    private final WeakReference<FortuneSingleCard> b;
    
    public c(FortuneSingleCard paramFortuneSingleCard, b.b paramb)
    {
      this.a = new WeakReference(paramb);
      this.b = new WeakReference(paramFortuneSingleCard);
    }
    
    public void a(JSONObject paramJSONObject)
    {
      r.f(paramJSONObject, "jsonObject");
      Object localObject = (FortuneSingleCard)this.b.get();
      if (localObject == null) {
        return;
      }
      CustomCardSchema localCustomCardSchema = null;
      try
      {
        String str = l0.b(paramJSONObject.getString("data"));
        try
        {
          s4.d.d(str);
          FortuneSingleCard.H((FortuneSingleCard)localObject, true);
          if (TextUtils.equals(FortuneSingleCard.G((FortuneSingleCard)localObject), str)) {
            return;
          }
          boolean bool = TextUtils.isEmpty(str);
          if (!bool)
          {
            q.f(FortuneSingleCard.F((FortuneSingleCard)localObject), "fortune_item", str);
            localCustomCardSchema = ((CustomSingleCard)localObject).l;
            paramJSONObject = CustomCardItemSchema.getListType();
            r.e(paramJSONObject, "getListType()");
            localCustomCardSchema.itemList = ((List)x.b(str, paramJSONObject));
            ((CustomSingleCard)localObject).C();
            ((CustomSingleCard)localObject).a();
          }
          else
          {
            q.h(FortuneSingleCard.F((FortuneSingleCard)localObject), "fortune_item");
            ((CustomSingleCard)localObject).m.itemList = null;
          }
          paramJSONObject = (b.b)this.a.get();
          if (paramJSONObject == null) {
            return;
          }
          paramJSONObject.a();
        }
        catch (Exception paramJSONObject)
        {
          localObject = paramJSONObject;
          paramJSONObject = str;
        }
        z.d("Cal:D:FortuneSingleCard", "ResponseListener:", localException);
      }
      catch (Exception localException)
      {
        paramJSONObject = localCustomCardSchema;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("data:");
      localStringBuilder.append(paramJSONObject);
      z.c("Cal:D:FortuneSingleCard", localStringBuilder.toString());
    }
    
    public void b(Exception paramException)
    {
      r.f(paramException, "e");
      z.d("Cal:D:FortuneSingleCard", "ResponseListener:", paramException);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.single.custom.FortuneSingleCard
 * JD-Core Version:    0.7.0.1
 */