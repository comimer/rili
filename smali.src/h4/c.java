package h4;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.BaseBundle;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.android.calendar.common.Utils;
import com.android.calendar.common.k;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.a0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.view.g;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import miuix.appcompat.app.l;
import miuix.pickerwidget.widget.DatePicker;
import miuix.pickerwidget.widget.DatePicker.OnDateChangedListener;
import miuix.slidingwidget.widget.SlidingButton;

public class c
  extends l
  implements DatePicker.OnDateChangedListener
{
  private Context c;
  private final TextView d;
  private final TextView e;
  private final DatePicker f;
  private final d g;
  private final Calendar h;
  private final DateFormat i;
  private LinearLayout j;
  private int k;
  private boolean l;
  private int m;
  private int n;
  private int o;
  private String p;
  private g q;
  
  public c(Context paramContext, d paramd, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this(paramContext, paramd, paramInt1, paramInt2, paramInt3, paramInt4, k.f(), k.c());
  }
  
  public c(Context paramContext, d paramd, int paramInt1, int paramInt2, int paramInt3, int paramInt4, long paramLong1, long paramLong2)
  {
    super(paramContext);
    this.c = paramContext;
    this.g = paramd;
    this.l = true;
    this.k = paramInt1;
    this.m = paramInt2;
    this.n = paramInt3;
    this.o = paramInt4;
    this.i = new SimpleDateFormat("EEEE", Locale.CHINA);
    this.h = Calendar.getInstance();
    this.q = g.c(new a());
    l(-1, this.c.getText(17039370), this.q);
    l(-2, this.c.getText(17039360), null);
    View localView = ((LayoutInflater)this.c.getSystemService("layout_inflater")).inflate(2131558525, null);
    localView.setPadding(1, 1, 1, 1);
    o(localView);
    this.e = ((TextView)localView.findViewById(2131362247));
    DatePicker localDatePicker = (DatePicker)localView.findViewById(2131362263);
    this.f = localDatePicker;
    paramd = (TextView)localView.findViewById(2131363373);
    this.d = paramd;
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)paramd.getLayoutParams();
    if (DeviceUtils.H(11)) {
      paramInt1 = 0;
    } else {
      paramInt1 = getContext().getResources().getDimensionPixelSize(2131166261);
    }
    localLayoutParams.setMargins(0, paramInt1, 0, 0);
    paramd.setLayoutParams(localLayoutParams);
    localDatePicker.init(this.m, this.n, this.o, this);
    if ((x0.x0()) && (J())) {
      localDatePicker.setDateFormatOrder(new char[] { 100, 77, 121 });
    }
    localDatePicker.setMinDate(paramLong1);
    localDatePicker.setMaxDate(paramLong2);
    M();
    this.j = ((LinearLayout)localView.findViewById(2131363279));
    if (DeviceUtils.F())
    {
      paramd = (LinearLayout.LayoutParams)this.j.getLayoutParams();
      paramd.topMargin = paramContext.getResources().getDimensionPixelOffset(2131165782);
      this.j.setLayoutParams(paramd);
    }
  }
  
  private String H(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("getLunarDateText(): y:");
    ((StringBuilder)localObject).append(paramInt1);
    ((StringBuilder)localObject).append(", m:");
    ((StringBuilder)localObject).append(paramInt2);
    ((StringBuilder)localObject).append(", d:");
    ((StringBuilder)localObject).append(paramInt3);
    z.a("Cal:D:DatePickerDialog", ((StringBuilder)localObject).toString());
    if (!paramBoolean) {
      paramInt1 = 0;
    }
    String str = a0.m(getContext().getResources(), paramInt1, paramInt2, paramInt3);
    localObject = str;
    if (paramBoolean)
    {
      localObject = a0.w(paramInt1, paramInt2 + 1, paramInt3);
      this.h.set(localObject[0], localObject[1] - 1, localObject[2]);
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(str);
      ((StringBuilder)localObject).append(this.i.format(this.h.getTime()));
      localObject = ((StringBuilder)localObject).toString();
    }
    return localObject;
  }
  
  private String I(boolean paramBoolean)
  {
    String str;
    if (paramBoolean) {
      str = this.c.getString(2131886852);
    } else {
      str = this.c.getString(2131887523);
    }
    return str;
  }
  
  public static boolean J()
  {
    String str1 = Locale.getDefault().getLanguage();
    String str2 = Locale.getDefault().getCountry();
    return (("ar".equals(str1)) && ("EG".equals(str2))) || (("fa".equals(str1)) && ("IR".equals(str2)));
  }
  
  private void L(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt1 == 0) {
      this.p = Utils.Q(getContext(), paramInt2, paramInt3, paramInt4, this.l, true);
    } else {
      this.p = H(paramInt2, paramInt3, paramInt4, this.l);
    }
    this.e.setText(this.p);
  }
  
  private void M()
  {
    DatePicker localDatePicker = this.f;
    int i1 = this.k;
    boolean bool = true;
    if (i1 != 1) {
      bool = false;
    }
    localDatePicker.setLunarMode(bool);
    this.m = this.f.getYear();
    this.n = this.f.getMonth();
    i1 = this.f.getDayOfMonth();
    this.o = i1;
    L(this.k, this.m, this.n, i1);
  }
  
  public void D(String paramString1, boolean paramBoolean, String paramString2, CompoundButton.OnCheckedChangeListener paramOnCheckedChangeListener)
  {
    View localView = ((LayoutInflater)this.c.getSystemService("layout_inflater")).inflate(2131558893, null);
    TextView localTextView = (TextView)localView.findViewById(2131363278);
    final SlidingButton localSlidingButton = (SlidingButton)localView.findViewById(2131363277);
    localTextView.setText(paramString1);
    localSlidingButton.setChecked(paramBoolean);
    if (paramString2 != null) {
      localSlidingButton.setContentDescription(paramString2);
    }
    if (paramOnCheckedChangeListener != null)
    {
      paramOnCheckedChangeListener.onCheckedChanged(localSlidingButton, paramBoolean);
      localSlidingButton.setOnCheckedChangeListener(paramOnCheckedChangeListener);
    }
    localView.setOnClickListener(new c(localSlidingButton));
    this.j.addView(localView);
  }
  
  public void E()
  {
    int i1 = this.k;
    boolean bool = true;
    if (i1 != 1) {
      bool = false;
    }
    F(bool);
  }
  
  public void F(boolean paramBoolean)
  {
    if (y.q(this.c))
    {
      String str = I(paramBoolean);
      D(this.c.getString(2131886851), paramBoolean, str, new b(this));
    }
  }
  
  public void G(boolean paramBoolean)
  {
    D(this.c.getString(2131886494), paramBoolean, null, new b());
  }
  
  public void onDateChanged(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    paramDatePicker = new StringBuilder();
    paramDatePicker.append("onDateChanged(): y:");
    paramDatePicker.append(paramInt1);
    paramDatePicker.append(", m:");
    paramDatePicker.append(paramInt2);
    paramDatePicker.append(", d:");
    paramDatePicker.append(paramInt3);
    z.a("Cal:D:DatePickerDialog", paramDatePicker.toString());
    this.m = paramInt1;
    this.n = paramInt2;
    this.o = paramInt3;
    L(paramBoolean, paramInt1, paramInt2, paramInt3);
  }
  
  public void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    boolean bool = paramBundle.getBoolean("type");
    int i1 = paramBundle.getInt("year");
    int i2 = paramBundle.getInt("month");
    int i3 = paramBundle.getInt("day");
    this.f.init(i1, i2, i3, this);
    this.f.setLunarMode(bool);
    L(this.f.isLunarMode(), this.f.getYear(), this.f.getMonth(), this.f.getDayOfMonth());
  }
  
  public Bundle onSaveInstanceState()
  {
    Bundle localBundle = super.onSaveInstanceState();
    localBundle.putBoolean("type", this.f.isLunarMode());
    localBundle.putInt("year", this.f.getYear());
    localBundle.putInt("month", this.f.getMonth());
    localBundle.putInt("day", this.f.getDayOfMonth());
    return localBundle;
  }
  
  public void setTitle(int paramInt)
  {
    this.d.setText(paramInt);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.d.setText(paramCharSequence);
  }
  
  public void show()
  {
    super.show();
    this.q.b(this);
  }
  
  class a
    implements DialogInterface.OnClickListener
  {
    a() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      if (c.q(c.this) != null)
      {
        paramDialogInterface = new StringBuilder();
        paramDialogInterface.append("onClick(): y:");
        paramDialogInterface.append(c.r(c.this));
        paramDialogInterface.append(", m:");
        paramDialogInterface.append(c.t(c.this));
        paramDialogInterface.append(", d:");
        paramDialogInterface.append(c.v(c.this));
        z.a("Cal:D:DatePickerDialog", paramDialogInterface.toString());
        if (c.x(c.this) == 1)
        {
          paramDialogInterface = a0.w(c.r(c.this), c.t(c.this) + 1, c.v(c.this));
          c.s(c.this, paramDialogInterface[0]);
          c.u(c.this, paramDialogInterface[1] - 1);
          c.w(c.this, paramDialogInterface[2]);
        }
        paramDialogInterface = c.q(c.this);
        c localc = c.this;
        paramDialogInterface.a(localc, c.x(localc), c.y(c.this), c.r(c.this), c.t(c.this), c.v(c.this), c.A(c.this));
      }
    }
  }
  
  class b
    implements CompoundButton.OnCheckedChangeListener
  {
    b() {}
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      c.z(c.this, paramBoolean);
      c.B(c.this).showYearPicker(c.y(c.this));
      c.C(c.this);
    }
  }
  
  class c
    implements View.OnClickListener
  {
    c(SlidingButton paramSlidingButton) {}
    
    public void onClick(View paramView)
    {
      paramView = localSlidingButton;
      paramView.setChecked(paramView.isChecked() ^ true);
    }
  }
  
  public static abstract interface d
  {
    public abstract void a(c paramc, int paramInt1, boolean paramBoolean, int paramInt2, int paramInt3, int paramInt4, String paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h4.c
 * JD-Core Version:    0.7.0.1
 */