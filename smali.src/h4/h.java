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
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.z;
import miuix.appcompat.app.l;
import miuix.pickerwidget.widget.TimePicker;
import miuix.pickerwidget.widget.TimePicker.OnTimeChangedListener;

public class h
  extends l
  implements TimePicker.OnTimeChangedListener
{
  protected Context c;
  protected View d;
  private final TextView e;
  protected TextView f;
  protected TimePicker g;
  protected b h;
  private LinearLayout i;
  private int j;
  private int k;
  private String l;
  protected boolean m;
  private com.miui.calendar.view.g n;
  
  public h(Context paramContext, b paramb, int paramInt1, int paramInt2)
  {
    this(paramContext, paramb, paramInt1, paramInt2, DateFormat.is24HourFormat(paramContext), 2131558973);
  }
  
  protected h(Context paramContext, b paramb, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    super(paramContext);
    this.c = paramContext;
    this.h = paramb;
    this.j = paramInt1;
    this.k = paramInt2;
    this.m = paramBoolean;
    this.n = com.miui.calendar.view.g.c(new a());
    l(-1, this.c.getText(17039370), this.n);
    l(-2, this.c.getText(17039360), null);
    paramb = ((LayoutInflater)this.c.getSystemService("layout_inflater")).inflate(paramInt3, null);
    this.d = paramb;
    paramb.setPadding(1, 1, 1, 1);
    o(this.d);
    this.f = ((TextView)this.d.findViewById(2131363359));
    paramb = (TimePicker)this.d.findViewById(2131363364);
    this.g = paramb;
    paramb.set24HourView(Boolean.valueOf(paramBoolean));
    this.g.setCurrentHour(Integer.valueOf(this.j));
    this.g.setCurrentMinute(Integer.valueOf(this.k));
    this.g.setOnTimeChangedListener(this);
    this.e = ((TextView)this.d.findViewById(2131363373));
    t();
    this.i = ((LinearLayout)this.d.findViewById(2131363279));
    if ((DeviceUtils.F()) && (s()))
    {
      paramb = (LinearLayout.LayoutParams)this.i.getLayoutParams();
      paramb.topMargin = paramContext.getResources().getDimensionPixelOffset(2131165782);
      this.i.setLayoutParams(paramb);
    }
  }
  
  public void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    int i1 = paramBundle.getInt("hour");
    int i2 = paramBundle.getInt("minute");
    this.g.setCurrentHour(Integer.valueOf(i1));
    this.g.setCurrentMinute(Integer.valueOf(i2));
    t();
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
    z.a("Cal:D:TimePickerDialog", paramTimePicker.toString());
    this.j = paramInt1;
    this.k = paramInt2;
    t();
  }
  
  protected boolean s()
  {
    return true;
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
    this.n.b(this);
  }
  
  public void t()
  {
    String str = s0.p(getContext(), this.j, this.k, this.m);
    this.l = str;
    this.f.setText(str);
  }
  
  class a
    implements DialogInterface.OnClickListener
  {
    a() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      if (h.this.h != null)
      {
        paramDialogInterface = new StringBuilder();
        paramDialogInterface.append("onClick(): h:");
        paramDialogInterface.append(h.p(h.this));
        paramDialogInterface.append(", m:");
        paramDialogInterface.append(h.q(h.this));
        z.a("Cal:D:TimePickerDialog", paramDialogInterface.toString());
        paramDialogInterface = h.this;
        paramDialogInterface.h.a(paramDialogInterface, h.p(paramDialogInterface), h.q(h.this), h.r(h.this));
      }
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(h paramh, int paramInt1, int paramInt2, String paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h4.h
 * JD-Core Version:    0.7.0.1
 */