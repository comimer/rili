package h4;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.format.DateFormat;
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
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.z;
import miuix.appcompat.app.l;
import miuix.pickerwidget.widget.TimePicker;
import miuix.pickerwidget.widget.TimePicker.OnTimeChangedListener;
import miuix.slidingwidget.widget.SlidingButton;

public class g
  extends l
  implements TimePicker.OnTimeChangedListener
{
  protected Context c;
  protected View d;
  private TextView e;
  protected TextView f;
  protected TimePicker g;
  protected c h;
  private LinearLayout i;
  private int j;
  private int k;
  private String l;
  protected boolean m;
  private d n;
  private com.miui.calendar.view.g o;
  private boolean p;
  
  public g(Context paramContext, c paramc, int paramInt)
  {
    this(paramContext, paramc, paramInt / 60, paramInt % 60);
  }
  
  public g(Context paramContext, c paramc, int paramInt1, int paramInt2)
  {
    this(paramContext, paramc, paramInt1, paramInt2, DateFormat.is24HourFormat(paramContext), 2131558973);
  }
  
  public g(Context paramContext, c paramc, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    super(paramContext);
    this.c = paramContext;
    this.h = paramc;
    this.j = paramInt1;
    this.k = paramInt2;
    this.m = paramBoolean;
    this.o = com.miui.calendar.view.g.c(new a());
    l(-1, this.c.getText(17039370), this.o);
    l(-2, this.c.getText(17039360), null);
    paramc = ((LayoutInflater)this.c.getSystemService("layout_inflater")).inflate(paramInt3, null);
    this.d = paramc;
    paramc.setPadding(1, 1, 1, 1);
    o(this.d);
    this.f = ((TextView)this.d.findViewById(2131363359));
    paramc = (TimePicker)this.d.findViewById(2131363364);
    this.g = paramc;
    paramc.setCurrentHour(Integer.valueOf(this.j));
    this.g.setCurrentMinute(Integer.valueOf(this.k));
    this.g.setOnTimeChangedListener(this);
    paramc = (TextView)this.d.findViewById(2131363373);
    this.e = paramc;
    if (paramc != null)
    {
      paramc = (LinearLayout.LayoutParams)paramc.getLayoutParams();
      if (DeviceUtils.H(11)) {
        paramInt1 = 0;
      } else {
        paramInt1 = getContext().getResources().getDimensionPixelSize(2131166261);
      }
      paramc.setMargins(0, paramInt1, 0, 0);
      this.e.setLayoutParams(paramc);
    }
    x();
    this.i = ((LinearLayout)this.d.findViewById(2131363279));
    if ((DeviceUtils.F()) && (v()))
    {
      paramc = (LinearLayout.LayoutParams)this.i.getLayoutParams();
      paramc.topMargin = paramContext.getResources().getDimensionPixelOffset(2131165782);
      this.i.setLayoutParams(paramc);
    }
  }
  
  public void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    int i1 = paramBundle.getInt("hour");
    int i2 = paramBundle.getInt("minute");
    this.g.setCurrentHour(Integer.valueOf(i1));
    this.g.setCurrentMinute(Integer.valueOf(i2));
    x();
  }
  
  public Bundle onSaveInstanceState()
  {
    Bundle localBundle = super.onSaveInstanceState();
    localBundle.putInt("hour", this.g.getCurrentHour().intValue());
    localBundle.putInt("minute", this.g.getCurrentMinute().intValue());
    return localBundle;
  }
  
  public void onTimeChanged(TimePicker paramTimePicker, int paramInt1, int paramInt2)
  {
    paramTimePicker = new StringBuilder();
    paramTimePicker.append("onTimeChanged(): h:");
    paramTimePicker.append(paramInt1);
    paramTimePicker.append(", m:");
    paramTimePicker.append(paramInt2);
    z.a("Cal:D:NewTimePickerDialog", paramTimePicker.toString());
    this.j = paramInt1;
    this.k = paramInt2;
    x();
  }
  
  public void setTitle(int paramInt)
  {
    TextView localTextView = this.e;
    if (localTextView == null) {
      super.setTitle(paramInt);
    } else {
      localTextView.setText(paramInt);
    }
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    TextView localTextView = this.e;
    if (localTextView == null) {
      super.setTitle(paramCharSequence);
    } else {
      localTextView.setText(paramCharSequence);
    }
  }
  
  public void show()
  {
    super.show();
    this.o.b(this);
  }
  
  public void u(String paramString, boolean paramBoolean, CompoundButton.OnCheckedChangeListener paramOnCheckedChangeListener)
  {
    View localView = ((LayoutInflater)this.c.getSystemService("layout_inflater")).inflate(2131558893, null);
    TextView localTextView = (TextView)localView.findViewById(2131363278);
    final SlidingButton localSlidingButton = (SlidingButton)localView.findViewById(2131363277);
    this.p = paramBoolean;
    localView.setOnClickListener(new b(localSlidingButton));
    localTextView.setText(paramString);
    localSlidingButton.setChecked(paramBoolean);
    if (paramOnCheckedChangeListener != null)
    {
      paramOnCheckedChangeListener.onCheckedChanged(localSlidingButton, paramBoolean);
      localSlidingButton.setOnCheckedChangeListener(paramOnCheckedChangeListener);
    }
    this.i.addView(localView);
  }
  
  protected boolean v()
  {
    return true;
  }
  
  public void w(d paramd)
  {
    this.n = paramd;
    x();
  }
  
  public void x()
  {
    String str1 = s0.p(getContext(), this.j, this.k, this.m);
    this.l = str1;
    TextView localTextView = this.f;
    d locald = this.n;
    String str2 = str1;
    if (locald != null) {
      str2 = locald.a(str1);
    }
    localTextView.setText(str2);
  }
  
  class a
    implements DialogInterface.OnClickListener
  {
    a() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      if (g.this.h != null)
      {
        paramDialogInterface = new StringBuilder();
        paramDialogInterface.append("onClick(): h:");
        paramDialogInterface.append(g.p(g.this));
        paramDialogInterface.append(", m:");
        paramDialogInterface.append(g.q(g.this));
        z.a("Cal:D:NewTimePickerDialog", paramDialogInterface.toString());
        paramDialogInterface = g.this;
        paramDialogInterface.h.a(paramDialogInterface, g.p(paramDialogInterface), g.q(g.this), g.r(g.this));
      }
    }
  }
  
  class b
    implements View.OnClickListener
  {
    b(SlidingButton paramSlidingButton) {}
    
    public void onClick(View paramView)
    {
      localSlidingButton.setChecked(g.s(g.this) ^ true);
      paramView = g.this;
      g.t(paramView, g.s(paramView) ^ true);
    }
  }
  
  public static abstract interface c
  {
    public abstract void a(g paramg, int paramInt1, int paramInt2, String paramString);
  }
  
  public static abstract class d
  {
    public abstract String a(String paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h4.g
 * JD-Core Version:    0.7.0.1
 */