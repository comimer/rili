package com.android.calendar.datecalculate;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.d;
import androidx.fragment.app.s;
import com.miui.calendar.util.StatusBar;
import com.miui.calendar.util.g.n;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import miuix.appcompat.app.m;
import miuix.miuixbasewidget.widget.FilterSortView;
import miuix.miuixbasewidget.widget.FilterSortView.TabView;
import org.greenrobot.eventbus.ThreadMode;
import pc.l;
import y1.f;
import y1.k;
import y1.o;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/datecalculate/DateCalculateInfoActivity;", "Lcom/android/calendar/common/b;", "Landroid/view/View$OnClickListener;", "Landroid/content/Intent;", "intent", "", "d0", "Lkotlin/u;", "e0", "tabIndex", "f0", "c0", "index", "b0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "onNewIntent", "Lcom/miui/calendar/util/g$n;", "event", "onEventMainThread", "outState", "onSaveInstanceState", "onResume", "onPause", "onDestroy", "Landroid/view/View;", "v", "onClick", "Landroid/content/Context;", "b", "Landroid/content/Context;", "mContext", "c", "I", "mCurrentIndex", "Lmiuix/miuixbasewidget/widget/FilterSortView;", "d", "Lmiuix/miuixbasewidget/widget/FilterSortView;", "mTabView", "Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;", "e", "Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;", "mCalculateTab", "f", "mIntervalTab", "g", "mSolarTab", "<init>", "()V", "i", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class DateCalculateInfoActivity
  extends com.android.calendar.common.b
  implements View.OnClickListener
{
  public static final a i = new a(null);
  private Context b;
  private int c = -1;
  private FilterSortView d;
  private FilterSortView.TabView e;
  private FilterSortView.TabView f;
  private FilterSortView.TabView g;
  public Map<Integer, View> h;
  
  private final void b0(int paramInt)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("changeTab(): index:");
    ((StringBuilder)localObject).append(paramInt);
    z.a("Cal:D:DateCalculateInfoActivity", ((StringBuilder)localObject).toString());
    if (this.c == paramInt) {
      return;
    }
    this.c = paramInt;
    localObject = getSupportFragmentManager();
    r.e(localObject, "supportFragmentManager");
    s locals = ((FragmentManager)localObject).m();
    r.e(locals, "manager.beginTransaction()");
    if (paramInt != 0)
    {
      if (paramInt != 1)
      {
        if (paramInt != 2) {
          localObject = null;
        } else {
          localObject = new o();
        }
      }
      else {
        localObject = new k();
      }
    }
    else {
      localObject = new f();
    }
    r.c(localObject);
    if (!((Fragment)localObject).isAdded()) {
      locals.q(2131362740, (Fragment)localObject);
    }
    locals.i();
    g0.f("key_edit_date_calculate_tab_clicked", new String[] { "strvalue", String.valueOf(paramInt) });
  }
  
  private final void c0(int paramInt)
  {
    Object localObject1;
    if (paramInt != 0)
    {
      if (paramInt != 1)
      {
        if (paramInt != 2)
        {
          localObject1 = this.e;
        }
        else
        {
          localObject2 = this.g;
          localObject1 = localObject2;
          if (localObject2 == null) {
            localObject1 = this.e;
          }
        }
      }
      else {
        localObject1 = this.f;
      }
    }
    else {
      localObject1 = this.e;
    }
    Object localObject2 = this.d;
    if (localObject2 != null) {
      ((FilterSortView)localObject2).setFilteredTab((FilterSortView.TabView)localObject1);
    }
  }
  
  private final int d0(Intent paramIntent)
  {
    int j = 0;
    int k = j;
    if (paramIntent != null) {
      if (!TextUtils.equals(paramIntent.getAction(), "com.android.calendar.date.calculate"))
      {
        k = j;
      }
      else
      {
        paramIntent = paramIntent.getData();
        if (paramIntent == null) {}
      }
    }
    try
    {
      paramIntent = paramIntent.getLastPathSegment();
      if (paramIntent != null)
      {
        r.e(paramIntent, "lastPathSegment");
        m = Integer.parseInt(paramIntent);
      }
    }
    catch (NumberFormatException paramIntent)
    {
      int m;
      label58:
      break label58;
    }
    m = 0;
    k = j;
    if (m >= 0) {
      if (m > 2) {
        k = j;
      } else {
        k = m;
      }
    }
    return k;
  }
  
  private final void e0()
  {
    miuix.appcompat.app.a locala = J();
    if (locala == null) {
      return;
    }
    locala.A(2131886402);
  }
  
  private final void f0(int paramInt)
  {
    Object localObject1 = this.d;
    Object localObject2 = null;
    if (localObject1 != null) {
      localObject1 = ((FilterSortView)localObject1).z(getResources().getString(2131886408));
    } else {
      localObject1 = null;
    }
    this.e = ((FilterSortView.TabView)localObject1);
    if (localObject1 != null) {
      ((FilterSortView.TabView)localObject1).setOnClickListener(new y1.a(this));
    }
    localObject1 = this.d;
    if (localObject1 != null) {
      localObject1 = ((FilterSortView)localObject1).z(getResources().getString(2131886413));
    } else {
      localObject1 = null;
    }
    this.f = ((FilterSortView.TabView)localObject1);
    if (localObject1 != null) {
      ((FilterSortView.TabView)localObject1).setOnClickListener(new y1.b(this));
    }
    if (y.q(this.b))
    {
      FilterSortView localFilterSortView = this.d;
      localObject1 = localObject2;
      if (localFilterSortView != null) {
        localObject1 = localFilterSortView.z(getResources().getString(2131887527));
      }
      this.g = ((FilterSortView.TabView)localObject1);
      if (localObject1 != null) {
        ((FilterSortView.TabView)localObject1).setOnClickListener(new y1.c(this));
      }
    }
    c0(paramInt);
    localObject1 = this.d;
    if (localObject1 != null) {
      ((FilterSortView)localObject1).setTabIncatorVisibility(8);
    }
    b0(paramInt);
  }
  
  private static final void g0(DateCalculateInfoActivity paramDateCalculateInfoActivity, View paramView)
  {
    r.f(paramDateCalculateInfoActivity, "this$0");
    paramDateCalculateInfoActivity.b0(0);
  }
  
  private static final void h0(DateCalculateInfoActivity paramDateCalculateInfoActivity, View paramView)
  {
    r.f(paramDateCalculateInfoActivity, "this$0");
    paramDateCalculateInfoActivity.b0(1);
  }
  
  private static final void i0(DateCalculateInfoActivity paramDateCalculateInfoActivity, View paramView)
  {
    r.f(paramDateCalculateInfoActivity, "this$0");
    paramDateCalculateInfoActivity.b0(2);
  }
  
  public void onClick(View paramView)
  {
    r.c(paramView);
    if (paramView.getId() == 2131361883) {
      finish();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    z.a("Cal:D:DateCalculateInfoActivity", "onCreate()");
    this.b = this;
    super.onCreate(paramBundle);
    pc.c.c().o(this);
    setContentView(2131558442);
    paramBundle = new StatusBar(this);
    Context localContext = getApplicationContext();
    r.e(localContext, "applicationContext");
    paramBundle.a(x0.s0(localContext));
    e0();
    this.d = ((FilterSortView)findViewById(2131363304));
    f0(d0(getIntent()));
    X();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    pc.c.c().q(this);
  }
  
  @l(threadMode=ThreadMode.MAIN)
  public final void onEventMainThread(g.n paramn)
  {
    if (paramn == null) {
      return;
    }
    f0(0);
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    int j = d0(paramIntent);
    c0(j);
    b0(j);
  }
  
  protected void onPause()
  {
    z.a("Cal:D:DateCalculateInfoActivity", "onPause()");
    super.onPause();
  }
  
  protected void onResume()
  {
    z.a("Cal:D:DateCalculateInfoActivity", "onResume()");
    super.onResume();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    r.f(paramBundle, "outState");
    super.onSaveInstanceState(new Bundle());
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/datecalculate/DateCalculateInfoActivity$a;", "", "", "ACTION_JUMP_TAB", "Ljava/lang/String;", "EXTRA_KEY_CALCULATE_TYPE", "", "EXTRA_VALUE_CALCULATE_TYPE_CALCULATE", "I", "EXTRA_VALUE_CALCULATE_TYPE_CONVERT", "EXTRA_VALUE_CALCULATE_TYPE_INTERVAL", "TAG", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.datecalculate.DateCalculateInfoActivity
 * JD-Core Version:    0.7.0.1
 */