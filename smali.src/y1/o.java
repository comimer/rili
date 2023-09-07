package y1;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.android.calendar.common.Utils;
import com.android.calendar.common.k;
import com.android.calendar.datecalculate.DateCalculateResultActivity;
import com.miui.calendar.util.g.n;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.z;
import java.util.Calendar;
import java.util.Map;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.greenrobot.eventbus.ThreadMode;
import pc.c;

@Metadata(bv={}, d1={""}, d2={"Ly1/o;", "Landroidx/fragment/app/Fragment;", "Lkotlin/u;", "m", "n", "r", "Ljava/util/Calendar;", "date", "o", "q", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "onPause", "onResume", "Lcom/miui/calendar/util/g$n;", "event", "onEventMainThread", "onDestroy", "<init>", "()V", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class o
  extends Fragment
{
  public static final a j = new a(null);
  private h4.d a;
  private View b;
  private Calendar c;
  private View d;
  private TextView e;
  private TextView f;
  private int g;
  private Context h;
  public Map<Integer, View> i;
  
  private final void m()
  {
    Calendar localCalendar = Calendar.getInstance();
    this.c = localCalendar;
    if (localCalendar != null)
    {
      localCalendar.set(11, 0);
      localCalendar.set(12, 0);
      localCalendar.set(13, 0);
      localCalendar.set(14, 0);
    }
  }
  
  private final void n()
  {
    View localView = this.b;
    r.c(localView);
    this.d = localView.findViewById(2131362253);
    localView = this.b;
    r.c(localView);
    localView = localView.findViewById(2131362266);
    r.d(localView, "null cannot be cast to non-null type android.widget.TextView");
    this.e = ((TextView)localView);
    localView = this.b;
    r.c(localView);
    localView = localView.findViewById(2131362256);
    r.d(localView, "null cannot be cast to non-null type android.widget.TextView");
    this.f = ((TextView)localView);
    localView = this.b;
    r.c(localView);
    ((TextView)localView.findViewById(2131362267)).setText(2131887378);
    r();
  }
  
  private final void o(Calendar paramCalendar)
  {
    Object localObject = this.a;
    if (localObject != null)
    {
      r.c(localObject);
      ((miuix.appcompat.app.l)localObject).dismiss();
    }
    localObject = getActivity();
    n localn = new n(this);
    int k = this.g;
    r.c(paramCalendar);
    paramCalendar = new h4.d((Context)localObject, localn, k, paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5), k.f(), k.c());
    this.a = paramCalendar;
    r.c(paramCalendar);
    paramCalendar.setTitle(getString(2131886487));
    paramCalendar = this.a;
    r.c(paramCalendar);
    boolean bool;
    if (this.g == 1) {
      bool = true;
    } else {
      bool = false;
    }
    paramCalendar.D(bool);
    paramCalendar = this.a;
    r.c(paramCalendar);
    paramCalendar.setCanceledOnTouchOutside(true);
    paramCalendar = this.a;
    r.c(paramCalendar);
    paramCalendar.show();
  }
  
  private static final void p(o paramo, h4.d paramd, int paramInt1, boolean paramBoolean, int paramInt2, int paramInt3, int paramInt4, String paramString)
  {
    r.f(paramo, "this$0");
    paramo.g = paramInt1;
    paramd = paramo.c;
    r.c(paramd);
    paramd.set(paramInt2, paramInt3, paramInt4);
    paramd = paramo.c;
    if (paramd != null) {
      paramd.setTimeZone(TimeZone.getTimeZone("UTC"));
    }
    paramd = new StringBuilder();
    paramd.append("pickDate(): date = ");
    Calendar localCalendar = paramo.c;
    r.c(localCalendar);
    paramd.append(localCalendar.getTimeInMillis());
    z.a("Cal:D:EditSolarToLunarFragment", paramd.toString());
    paramd = paramo.e;
    r.c(paramd);
    paramd.setText(paramString);
    paramo = paramo.a;
    r.c(paramo);
    paramo.dismiss();
  }
  
  private final void q()
  {
    g0.d("key_solar_lunar_start_clicked");
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("startCalculate(): mDateCalculate = ");
    Calendar localCalendar = this.c;
    r.c(localCalendar);
    ((StringBuilder)localObject).append(localCalendar.getTimeInMillis());
    z.a("Cal:D:EditSolarToLunarFragment", ((StringBuilder)localObject).toString());
    localObject = new Intent(this.h, DateCalculateResultActivity.class);
    ((Intent)localObject).putExtra("date_calculate", this.c);
    ((Intent)localObject).putExtra("extra_key_calculate_type", 2);
    ((Intent)localObject).putExtra("date_type", this.g);
    startActivity((Intent)localObject);
  }
  
  private final void r()
  {
    Object localObject = this.d;
    r.c(localObject);
    ((View)localObject).setOnClickListener(new l(this));
    localObject = this.c;
    r.c(localObject);
    int k = ((Calendar)localObject).get(1);
    localObject = this.c;
    r.c(localObject);
    int m = ((Calendar)localObject).get(2);
    localObject = this.c;
    r.c(localObject);
    int n = ((Calendar)localObject).get(5);
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("updateViews(): mDateType = ");
    ((StringBuilder)localObject).append(this.g);
    z.a("Cal:D:EditSolarToLunarFragment", ((StringBuilder)localObject).toString());
    int i1 = this.g;
    localObject = this.h;
    if (i1 == 1) {
      localObject = Utils.J((Context)localObject, k, m, n, true, true);
    } else {
      localObject = Utils.Q((Context)localObject, k, m, n, true, true);
    }
    TextView localTextView = this.e;
    r.c(localTextView);
    localTextView.setText((CharSequence)localObject);
    localObject = this.f;
    r.c(localObject);
    ((View)localObject).setOnClickListener(new m(this));
    v.f(this.f, false);
  }
  
  private static final void s(o paramo, View paramView)
  {
    r.f(paramo, "this$0");
    paramo.o(paramo.c);
    g0.d("key_edit_solar_lunar_clicked");
  }
  
  private static final void t(o paramo, View paramView)
  {
    r.f(paramo, "this$0");
    paramo.q();
  }
  
  public void l()
  {
    this.i.clear();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    z.a("Cal:D:EditSolarToLunarFragment", "onCreate()");
    Object localObject = getActivity();
    if (localObject != null) {
      localObject = ((Context)localObject).getApplicationContext();
    } else {
      localObject = null;
    }
    this.h = ((Context)localObject);
    super.onCreate(paramBundle);
    c.c().o(this);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    r.f(paramLayoutInflater, "inflater");
    z.a("Cal:D:EditSolarToLunarFragment", "onCreateView()");
    if (this.b == null) {
      this.b = paramLayoutInflater.inflate(2131558587, paramViewGroup, false);
    }
    m();
    n();
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
    z.a("Cal:D:EditSolarToLunarFragment", "onPause()");
    super.onPause();
  }
  
  public void onResume()
  {
    z.a("Cal:D:EditSolarToLunarFragment", "onResume()");
    super.onResume();
  }
  
  @Metadata(bv={}, d1={""}, d2={"Ly1/o$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y1.o
 * JD-Core Version:    0.7.0.1
 */