package com.android.calendar.selectcalendars;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.d;
import androidx.fragment.app.s;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.Event;
import androidx.lifecycle.Lifecycle.State;
import androidx.lifecycle.o;
import androidx.lifecycle.w;
import com.android.calendar.common.Utils;
import com.android.calendar.common.b;
import com.android.calendar.dragview.DragViewActivity;
import com.miui.calendar.util.DeviceUtils;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;", "Lcom/android/calendar/common/b;", "Landroidx/lifecycle/n;", "Landroid/view/View$OnClickListener;", "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;", "Lkotlin/u;", "Y", "Z", "Landroid/os/Bundle;", "icicle", "onCreate", "Landroid/view/Menu;", "menu", "", "onCreateOptionsMenu", "Landroid/view/MenuItem;", "item", "onOptionsItemSelected", "onStart", "onResume", "onPause", "onDestroy", "Landroidx/lifecycle/Lifecycle;", "getLifecycle", "Landroid/view/View;", "v", "onClick", "a0", "", "accountId", "", "accountColor", "accountVisible", "needDelete", "", "pathName", "b0", "onBackPressed", "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;", "Lcom/android/calendar/selectcalendars/AccountManagerAdapter;", "accountItem", "s", "i", "featureId", "onMenuItemSelected", "Lcom/android/calendar/selectcalendars/AccountManagerFragment;", "b", "Lcom/android/calendar/selectcalendars/AccountManagerFragment;", "mFragment", "Landroidx/lifecycle/o;", "c", "Landroidx/lifecycle/o;", "mLifecycleRegistry", "Landroid/widget/Button;", "d", "Landroid/widget/Button;", "mCancelView", "e", "mSelectAllView", "Landroid/widget/TextView;", "f", "Landroid/widget/TextView;", "mTitleView", "g", "Ljava/lang/Boolean;", "isFromSetting", "<init>", "()V", "AccountObserver", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class SelectVisibleCalendarsActivity
  extends b
  implements View.OnClickListener, AccountManagerAdapter.d
{
  public static final a i = new a(null);
  private AccountManagerFragment b;
  private o c;
  private Button d;
  private Button e;
  private TextView f;
  private Boolean g = Boolean.TRUE;
  public Map<Integer, View> h;
  
  private final void Y()
  {
    if (DeviceUtils.G())
    {
      localObject1 = J();
      if (localObject1 != null) {
        ((androidx.appcompat.app.a)localObject1).x(8);
      }
      localObject1 = J();
      if (localObject1 != null) {
        ((androidx.appcompat.app.a)localObject1).B(getResources().getString(2131886758, new Object[] { Integer.valueOf(0) }));
      }
      this.d = new Button(this);
      this.e = new Button(this);
      localObject1 = this.d;
      r.c(localObject1);
      ((View)localObject1).setId(2131361883);
      localObject1 = this.e;
      r.c(localObject1);
      ((View)localObject1).setId(2131361900);
      localObject1 = this.d;
      r.c(localObject1);
      ((View)localObject1).setBackgroundResource(2131230890);
      localObject1 = this.e;
      r.c(localObject1);
      ((View)localObject1).setBackgroundResource(2131230893);
      localObject1 = J();
      if (localObject1 != null) {
        ((miuix.appcompat.app.a)localObject1).H(this.d);
      }
      localObject1 = J();
      if (localObject1 != null) {
        ((miuix.appcompat.app.a)localObject1).E(this.e);
      }
    }
    else
    {
      localObject1 = J();
      if (localObject1 != null) {
        ((androidx.appcompat.app.a)localObject1).v(2131558432);
      }
      localObject1 = J();
      Object localObject2 = null;
      if (localObject1 != null)
      {
        localObject1 = ((androidx.appcompat.app.a)localObject1).j();
        if (localObject1 != null)
        {
          localObject1 = (Button)((View)localObject1).findViewById(2131361883);
          break label237;
        }
      }
      localObject1 = null;
      label237:
      this.d = ((Button)localObject1);
      localObject1 = J();
      if (localObject1 != null)
      {
        localObject1 = ((androidx.appcompat.app.a)localObject1).j();
        if (localObject1 != null)
        {
          localObject1 = (Button)((View)localObject1).findViewById(2131361900);
          break label275;
        }
      }
      localObject1 = null;
      label275:
      this.e = ((Button)localObject1);
      Object localObject3 = J();
      localObject1 = localObject2;
      if (localObject3 != null)
      {
        localObject3 = ((androidx.appcompat.app.a)localObject3).j();
        localObject1 = localObject2;
        if (localObject3 != null) {
          localObject1 = (TextView)((View)localObject3).findViewById(2131363373);
        }
      }
      this.f = ((TextView)localObject1);
    }
    Object localObject1 = this.d;
    r.c(localObject1);
    ((View)localObject1).setOnClickListener(this);
    localObject1 = this.e;
    r.c(localObject1);
    ((View)localObject1).setOnClickListener(this);
  }
  
  private final void Z()
  {
    Object localObject1 = getResources();
    Object localObject2 = this.b;
    r.c(localObject2);
    localObject1 = ((Resources)localObject1).getString(2131886758, new Object[] { Integer.valueOf(((AccountManagerFragment)localObject2).t()) });
    r.e(localObject1, "resources.getString(R.st…ent!!.getSelectedCount())");
    if (DeviceUtils.G())
    {
      localObject2 = J();
      if (localObject2 != null) {
        ((androidx.appcompat.app.a)localObject2).B((CharSequence)localObject1);
      }
    }
    else
    {
      localObject2 = this.f;
      if (localObject2 != null) {
        ((TextView)localObject2).setText((CharSequence)localObject1);
      }
    }
    localObject2 = this.e;
    r.c(localObject2);
    localObject1 = this.b;
    r.c(localObject1);
    int j;
    if (((AccountManagerFragment)localObject1).u()) {
      j = 2131230892;
    } else {
      j = 2131230893;
    }
    ((View)localObject2).setBackgroundResource(j);
  }
  
  public final void a0()
  {
    Object localObject = this.b;
    r.c(localObject);
    if (((AccountManagerFragment)localObject).v())
    {
      localObject = this.b;
      r.c(localObject);
      ((AccountManagerFragment)localObject).p();
      localObject = this.b;
      if (localObject != null) {
        ((AccountManagerFragment)localObject).o(8);
      }
      localObject = J();
      if (localObject != null) {
        ((androidx.appcompat.app.a)localObject).B(getResources().getString(2131887425));
      }
      localObject = this.d;
      r.c(localObject);
      ((View)localObject).setBackgroundResource(2131230888);
      localObject = J();
      if (localObject != null) {
        ((miuix.appcompat.app.a)localObject).E(null);
      }
    }
    else
    {
      localObject = this.g;
      r.c(localObject);
      if (((Boolean)localObject).booleanValue())
      {
        finish();
      }
      else
      {
        Utils.x0(this);
        finish();
      }
    }
  }
  
  public final void b0(long paramLong, int paramInt, boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    Intent localIntent = new Intent(this, DragViewActivity.class);
    localIntent.putExtra("account_id", paramLong);
    localIntent.putExtra("account_color", paramInt);
    localIntent.putExtra("account_visible", paramBoolean1);
    localIntent.putExtra("need_delete", paramBoolean2);
    localIntent.putExtra("path_name", paramString);
    startActivity(localIntent);
  }
  
  public Lifecycle getLifecycle()
  {
    if (this.c == null) {
      this.c = new o(this);
    }
    o localo = this.c;
    r.c(localo);
    return localo;
  }
  
  public void i(AccountManagerAdapter.e parame)
  {
    r.f(parame, "accountItem");
    Z();
  }
  
  public void onBackPressed()
  {
    a0();
  }
  
  public void onClick(View paramView)
  {
    r.c(paramView);
    int j = paramView.getId();
    if (j != 2131361883)
    {
      if (j == 2131361900)
      {
        paramView = this.b;
        if (paramView != null) {
          paramView.y();
        }
        Z();
      }
    }
    else {
      a0();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131558939);
    findViewById(2131363406).setVisibility(8);
    this.g = Boolean.valueOf(getIntent().getBooleanExtra("intent_key_from_setting", true));
    paramBundle = (AccountManagerFragment)getSupportFragmentManager().h0(2131362740);
    this.b = paramBundle;
    if (paramBundle == null)
    {
      this.b = new AccountManagerFragment(2131558495);
      paramBundle = getSupportFragmentManager().m();
      r.e(paramBundle, "supportFragmentManager.beginTransaction()");
      AccountManagerFragment localAccountManagerFragment = this.b;
      r.c(localAccountManagerFragment);
      paramBundle.q(2131362740, localAccountManagerFragment);
      localAccountManagerFragment = this.b;
      r.c(localAccountManagerFragment);
      paramBundle.u(localAccountManagerFragment);
      paramBundle.h();
    }
    paramBundle = this.b;
    if (paramBundle != null) {
      paramBundle.z(this);
    }
    this.c = new o(this);
    getLifecycle().a(new AccountObserver());
    paramBundle = this.c;
    if (paramBundle != null) {
      paramBundle.o(Lifecycle.State.CREATED);
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    r.f(paramMenu, "menu");
    return true;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    o localo = this.c;
    if (localo != null) {
      localo.o(Lifecycle.State.DESTROYED);
    }
  }
  
  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    r.f(paramMenuItem, "item");
    a0();
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    r.f(paramMenuItem, "item");
    if (paramMenuItem.getItemId() == 16908332)
    {
      finish();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    o localo = this.c;
    if (localo != null) {
      localo.o(Lifecycle.State.RESUMED);
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    o localo = this.c;
    if (localo != null) {
      localo.o(Lifecycle.State.STARTED);
    }
  }
  
  public void s(AccountManagerAdapter.e parame)
  {
    r.f(parame, "accountItem");
    Y();
    Z();
    parame = this.b;
    if (parame != null) {
      parame.o(0);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity$AccountObserver;", "Landroidx/lifecycle/m;", "Lkotlin/u;", "connectListener", "disconnectListener", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class AccountObserver
    implements androidx.lifecycle.m
  {
    @w(Lifecycle.Event.ON_RESUME)
    public final void connectListener() {}
    
    @w(Lifecycle.Event.ON_PAUSE)
    public final void disconnectListener() {}
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity$a;", "", "", "INTENT_KEY_FROM_SETTING", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.selectcalendars.SelectVisibleCalendarsActivity
 * JD-Core Version:    0.7.0.1
 */