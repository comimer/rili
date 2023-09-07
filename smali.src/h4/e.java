package h4;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.a0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.view.g;
import java.time.Month;
import java.time.ZonedDateTime;
import java.util.Calendar;
import java.util.Formatter;
import java.util.Locale;
import miuix.appcompat.app.l;
import miuix.pickerwidget.widget.DateTimePicker;
import miuix.pickerwidget.widget.DateTimePicker.OnDateTimeChangedListener;
import miuix.slidingwidget.widget.SlidingButton;

public class e
  extends l
  implements DateTimePicker.OnDateTimeChangedListener
{
  private Context c;
  private TextView d;
  private TextView e;
  private DateTimePicker f;
  private SlidingButton g;
  private int h;
  private long i;
  private d j;
  private g k;
  
  public e(Context paramContext, d paramd, int paramInt, boolean paramBoolean)
  {
    super(paramContext);
    this.c = paramContext;
    this.j = paramd;
    u(paramContext, paramBoolean);
    w(paramInt);
  }
  
  private void u(Context paramContext, boolean paramBoolean)
  {
    this.k = g.c(new a());
    l(-1, getContext().getText(17039370), this.k);
    l(-2, getContext().getText(17039360), null);
    View localView = ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(2131558528, null);
    localView.setPadding(1, 1, 1, 1);
    o(localView);
    this.e = ((TextView)localView.findViewById(2131362273));
    this.f = ((DateTimePicker)localView.findViewById(2131363364));
    this.d = ((TextView)localView.findViewById(2131363373));
    this.f.setOnTimeChangedListener(this);
    this.f.setMinuteInterval(1);
    Object localObject = (SlidingButton)localView.findViewById(2131363277);
    this.g = ((SlidingButton)localObject);
    ((CompoundButton)localObject).setOnCheckedChangeListener(new b());
    ((TextView)localView.findViewById(2131363278)).setText(2131886851);
    localView = localView.findViewById(2131362735);
    if ((!y.q(paramContext)) || (!paramBoolean)) {
      localView.setVisibility(8);
    }
    if (DeviceUtils.F())
    {
      localObject = (LinearLayout.LayoutParams)localView.getLayoutParams();
      ((LinearLayout.LayoutParams)localObject).topMargin = paramContext.getResources().getDimensionPixelOffset(2131165782);
      localView.setLayoutParams((ViewGroup.LayoutParams)localObject);
    }
    localView.setOnClickListener(new c());
  }
  
  private void v()
  {
    Object localObject1;
    if (this.h == 0)
    {
      localObject1 = DateUtils.formatDateTime(getContext(), this.i, 98455);
      this.e.setText((CharSequence)localObject1);
    }
    else
    {
      localObject1 = Calendar.getInstance();
      ((Calendar)localObject1).setTimeInMillis(this.i);
      int m = 1;
      localObject1 = a0.d(((Calendar)localObject1).get(1), ((Calendar)localObject1).get(2), ((Calendar)localObject1).get(5));
      localObject1 = a0.m(this.c.getResources(), localObject1[0], localObject1[1] - 1, localObject1[2]);
      if (DateFormat.is24HourFormat(this.c)) {
        m = 129;
      }
      Object localObject2 = new Formatter(new StringBuilder(50), Locale.getDefault());
      Object localObject3 = this.c;
      long l = this.i;
      String str = DateUtils.formatDateRange((Context)localObject3, (Formatter)localObject2, l, l, m).toString();
      localObject2 = this.e;
      localObject3 = new StringBuilder();
      ((StringBuilder)localObject3).append((String)localObject1);
      ((StringBuilder)localObject3).append(" ");
      ((StringBuilder)localObject3).append(str);
      ((TextView)localObject2).setText(((StringBuilder)localObject3).toString());
    }
  }
  
  private void w(int paramInt)
  {
    z.a("Cal:D:DateTimePicker", "setDateType():");
    if (paramInt == this.h)
    {
      z.a("Cal:D:DateTimePicker", "setDateType(): return");
      return;
    }
    this.h = paramInt;
    SlidingButton localSlidingButton = this.g;
    boolean bool1 = false;
    if (paramInt == 1) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    localSlidingButton.setChecked(bool2);
    boolean bool2 = bool1;
    if (paramInt == 1) {
      bool2 = true;
    }
    this.f.setLunarMode(bool2);
    this.f.update(this.i);
    v();
  }
  
  public void onDateTimeChanged(DateTimePicker paramDateTimePicker, long paramLong)
  {
    paramDateTimePicker = new StringBuilder();
    paramDateTimePicker.append("onDateTimeChanged(): time:");
    paramDateTimePicker.append(paramLong);
    z.a("Cal:D:DateTimePicker", paramDateTimePicker.toString());
    this.i = paramLong;
    v();
  }
  
  public void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
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
    this.k.b(this);
  }
  
  public void x(ZonedDateTime paramZonedDateTime)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(paramZonedDateTime.getYear(), paramZonedDateTime.getMonth().getValue() - 1, paramZonedDateTime.getDayOfMonth(), paramZonedDateTime.getHour(), paramZonedDateTime.getMinute(), paramZonedDateTime.getSecond());
    long l = localCalendar.getTimeInMillis();
    this.i = l;
    this.f.update(l);
    v();
  }
  
  class a
    implements DialogInterface.OnClickListener
  {
    a() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      if (e.p(e.this) != null)
      {
        paramDialogInterface = e.p(e.this);
        e locale = e.this;
        paramDialogInterface.a(locale, e.q(locale), e.r(e.this).getTimeInMillis());
      }
    }
  }
  
  class b
    implements CompoundButton.OnCheckedChangeListener
  {
    b() {}
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      e.s(e.this, paramBoolean);
    }
  }
  
  class c
    implements View.OnClickListener
  {
    c() {}
    
    public void onClick(View paramView)
    {
      e.t(e.this).setChecked(e.t(e.this).isChecked() ^ true);
    }
  }
  
  public static abstract interface d
  {
    public abstract void a(e parame, int paramInt, long paramLong);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h4.e
 * JD-Core Version:    0.7.0.1
 */