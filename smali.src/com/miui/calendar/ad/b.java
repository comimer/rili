package com.miui.calendar.ad;

import android.content.Context;
import android.text.TextUtils;
import com.android.calendar.settings.j;
import com.google.gson.reflect.TypeToken;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.q;
import com.miui.calendar.util.x;
import com.miui.calendar.util.z;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import okhttp3.b0;
import org.json.JSONObject;
import u1.d;

public class b
{
  private static volatile b e;
  private tc.a<b0> a;
  private tc.a<b0> b;
  public List<CustomCardSchema> c;
  public List<CustomCardSchema> d;
  
  public static String c()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("");
    localStringBuilder.append(l0.f.hashCode());
    return localStringBuilder.toString();
  }
  
  public static b e()
  {
    if (e == null) {
      try
      {
        b localb = new com/miui/calendar/ad/b;
        localb.<init>();
        e = localb;
      }
      finally {}
    }
    return e;
  }
  
  private void h(Context paramContext, long paramLong, List<AdSchema> paramList)
  {
    if ((paramList != null) && (paramList.size() != 0) && (paramList.get(0) != null))
    {
      if (((AdSchema)paramList.get(0)).id == paramLong)
      {
        z.m("Cal:D:AdsExtraManager", "updateAdInIndex(): same tagid");
        return;
      }
      if (this.d == null) {
        this.d = new ArrayList();
      }
      if (this.c == null) {
        this.c = new ArrayList();
      }
      int j;
      int k;
      for (int i = 0;; i++)
      {
        j = this.d.size();
        k = -1;
        if (i >= j) {
          break;
        }
        if ((this.d.get(i) != null) && (((CustomCardSchema)this.d.get(i)).ads != null) && (((CustomCardSchema)this.d.get(i)).ads.id == paramLong)) {
          break label187;
        }
      }
      i = -1;
      label187:
      if ((i >= 0) && (this.d.get(i) != null))
      {
        ((CustomCardSchema)this.d.get(i)).ads = ((AdSchema)paramList.get(0));
        Object localObject = q.d(paramContext, "custom_cards");
        if (!TextUtils.isEmpty((CharSequence)localObject)) {
          try
          {
            List localList = (List)x.b((String)localObject, CustomCardSchema.getListType());
            for (i = 0; i < localList.size(); i++)
            {
              CustomCardSchema localCustomCardSchema = (CustomCardSchema)localList.get(i);
              if ((localCustomCardSchema != null) && (20 == localCustomCardSchema.showType + 20))
              {
                localObject = localCustomCardSchema.ads;
                if ((localObject != null) && (((AdSchema)localObject).id == paramLong))
                {
                  localCustomCardSchema.ads = ((AdSchema)paramList.get(0));
                  q.f(paramContext, "custom_cards", x.c(localList));
                  z.a("Cal:D:AdsExtraManager", "updateAdInIndex(): home adcard: success");
                  break;
                }
              }
            }
            i = 0;
          }
          catch (Exception localException)
          {
            z.d("Cal:D:AdsExtraManager", "updateAdInIndex() home adcard error:", localException);
          }
        }
      }
      for (;;)
      {
        j = k;
        if (i >= this.c.size()) {
          break;
        }
        if ((this.c.get(i) != null) && (((CustomCardSchema)this.c.get(i)).ads != null) && (((CustomCardSchema)this.c.get(i)).ads.id == paramLong))
        {
          j = i;
          break;
        }
        i++;
      }
      if (j >= 0)
      {
        ((CustomCardSchema)this.c.get(j)).ads = ((AdSchema)paramList.get(0));
        try
        {
          q.f(paramContext, q.d(paramContext, c()), x.c(this.c));
          z.a("Cal:D:AdsExtraManager", "updateAdInIndex(): other adcard: success");
        }
        catch (Exception paramContext)
        {
          z.d("Cal:D:AdsExtraManager", "updateAdInIndex() other adcard error:", paramContext);
        }
      }
      return;
    }
    z.m("Cal:D:AdsExtraManager", "updateAdInIndex(): adSchemaList: empty");
  }
  
  public void b(List<CustomCardSchema> paramList)
  {
    if ((paramList != null) && (paramList.size() != 0))
    {
      ArrayList localArrayList = new ArrayList();
      for (int i = 0; i < paramList.size(); i++)
      {
        CustomCardSchema localCustomCardSchema = (CustomCardSchema)paramList.get(i);
        if (localCustomCardSchema != null)
        {
          AdSchema localAdSchema = localCustomCardSchema.ads;
          if ((localAdSchema != null) && (20 == localCustomCardSchema.showType + 20) && (TextUtils.equals(localAdSchema.template, "12.4"))) {
            localArrayList.add(localCustomCardSchema);
          }
        }
      }
      this.d = localArrayList;
    }
  }
  
  public CustomCardSchema d(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject = this.d;
    if ((localObject == null) || (((List)localObject).size() == 0)) {
      this.d = new ArrayList();
    }
    if (this.c == null) {
      this.c = new ArrayList();
    }
    localArrayList.addAll(this.d);
    localObject = new ArrayList();
    int i = 0;
    for (int j = 0;; j++)
    {
      k = i;
      if (j >= this.d.size()) {
        break;
      }
      if ((this.d.get(j) != null) && (((CustomCardSchema)this.d.get(j)).ads != null)) {
        ((ArrayList)localObject).add(Long.valueOf(((CustomCardSchema)this.d.get(j)).ads.id));
      }
    }
    while (k < this.c.size())
    {
      if ((this.c.get(k) != null) && (((CustomCardSchema)this.c.get(k)).ads != null) && (!((ArrayList)localObject).contains(Long.valueOf(((CustomCardSchema)this.c.get(k)).ads.id)))) {
        localArrayList.add((CustomCardSchema)this.c.get(k));
      }
      k++;
    }
    int k = localArrayList.size();
    if (k > 0)
    {
      j = paramInt % k;
      paramInt = j;
      if (j < 0) {
        paramInt = j + k;
      }
      if ((paramInt >= 0) && (paramInt < k)) {
        return (CustomCardSchema)localArrayList.get(paramInt);
      }
    }
    return null;
  }
  
  public void f(Context paramContext)
  {
    z.a("Cal:D:AdsExtraManager", "requestADCardsData()");
    Object localObject1 = d.a(paramContext);
    Object localObject2 = new HashMap();
    if (j.g(paramContext)) {
      ((HashMap)localObject2).put("isPersonalizedAdEnabled", "true");
    } else {
      ((HashMap)localObject2).put("isPersonalizedAdEnabled", "false");
    }
    localObject2 = l0.a(paramContext, (HashMap)localObject2);
    u1.a locala = d.d();
    paramContext = new a(paramContext);
    localObject1 = locala.w((String)localObject1, (Map)localObject2);
    this.a = ((tc.a)localObject1);
    ((tc.a)localObject1).q(new u1.b(paramContext));
  }
  
  public void g(Context paramContext, long paramLong, String paramString)
  {
    z.a("Cal:D:AdsExtraManager", "requestOneAdData()");
    String str = d.a(paramContext);
    Object localObject = new HashMap();
    ((HashMap)localObject).put("count", "1");
    ((HashMap)localObject).put("tag", paramString);
    if (j.g(paramContext)) {
      ((HashMap)localObject).put("isPersonalizedAdEnabled", "true");
    } else {
      ((HashMap)localObject).put("isPersonalizedAdEnabled", "false");
    }
    localObject = l0.a(paramContext, (HashMap)localObject);
    paramString = d.d();
    paramContext = new b(paramContext, paramLong);
    paramString = paramString.f(str, (Map)localObject);
    this.b = paramString;
    paramString.q(new u1.b(paramContext));
  }
  
  private static class a
    implements u1.b.a
  {
    private WeakReference<Context> a;
    
    public a(Context paramContext)
    {
      this.a = new WeakReference(paramContext);
    }
    
    public void a(JSONObject paramJSONObject)
    {
      Context localContext = (Context)this.a.get();
      if (localContext == null) {
        return;
      }
      try
      {
        int i = paramJSONObject.getInt("code");
        if (i == 0)
        {
          JSONObject localJSONObject = paramJSONObject.getJSONObject("data");
          paramJSONObject = null;
          if (localJSONObject != null) {
            paramJSONObject = localJSONObject.getString("cards");
          }
          if (!TextUtils.isEmpty(paramJSONObject))
          {
            paramJSONObject = (List)x.b(paramJSONObject, CustomCardSchema.getListType());
            if ((paramJSONObject != null) && (!paramJSONObject.isEmpty()))
            {
              b.e().c = paramJSONObject;
              q.f(localContext, q.d(localContext, b.c()), x.c(paramJSONObject));
            }
            else
            {
              z.m("Cal:D:AdsExtraManager", "GetAdCardsDataResponse(): data cards after gson: empty");
            }
          }
          else
          {
            z.m("Cal:D:AdsExtraManager", "GetAdCardsDataResponse(): data cards key: null or empty");
          }
        }
        else
        {
          paramJSONObject = new java/lang/StringBuilder;
          paramJSONObject.<init>();
          paramJSONObject.append("GetAdCardsDataResponse(): code:");
          paramJSONObject.append(i);
          z.m("Cal:D:AdsExtraManager", paramJSONObject.toString());
        }
      }
      catch (Exception paramJSONObject)
      {
        z.d("Cal:D:AdsExtraManager", "GetAdCardsDataResponse:", paramJSONObject);
      }
    }
    
    public void b(Exception paramException)
    {
      z.d("Cal:D:AdsExtraManager", "GetAdCardsDataResponse:", paramException);
    }
  }
  
  private static class b
    implements u1.b.a
  {
    private WeakReference<Context> a;
    private long b;
    
    public b(Context paramContext, long paramLong)
    {
      this.a = new WeakReference(paramContext);
      this.b = paramLong;
    }
    
    public void a(JSONObject paramJSONObject)
    {
      Context localContext = (Context)this.a.get();
      if (localContext == null) {
        return;
      }
      try
      {
        int i = paramJSONObject.getInt("code");
        if (i == 0)
        {
          Object localObject = paramJSONObject.getJSONObject("data");
          paramJSONObject = null;
          if (localObject != null) {
            paramJSONObject = ((JSONObject)localObject).getString("ads");
          }
          if (!TextUtils.isEmpty(paramJSONObject))
          {
            localObject = new com/miui/calendar/ad/b$b$a;
            ((a)localObject).<init>(this);
            paramJSONObject = (List)x.b(paramJSONObject, ((TypeToken)localObject).getType());
            b.a(b.e(), localContext, this.b, paramJSONObject);
          }
          else
          {
            z.m("Cal:D:AdsExtraManager", "GetOneAdDataResponse(): ads: empty");
          }
        }
        else
        {
          paramJSONObject = new java/lang/StringBuilder;
          paramJSONObject.<init>();
          paramJSONObject.append("GetOneAdDataResponse(): code:");
          paramJSONObject.append(i);
          z.m("Cal:D:AdsExtraManager", paramJSONObject.toString());
        }
      }
      catch (Exception paramJSONObject)
      {
        z.d("Cal:D:AdsExtraManager", "GetOneAdDataResponse:", paramJSONObject);
      }
    }
    
    public void b(Exception paramException)
    {
      z.d("Cal:D:AdsExtraManager", "GetOneAdDataResponse:", paramException);
    }
    
    class a
      extends TypeToken<List<AdSchema>>
    {
      a() {}
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.ad.b
 * JD-Core Version:    0.7.0.1
 */