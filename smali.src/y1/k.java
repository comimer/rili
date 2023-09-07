package y1;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.android.calendar.common.Utils;
import com.android.calendar.datecalculate.DateIntervalResultActivity;
import com.miui.calendar.util.g.n;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.z;
import h4.d.d;
import java.util.Calendar;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.greenrobot.eventbus.ThreadMode;
import pc.c;

@Metadata(bv={}, d1={""}, d2={"Ly1/k;", "Landroidx/fragment/app/Fragment;", "Landroid/view/View$OnClickListener;", "Lkotlin/u;", "n", "o", "u", "Ljava/util/Calendar;", "date", "r", "p", "t", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "view", "onClick", "onPause", "onResume", "Lcom/miui/calendar/util/g$n;", "event", "onEventMainThread", "onDestroy", "<init>", "()V", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class k
  extends Fragment
  implements View.OnClickListener
{
  public static final a l = new a(null);
  private h4.d a;
  private View b;
  private View c;
  private View d;
  private TextView e;
  private TextView f;
  private TextView g;
  private Calendar h;
  private Calendar i;
  private Context j;
  public Map<Integer, View> k;
  
  private final void n()
  {
    Object localObject = getActivity();
    if (localObject != null) {
      localObject = ((Context)localObject).getApplicationContext();
    } else {
      localObject = null;
    }
    this.j = ((Context)localObject);
    localObject = Calendar.getInstance();
    this.h = ((Calendar)localObject);
    if (localObject != null)
    {
      ((Calendar)localObject).set(11, 0);
      ((Calendar)localObject).set(12, 0);
      ((Calendar)localObject).set(13, 0);
      ((Calendar)localObject).set(14, 0);
    }
    localObject = Calendar.getInstance();
    this.i = ((Calendar)localObject);
    if (localObject != null)
    {
      ((Calendar)localObject).set(11, 0);
      ((Calendar)localObject).set(12, 0);
      ((Calendar)localObject).set(13, 0);
      ((Calendar)localObject).set(14, 0);
    }
  }
  
  private final void o()
  {
    Object localObject1 = this.b;
    r.c(localObject1);
    this.c = ((View)localObject1).findViewById(2131362268);
    localObject1 = this.b;
    r.c(localObject1);
    this.d = ((View)localObject1).findViewById(2131362260);
    localObject1 = this.b;
    r.c(localObject1);
    localObject1 = ((View)localObject1).findViewById(2131363238);
    r.d(localObject1, "null cannot be cast to non-null type android.widget.TextView");
    this.e = ((TextView)localObject1);
    localObject1 = this.b;
    r.c(localObject1);
    localObject1 = ((View)localObject1).findViewById(2131362408);
    r.d(localObject1, "null cannot be cast to non-null type android.widget.TextView");
    this.f = ((TextView)localObject1);
    localObject1 = this.b;
    r.c(localObject1);
    localObject1 = ((View)localObject1).findViewById(2131362256);
    r.d(localObject1, "null cannot be cast to non-null type android.widget.TextView");
    this.g = ((TextView)localObject1);
    localObject1 = this.h;
    r.c(localObject1);
    int m = ((Calendar)localObject1).get(1);
    localObject1 = this.h;
    r.c(localObject1);
    int n = ((Calendar)localObject1).get(2);
    localObject1 = this.h;
    r.c(localObject1);
    int i1 = ((Calendar)localObject1).get(5);
    localObject1 = Utils.Q(this.j, m, n, i1, true, true);
    Object localObject2 = this.e;
    r.c(localObject2);
    ((TextView)localObject2).setText((CharSequence)localObject1);
    localObject1 = this.i;
    r.c(localObject1);
    n = ((Calendar)localObject1).get(1);
    localObject1 = this.i;
    r.c(localObject1);
    m = ((Calendar)localObject1).get(2);
    localObject1 = this.i;
    r.c(localObject1);
    i1 = ((Calendar)localObject1).get(5);
    localObject2 = Utils.Q(this.j, n, m, i1, true, true);
    localObject1 = this.f;
    r.c(localObject1);
    ((TextView)localObject1).setText((CharSequence)localObject2);
    u();
  }
  
  private final void p(Calendar paramCalendar)
  {
    Object localObject = this.a;
    if (localObject != null)
    {
      r.c(localObject);
      ((miuix.appcompat.app.l)localObject).dismiss();
    }
    androidx.fragment.app.d locald = getActivity();
    localObject = new j(this);
    r.c(paramCalendar);
    paramCalendar = new h4.d(locald, (d.d)localObject, 0, paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5), com.android.calendar.common.k.f(), com.android.calendar.common.k.c());
    this.a = paramCalendar;
    r.c(paramCalendar);
    paramCalendar.setTitle(getString(2131886487));
    paramCalendar = this.a;
    r.c(paramCalendar);
    paramCalendar.setCanceledOnTouchOutside(true);
    paramCalendar = this.a;
    r.c(paramCalendar);
    paramCalendar.show();
  }
  
  private static final void q(k paramk, h4.d paramd, int paramInt1, boolean paramBoolean, int paramInt2, int paramInt3, int paramInt4, String paramString)
  {
    r.f(paramk, "this$0");
    paramd = paramk.i;
    r.c(paramd);
    paramd.set(paramInt2, paramInt3, paramInt4);
    paramd = paramk.f;
    r.c(paramd);
    paramd.setText(paramString);
    paramk = paramk.a;
    r.c(paramk);
    paramk.dismiss();
  }
  
  private final void r(Calendar paramCalendar)
  {
    Object localObject = this.a;
    if (localObject != null)
    {
      r.c(localObject);
      ((miuix.appcompat.app.l)localObject).dismiss();
    }
    androidx.fragment.app.d locald = getActivity();
    localObject = new i(this);
    r.c(paramCalendar);
    paramCalendar = new h4.d(locald, (d.d)localObject, 0, paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5), com.android.calendar.common.k.f(), com.android.calendar.common.k.c());
    this.a = paramCalendar;
    r.c(paramCalendar);
    paramCalendar.setTitle(getString(2131886487));
    paramCalendar = this.a;
    r.c(paramCalendar);
    paramCalendar.setCanceledOnTouchOutside(true);
    paramCalendar = this.a;
    r.c(paramCalendar);
    paramCalendar.show();
  }
  
  private static final void s(k paramk, h4.d paramd, int paramInt1, boolean paramBoolean, int paramInt2, int paramInt3, int paramInt4, String paramString)
  {
    r.f(paramk, "this$0");
    paramd = paramk.h;
    r.c(paramd);
    paramd.set(paramInt2, paramInt3, paramInt4);
    paramd = paramk.e;
    r.c(paramd);
    paramd.setText(paramString);
    paramk = paramk.a;
    r.c(paramk);
    paramk.dismiss();
  }
  
  private final void t()
  {
    g0.d("key_date_interval_start_clicked");
    Intent localIntent = new Intent(this.j, DateIntervalResultActivity.class);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("startCalculate(): mStartDateCalculate = ");
    Calendar localCalendar = this.h;
    r.c(localCalendar);
    localStringBuilder.append(localCalendar.getTimeInMillis());
    localStringBuilder.append(",mEndDateCalculate = ");
    localCalendar = this.i;
    r.c(localCalendar);
    localStringBuilder.append(localCalendar.getTimeInMillis());
    z.a("Cal:D:EditDateIntervalFragment", localStringBuilder.toString());
    localIntent.putExtra("start_date", this.h);
    localIntent.putExtra("end_date", this.i);
    startActivity(localIntent);
  }
  
  private final void u()
  {
    Object localObject = this.c;
    r.c(localObject);
    ((View)localObject).setOnClickListener(new g(this));
    localObject = this.d;
    r.c(localObject);
    ((View)localObject).setOnClickListener(new h(this));
    localObject = this.g;
    r.c(localObject);
    ((View)localObject).setOnClickListener(this);
    v.f(this.g, false);
  }
  
  private static final void v(k paramk, View paramView)
  {
    r.f(paramk, "this$0");
    paramk.r(paramk.h);
    g0.d("key_edit_interval_start_clicked");
  }
  
  private static final void w(k paramk, View paramView)
  {
    r.f(paramk, "this$0");
    paramk.p(paramk.i);
    g0.d("key_edit_interval_end_clicked");
  }
  
  public void m()
  {
    this.k.clear();
  }
  
  public void onClick(View paramView)
  {
    r.f(paramView, "view");
    if (paramView.getId() == 2131362256) {
      t();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    z.a("Cal:D:EditDateIntervalFragment", "onCreate()");
    super.onCreate(paramBundle);
    c.c().o(this);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    r.f(paramLayoutInflater, "inflater");
    z.a("Cal:D:EditDateIntervalFragment", "onCreateView()");
    if (this.b == null) {
      this.b = paramLayoutInflater.inflate(2131558585, paramViewGroup, false);
    }
    n();
    o();
    paramLayoutInflater = this.b;
    r.c(paramLayoutInflater);
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    c.c().q(this);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public final void onEventMainThread(g.n paramn)
  {
    if (paramn == null) {
      return;
    }
    paramn = this.a;
    if (paramn != null)
    {
      r.c(paramn);
      paramn.dismiss();
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    r.f(paramMenuItem, "item");
    androidx.fragment.app.d locald = getActivity();
    if (locald != null) {
      locald.finish();
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPause()
  {
    z.a("Cal:D:EditDateIntervalFragment", "onPause()");
    super.onPause();
  }
  
  public void onResume()
  {
    z.a("Cal:D:EditDateIntervalFragment", "onResume()");
    super.onResume();
  }
  
  @Metadata(bv={}, d1={""}, d2={"Ly1/k$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y1.k
 * JD-Core Version:    0.7.0.1
 */