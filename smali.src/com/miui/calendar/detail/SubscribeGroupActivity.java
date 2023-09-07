package com.miui.calendar.detail;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.OnAccountsUpdateListener;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView.c0;
import androidx.recyclerview.widget.RecyclerView.g;
import androidx.recyclerview.widget.RecyclerView.o;
import com.android.calendar.common.Utils;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.miui.calendar.account.mi.MiAccountSchema;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.util.GuideUtils;
import com.miui.calendar.util.g.v0;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.q;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import com.miui.calendar.view.LoadingLayout;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import k3.d.b;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.r;
import kotlin.u;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.s1;
import kotlinx.coroutines.s1.a;
import kotlinx.coroutines.w0;
import okhttp3.b0;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONObject;
import u1.b.a;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/detail/SubscribeGroupActivity;", "Lcom/android/calendar/common/b;", "Lkotlin/u;", "j0", "init", "n0", "l0", "", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "cardList", "m0", "o0", "p0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "onResume", "onPause", "Lcom/miui/calendar/util/g$v0;", "event", "onEventMainThread", "onBackPressed", "onDestroy", "Lmiuix/recyclerview/widget/RecyclerView;", "b", "Lmiuix/recyclerview/widget/RecyclerView;", "mSubscribeRv", "Landroid/widget/TextView;", "c", "Landroid/widget/TextView;", "mErrorTv", "Landroid/content/Context;", "d", "Landroid/content/Context;", "mContext", "Lcom/miui/calendar/detail/SubscribeGroupActivity$d;", "e", "Lcom/miui/calendar/detail/SubscribeGroupActivity$d;", "mAdapter", "Lcom/miui/calendar/detail/SubscribeGroupActivity$SubscribeSchema;", "f", "Lcom/miui/calendar/detail/SubscribeGroupActivity$SubscribeSchema;", "mSchema", "Lcom/miui/calendar/view/LoadingLayout;", "g", "Lcom/miui/calendar/view/LoadingLayout;", "mLoadingView", "h", "Ljava/util/List;", "mCards", "Lmiuix/appcompat/app/l;", "j", "Lmiuix/appcompat/app/l;", "mAlertDialog", "Landroid/accounts/OnAccountsUpdateListener;", "k", "Landroid/accounts/OnAccountsUpdateListener;", "mListener", "Lkotlinx/coroutines/s1;", "l", "Lkotlinx/coroutines/s1;", "mJob", "<init>", "()V", "n", "AccountLoadListener", "a", "SubscribeSchema", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class SubscribeGroupActivity
  extends com.android.calendar.common.b
{
  public static final a n = new a(null);
  private miuix.recyclerview.widget.RecyclerView b;
  private TextView c;
  private Context d;
  private d e;
  private SubscribeSchema f;
  private LoadingLayout g;
  private List<CustomCardSchema> h = new ArrayList();
  private tc.a<b0> i;
  private miuix.appcompat.app.l j;
  private OnAccountsUpdateListener k = new j();
  private s1 l;
  public Map<Integer, View> m;
  
  private final void init()
  {
    this.c = ((TextView)findViewById(2131362418));
    this.g = ((LoadingLayout)findViewById(2131362703));
    this.b = ((miuix.recyclerview.widget.RecyclerView)findViewById(2131362689));
    Object localObject = new d();
    this.e = ((d)localObject);
    miuix.recyclerview.widget.RecyclerView localRecyclerView = this.b;
    if (localRecyclerView != null) {
      localRecyclerView.setAdapter((RecyclerView.g)localObject);
    }
    localObject = new LinearLayoutManager(this, 1, false);
    localRecyclerView = this.b;
    if (localRecyclerView != null) {
      localRecyclerView.setLayoutManager((RecyclerView.o)localObject);
    }
  }
  
  private final void j0()
  {
    miuix.appcompat.app.a locala = J();
    if (locala == null) {
      return;
    }
    locala.A(2131887572);
  }
  
  private static final void k0(Account[] paramArrayOfAccount)
  {
    r3.a.g = false;
    com.android.calendar.cards.t.i = true;
  }
  
  private final void l0()
  {
    this.h = new ArrayList();
    Object localObject = this.f;
    if (localObject != null)
    {
      r.c(localObject);
      if (((SubscribeSchema)localObject).getSubscribeServiceList() != null)
      {
        localObject = this.f;
        r.c(localObject);
        localObject = ((SubscribeSchema)localObject).getSubscribeServiceList();
        this.h = ((List)localObject);
        m0((List)localObject);
      }
    }
  }
  
  private final void m0(List<CustomCardSchema> paramList)
  {
    if (paramList == null) {
      return;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      CustomCardSchema localCustomCardSchema = (CustomCardSchema)localIterator.next();
      int i1 = localCustomCardSchema.showType;
      if (!com.miui.calendar.card.c.a.contains(Integer.valueOf(i1 + 20)))
      {
        localArrayList.add(localCustomCardSchema);
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("prepareCards() remove not support card, showType=");
        localStringBuilder.append(localCustomCardSchema.showType);
        z.a("Cal:D:SubscribeGroupActivity", localStringBuilder.toString());
      }
    }
    if (localArrayList.size() > 0) {
      paramList.removeAll(localArrayList);
    }
  }
  
  private final void n0()
  {
    TextView localTextView;
    if ((y.i(this.d)) && (z0.n(this.d)))
    {
      localTextView = this.c;
      r.c(localTextView);
      localTextView.setVisibility(8);
      o0();
    }
    else
    {
      localTextView = this.c;
      r.c(localTextView);
      localTextView.setVisibility(0);
    }
  }
  
  private final void o0()
  {
    k3.d.g(new AccountLoadListener(this));
    if (this.f == null)
    {
      LoadingLayout localLoadingLayout = this.g;
      if (localLoadingLayout != null) {
        localLoadingLayout.d();
      }
    }
  }
  
  private final void p0()
  {
    z.a("Cal:D:SubscribeGroupActivity", "stop query");
    tc.a locala = this.i;
    if (locala != null)
    {
      r.c(locala);
      locala.cancel();
      this.i = null;
    }
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131558950);
    this.d = this;
    GuideUtils.g(this);
    paramBundle = getIntent().getStringExtra("from");
    if (!TextUtils.isEmpty(paramBundle)) {
      g0.f("click_to_subscribe_channel", new String[] { "from", paramBundle });
    }
    j0();
    init();
    try
    {
      AccountManager.get(this).addOnAccountsUpdatedListener(this.k, null, false);
    }
    catch (Exception paramBundle)
    {
      z.d("Cal:D:SubscribeGroupActivity", "AccountManager get error", paramBundle);
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    Object localObject = this.j;
    if (localObject != null)
    {
      r.c(localObject);
      ((miuix.appcompat.app.l)localObject).dismiss();
      this.j = null;
    }
    localObject = this.l;
    if (localObject != null) {
      s1.a.a((s1)localObject, null, 1, null);
    }
    AccountManager.get(this).removeOnAccountsUpdatedListener(this.k);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public final void onEventMainThread(g.v0 paramv0)
  {
    r.f(paramv0, "event");
    com.miui.calendar.util.g.b(paramv0, "Cal:D:SubscribeGroupActivity");
    paramv0 = paramv0.a;
    if (paramv0 != null) {
      this.f = paramv0;
    }
    n0();
  }
  
  protected void onPause()
  {
    super.onPause();
    pc.c.c().q(this);
    p0();
  }
  
  protected void onResume()
  {
    super.onResume();
    pc.c.c().o(this);
    n0();
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener;", "Lk3/d$b;", "Lcom/miui/calendar/account/mi/MiAccountSchema;", "accountSchema", "Lkotlin/u;", "a", "Ljava/lang/ref/WeakReference;", "Lcom/miui/calendar/detail/SubscribeGroupActivity;", "Ljava/lang/ref/WeakReference;", "getMSubscribeGroupActivityRef", "()Ljava/lang/ref/WeakReference;", "setMSubscribeGroupActivityRef", "(Ljava/lang/ref/WeakReference;)V", "mSubscribeGroupActivityRef", "subscribeGroupActivity", "<init>", "(Lcom/miui/calendar/detail/SubscribeGroupActivity;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private static final class AccountLoadListener
    implements d.b
  {
    private WeakReference<SubscribeGroupActivity> a;
    
    public AccountLoadListener(SubscribeGroupActivity paramSubscribeGroupActivity)
    {
      this.a = new WeakReference(paramSubscribeGroupActivity);
    }
    
    public void a(MiAccountSchema paramMiAccountSchema)
    {
      final SubscribeGroupActivity localSubscribeGroupActivity = (SubscribeGroupActivity)this.a.get();
      if (localSubscribeGroupActivity != null) {
        SubscribeGroupActivity.h0(localSubscribeGroupActivity, kotlinx.coroutines.h.d(kotlinx.coroutines.l0.a(w0.b()), null, null, new SuspendLambda(paramMiAccountSchema, localSubscribeGroupActivity)
        {
          int label;
          
          public final kotlin.coroutines.c<u> create(Object paramAnonymousObject, kotlin.coroutines.c<?> paramAnonymousc)
          {
            return new 1(this.$accountSchema, localSubscribeGroupActivity, paramAnonymousc);
          }
          
          public final Object invoke(k0 paramAnonymousk0, kotlin.coroutines.c<? super u> paramAnonymousc)
          {
            return ((1)create(paramAnonymousk0, paramAnonymousc)).invokeSuspend(u.a);
          }
          
          public final Object invokeSuspend(final Object paramAnonymousObject)
          {
            Object localObject1 = kotlin.coroutines.intrinsics.a.d();
            int i = this.label;
            if (i != 0)
            {
              if (i == 1) {
                kotlin.j.b(paramAnonymousObject);
              } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
              }
            }
            else
            {
              kotlin.j.b(paramAnonymousObject);
              paramAnonymousObject = this.$accountSchema;
              if (paramAnonymousObject != null) {
                paramAnonymousObject = paramAnonymousObject.authToken;
              } else {
                paramAnonymousObject = null;
              }
              if (paramAnonymousObject != null)
              {
                paramAnonymousObject = localSubscribeGroupActivity;
                r.e(paramAnonymousObject, "it");
                localObject2 = SubscribeGroupActivity.c0(paramAnonymousObject);
                paramAnonymousObject = this.$accountSchema;
                paramAnonymousObject = u1.d.b((Context)localObject2, true, paramAnonymousObject.authToken, paramAnonymousObject.userId);
              }
              else
              {
                paramAnonymousObject = localSubscribeGroupActivity;
                r.e(paramAnonymousObject, "it");
                paramAnonymousObject = u1.d.c(SubscribeGroupActivity.c0(paramAnonymousObject), false, null, null, 14, null);
              }
              Object localObject2 = localSubscribeGroupActivity;
              r.e(localObject2, "it");
              localObject2 = com.miui.calendar.util.l0.a(SubscribeGroupActivity.c0((SubscribeGroupActivity)localObject2), null);
              final u1.a locala = u1.d.f(null, 1, null);
              Object localObject3 = localSubscribeGroupActivity;
              r.e(localObject3, "it");
              final SubscribeGroupActivity.c localc = new SubscribeGroupActivity.c((SubscribeGroupActivity)localObject3);
              localObject3 = w0.c();
              paramAnonymousObject = new SuspendLambda(localSubscribeGroupActivity, locala)
              {
                int label;
                
                public final kotlin.coroutines.c<u> create(Object paramAnonymous2Object, kotlin.coroutines.c<?> paramAnonymous2c)
                {
                  return new 1(this.$it, locala, paramAnonymousObject, this.$paramsMap, localc, paramAnonymous2c);
                }
                
                public final Object invoke(k0 paramAnonymous2k0, kotlin.coroutines.c<? super u> paramAnonymous2c)
                {
                  return ((1)create(paramAnonymous2k0, paramAnonymous2c)).invokeSuspend(u.a);
                }
                
                public final Object invokeSuspend(Object paramAnonymous2Object)
                {
                  kotlin.coroutines.intrinsics.a.d();
                  if (this.label == 0)
                  {
                    kotlin.j.b(paramAnonymous2Object);
                    z.a("Cal:D:SubscribeGroupActivity", "start query card");
                    paramAnonymous2Object = this.$it;
                    r.e(paramAnonymous2Object, "it");
                    SubscribeGroupActivity.g0(paramAnonymous2Object, locala.C(paramAnonymousObject, this.$paramsMap));
                    paramAnonymous2Object = this.$it;
                    r.e(paramAnonymous2Object, "it");
                    paramAnonymous2Object = SubscribeGroupActivity.a0(paramAnonymous2Object);
                    if (paramAnonymous2Object != null) {
                      paramAnonymous2Object.q(new u1.b(localc));
                    }
                    return u.a;
                  }
                  throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
              };
              this.label = 1;
              if (kotlinx.coroutines.h.g((CoroutineContext)localObject3, paramAnonymousObject, this) == localObject1) {
                return localObject1;
              }
            }
            return u.a;
          }
        }, 3, null));
      }
    }
  }
  
  @Metadata(d1={""}, d2={"Lcom/miui/calendar/detail/SubscribeGroupActivity$SubscribeSchema;", "", "()V", "subscribeServiceList", "", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "getSubscribeServiceList", "()Ljava/util/List;", "setSubscribeServiceList", "(Ljava/util/List;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
  @Keep
  public static final class SubscribeSchema
  {
    private List<CustomCardSchema> subscribeServiceList;
    
    public final List<CustomCardSchema> getSubscribeServiceList()
    {
      return this.subscribeServiceList;
    }
    
    public final void setSubscribeServiceList(List<CustomCardSchema> paramList)
    {
      this.subscribeServiceList = paramList;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/detail/SubscribeGroupActivity$a;", "", "", "DISK_CACHE_KEY_SUBSCRIBE_GROUP", "Ljava/lang/String;", "JSON_KEY_EXTRA_TAG_COLOR", "JSON_KEY_EXTRA_TAG_TEXT", "", "PRE_SUBSCRIBE", "I", "PRE_UNSUBSCRIB", "SUBSCRIBING", "TAG", "UNSUBSCRIBING", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/detail/SubscribeGroupActivity$b;", "Lk3/d$b;", "Landroid/widget/TextView;", "button", "", "subscribeStatus", "Lkotlin/u;", "b", "Lcom/miui/calendar/account/mi/MiAccountSchema;", "accountSchema", "a", "Landroid/widget/TextView;", "getSubscribeButton", "()Landroid/widget/TextView;", "subscribeButton", "", "J", "getCardId", "()J", "cardId", "", "c", "Z", "isSubscribe", "()Z", "", "d", "Ljava/lang/String;", "getTitle", "()Ljava/lang/String;", "title", "Ljava/lang/ref/WeakReference;", "Lcom/miui/calendar/detail/SubscribeGroupActivity;", "kotlin.jvm.PlatformType", "e", "Ljava/lang/ref/WeakReference;", "getWeakReferenceContext", "()Ljava/lang/ref/WeakReference;", "weakReferenceContext", "context", "<init>", "(Lcom/miui/calendar/detail/SubscribeGroupActivity;Landroid/widget/TextView;JZLjava/lang/String;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private static final class b
    implements d.b
  {
    private final TextView a;
    private final long b;
    private final boolean c;
    private final String d;
    private final WeakReference<SubscribeGroupActivity> e;
    
    public b(SubscribeGroupActivity paramSubscribeGroupActivity, TextView paramTextView, long paramLong, boolean paramBoolean, String paramString)
    {
      this.a = paramTextView;
      this.b = paramLong;
      this.c = paramBoolean;
      this.d = paramString;
      this.e = new WeakReference(paramSubscribeGroupActivity);
    }
    
    private final void b(TextView paramTextView, int paramInt)
    {
      if (paramInt != 0)
      {
        if (paramInt != 1)
        {
          if (paramInt != 2)
          {
            if (paramInt != 3) {
              paramInt = 0;
            } else {
              paramInt = 2131887800;
            }
          }
          else {
            paramInt = 2131887802;
          }
        }
        else {
          paramInt = 2131887567;
        }
      }
      else {
        paramInt = 2131887566;
      }
      paramTextView.setText(paramInt);
    }
    
    public void a(MiAccountSchema paramMiAccountSchema)
    {
      SubscribeGroupActivity localSubscribeGroupActivity = (SubscribeGroupActivity)this.e.get();
      if (localSubscribeGroupActivity == null) {
        return;
      }
      if (paramMiAccountSchema == null)
      {
        k3.d.e(localSubscribeGroupActivity);
        return;
      }
      if (paramMiAccountSchema.authToken == null)
      {
        paramMiAccountSchema = localSubscribeGroupActivity.getResources().getString(2131887569);
        r.e(paramMiAccountSchema, "c.resources.getString(R.…scribe_failed_by_account)");
        t0.e(localSubscribeGroupActivity, paramMiAccountSchema, 0, 4, null);
        k3.d.e(localSubscribeGroupActivity);
        return;
      }
      this.a.setEnabled(false);
      paramMiAccountSchema = this.a;
      int i;
      if (this.c) {
        i = 1;
      } else {
        i = 2;
      }
      b(paramMiAccountSchema, i);
      if (this.c) {
        paramMiAccountSchema = localSubscribeGroupActivity.getString(2131887564);
      } else {
        paramMiAccountSchema = localSubscribeGroupActivity.getString(2131887801, new Object[] { this.d });
      }
      r.e(paramMiAccountSchema, "if (isSubscribe) c.getSt…ribe_card_success, title)");
      UpdateUserCardService.f(localSubscribeGroupActivity, this.b, this.c ^ true, paramMiAccountSchema);
      if (this.c) {
        paramMiAccountSchema = "subscribe_channel_subscribe_button_clicked";
      } else {
        paramMiAccountSchema = "card_manager_unsubscribe_clicked";
      }
      g0.f(paramMiAccountSchema, new String[] { "title", this.d });
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/detail/SubscribeGroupActivity$c;", "Lu1/b$a;", "Lorg/json/JSONObject;", "jsonObject", "Lkotlin/u;", "a", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "b", "Ljava/lang/ref/WeakReference;", "Lcom/miui/calendar/detail/SubscribeGroupActivity;", "Ljava/lang/ref/WeakReference;", "getMSubscribeGroupActivityRef", "()Ljava/lang/ref/WeakReference;", "setMSubscribeGroupActivityRef", "(Ljava/lang/ref/WeakReference;)V", "mSubscribeGroupActivityRef", "subscribeGroupActivity", "<init>", "(Lcom/miui/calendar/detail/SubscribeGroupActivity;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private static final class c
    implements b.a
  {
    private WeakReference<SubscribeGroupActivity> a;
    
    public c(SubscribeGroupActivity paramSubscribeGroupActivity)
    {
      this.a = new WeakReference(paramSubscribeGroupActivity);
    }
    
    public void a(JSONObject paramJSONObject)
    {
      r.f(paramJSONObject, "jsonObject");
      Object localObject = (SubscribeGroupActivity)this.a.get();
      if (localObject == null) {
        return;
      }
      JSONObject localJSONObject = null;
      try
      {
        paramJSONObject = com.miui.calendar.util.l0.b(paramJSONObject.getString("data"));
        localJSONObject = paramJSONObject;
        s4.d.d(paramJSONObject);
        localJSONObject = paramJSONObject;
        if (!TextUtils.isEmpty(paramJSONObject))
        {
          localJSONObject = paramJSONObject;
          q.f(SubscribeGroupActivity.c0((SubscribeGroupActivity)localObject), "subscribe_group_v2", paramJSONObject);
          localJSONObject = paramJSONObject;
          SubscribeGroupActivity.i0((SubscribeGroupActivity)localObject, (SubscribeGroupActivity.SubscribeSchema)x.a(paramJSONObject, SubscribeGroupActivity.SubscribeSchema.class));
        }
        localJSONObject = paramJSONObject;
        SubscribeGroupActivity.f0((SubscribeGroupActivity)localObject);
        localJSONObject = paramJSONObject;
        SubscribeGroupActivity.d locald = SubscribeGroupActivity.Z((SubscribeGroupActivity)localObject);
        localJSONObject = paramJSONObject;
        r.c(locald);
        localJSONObject = paramJSONObject;
        locald.notifyDataSetChanged();
        localJSONObject = paramJSONObject;
        localObject = SubscribeGroupActivity.d0((SubscribeGroupActivity)localObject);
        if (localObject != null)
        {
          localJSONObject = paramJSONObject;
          ((LoadingLayout)localObject).a();
        }
      }
      catch (Exception paramJSONObject)
      {
        z.d("Cal:D:SubscribeGroupActivity", "ResponseListener:", paramJSONObject);
        s4.d.a(localJSONObject, new Object[0]);
      }
    }
    
    public void b(Exception paramException)
    {
      r.f(paramException, "e");
      SubscribeGroupActivity localSubscribeGroupActivity = (SubscribeGroupActivity)this.a.get();
      if (localSubscribeGroupActivity == null) {
        return;
      }
      z.d("Cal:D:SubscribeGroupActivity", "ResponseListener:", paramException);
      if (SubscribeGroupActivity.e0(localSubscribeGroupActivity) == null)
      {
        paramException = SubscribeGroupActivity.d0(localSubscribeGroupActivity);
        r.c(paramException);
        paramException.c();
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/detail/SubscribeGroupActivity$d;", "Landroidx/recyclerview/widget/RecyclerView$g;", "Lcom/miui/calendar/detail/SubscribeGroupActivity$e;", "Lcom/miui/calendar/detail/SubscribeGroupActivity;", "", "cardId", "Landroid/widget/TextView;", "subscribeButton", "", "isSubscribe", "", "title", "Lkotlin/u;", "q", "button", "", "subscribeStatus", "p", "textView", "o", "Landroid/view/ViewGroup;", "parent", "viewType", "m", "holder", "position", "i", "getItemCount", "<init>", "(Lcom/miui/calendar/detail/SubscribeGroupActivity;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class d
    extends RecyclerView.g<SubscribeGroupActivity.e>
  {
    private static final void j(SubscribeGroupActivity paramSubscribeGroupActivity, CustomCardSchema paramCustomCardSchema, View paramView)
    {
      r.f(paramSubscribeGroupActivity, "this$0");
      r.f(paramCustomCardSchema, "$card");
      Utils.i1(SubscribeGroupActivity.c0(paramSubscribeGroupActivity), paramCustomCardSchema.id);
      g0.f("subscribe_channel_item_clicked", new String[] { "title", paramCustomCardSchema.title });
    }
    
    private static final void k(d paramd, CustomCardSchema paramCustomCardSchema, SubscribeGroupActivity.e parame, View paramView)
    {
      r.f(paramd, "this$0");
      r.f(paramCustomCardSchema, "$card");
      r.f(parame, "$holder");
      long l = paramCustomCardSchema.id;
      parame = parame.a();
      paramCustomCardSchema = paramCustomCardSchema.title;
      r.e(paramCustomCardSchema, "card.title");
      paramd.q(l, parame, false, paramCustomCardSchema);
    }
    
    private static final void l(CustomCardSchema paramCustomCardSchema, SubscribeGroupActivity paramSubscribeGroupActivity, d paramd, SubscribeGroupActivity.e parame, View paramView)
    {
      r.f(paramCustomCardSchema, "$card");
      r.f(paramSubscribeGroupActivity, "this$0");
      r.f(paramd, "this$1");
      r.f(parame, "$holder");
      int i = paramCustomCardSchema.showType + 20;
      if ((i == 57) && (!f4.b.e(paramSubscribeGroupActivity)))
      {
        b2.a.j(SubscribeGroupActivity.c0(paramSubscribeGroupActivity), "key_subscribe_menstruation", paramCustomCardSchema.id);
        f4.b.g(SubscribeGroupActivity.c0(paramSubscribeGroupActivity));
      }
      else if ((i == 58) && (!v3.d.c(paramSubscribeGroupActivity)))
      {
        b2.a.j(SubscribeGroupActivity.c0(paramSubscribeGroupActivity), "key_subscribe_class_schedule", paramCustomCardSchema.id);
        paramCustomCardSchema = SubscribeGroupActivity.c0(paramSubscribeGroupActivity);
        r.c(paramCustomCardSchema);
        v3.d.e(paramCustomCardSchema);
      }
      else
      {
        long l = paramCustomCardSchema.id;
        paramSubscribeGroupActivity = parame.a();
        paramCustomCardSchema = paramCustomCardSchema.title;
        r.e(paramCustomCardSchema, "card.title");
        paramd.q(l, paramSubscribeGroupActivity, true, paramCustomCardSchema);
      }
    }
    
    private final void o(TextView paramTextView)
    {
      Object localObject = paramTextView.getLayoutParams();
      r.d(localObject, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
      localObject = (LinearLayout.LayoutParams)localObject;
      int i = paramTextView.getPaddingBottom() + paramTextView.getPaddingTop();
      float f1 = paramTextView.getTextSize();
      float f2 = i;
      if (((LinearLayout.LayoutParams)localObject).height < f1 + f2)
      {
        z.a("Cal:D:SubscribeGroupActivity", "resetTextSize");
        paramTextView.setTextSize(0, ((LinearLayout.LayoutParams)localObject).height - i * 2);
      }
    }
    
    private final void p(TextView paramTextView, int paramInt)
    {
      if (paramInt != 0)
      {
        if (paramInt != 1)
        {
          if (paramInt != 2)
          {
            if (paramInt != 3) {
              paramInt = 0;
            } else {
              paramInt = 2131887800;
            }
          }
          else {
            paramInt = 2131887802;
          }
        }
        else {
          paramInt = 2131887567;
        }
      }
      else {
        paramInt = 2131887566;
      }
      paramTextView.setText(paramInt);
    }
    
    private final void q(long paramLong, TextView paramTextView, boolean paramBoolean, String paramString)
    {
      k3.d.g(new SubscribeGroupActivity.b(this.a, paramTextView, paramLong, paramBoolean, paramString));
    }
    
    public int getItemCount()
    {
      int i;
      if (SubscribeGroupActivity.b0(this.a) == null)
      {
        i = 0;
      }
      else
      {
        List localList = SubscribeGroupActivity.b0(this.a);
        r.c(localList);
        i = localList.size();
      }
      return i;
    }
    
    public void i(SubscribeGroupActivity.e parame, int paramInt)
    {
      r.f(parame, "holder");
      Object localObject1 = SubscribeGroupActivity.b0(this.a);
      r.c(localObject1);
      localObject1 = (CustomCardSchema)((List)localObject1).get(paramInt);
      Object localObject2 = SubscribeGroupActivity.c0(this.a);
      if (localObject2 != null) {
        ((com.bumptech.glide.g)com.bumptech.glide.b.t((Context)localObject2).r(com.miui.calendar.util.l0.e(((CustomCardSchema)localObject1).icon)).k(2131231431)).x0(parame.b());
      }
      parame.c().setText(((CustomCardSchema)localObject1).title);
      parame.e().setText(((CustomCardSchema)localObject1).description);
      try
      {
        localObject2 = ((CustomCardSchema)localObject1).extra;
        if ((localObject2 != null) && (((JsonObject)localObject2).get("tagText") != null) && (((CustomCardSchema)localObject1).extra.get("tagColor") != null))
        {
          localObject2 = SubscribeGroupActivity.c0(this.a);
          r.c(localObject2);
          TextView localTextView = parame.c();
          String str = ((CustomCardSchema)localObject1).extra.get("tagText").getAsString();
          r.e(str, "card.extra[JSON_KEY_EXTRA_TAG_TEXT].asString");
          Context localContext = SubscribeGroupActivity.c0(this.a);
          r.c(localContext);
          x0.d((Context)localObject2, localTextView, str, localContext.getResources().getDimensionPixelSize(2131167399), -1, Color.parseColor(((CustomCardSchema)localObject1).extra.get("tagColor").getAsString()));
        }
      }
      catch (Exception localException)
      {
        z.d("Cal:D:SubscribeGroupActivity", "bind tag error", localException);
      }
      parame.a().setEnabled(true);
      parame.d().setOnClickListener(new k(this.a, (CustomCardSchema)localObject1));
      v.k(parame.d());
      if (((CustomCardSchema)localObject1).userHide == 0)
      {
        p(parame.a(), 3);
        parame.a().setBackgroundResource(2131230967);
        parame.a().setTextColor(this.a.getResources().getColor(2131100765));
        parame.a().setOnClickListener(new l(this, (CustomCardSchema)localObject1, parame));
      }
      else
      {
        p(parame.a(), 0);
        parame.a().setBackgroundResource(2131230962);
        parame.a().setTextColor(this.a.getResources().getColor(2131100917));
        parame.a().setOnClickListener(new m((CustomCardSchema)localObject1, this.a, this, parame));
      }
      o(parame.a());
      v.k(parame.a());
    }
    
    public SubscribeGroupActivity.e m(ViewGroup paramViewGroup, int paramInt)
    {
      r.f(paramViewGroup, "parent");
      SubscribeGroupActivity localSubscribeGroupActivity = this.a;
      paramViewGroup = LayoutInflater.from(SubscribeGroupActivity.c0(localSubscribeGroupActivity)).inflate(2131558951, paramViewGroup, false);
      r.e(paramViewGroup, "from(mContext).inflate(R…ard_title, parent, false)");
      return new SubscribeGroupActivity.e(localSubscribeGroupActivity, paramViewGroup);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/detail/SubscribeGroupActivity$e;", "Landroidx/recyclerview/widget/RecyclerView$c0;", "Landroid/view/View;", "a", "Landroid/view/View;", "d", "()Landroid/view/View;", "setRootView", "(Landroid/view/View;)V", "rootView", "Landroid/widget/ImageView;", "b", "Landroid/widget/ImageView;", "()Landroid/widget/ImageView;", "setIconView", "(Landroid/widget/ImageView;)V", "iconView", "Landroid/widget/TextView;", "c", "Landroid/widget/TextView;", "()Landroid/widget/TextView;", "setPrimaryView", "(Landroid/widget/TextView;)V", "primaryView", "e", "setSecondaryView", "secondaryView", "setButtonView", "buttonView", "itemView", "<init>", "(Lcom/miui/calendar/detail/SubscribeGroupActivity;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class e
    extends RecyclerView.c0
  {
    private View a;
    private ImageView b;
    private TextView c;
    private TextView d;
    private TextView e;
    
    public e()
    {
      super();
      this$1 = localObject.findViewById(2131363270);
      r.e(SubscribeGroupActivity.this, "itemView.findViewById(R.…cribe_channel_title_root)");
      this.a = SubscribeGroupActivity.this;
      this$1 = localObject.findViewById(2131363267);
      r.e(SubscribeGroupActivity.this, "itemView.findViewById(R.id.subscribe_channel_icon)");
      this.b = ((ImageView)SubscribeGroupActivity.this);
      this$1 = localObject.findViewById(2131363268);
      r.e(SubscribeGroupActivity.this, "itemView.findViewById(R.…ubscribe_channel_primary)");
      this.c = ((TextView)SubscribeGroupActivity.this);
      this$1 = localObject.findViewById(2131363269);
      r.e(SubscribeGroupActivity.this, "itemView.findViewById(R.…scribe_channel_secondary)");
      this.d = ((TextView)SubscribeGroupActivity.this);
      this$1 = localObject.findViewById(2131363266);
      r.e(SubscribeGroupActivity.this, "itemView.findViewById(R.…subscribe_channel_button)");
      this.e = ((TextView)SubscribeGroupActivity.this);
    }
    
    public final TextView a()
    {
      return this.e;
    }
    
    public final ImageView b()
    {
      return this.b;
    }
    
    public final TextView c()
    {
      return this.c;
    }
    
    public final View d()
    {
      return this.a;
    }
    
    public final TextView e()
    {
      return this.d;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.detail.SubscribeGroupActivity
 * JD-Core Version:    0.7.0.1
 */