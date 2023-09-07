package com.android.calendar.cards;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.ModuleSchema;
import com.google.gson.JsonElement;
import com.miui.calendar.card.schema.CustomCardItemSchema;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.q;
import com.miui.calendar.util.x;
import com.miui.calendar.util.z;
import java.io.UnsupportedEncodingException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Type;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import okhttp3.b0;
import org.json.JSONObject;
import u1.b.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/FortunePresenter;", "Lcom/android/calendar/cards/b;", "Lcom/android/calendar/cards/FortunePresenter$b;", "Lkotlin/u;", "h", "i", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "customCardSchema", "p", "Ljava/lang/Class;", "Lcom/android/calendar/cards/FortunePresenter$FortuneItemExtraSchema;", "o", "Lcom/android/calendar/cards/m1;", "b", "", "e", "", "c", "n", "Landroid/content/Context;", "f", "Landroid/content/Context;", "mContext", "g", "Lcom/android/calendar/cards/FortunePresenter$b;", "mFortuneData", "", "Ljava/lang/String;", "mItemsStr", "mName", "j", "I", "mGender", "", "k", "J", "mBirthdayInMills", "l", "mLove", "Lcom/android/calendar/cards/t;", "mCardController", "<init>", "(Lcom/android/calendar/cards/t;)V", "a", "CustomCardExtraSchema", "FortuneItemExtraSchema", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public class FortunePresenter
  extends b<b>
{
  public static final a n = new a(null);
  private final Context f;
  private b g;
  private String h;
  private String i;
  private int j;
  private long k;
  private int l;
  private tc.a<b0> m;
  
  public FortunePresenter(t paramt)
  {
    super(paramt);
    paramt = CalendarApplication.e();
    r.e(paramt, "getInstance()");
    this.f = paramt;
    this.g = new b();
    this.j = 1;
  }
  
  protected m1<?, ?> b()
  {
    return new p0(this.d);
  }
  
  protected int c()
  {
    return 42;
  }
  
  protected boolean e()
  {
    boolean bool;
    if (this.g.a() == null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected void h()
  {
    this.g = new b();
    Object localObject1 = CardHelper.b.iterator();
    Object localObject5;
    while (((Iterator)localObject1).hasNext())
    {
      localObject5 = (CustomCardSchema)((Iterator)localObject1).next();
      if (((CustomCardSchema)localObject5).showType + 20 == 42) {
        this.g.c((CustomCardSchema)localObject5);
      }
    }
    this.i = b2.a.c(this.f, "preferences_fortune_name", "");
    this.j = b2.a.a(this.f, "preferences_fortune_gender", 1);
    this.k = b2.a.b(this.f, "preferences_fortune_birthday", 0L);
    localObject1 = this.f;
    int i1 = 0;
    this.l = b2.a.a((Context)localObject1, "preferences_fortune_love", 0);
    localObject1 = q.d(this.f, "fortune_item");
    this.h = ((String)localObject1);
    Object localObject6;
    if (!TextUtils.isEmpty((CharSequence)localObject1)) {
      try
      {
        localObject6 = this.g.a();
        if (localObject6 != null)
        {
          localObject1 = this.h;
          localObject5 = CustomCardItemSchema.getListType();
          r.e(localObject5, "getListType()");
          ((CustomCardSchema)localObject6).itemList = ((List)x.b((String)localObject1, (Type)localObject5));
        }
        p(this.g.a());
      }
      catch (Exception localException1)
      {
        z.d("Cal:D:FortuneSingleCard", "doInBackground() ", localException1);
      }
    }
    if (this.g.a() != null)
    {
      localObject6 = u1.d.c(this.f, false, null, null, 14, null);
      Object localObject7 = new HashMap();
      Object localObject2 = this.g.a();
      if (localObject2 != null) {
        localObject2 = Long.valueOf(((CustomCardSchema)localObject2).id);
      } else {
        localObject2 = null;
      }
      ((Map)localObject7).put("cardId", String.valueOf(localObject2));
      localObject5 = this.i;
      localObject2 = DeviceUtils.g(this.f);
      int i2 = i1;
      if (!TextUtils.isEmpty((CharSequence)localObject2)) {
        try
        {
          localObject2 = ((String)localObject2).substring(((String)localObject2).length() - 1);
          r.e(localObject2, "this as java.lang.String).substring(startIndex)");
          i2 = Integer.parseInt((String)localObject2);
        }
        catch (Exception localException2)
        {
          z.d("Cal:D:FortuneSingleCard", "queryData()", localException2);
          i2 = i1;
        }
      }
      Object localObject3 = localObject5;
      if (TextUtils.isEmpty((CharSequence)localObject5))
      {
        localObject3 = this.f.getResources().getStringArray(2130903082);
        r.e(localObject3, "mContext.resources.getSt…rray.fortune_random_name)");
        localObject3 = localObject3[i2];
      }
      try
      {
        localObject3 = URLEncoder.encode((String)localObject3, "utf-8");
        r.e(localObject3, "encode(name, \"utf-8\")");
        ((Map)localObject7).put("name", localObject3);
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        z.d("Cal:D:FortuneSingleCard", "queryData()", localUnsupportedEncodingException);
      }
      if (this.k == 0L)
      {
        localObject5 = this.f.getResources().getStringArray(2130903081);
        r.e(localObject5, "mContext.resources.getSt….fortune_random_birthday)");
        SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        localObject5 = localObject5[i2];
        try
        {
          this.k = localSimpleDateFormat.parse((String)localObject5).getTime();
        }
        catch (Exception localException3)
        {
          localException3.printStackTrace();
          z.d("Cal:D:FortuneSingleCard", "queryData:", localException3);
        }
      }
      Object localObject4 = new SimpleDateFormat("yyyy-MM-dd").format(new Date(this.k));
      r.e(localObject4, "SimpleDateFormat(\"yyyy-M…t(Date(mBirthdayInMills))");
      ((Map)localObject7).put("bir", localObject4);
      ((Map)localObject7).put("gender", String.valueOf(this.j));
      ((Map)localObject7).put("love", String.valueOf(this.l));
      localObject7 = l0.a(this.f, (HashMap)localObject7);
      localObject5 = u1.d.f(null, 1, null);
      localObject4 = new c(this);
      z.a("Cal:D:FortuneSingleCard", "start query fortune card item");
      localObject5 = ((u1.a)localObject5).y((String)localObject6, (Map)localObject7);
      if (localObject5 != null) {
        ((tc.a)localObject5).q(new u1.b((b.a)localObject4));
      }
      this.m = ((tc.a)localObject5);
    }
  }
  
  public void i()
  {
    super.i();
    if (this.m != null)
    {
      z.a("Cal:D:FortuneSingleCard", "stop query custom multi card");
      tc.a locala = this.m;
      r.c(locala);
      locala.cancel();
      this.m = null;
    }
  }
  
  protected b n()
  {
    return this.g;
  }
  
  protected final Class<FortuneItemExtraSchema> o()
  {
    return FortuneItemExtraSchema.class;
  }
  
  protected final void p(CustomCardSchema paramCustomCardSchema)
  {
    this.g.c(paramCustomCardSchema);
    paramCustomCardSchema = this.g.a();
    Iterator localIterator = null;
    if (paramCustomCardSchema != null) {
      paramCustomCardSchema = paramCustomCardSchema.itemList;
    } else {
      paramCustomCardSchema = null;
    }
    if (paramCustomCardSchema == null)
    {
      z.m("Cal:D:FortuneSingleCard", ":prepareExtraData() mCard.itemList is null");
      return;
    }
    ArrayList localArrayList = new ArrayList();
    CustomCardSchema localCustomCardSchema = this.g.a();
    paramCustomCardSchema = localIterator;
    if (localCustomCardSchema != null) {
      paramCustomCardSchema = localCustomCardSchema.itemList;
    }
    r.c(paramCustomCardSchema);
    localIterator = paramCustomCardSchema.iterator();
    for (;;)
    {
      if (localIterator.hasNext())
      {
        paramCustomCardSchema = (CustomCardItemSchema)localIterator.next();
        try
        {
          localArrayList.add((FortuneItemExtraSchema)x.a(paramCustomCardSchema.extra.toString(), o()));
        }
        catch (Exception paramCustomCardSchema)
        {
          z.d("Cal:D:FortuneSingleCard", ":prepareExtraData()", paramCustomCardSchema);
        }
      }
    }
    this.g.d(localArrayList);
  }
  
  @Metadata(d1={""}, d2={"Lcom/android/calendar/cards/FortunePresenter$CustomCardExtraSchema;", "", "()V", "changeData", "", "getChangeData", "()I", "setChangeData", "(I)V", "customTitle", "", "getCustomTitle", "()Ljava/lang/String;", "setCustomTitle", "(Ljava/lang/String;)V", "itemNumPerPage", "getItemNumPerPage", "setItemNumPerPage", "suffix", "getSuffix", "setSuffix", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
  @Keep
  public static final class CustomCardExtraSchema
  {
    private int changeData;
    private String customTitle;
    private int itemNumPerPage;
    private String suffix;
    
    public final int getChangeData()
    {
      return this.changeData;
    }
    
    public final String getCustomTitle()
    {
      return this.customTitle;
    }
    
    public final int getItemNumPerPage()
    {
      return this.itemNumPerPage;
    }
    
    public final String getSuffix()
    {
      return this.suffix;
    }
    
    public final void setChangeData(int paramInt)
    {
      this.changeData = paramInt;
    }
    
    public final void setCustomTitle(String paramString)
    {
      this.customTitle = paramString;
    }
    
    public final void setItemNumPerPage(int paramInt)
    {
      this.itemNumPerPage = paramInt;
    }
    
    public final void setSuffix(String paramString)
    {
      this.suffix = paramString;
    }
  }
  
  @Metadata(d1={""}, d2={"Lcom/android/calendar/cards/FortunePresenter$FortuneItemExtraSchema;", "", "()V", "actions", "", "Lcom/android/calendar/common/ModuleSchema;", "getActions", "()[Lcom/android/calendar/common/ModuleSchema;", "setActions", "([Lcom/android/calendar/common/ModuleSchema;)V", "[Lcom/android/calendar/common/ModuleSchema;", "all", "", "getAll", "()I", "setAll", "(I)V", "cause", "getCause", "setCause", "cw", "", "getCw", "()Ljava/lang/String;", "setCw", "(Ljava/lang/String;)V", "love", "getLove", "setLove", "money", "getMoney", "setMoney", "th", "getTh", "setTh", "titleBanner", "getTitleBanner", "()Lcom/android/calendar/common/ModuleSchema;", "setTitleBanner", "(Lcom/android/calendar/common/ModuleSchema;)V", "zodiac", "getZodiac", "setZodiac", "zz", "getZz", "setZz", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
  @Keep
  public static final class FortuneItemExtraSchema
  {
    public ModuleSchema[] actions;
    private int all;
    private int cause;
    private String cw;
    private int love;
    private int money;
    private String th;
    private ModuleSchema titleBanner;
    private String zodiac;
    private String zz;
    
    public final ModuleSchema[] getActions()
    {
      ModuleSchema[] arrayOfModuleSchema = this.actions;
      if (arrayOfModuleSchema != null) {
        return arrayOfModuleSchema;
      }
      r.x("actions");
      return null;
    }
    
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
    
    public final ModuleSchema getTitleBanner()
    {
      return this.titleBanner;
    }
    
    public final String getZodiac()
    {
      return this.zodiac;
    }
    
    public final String getZz()
    {
      return this.zz;
    }
    
    public final void setActions(ModuleSchema[] paramArrayOfModuleSchema)
    {
      r.f(paramArrayOfModuleSchema, "<set-?>");
      this.actions = paramArrayOfModuleSchema;
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
    
    public final void setTitleBanner(ModuleSchema paramModuleSchema)
    {
      this.titleBanner = paramModuleSchema;
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
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/FortunePresenter$a;", "", "", "DISK_CACHE_KEY_FORTUNE_ITEM", "Ljava/lang/String;", "TAG", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/FortunePresenter$b;", "", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "a", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "()Lcom/miui/calendar/card/schema/CustomCardSchema;", "c", "(Lcom/miui/calendar/card/schema/CustomCardSchema;)V", "cachedCard", "", "Lcom/android/calendar/cards/FortunePresenter$FortuneItemExtraSchema;", "b", "Ljava/util/List;", "()Ljava/util/List;", "d", "(Ljava/util/List;)V", "cachedItemExtras", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b
  {
    private CustomCardSchema a;
    private List<FortunePresenter.FortuneItemExtraSchema> b = new ArrayList();
    
    public final CustomCardSchema a()
    {
      return this.a;
    }
    
    public final List<FortunePresenter.FortuneItemExtraSchema> b()
    {
      return this.b;
    }
    
    public final void c(CustomCardSchema paramCustomCardSchema)
    {
      this.a = paramCustomCardSchema;
    }
    
    public final void d(List<FortunePresenter.FortuneItemExtraSchema> paramList)
    {
      r.f(paramList, "<set-?>");
      this.b = paramList;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/FortunePresenter$c;", "Lu1/b$a;", "Lorg/json/JSONObject;", "jsonObject", "Lkotlin/u;", "a", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "b", "Ljava/lang/ref/WeakReference;", "Lcom/android/calendar/cards/FortunePresenter;", "Ljava/lang/ref/WeakReference;", "mPresenterRef", "presenter", "<init>", "(Lcom/android/calendar/cards/FortunePresenter;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private static final class c
    implements b.a
  {
    private final WeakReference<FortunePresenter> a;
    
    public c(FortunePresenter paramFortunePresenter)
    {
      this.a = new WeakReference(paramFortunePresenter);
    }
    
    public void a(JSONObject paramJSONObject)
    {
      r.f(paramJSONObject, "jsonObject");
      Object localObject = (FortunePresenter)this.a.get();
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
          if (!TextUtils.equals(FortunePresenter.m((FortunePresenter)localObject), str))
          {
            boolean bool = TextUtils.isEmpty(str);
            if (!bool)
            {
              q.f(FortunePresenter.k((FortunePresenter)localObject), "fortune_item", str);
              localCustomCardSchema = FortunePresenter.l((FortunePresenter)localObject).a();
              if (localCustomCardSchema != null)
              {
                paramJSONObject = CustomCardItemSchema.getListType();
                r.e(paramJSONObject, "getListType()");
                localCustomCardSchema.itemList = ((List)x.b(str, paramJSONObject));
              }
              ((FortunePresenter)localObject).p(FortunePresenter.l((FortunePresenter)localObject).a());
            }
            else
            {
              q.h(FortunePresenter.k((FortunePresenter)localObject), "fortune_item");
              paramJSONObject = FortunePresenter.l((FortunePresenter)localObject).a();
              if (paramJSONObject != null) {
                paramJSONObject.itemList = null;
              }
            }
          }
          ((b)localObject).g();
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
 * Qualified Name:     com.android.calendar.cards.FortunePresenter
 * JD-Core Version:    0.7.0.1
 */