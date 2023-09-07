package com.miui.calendar.sync.ics;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.android.calendar.common.Utils;
import com.android.calendar.syncer.account.AccountHelper;
import com.android.calendar.syncer.account.AccountHelper.ImportType;
import com.miui.calendar.sync.NewEventImportActivity;
import com.miui.calendar.sync.NewEventImportActivity.b;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.i;
import com.miui.calendar.util.v;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import com.miui.calendar.util.z0.h;
import com.miui.calendar.view.x;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.k;
import miuix.androidbasewidget.widget.StateEditText;
import miuix.appcompat.app.l;
import miuix.appcompat.app.m;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;", "Lcom/miui/calendar/sync/ics/a;", "Landroid/os/Bundle;", "savedInstanceState", "Lkotlin/u;", "onCreate", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "intent", "onNewIntent", "e0", "onDestroy", "q0", "Lmiuix/androidbasewidget/widget/StateEditText;", "k", "Lmiuix/androidbasewidget/widget/StateEditText;", "mUrlText", "Landroid/widget/TextView;", "l", "Landroid/widget/TextView;", "mBtnImport", "com/miui/calendar/sync/ics/IcsUrlSubscribeActivity$b", "m", "Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$b;", "mTextWatcher", "<init>", "()V", "o", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class IcsUrlSubscribeActivity
  extends a
{
  public static final a o = new a(null);
  private StateEditText k;
  private TextView l;
  private final b m = new b(this);
  public Map<Integer, View> n;
  
  private static final void o0(IcsUrlSubscribeActivity paramIcsUrlSubscribeActivity, View paramView)
  {
    r.f(paramIcsUrlSubscribeActivity, "this$0");
    paramIcsUrlSubscribeActivity.q0();
  }
  
  private static final void p0(IcsUrlSubscribeActivity paramIcsUrlSubscribeActivity, View paramView)
  {
    r.f(paramIcsUrlSubscribeActivity, "this$0");
    paramIcsUrlSubscribeActivity.startActivity(com.miui.calendar.web.d.d(paramIcsUrlSubscribeActivity, NewEventImportActivity.r.a()));
    g0.d("key_click_import_help");
  }
  
  public int e0()
  {
    return 2131886733;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    z0.r(this, paramInt1, paramInt2, new c(this));
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131558452);
    paramBundle = findViewById(2131363494);
    r.e(paramBundle, "findViewById<StateEditText>(R.id.url_text)");
    this.k = ((StateEditText)paramBundle);
    paramBundle = findViewById(2131362604);
    r.e(paramBundle, "findViewById<TextView>(R.id.import_btn)");
    Object localObject1 = (TextView)paramBundle;
    this.l = ((TextView)localObject1);
    Object localObject2 = null;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("mBtnImport");
      paramBundle = null;
    }
    paramBundle.setOnClickListener(new g(this));
    localObject1 = this.l;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("mBtnImport");
      paramBundle = null;
    }
    paramBundle.setEnabled(false);
    localObject1 = this.l;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("mBtnImport");
      paramBundle = null;
    }
    v.k(paramBundle);
    localObject1 = this.k;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("mUrlText");
      paramBundle = null;
    }
    paramBundle.addTextChangedListener(this.m);
    if (getIntent().getData() != null)
    {
      paramBundle = this.k;
      if (paramBundle == null)
      {
        r.x("mUrlText");
        paramBundle = localObject2;
      }
      paramBundle.setText(k.L0(String.valueOf(getIntent().getData())).toString());
    }
    paramBundle = (TextView)findViewById(2131362607);
    if (!i.g()) {
      paramBundle.setVisibility(8);
    }
    paramBundle.setOnClickListener(new h(this));
    if ((z0.l(this)) && (!z0.m()) && (!z0.i(this))) {
      z0.B(this);
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    StateEditText localStateEditText1 = this.k;
    StateEditText localStateEditText2 = localStateEditText1;
    if (localStateEditText1 == null)
    {
      r.x("mUrlText");
      localStateEditText2 = null;
    }
    localStateEditText2.removeTextChangedListener(this.m);
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    Object localObject1 = null;
    Object localObject2;
    if (paramIntent != null) {
      localObject2 = paramIntent.getData();
    } else {
      localObject2 = null;
    }
    if (localObject2 != null)
    {
      localObject2 = this.k;
      if (localObject2 == null)
      {
        r.x("mUrlText");
        localObject2 = localObject1;
      }
      ((TextView)localObject2).setText(k.L0(String.valueOf(paramIntent.getData())).toString());
    }
  }
  
  public void q0()
  {
    Object localObject1 = this.k;
    Object localObject2 = localObject1;
    if (localObject1 == null)
    {
      r.x("mUrlText");
      localObject2 = null;
    }
    localObject2 = Uri.parse(k.L0(String.valueOf(((androidx.appcompat.widget.h)localObject2).getText())).toString());
    r.e(localObject2, "parse(mUrlText.text.toString().trim())");
    localObject2 = k0((Uri)localObject2);
    if (localObject2 == null)
    {
      Toast.makeText(this, getString(2131887707), 0).show();
      return;
    }
    g0.d("key_click_import_by_url_btn");
    j0(100, 2, 30);
    Bundle localBundle = new Bundle();
    localBundle.putString("import_type", AccountHelper.ImportType.SUBSCRIPTION.getType());
    AccountHelper localAccountHelper = AccountHelper.a;
    localObject1 = localAccountHelper.g().name;
    r.e(localObject1, "SUBSCRIPTION_ACCOUNT.name");
    String str = localAccountHelper.g().type;
    r.e(str, "SUBSCRIPTION_ACCOUNT.type");
    localObject1 = AccountHelper.e(localAccountHelper, this, (String)localObject1, str, null, localBundle, true, 8, null);
    if (localObject1 == null) {
      return;
    }
    a.g0(this, (Uri)localObject2, (Account)localObject1, false, new d(this, 100), 4, null);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"com/miui/calendar/sync/ics/IcsUrlSubscribeActivity$b", "Landroid/text/TextWatcher;", "Landroid/text/Editable;", "s", "Lkotlin/u;", "afterTextChanged", "", "", "start", "count", "after", "beforeTextChanged", "before", "onTextChanged", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b
    implements TextWatcher
  {
    b(IcsUrlSubscribeActivity paramIcsUrlSubscribeActivity) {}
    
    public void afterTextChanged(Editable paramEditable)
    {
      boolean bool = false;
      if (paramEditable != null)
      {
        paramEditable = paramEditable.toString();
        if (paramEditable != null)
        {
          i = paramEditable.length();
          break label25;
        }
      }
      int i = 0;
      label25:
      TextView localTextView = IcsUrlSubscribeActivity.n0(this.a);
      paramEditable = localTextView;
      if (localTextView == null)
      {
        r.x("mBtnImport");
        paramEditable = null;
      }
      if (i > 0) {
        bool = true;
      }
      paramEditable.setEnabled(bool);
    }
    
    public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
    
    public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/miui/calendar/sync/ics/IcsUrlSubscribeActivity$c", "Lcom/miui/calendar/util/z0$h;", "", "isUserSelect", "Lkotlin/u;", "b", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class c
    implements z0.h
  {
    c(IcsUrlSubscribeActivity paramIcsUrlSubscribeActivity) {}
    
    public void a() {}
    
    public void b(boolean paramBoolean)
    {
      this.a.finish();
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/miui/calendar/sync/ics/IcsUrlSubscribeActivity$d", "Lcom/miui/calendar/sync/ics/a$b;", "Lkotlin/u;", "a", "c", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class d
    implements a.b
  {
    d(IcsUrlSubscribeActivity paramIcsUrlSubscribeActivity, int paramInt) {}
    
    public void a()
    {
      z.a("IcsUrlSubscribeFragment", "onStart");
    }
    
    public void b()
    {
      z.a("IcsUrlSubscribeFragment", "onError");
      Object localObject = this.a;
      Toast.makeText((Context)localObject, ((Context)localObject).getString(2131887705), 0).show();
      this.a.b0().removeMessages(1);
      localObject = this.a.c0();
      if (localObject != null) {
        ((l)localObject).dismiss();
      }
    }
    
    public void c()
    {
      z.a("IcsUrlSubscribeFragment", "onSuccess");
      g0.d("key_import_by_url_success");
      this.a.b0().removeMessages(1);
      Object localObject = this.a.c0();
      if (localObject != null) {
        ((x)localObject).E(this.b);
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("thread:");
      ((StringBuilder)localObject).append(Thread.currentThread().getName());
      z.a("IcsUrlSubscribeFragment", ((StringBuilder)localObject).toString());
      localObject = this.a.c0();
      if (localObject != null) {
        ((l)localObject).dismiss();
      }
      localObject = this.a;
      Toast.makeText((Context)localObject, ((Context)localObject).getString(2131887706), 0).show();
      Utils.G0(this.a);
      this.a.finish();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.sync.ics.IcsUrlSubscribeActivity
 * JD-Core Version:    0.7.0.1
 */