package com.android.calendar.cards;

import android.content.Context;
import android.text.TextUtils;
import com.android.calendar.application.CalendarApplication;
import com.google.gson.reflect.TypeToken;
import com.miui.calendar.account.mi.MiAccountSchema;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.m;
import com.miui.calendar.util.q;
import com.miui.calendar.util.x;
import com.miui.calendar.util.z;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Type;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import okhttp3.b0;
import org.json.JSONObject;
import u1.b.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/t0;", "Lcom/android/calendar/cards/b;", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "Lkotlin/u;", "h", "Lcom/android/calendar/cards/m1;", "b", "", "e", "", "c", "t", "f", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "mExtraSchema", "", "g", "Ljava/lang/String;", "mCacheData", "i", "mCacheKey", "j", "Z", "mShouldShow", "Landroid/content/Context;", "k", "Landroid/content/Context;", "mContext", "l", "mCard", "Lcom/android/calendar/cards/t;", "mCardController", "<init>", "(Lcom/android/calendar/cards/t;)V", "m", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class t0
  extends b<CustomCardSchema>
{
  public static final a m = new a(null);
  private CustomCardSchema f;
  private String g;
  private tc.a<b0> h;
  private String i;
  private boolean j;
  private final Context k;
  private CustomCardSchema l;
  
  public t0(t paramt)
  {
    super(paramt);
    paramt = new StringBuilder();
    paramt.append("disk_cache_key_class_history_data-");
    paramt.append(com.miui.calendar.util.s0.m(this.d));
    this.i = paramt.toString();
    this.j = true;
    paramt = CalendarApplication.e();
    r.e(paramt, "getInstance()");
    this.k = paramt;
  }
  
  private static final void u(t0 paramt0, MiAccountSchema paramMiAccountSchema)
  {
    r.f(paramt0, "this$0");
    if (paramMiAccountSchema == null)
    {
      q.h(paramt0.k, paramt0.i);
      paramMiAccountSchema = paramt0.l;
      r.c(paramMiAccountSchema);
      paramMiAccountSchema.itemList = null;
      paramt0.j = false;
      paramt0.g = null;
      paramt0.g();
      return;
    }
    Object localObject1 = paramMiAccountSchema.authToken;
    paramMiAccountSchema = paramMiAccountSchema.userId;
    paramMiAccountSchema = u1.d.b(paramt0.k, true, (String)localObject1, paramMiAccountSchema);
    localObject1 = new HashMap();
    Object localObject2 = paramt0.l;
    r.c(localObject2);
    ((Map)localObject1).put("cardIds", String.valueOf(((CustomCardSchema)localObject2).id));
    ((Map)localObject1).put("targetTime", String.valueOf(paramt0.d.getTimeInMillis()));
    m.a(paramt0.k, (Map)localObject1);
    Map localMap = l0.a(paramt0.k, (HashMap)localObject1);
    localObject2 = u1.d.f(null, 1, null);
    localObject1 = new b(paramt0);
    z.a("Cal:D:HistoryPresenter", "start query history card item");
    paramMiAccountSchema = ((u1.a)localObject2).q(paramMiAccountSchema, localMap);
    paramt0.h = paramMiAccountSchema;
    if (paramMiAccountSchema != null)
    {
      r.c(paramMiAccountSchema);
      paramMiAccountSchema.q(new u1.b((b.a)localObject1));
    }
  }
  
  protected m1<?, ?> b()
  {
    return new r0(this.d);
  }
  
  protected int c()
  {
    return 47;
  }
  
  protected boolean e()
  {
    boolean bool;
    if ((this.j) && (this.f != null)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  protected void h()
  {
    Object localObject1 = q.d(this.k, this.i);
    this.g = ((String)localObject1);
    boolean bool1 = TextUtils.isEmpty((CharSequence)localObject1);
    boolean bool2 = true;
    CustomCardSchema localCustomCardSchema = null;
    if (!bool1)
    {
      try
      {
        localObject1 = new com/android/calendar/cards/t0$c;
        ((c)localObject1).<init>();
        localObject1 = ((TypeToken)localObject1).getType();
        Object localObject3 = this.g;
        r.e(localObject1, "jsonType");
        localObject3 = (List)x.b((String)localObject3, (Type)localObject1);
        localObject1 = localCustomCardSchema;
        if (localObject3 == null) {
          break label130;
        }
        localObject1 = localCustomCardSchema;
        if (!(((Collection)localObject3).isEmpty() ^ true)) {
          break label130;
        }
        localObject1 = (CustomCardSchema)((List)localObject3).get(0);
      }
      catch (Exception localException)
      {
        z.d("Cal:D:HistoryPresenter", "queryData() ", localException);
        localObject2 = localCustomCardSchema;
      }
    }
    else
    {
      this.g = null;
      localObject2 = localCustomCardSchema;
    }
    label130:
    this.f = ((CustomCardSchema)localObject2);
    if (localObject2 != null)
    {
      r.c(localObject2);
      localObject2 = ((CustomCardSchema)localObject2).itemList;
      r.e(localObject2, "mExtraSchema!!.itemList");
      if (!((Collection)localObject2).isEmpty()) {}
    }
    else
    {
      bool2 = false;
    }
    this.j = bool2;
    Object localObject2 = CardHelper.b.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localCustomCardSchema = (CustomCardSchema)((Iterator)localObject2).next();
      if (localCustomCardSchema.showType + 20 == 47) {
        this.l = localCustomCardSchema;
      }
    }
    if (this.l != null) {
      k3.d.g(new s0(this));
    }
  }
  
  protected CustomCardSchema t()
  {
    return this.f;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/t0$a;", "", "", "DISK_CACHE_KEY_CLASS_HISTORY_DATA", "Ljava/lang/String;", "TAG", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/t0$b;", "Lu1/b$a;", "Lorg/json/JSONObject;", "jsonObject", "Lkotlin/u;", "a", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "b", "Ljava/lang/ref/WeakReference;", "Lcom/android/calendar/cards/t0;", "kotlin.jvm.PlatformType", "Ljava/lang/ref/WeakReference;", "getMPresenterReference", "()Ljava/lang/ref/WeakReference;", "mPresenterReference", "presenter", "<init>", "(Lcom/android/calendar/cards/t0;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private static final class b
    implements b.a
  {
    private final WeakReference<t0> a;
    
    public b(t0 paramt0)
    {
      this.a = new WeakReference(paramt0);
    }
    
    public void a(JSONObject paramJSONObject)
    {
      r.f(paramJSONObject, "jsonObject");
      t0 localt0 = (t0)this.a.get();
      if (localt0 == null) {
        return;
      }
      CustomCardSchema localCustomCardSchema = null;
      Object localObject = null;
      try
      {
        String str = paramJSONObject.getString("data");
        try
        {
          if (TextUtils.isEmpty(str))
          {
            z.c("Cal:D:HistoryPresenter", "onResponse history data is null");
            q.h(t0.o(localt0), t0.m(localt0));
            paramJSONObject = t0.n(localt0);
            if (paramJSONObject != null) {
              paramJSONObject.itemList = null;
            }
            t0.s(localt0, false);
            t0.q(localt0, null);
            localt0.g();
            return;
          }
          s4.d.d(str);
          paramJSONObject = new com/android/calendar/cards/t0$b$a;
          paramJSONObject.<init>();
          paramJSONObject = paramJSONObject.getType();
          r.e(paramJSONObject, "object : TypeToken<List<…mCardSchema?>?>() {}.type");
          paramJSONObject = (List)x.b(str, paramJSONObject);
          if ((paramJSONObject != null) && (!paramJSONObject.isEmpty()))
          {
            if (!TextUtils.equals(t0.l(localt0), str))
            {
              t0.q(localt0, str);
              boolean bool = true;
              t0.s(localt0, true);
              q.f(t0.o(localt0), t0.m(localt0), str);
              try
              {
                if ((paramJSONObject.isEmpty() ^ true))
                {
                  t0.r(localt0, (CustomCardSchema)paramJSONObject.get(0));
                  if (t0.p(localt0) != null)
                  {
                    localCustomCardSchema = t0.p(localt0);
                    paramJSONObject = (JSONObject)localObject;
                    if (localCustomCardSchema != null) {
                      paramJSONObject = localCustomCardSchema.itemList;
                    }
                    int i;
                    if ((paramJSONObject != null) && (!paramJSONObject.isEmpty())) {
                      i = 0;
                    } else {
                      i = 1;
                    }
                    if (i == 0) {}
                  }
                  else
                  {
                    bool = false;
                  }
                  t0.s(localt0, bool);
                }
              }
              catch (Exception paramJSONObject)
              {
                z.d("Cal:D:HistoryPresenter", "doInBackground() ", paramJSONObject);
                t0.s(localt0, false);
              }
            }
            localt0.g();
            return;
          }
          z.c("Cal:D:HistoryPresenter", "onResponse history data is []");
          q.h(t0.o(localt0), t0.m(localt0));
          paramJSONObject = t0.n(localt0);
          if (paramJSONObject != null) {
            paramJSONObject.itemList = null;
          }
          t0.s(localt0, false);
          t0.q(localt0, null);
          localt0.g();
          return;
        }
        catch (Exception paramJSONObject)
        {
          localObject = paramJSONObject;
          paramJSONObject = str;
        }
        z.d("Cal:D:HistoryPresenter", "ResponseListener:", (Throwable)localObject);
      }
      catch (Exception localException)
      {
        paramJSONObject = localCustomCardSchema;
        localObject = localException;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("data:");
      localStringBuilder.append(paramJSONObject);
      z.c("Cal:D:HistoryPresenter", localStringBuilder.toString());
    }
    
    public void b(Exception paramException)
    {
      r.f(paramException, "e");
      z.d("Cal:D:HistoryPresenter", "onErrorResponse", paramException);
    }
    
    @Metadata(bv={}, d1={""}, d2={"com/android/calendar/cards/t0$b$a", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
    public static final class a
      extends TypeToken<List<? extends CustomCardSchema>>
    {}
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/cards/t0$c", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class c
    extends TypeToken<List<? extends CustomCardSchema>>
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.t0
 * JD-Core Version:    0.7.0.1
 */