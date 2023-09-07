package com.miui.calendar.detail;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.widget.AbsListView.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.android.calendar.common.Utils;
import com.miui.calendar.account.mi.MiAccountSchema;
import com.miui.calendar.card.CardAdapter;
import com.miui.calendar.card.CardAdapter.DisplayMode;
import com.miui.calendar.card.b.b;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.util.g.v0;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.q;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z0;
import com.miui.calendar.view.LoadingView;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import k3.d.b;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import miuix.appcompat.app.l.b;
import miuix.appcompat.app.m;
import okhttp3.b0;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONObject;
import u1.b.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/detail/CardDetailActivity;", "Lcom/android/calendar/common/b;", "Lkotlin/u;", "t0", "init", "B0", "", "cardId", "", "userHide", "", "cardName", "A0", "Landroid/view/View;", "q0", "s0", "u0", "x0", "y0", "z0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "onResume", "onPause", "onBackPressed", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "Lcom/miui/calendar/util/g$v0;", "event", "onEventMainThread", "onDestroy", "Landroid/widget/ListView;", "b", "Landroid/widget/ListView;", "mListView", "Landroid/widget/TextView;", "c", "Landroid/widget/TextView;", "mButtonView", "Lcom/miui/calendar/view/LoadingView;", "d", "Lcom/miui/calendar/view/LoadingView;", "mLoadingView", "e", "Landroid/view/View;", "mFooterView", "Landroid/content/Context;", "f", "Landroid/content/Context;", "mContext", "Lcom/miui/calendar/card/CardAdapter;", "g", "Lcom/miui/calendar/card/CardAdapter;", "mCardAdapter", "Lcom/miui/calendar/detail/g;", "h", "Lcom/miui/calendar/detail/g;", "mCardFactory", "i", "J", "mCardId", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "j", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "mCard", "k", "Z", "mButtonHasClicked", "l", "mPreviewTime", "Lmiuix/appcompat/app/l;", "n", "Lmiuix/appcompat/app/l;", "mAlertDialog", "<init>", "()V", "p", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class CardDetailActivity
  extends com.android.calendar.common.b
{
  public static final a p = new a(null);
  private ListView b;
  private TextView c;
  private LoadingView d;
  private View e;
  private Context f;
  private CardAdapter g;
  private g h;
  private long i;
  private CustomCardSchema j;
  private boolean k;
  private long l = -1L;
  private tc.a<b0> m;
  private miuix.appcompat.app.l n;
  public Map<Integer, View> o;
  
  private final void A0(long paramLong, int paramInt, String paramString)
  {
    if (this.f != null) {
      k3.d.g(new d(this, paramInt, paramLong, paramString));
    }
  }
  
  private final void B0()
  {
    Object localObject;
    if (this.j == null)
    {
      localObject = this.c;
      r.c(localObject);
      ((View)localObject).setVisibility(8);
    }
    else
    {
      localObject = this.c;
      r.c(localObject);
      ((View)localObject).setVisibility(0);
      localObject = this.c;
      r.c(localObject);
      ((TextView)localObject).setEnabled(true);
      localObject = this.j;
      r.c(localObject);
      if (((CustomCardSchema)localObject).userHide == 0)
      {
        localObject = this.c;
        r.c(localObject);
        ((View)localObject).setBackgroundResource(2131230985);
        localObject = this.c;
        r.c(localObject);
        ((TextView)localObject).setTextColor(getResources().getColor(2131099779));
        localObject = this.c;
        r.c(localObject);
        ((TextView)localObject).setText(getString(2131887800));
        localObject = this.c;
        r.c(localObject);
        ((View)localObject).setOnClickListener(new d(this));
      }
      else
      {
        localObject = this.c;
        r.c(localObject);
        ((View)localObject).setBackgroundResource(2131230987);
        localObject = this.c;
        r.c(localObject);
        ((TextView)localObject).setTextColor(getResources().getColor(2131100983));
        localObject = this.c;
        r.c(localObject);
        ((TextView)localObject).setText(getString(2131887563));
        localObject = this.c;
        r.c(localObject);
        ((View)localObject).setOnClickListener(new e(this));
      }
      v.f(this.c, false);
    }
  }
  
  private static final void C0(CardDetailActivity paramCardDetailActivity, View paramView)
  {
    r.f(paramCardDetailActivity, "this$0");
    paramCardDetailActivity.k = true;
    paramView = paramCardDetailActivity.j;
    r.c(paramView);
    paramView.userHide = 1;
    paramView = paramCardDetailActivity.c;
    r.c(paramView);
    paramView.setText(2131887802);
    paramView = paramCardDetailActivity.c;
    r.c(paramView);
    paramView.setEnabled(false);
    long l1 = paramCardDetailActivity.i;
    paramView = paramCardDetailActivity.j;
    r.c(paramView);
    paramView = paramView.title;
    r.e(paramView, "mCard!!.title");
    paramCardDetailActivity.A0(l1, 1, paramView);
    paramCardDetailActivity = paramCardDetailActivity.j;
    r.c(paramCardDetailActivity);
    g0.f("card_detail_unsubscribe_clicked", new String[] { "title", paramCardDetailActivity.title });
  }
  
  private static final void D0(CardDetailActivity paramCardDetailActivity, View paramView)
  {
    r.f(paramCardDetailActivity, "this$0");
    paramView = paramCardDetailActivity.j;
    if (paramView == null) {
      return;
    }
    r.c(paramView);
    int i1 = paramView.showType + 20;
    Object localObject;
    if ((i1 == 57) && (!f4.b.e(paramCardDetailActivity)))
    {
      paramView = paramCardDetailActivity.f;
      localObject = paramCardDetailActivity.j;
      r.c(localObject);
      b2.a.j(paramView, "key_subscribe_menstruation", ((CustomCardSchema)localObject).id);
      f4.b.g(paramCardDetailActivity.f);
    }
    else if ((i1 == 58) && (!v3.d.c(paramCardDetailActivity)))
    {
      localObject = paramCardDetailActivity.f;
      paramView = paramCardDetailActivity.j;
      r.c(paramView);
      b2.a.j((Context)localObject, "key_subscribe_class_schedule", paramView.id);
      paramCardDetailActivity = paramCardDetailActivity.f;
      r.c(paramCardDetailActivity);
      v3.d.e(paramCardDetailActivity);
    }
    else
    {
      paramCardDetailActivity.k = true;
      paramView = paramCardDetailActivity.j;
      r.c(paramView);
      paramView.userHide = 0;
      paramView = paramCardDetailActivity.c;
      r.c(paramView);
      paramView.setText(2131887571);
      paramView = paramCardDetailActivity.c;
      r.c(paramView);
      paramView.setEnabled(false);
      long l1 = paramCardDetailActivity.i;
      paramView = paramCardDetailActivity.j;
      r.c(paramView);
      paramView = paramView.title;
      r.e(paramView, "mCard!!.title");
      paramCardDetailActivity.A0(l1, 0, paramView);
      paramCardDetailActivity = paramCardDetailActivity.j;
      r.c(paramCardDetailActivity);
      g0.f("card_detail_subscribe_clicked", new String[] { "title", paramCardDetailActivity.title });
    }
  }
  
  private final void init()
  {
    Object localObject = (LoadingView)findViewById(2131362703);
    this.d = ((LoadingView)localObject);
    if (localObject != null) {
      ((LoadingView)localObject).setOnRefreshListener(new c(this));
    }
    this.b = ((ListView)findViewById(2131362689));
    this.e = q0();
    localObject = this.b;
    if (localObject != null) {
      ((View)localObject).setOverScrollMode(2);
    }
    localObject = new CardAdapter(this, this.b, CardAdapter.DisplayMode.PREVIEW_IN_DETAIL);
    this.g = ((CardAdapter)localObject);
    ListView localListView = this.b;
    if (localListView != null) {
      localListView.setAdapter((ListAdapter)localObject);
    }
    this.h = new g(this, this.g);
    localObject = this.g;
    r.c(localObject);
    ((CardAdapter)localObject).b(this.h);
    this.c = ((TextView)findViewById(2131362073));
  }
  
  private final View q0()
  {
    TextView localTextView = new TextView(this.f);
    localTextView.setTextSize(0, getResources().getDimensionPixelSize(2131166265));
    localTextView.setTextColor(getResources().getColor(2131100969));
    localTextView.setText(getString(2131886274));
    localTextView.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
    localTextView.setGravity(17);
    localTextView.setPadding(0, getResources().getDimensionPixelOffset(2131167088), 0, getResources().getDimensionPixelOffset(2131165624));
    return localTextView;
  }
  
  private static final void r0(CardDetailActivity paramCardDetailActivity)
  {
    r.f(paramCardDetailActivity, "this$0");
    paramCardDetailActivity.x0();
  }
  
  private final void s0()
  {
    if (!this.k)
    {
      CustomCardSchema localCustomCardSchema = this.j;
      if (localCustomCardSchema != null)
      {
        r.c(localCustomCardSchema);
        if ((localCustomCardSchema.userHide == 1) && (b2.a.a(this.f, "card_detail_dialog_shown", 0) == 0))
        {
          b2.a.i(this.f, "card_detail_dialog_shown", 1);
          u0();
          return;
        }
      }
    }
    finish();
  }
  
  private final void t0()
  {
    Object localObject1 = getIntent();
    if ((localObject1 != null) && (((Intent)localObject1).getData() != null))
    {
      Uri localUri = ((Intent)localObject1).getData();
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("parseIntent(): url:");
      ((StringBuilder)localObject1).append(localUri);
      com.miui.calendar.util.z.a("Cal:D:CardDetailActivity", ((StringBuilder)localObject1).toString());
      localStringBuilder = null;
      if (localUri != null) {
        localObject1 = localUri.getQueryParameter("cardId");
      } else {
        localObject1 = null;
      }
      try
      {
        r.c(localObject1);
        this.i = Long.parseLong((String)localObject1);
      }
      catch (Exception localException1)
      {
        com.miui.calendar.util.z.d("Cal:D:CardDetailActivity", "parseIntent()", localException1);
        finish();
      }
      Object localObject2 = localStringBuilder;
      if (localUri != null) {
        localObject2 = localUri.getQueryParameter("time");
      }
      long l1;
      try
      {
        r.c(localObject2);
        l1 = Long.parseLong((String)localObject2);
      }
      catch (Exception localException2)
      {
        l1 = -1L;
      }
      this.l = l1;
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("parseIntent(): intent INVALID:");
    localStringBuilder.append(localException2);
    com.miui.calendar.util.z.m("Cal:D:CardDetailActivity", localStringBuilder.toString());
    finish();
  }
  
  private final void u0()
  {
    if (this.n == null)
    {
      localObject = new l.b(this).G(getString(2131886273));
      CustomCardSchema localCustomCardSchema = this.j;
      r.c(localCustomCardSchema);
      this.n = ((l.b)localObject).n(getString(2131886270, new Object[] { localCustomCardSchema.title })).A(getString(2131886272), new a(this)).s(getString(2131886271), new b(this)).d(false).a();
    }
    Object localObject = this.n;
    r.c(localObject);
    ((Dialog)localObject).show();
  }
  
  private static final void v0(CardDetailActivity paramCardDetailActivity, DialogInterface paramDialogInterface, int paramInt)
  {
    r.f(paramCardDetailActivity, "this$0");
    CustomCardSchema localCustomCardSchema = paramCardDetailActivity.j;
    r.c(localCustomCardSchema);
    paramInt = localCustomCardSchema.showType + 20;
    if ((paramInt == 57) && (!f4.b.e(paramCardDetailActivity)))
    {
      if (paramDialogInterface != null) {
        paramDialogInterface.dismiss();
      }
      paramDialogInterface = paramCardDetailActivity.f;
      localCustomCardSchema = paramCardDetailActivity.j;
      r.c(localCustomCardSchema);
      b2.a.j(paramDialogInterface, "key_subscribe_menstruation", localCustomCardSchema.id);
      f4.b.g(paramCardDetailActivity.f);
    }
    else if ((paramInt == 58) && (!v3.d.c(paramCardDetailActivity)))
    {
      if (paramDialogInterface != null) {
        paramDialogInterface.dismiss();
      }
      paramDialogInterface = paramCardDetailActivity.f;
      localCustomCardSchema = paramCardDetailActivity.j;
      r.c(localCustomCardSchema);
      b2.a.j(paramDialogInterface, "key_subscribe_class_schedule", localCustomCardSchema.id);
      paramCardDetailActivity = paramCardDetailActivity.f;
      r.c(paramCardDetailActivity);
      v3.d.e(paramCardDetailActivity);
    }
    else
    {
      paramDialogInterface = paramCardDetailActivity.j;
      r.c(paramDialogInterface);
      g0.f("card_detail_dialog_positive_clicked", new String[] { "title", paramDialogInterface.title });
      long l1 = paramCardDetailActivity.i;
      paramDialogInterface = paramCardDetailActivity.j;
      r.c(paramDialogInterface);
      paramDialogInterface = paramDialogInterface.title;
      r.e(paramDialogInterface, "mCard!!.title");
      paramCardDetailActivity.A0(l1, 0, paramDialogInterface);
      paramCardDetailActivity.finish();
    }
  }
  
  private static final void w0(CardDetailActivity paramCardDetailActivity, DialogInterface paramDialogInterface, int paramInt)
  {
    r.f(paramCardDetailActivity, "this$0");
    paramDialogInterface = paramCardDetailActivity.j;
    r.c(paramDialogInterface);
    g0.f("card_detail_dialog_negative_clicked", new String[] { "title", paramDialogInterface.title });
    paramCardDetailActivity.finish();
  }
  
  private final void x0()
  {
    if ((y.i(this.f)) && (z0.n(this.f))) {
      y0();
    }
  }
  
  private final void y0()
  {
    if (this.j == null)
    {
      LoadingView localLoadingView = this.d;
      r.c(localLoadingView);
      localLoadingView.e();
    }
    k3.d.g(new b(this));
  }
  
  private final void z0()
  {
    com.miui.calendar.util.z.a("Cal:D:CardDetailActivity", "stop query");
    tc.a locala = this.m;
    if (locala != null)
    {
      r.c(locala);
      locala.cancel();
      this.m = null;
    }
  }
  
  public void onBackPressed()
  {
    s0();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131558499);
    this.f = this;
    t0();
    setTitle(getString(2131886275));
    init();
    X();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    miuix.appcompat.app.l locall = this.n;
    if (locall != null)
    {
      r.c(locall);
      locall.dismiss();
      this.n = null;
    }
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public final void onEventMainThread(g.v0 paramv0)
  {
    x0();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    r.f(paramMenuItem, "item");
    if (paramMenuItem.getItemId() == 16908332)
    {
      s0();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPause()
  {
    super.onPause();
    pc.c.c().q(this);
    z0();
  }
  
  protected void onResume()
  {
    super.onResume();
    pc.c.c().o(this);
    x0();
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/detail/CardDetailActivity$a;", "", "", "DISK_CACHE_KEY_DETAIL", "Ljava/lang/String;", "PARAM_CARD_ID", "PARAM_TIME", "TAG", "URL", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/detail/CardDetailActivity$b;", "Lk3/d$b;", "Lcom/miui/calendar/account/mi/MiAccountSchema;", "accountSchema", "Lkotlin/u;", "a", "Ljava/lang/ref/WeakReference;", "Lcom/miui/calendar/detail/CardDetailActivity;", "kotlin.jvm.PlatformType", "Ljava/lang/ref/WeakReference;", "getMActivityReference", "()Ljava/lang/ref/WeakReference;", "mActivityReference", "activity", "<init>", "(Lcom/miui/calendar/detail/CardDetailActivity;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private static final class b
    implements d.b
  {
    private final WeakReference<CardDetailActivity> a;
    
    public b(CardDetailActivity paramCardDetailActivity)
    {
      this.a = new WeakReference(paramCardDetailActivity);
    }
    
    public void a(MiAccountSchema paramMiAccountSchema)
    {
      CardDetailActivity localCardDetailActivity = (CardDetailActivity)this.a.get();
      if (localCardDetailActivity == null) {
        return;
      }
      if (paramMiAccountSchema != null) {
        localObject1 = paramMiAccountSchema.authToken;
      } else {
        localObject1 = null;
      }
      if (localObject1 != null) {
        paramMiAccountSchema = u1.d.b(localCardDetailActivity, true, paramMiAccountSchema.authToken, paramMiAccountSchema.userId);
      } else {
        paramMiAccountSchema = u1.d.c(localCardDetailActivity, false, null, null, 14, null);
      }
      Object localObject2 = new HashMap();
      ((Map)localObject2).put("cardId", String.valueOf(CardDetailActivity.h0(localCardDetailActivity)));
      if (CardDetailActivity.m0(localCardDetailActivity) != -1L)
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("in preview mode, mPreviewTime=");
        ((StringBuilder)localObject1).append(CardDetailActivity.m0(localCardDetailActivity));
        ((StringBuilder)localObject1).append("---");
        ((StringBuilder)localObject1).append(Utils.T(CardDetailActivity.m0(localCardDetailActivity) * 1000));
        com.miui.calendar.util.z.a("Cal:D:CardDetailActivity", ((StringBuilder)localObject1).toString());
        ((Map)localObject2).put("time", String.valueOf(CardDetailActivity.m0(localCardDetailActivity)));
      }
      Map localMap = l0.a(localCardDetailActivity, (HashMap)localObject2);
      localObject2 = u1.d.f(null, 1, null);
      Object localObject1 = new CardDetailActivity.c(localCardDetailActivity);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("start query card, cardId = ");
      localStringBuilder.append(localCardDetailActivity);
      localStringBuilder.append(".mCardId");
      com.miui.calendar.util.z.a("Cal:D:CardDetailActivity", localStringBuilder.toString());
      CardDetailActivity.n0(localCardDetailActivity, ((u1.a)localObject2).u(paramMiAccountSchema, localMap));
      paramMiAccountSchema = CardDetailActivity.d0(localCardDetailActivity);
      r.c(paramMiAccountSchema);
      paramMiAccountSchema.q(new u1.b((b.a)localObject1));
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/detail/CardDetailActivity$c;", "Lu1/b$a;", "Lorg/json/JSONObject;", "jsonObject", "Lkotlin/u;", "a", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "b", "Ljava/lang/ref/WeakReference;", "Lcom/miui/calendar/detail/CardDetailActivity;", "Ljava/lang/ref/WeakReference;", "mCardDetailActivityRef", "activity", "<init>", "(Lcom/miui/calendar/detail/CardDetailActivity;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private static final class c
    implements b.a
  {
    private final WeakReference<CardDetailActivity> a;
    
    public c(CardDetailActivity paramCardDetailActivity)
    {
      this.a = new WeakReference(paramCardDetailActivity);
    }
    
    private static final void d(c paramc)
    {
      r.f(paramc, "this$0");
      paramc = (CardDetailActivity)paramc.a.get();
      if (paramc == null) {
        return;
      }
      Object localObject = CardDetailActivity.f0(paramc);
      r.c(localObject);
      ((CardAdapter)localObject).notifyDataSetChanged();
      localObject = CardDetailActivity.f0(paramc);
      r.c(localObject);
      if (((CardAdapter)localObject).getCount() != 0)
      {
        localObject = CardDetailActivity.k0(paramc);
        r.c(localObject);
        if (((ListView)localObject).getFooterViewsCount() == 0)
        {
          localObject = CardDetailActivity.k0(paramc);
          r.c(localObject);
          ((ListView)localObject).addFooterView(CardDetailActivity.j0(paramc));
        }
      }
    }
    
    public void a(JSONObject paramJSONObject)
    {
      r.f(paramJSONObject, "jsonObject");
      Object localObject1 = (CardDetailActivity)this.a.get();
      if (localObject1 == null) {
        return;
      }
      Object localObject2 = null;
      try
      {
        paramJSONObject = l0.b(paramJSONObject.getString("data"));
        try
        {
          s4.d.d(paramJSONObject);
          boolean bool = TextUtils.isEmpty(paramJSONObject);
          if (!bool)
          {
            localObject2 = CardDetailActivity.i0((CardDetailActivity)localObject1);
            localObject3 = kotlin.jvm.internal.z.a;
            localObject3 = String.format("%s_%d", Arrays.copyOf(new Object[] { "card_detail", Long.valueOf(CardDetailActivity.h0((CardDetailActivity)localObject1)) }, 2));
            r.e(localObject3, "format(format, *args)");
            q.f((Context)localObject2, (String)localObject3, paramJSONObject);
            CardDetailActivity.o0((CardDetailActivity)localObject1, (CustomCardSchema)x.a(paramJSONObject, CustomCardSchema.class));
          }
          else
          {
            q.h(CardDetailActivity.i0((CardDetailActivity)localObject1), "card_detail");
            CardDetailActivity.o0((CardDetailActivity)localObject1, null);
          }
          g localg = CardDetailActivity.g0((CardDetailActivity)localObject1);
          r.c(localg);
          Object localObject3 = CardDetailActivity.e0((CardDetailActivity)localObject1);
          localObject2 = new com/miui/calendar/detail/f;
          ((f)localObject2).<init>(this);
          localg.i((CustomCardSchema)localObject3, (b.b)localObject2);
          CardDetailActivity.p0((CardDetailActivity)localObject1);
          localObject1 = CardDetailActivity.l0((CardDetailActivity)localObject1);
          r.c(localObject1);
          ((LoadingView)localObject1).b();
        }
        catch (Exception localException1) {}
        com.miui.calendar.util.z.d("Cal:D:CardDetailActivity", "GetDetailResponseListener:", localException2);
      }
      catch (Exception localException2)
      {
        paramJSONObject = (JSONObject)localObject2;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("data:");
      localStringBuilder.append(paramJSONObject);
      com.miui.calendar.util.z.c("Cal:D:CardDetailActivity", localStringBuilder.toString());
    }
    
    public void b(Exception paramException)
    {
      r.f(paramException, "e");
      com.miui.calendar.util.z.d("Cal:D:CardDetailActivity", "GetDetailResponseListener:", paramException);
      paramException = (CardDetailActivity)this.a.get();
      if (paramException == null) {
        return;
      }
      if (CardDetailActivity.e0(paramException) == null)
      {
        paramException = CardDetailActivity.l0(paramException);
        r.c(paramException);
        paramException.d();
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/detail/CardDetailActivity$d;", "Lk3/d$b;", "Lcom/miui/calendar/account/mi/MiAccountSchema;", "accountSchema", "Lkotlin/u;", "a", "", "I", "getUserHide", "()I", "userHide", "", "b", "J", "getCardId", "()J", "cardId", "", "c", "Ljava/lang/String;", "getCardName", "()Ljava/lang/String;", "cardName", "Ljava/lang/ref/WeakReference;", "Lcom/miui/calendar/detail/CardDetailActivity;", "kotlin.jvm.PlatformType", "d", "Ljava/lang/ref/WeakReference;", "getWeakReferenceContext", "()Ljava/lang/ref/WeakReference;", "weakReferenceContext", "context", "<init>", "(Lcom/miui/calendar/detail/CardDetailActivity;IJLjava/lang/String;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private static final class d
    implements d.b
  {
    private final int a;
    private final long b;
    private final String c;
    private final WeakReference<CardDetailActivity> d;
    
    public d(CardDetailActivity paramCardDetailActivity, int paramInt, long paramLong, String paramString)
    {
      this.a = paramInt;
      this.b = paramLong;
      this.c = paramString;
      this.d = new WeakReference(paramCardDetailActivity);
    }
    
    public void a(MiAccountSchema paramMiAccountSchema)
    {
      CardDetailActivity localCardDetailActivity = (CardDetailActivity)this.d.get();
      if (localCardDetailActivity == null) {
        return;
      }
      if (paramMiAccountSchema == null)
      {
        k3.d.e(localCardDetailActivity);
        return;
      }
      if (paramMiAccountSchema.authToken == null)
      {
        paramMiAccountSchema = localCardDetailActivity.getResources().getString(2131887569);
        r.e(paramMiAccountSchema, "c.resources.getString(R.…scribe_failed_by_account)");
        t0.e(localCardDetailActivity, paramMiAccountSchema, 0, 4, null);
        return;
      }
      int i = this.a;
      if (i == 0) {
        r3.a.h = this.b;
      }
      long l = this.b;
      if (i == 0) {
        paramMiAccountSchema = localCardDetailActivity.getString(2131887564);
      } else {
        paramMiAccountSchema = localCardDetailActivity.getString(2131887801, new Object[] { this.c });
      }
      UpdateUserCardService.f(localCardDetailActivity, l, i, paramMiAccountSchema);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.detail.CardDetailActivity
 * JD-Core Version:    0.7.0.1
 */