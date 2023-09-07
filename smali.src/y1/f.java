package y1;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.android.calendar.common.Utils;
import com.android.calendar.common.k;
import com.android.calendar.datecalculate.DateCalculateResultActivity;
import com.miui.calendar.util.g.n;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x0;
import h4.d.d;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import miuix.appcompat.widget.Spinner;
import org.greenrobot.eventbus.ThreadMode;
import pc.c;

@Metadata(bv={}, d1={""}, d2={"Ly1/f;", "Landroidx/fragment/app/Fragment;", "Landroid/view/View$OnClickListener;", "Lkotlin/u;", "n", "o", "t", "Ljava/util/Calendar;", "date", "q", "s", "", "days", "", "p", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "Landroid/view/MenuItem;", "item", "onOptionsItemSelected", "view", "onClick", "Lcom/miui/calendar/util/g$n;", "event", "onEventMainThread", "onPause", "onResume", "onDestroy", "<init>", "()V", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class f
  extends Fragment
  implements View.OnClickListener
{
  public static final a n = new a(null);
  private h4.d a;
  private View b;
  private Calendar c;
  private View d;
  private TextView e;
  private Spinner f;
  private String[] g;
  private View h;
  private EditText i;
  private TextView j;
  private int k;
  private Context l;
  public Map<Integer, View> m;
  
  private final void n()
  {
    Object localObject = getActivity();
    if (localObject != null) {
      localObject = ((Context)localObject).getApplicationContext();
    } else {
      localObject = null;
    }
    this.l = ((Context)localObject);
    localObject = Calendar.getInstance();
    this.c = ((Calendar)localObject);
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
    this.d = ((View)localObject1).findViewById(2131362253);
    localObject1 = this.b;
    r.c(localObject1);
    localObject1 = ((View)localObject1).findViewById(2131362257);
    r.d(localObject1, "null cannot be cast to non-null type android.widget.TextView");
    this.e = ((TextView)localObject1);
    localObject1 = this.b;
    r.c(localObject1);
    this.h = ((View)localObject1).findViewById(2131362255);
    localObject1 = this.b;
    r.c(localObject1);
    localObject1 = ((View)localObject1).findViewById(2131363218);
    r.d(localObject1, "null cannot be cast to non-null type miuix.appcompat.widget.Spinner");
    this.f = ((Spinner)localObject1);
    localObject1 = getResources().getStringArray(2130903067);
    r.e(localObject1, "resources.getStringArray…y.date_calculate_spinner)");
    this.g = ((String[])localObject1);
    Object localObject2 = getResources().getStringArray(2130903067);
    r.e(localObject2, "resources.getStringArray…y.date_calculate_spinner)");
    localObject1 = getContext();
    r.c(localObject1);
    localObject1 = new ArrayAdapter((Context)localObject1, 2131558738, 16908308, (Object[])localObject2);
    ((ArrayAdapter)localObject1).setDropDownViewResource(2131558736);
    localObject2 = this.f;
    r.c(localObject2);
    ((Spinner)localObject2).setAdapter((SpinnerAdapter)localObject1);
    localObject1 = this.b;
    r.c(localObject1);
    localObject1 = ((View)localObject1).findViewById(2131362254);
    r.d(localObject1, "null cannot be cast to non-null type android.widget.EditText");
    this.i = ((EditText)localObject1);
    localObject1 = this.b;
    r.c(localObject1);
    localObject1 = ((View)localObject1).findViewById(2131362256);
    r.d(localObject1, "null cannot be cast to non-null type android.widget.TextView");
    this.j = ((TextView)localObject1);
    t();
  }
  
  private final boolean p(String paramString)
  {
    int i1 = this.k;
    boolean bool = false;
    if (i1 == 0)
    {
      i1 = s0.l(k.c()) - s0.m(this.c);
      if (Integer.parseInt(paramString) > i1)
      {
        if (i1 == 0)
        {
          paramString = this.l;
          r.c(paramString);
          t0.h(paramString, 2131886477, null, 4, null);
          return bool;
        }
        paramString = this.l;
        r.c(paramString);
        t0.i(paramString, 2131755066, i1, new Object[] { Integer.valueOf(i1) });
        return bool;
      }
    }
    else
    {
      i1 = s0.m(this.c) - s0.l(k.f());
      if (Integer.parseInt(paramString) > i1)
      {
        if (i1 == 0)
        {
          paramString = this.l;
          r.c(paramString);
          t0.h(paramString, 2131886479, null, 4, null);
          return bool;
        }
        paramString = this.l;
        r.c(paramString);
        t0.i(paramString, 2131755066, i1, new Object[] { Integer.valueOf(i1) });
        return bool;
      }
    }
    bool = true;
    return bool;
  }
  
  private final void q(Calendar paramCalendar)
  {
    Object localObject = this.a;
    if (localObject != null)
    {
      r.c(localObject);
      ((miuix.appcompat.app.l)localObject).dismiss();
    }
    androidx.fragment.app.d locald = getActivity();
    localObject = new e(this);
    r.c(paramCalendar);
    paramCalendar = new h4.d(locald, (d.d)localObject, 0, paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5), k.f(), k.c());
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
  
  private static final void r(f paramf, h4.d paramd, int paramInt1, boolean paramBoolean, int paramInt2, int paramInt3, int paramInt4, String paramString)
  {
    r.f(paramf, "this$0");
    paramd = paramf.c;
    r.c(paramd);
    paramd.set(paramInt2, paramInt3, paramInt4);
    paramd = paramf.e;
    r.c(paramd);
    paramd.setText(paramString);
    paramf = paramf.a;
    r.c(paramf);
    paramf.dismiss();
  }
  
  private final void s()
  {
    g0.d("key_date_calculate_start_clicked");
    Object localObject1 = this.i;
    r.c(localObject1);
    localObject1 = ((EditText)localObject1).getText().toString();
    if (TextUtils.isEmpty((CharSequence)localObject1))
    {
      localObject1 = this.l;
      r.c(localObject1);
      t0.h((Context)localObject1, 2131886478, null, 4, null);
    }
    else if (p((String)localObject1))
    {
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("startCalculate(): mDateCalculate = ");
      Calendar localCalendar = this.c;
      r.c(localCalendar);
      ((StringBuilder)localObject2).append(localCalendar.getTimeInMillis());
      ((StringBuilder)localObject2).append(",mDirection =");
      ((StringBuilder)localObject2).append(this.k);
      com.miui.calendar.util.z.a("Cal:D:EditDateCalculateFragment", ((StringBuilder)localObject2).toString());
      localObject2 = new Intent(this.l, DateCalculateResultActivity.class);
      ((Intent)localObject2).putExtra("date_calculate", this.c);
      ((Intent)localObject2).putExtra("days", (String)localObject1);
      ((Intent)localObject2).putExtra("direction", this.k);
      ((Intent)localObject2).putExtra("extra_key_calculate_type", 0);
      ((Intent)localObject2).putExtra("date_type", 0);
      startActivity((Intent)localObject2);
    }
  }
  
  private final void t()
  {
    Object localObject = this.d;
    r.c(localObject);
    ((View)localObject).setOnClickListener(new d(this));
    localObject = this.c;
    r.c(localObject);
    int i1 = ((Calendar)localObject).get(1);
    localObject = this.c;
    r.c(localObject);
    int i2 = ((Calendar)localObject).get(2);
    localObject = this.c;
    r.c(localObject);
    int i3 = ((Calendar)localObject).get(5);
    localObject = Utils.Q(this.l, i1, i2, i3, true, true);
    TextView localTextView = this.e;
    r.c(localTextView);
    localTextView.setText((CharSequence)localObject);
    localObject = this.h;
    r.c(localObject);
    ((View)localObject).setOnClickListener(this);
    localObject = this.f;
    r.c(localObject);
    ((AdapterView)localObject).setOnItemSelectedListener(new b(this));
    localObject = this.j;
    r.c(localObject);
    ((View)localObject).setOnClickListener(this);
    v.f(this.j, false);
  }
  
  private static final void u(f paramf, View paramView)
  {
    r.f(paramf, "this$0");
    paramf.q(paramf.c);
    g0.d("key_edit_date_calculate_clicked");
  }
  
  public void k()
  {
    this.m.clear();
  }
  
  public void onClick(View paramView)
  {
    r.f(paramView, "view");
    switch (paramView.getId())
    {
    default: 
      break;
    case 2131362256: 
      s();
      break;
    case 2131362255: 
      paramView = this.f;
      r.c(paramView);
      paramView.performClick();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    com.miui.calendar.util.z.a("Cal:D:EditDateCalculateFragment", "onCreate()");
    super.onCreate(paramBundle);
    c.c().o(this);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    r.f(paramLayoutInflater, "inflater");
    com.miui.calendar.util.z.a("Cal:D:EditDateCalculateFragment", "onCreateView()");
    if (this.b == null) {
      this.b = paramLayoutInflater.inflate(2131558584, paramViewGroup, false);
    }
    n();
    o();
    return this.b;
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
    com.miui.calendar.util.z.a("Cal:D:EditDateCalculateFragment", "onPause()");
    super.onPause();
    Context localContext = this.l;
    EditText localEditText = this.i;
    r.c(localEditText);
    x0.l0(localContext, localEditText);
  }
  
  public void onResume()
  {
    com.miui.calendar.util.z.a("Cal:D:EditDateCalculateFragment", "onResume()");
    super.onResume();
  }
  
  @Metadata(bv={}, d1={""}, d2={"Ly1/f$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"y1/f$b", "Landroid/widget/AdapterView$OnItemSelectedListener;", "Landroid/widget/AdapterView;", "adapterView", "Landroid/view/View;", "view", "", "i", "", "l", "Lkotlin/u;", "onItemSelected", "onNothingSelected", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b
    implements AdapterView.OnItemSelectedListener
  {
    b(f paramf) {}
    
    public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      f.m(this.a, paramInt);
      paramAdapterView = kotlin.jvm.internal.z.a;
      paramView = this.a.getResources().getString(2131886406);
      r.e(paramView, "resources.getString(R.st…tion_content_description)");
      paramAdapterView = f.l(this.a);
      r.c(paramAdapterView);
      paramAdapterView = String.format(paramView, Arrays.copyOf(new Object[] { paramAdapterView.getSelectedItem().toString() }, 1));
      r.e(paramAdapterView, "format(format, *args)");
      paramView = f.l(this.a);
      r.c(paramView);
      paramView.setContentDescription(paramAdapterView);
    }
    
    public void onNothingSelected(AdapterView<?> paramAdapterView) {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y1.f
 * JD-Core Version:    0.7.0.1
 */