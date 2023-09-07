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
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.android.calendar.common.Utils;
import com.android.calendar.common.k;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.a0;
import com.miui.calendar.util.z;
import java.text.DateFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Locale;
import miuix.appcompat.app.l;
import miuix.pickerwidget.date.Calendar;
import miuix.pickerwidget.widget.DatePicker;
import miuix.pickerwidget.widget.DatePicker.OnDateChangedListener;
import miuix.slidingwidget.widget.SlidingButton;

public class f
  extends l
{
  private final DatePicker c;
  private final e d;
  private final Calendar e;
  private View f;
  private SlidingButton g;
  private final DateFormat h;
  private final TextView i;
  private final TextView j;
  private int k = 0;
  private String l = "";
  private DatePicker.OnDateChangedListener m = new a();
  
  public f(Context paramContext, e parame, int paramInt1, int paramInt2, int paramInt3)
  {
    this(paramContext, parame, paramInt1, paramInt2, paramInt3, k.f(), k.c());
  }
  
  public f(Context paramContext, e parame, int paramInt1, int paramInt2, int paramInt3, long paramLong1, long paramLong2)
  {
    super(paramContext);
    this.d = parame;
    this.e = new Calendar();
    this.h = new SimpleDateFormat("EEEE", Locale.CHINA);
    paramContext = getContext();
    l(-1, paramContext.getText(17039370), new b());
    l(-2, getContext().getText(17039360), null);
    m(0);
    paramContext = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2131558527, null);
    paramContext.setPadding(1, 1, 1, 1);
    o(paramContext);
    DatePicker localDatePicker = (DatePicker)paramContext.findViewById(2131362248);
    this.c = localDatePicker;
    localDatePicker.setMaxDate(paramLong2);
    localDatePicker.setMinDate(paramLong1);
    parame = (TextView)paramContext.findViewById(2131363373);
    this.i = parame;
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)parame.getLayoutParams();
    int n;
    if (DeviceUtils.H(11)) {
      n = 0;
    } else {
      n = getContext().getResources().getDimensionPixelSize(2131166261);
    }
    localLayoutParams.setMargins(0, n, 0, 0);
    parame.setLayoutParams(localLayoutParams);
    localDatePicker.init(paramInt1, paramInt2, paramInt3, this.m);
    this.j = ((TextView)paramContext.findViewById(2131362247));
    x(false, paramInt1, paramInt2, paramInt3);
    this.f = paramContext.findViewById(2131362732);
    paramContext = (SlidingButton)paramContext.findViewById(2131362250);
    this.g = paramContext;
    paramContext.setOnCheckedChangeListener(new c());
    this.f.setOnClickListener(new d());
  }
  
  private String u(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("getLunarDateText(): y:");
    ((StringBuilder)localObject).append(paramInt1);
    ((StringBuilder)localObject).append(", m:");
    ((StringBuilder)localObject).append(paramInt2);
    ((StringBuilder)localObject).append(", d:");
    ((StringBuilder)localObject).append(paramInt3);
    z.a("Cal:D:NewDatePickerDialog", ((StringBuilder)localObject).toString());
    if (!paramBoolean) {
      paramInt1 = 0;
    }
    String str = a0.m(getContext().getResources(), paramInt1, paramInt2, paramInt3);
    localObject = str;
    if (paramBoolean)
    {
      localObject = a0.w(paramInt1, paramInt2 + 1, paramInt3);
      this.e.set(1, localObject[0]);
      this.e.set(5, localObject[1] - 1);
      this.e.set(9, localObject[2]);
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(str);
      ((StringBuilder)localObject).append(this.h.format(Long.valueOf(this.e.getTimeInMillis())));
      localObject = ((StringBuilder)localObject).toString();
    }
    return localObject;
  }
  
  private void w()
  {
    if (this.d != null)
    {
      this.c.clearFocus();
      if (this.k == 0)
      {
        this.l = Utils.Q(getContext(), this.c.getYear(), this.c.getMonth(), this.c.getDayOfMonth(), true, true);
      }
      else
      {
        this.l = u(this.c.getYear(), this.c.getMonth(), this.c.getDayOfMonth(), true);
        this.c.setLunarMode(false);
      }
      e locale = this.d;
      DatePicker localDatePicker = this.c;
      locale.a(localDatePicker, this.k, localDatePicker.getYear(), this.c.getMonth(), this.c.getDayOfMonth(), this.l);
    }
  }
  
  private void x(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    if (!paramBoolean) {
      this.l = Utils.Q(getContext(), paramInt1, paramInt2, paramInt3, true, true);
    } else {
      this.l = u(paramInt1, paramInt2, paramInt3, true);
    }
    this.j.setText(this.l);
  }
  
  public void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    int n = paramBundle.getInt("miuix:year");
    int i1 = paramBundle.getInt("miuix:month");
    int i2 = paramBundle.getInt("miuix:day");
    this.c.init(n, i1, i2, this.m);
  }
  
  public Bundle onSaveInstanceState()
  {
    Bundle localBundle = super.onSaveInstanceState();
    localBundle.putInt("miuix:year", this.c.getYear());
    localBundle.putInt("miuix:month", this.c.getMonth());
    localBundle.putInt("miuix:day", this.c.getDayOfMonth());
    return localBundle;
  }
  
  public void setTitle(int paramInt)
  {
    this.i.setText(paramInt);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.i.setText(paramCharSequence);
  }
  
  public void v(boolean paramBoolean)
  {
    this.g.setChecked(paramBoolean);
    this.c.setLunarMode(paramBoolean);
    this.k = paramBoolean;
    x(paramBoolean, this.c.getYear(), this.c.getMonth(), this.c.getDayOfMonth());
  }
  
  class a
    implements DatePicker.OnDateChangedListener
  {
    a() {}
    
    public void onDateChanged(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
    {
      f.p(f.this, paramBoolean, paramInt1, paramInt2, paramInt3);
    }
  }
  
  class b
    implements DialogInterface.OnClickListener
  {
    b() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      f.q(f.this);
    }
  }
  
  class c
    implements CompoundButton.OnCheckedChangeListener
  {
    c() {}
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      f.r(f.this).setLunarMode(paramBoolean);
      f.s(f.this, paramBoolean);
      paramCompoundButton = f.this;
      f.p(paramCompoundButton, paramBoolean, f.r(paramCompoundButton).getYear(), f.r(f.this).getMonth(), f.r(f.this).getDayOfMonth());
    }
  }
  
  class d
    implements View.OnClickListener
  {
    d() {}
    
    public void onClick(View paramView)
    {
      f.t(f.this).setChecked(f.t(f.this).isChecked() ^ true);
    }
  }
  
  public static abstract interface e
  {
    public abstract void a(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3, int paramInt4, String paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h4.f
 * JD-Core Version:    0.7.0.1
 */