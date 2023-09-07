package com.miui.calendar.shift;

import android.content.Context;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import h4.g;
import h4.g.c;
import miuix.pickerwidget.widget.NumberPicker;
import miuix.pickerwidget.widget.NumberPicker.OnValueChangeListener;
import miuix.pickerwidget.widget.TimePicker;

public class b
  extends g
{
  private View q;
  private NumberPicker r;
  private boolean v;
  
  public b(Context paramContext, final d paramd, ShiftReminderSchema paramShiftReminderSchema)
  {
    super(paramContext, null, i / 60, i % 60, true, 2131558936);
    boolean bool;
    if (paramShiftReminderSchema.type == 0) {
      bool = true;
    } else {
      bool = false;
    }
    this.v = bool;
    this.h = new a(paramd);
    this.q = this.d.findViewById(2131362964);
    paramd = (NumberPicker)this.d.findViewById(2131363159);
    this.r = paramd;
    paramd.setMinValue(1);
    this.r.setMaxValue(3);
    paramd = this.r;
    if (this.v) {
      i = 1;
    } else {
      i = paramShiftReminderSchema.type;
    }
    paramd.setValue(i);
    this.r.setDisplayedValues(new String[] { ShiftReminderSchema.a.a(paramContext, 1), ShiftReminderSchema.a.a(paramContext, 2), ShiftReminderSchema.a.a(paramContext, 3) });
    this.r.setWrapSelectorWheel(true);
    this.r.setOnValueChangedListener(new b());
    u(paramContext.getString(2131887500), this.v, new c());
    x();
    C();
  }
  
  private void C()
  {
    this.r.setEnabled(this.v ^ true);
    this.g.setEnabled(this.v ^ true);
    Object localObject = this.q;
    boolean bool = this.v;
    float f1 = 0.4F;
    float f2;
    if (bool) {
      f2 = 0.4F;
    } else {
      f2 = 1.0F;
    }
    ((View)localObject).setAlpha(f2);
    localObject = this.f;
    if (this.v) {
      f2 = f1;
    } else {
      f2 = 1.0F;
    }
    ((View)localObject).setAlpha(f2);
  }
  
  protected boolean v()
  {
    return false;
  }
  
  public void x()
  {
    super.x();
    if (this.r != null)
    {
      TextView localTextView = this.f;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(ShiftReminderSchema.a.a(this.c, this.r.getValue()));
      localStringBuilder.append(" ");
      localStringBuilder.append(this.f.getText());
      localTextView.setText(localStringBuilder.toString());
    }
  }
  
  class a
    implements g.c
  {
    a(b.d paramd) {}
    
    public void a(g paramg, int paramInt1, int paramInt2, String paramString)
    {
      if (paramd != null)
      {
        int i = b.y(b.this).getValue();
        if (b.z(b.this)) {
          i = 0;
        }
        paramd.a(paramg, i, paramInt1 * 60 + paramInt2);
      }
    }
  }
  
  class b
    implements NumberPicker.OnValueChangeListener
  {
    b() {}
    
    public void onValueChange(NumberPicker paramNumberPicker, int paramInt1, int paramInt2)
    {
      b.this.x();
    }
  }
  
  class c
    implements CompoundButton.OnCheckedChangeListener
  {
    c() {}
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      b.A(b.this, paramBoolean);
      b.B(b.this);
    }
  }
  
  public static abstract interface d
  {
    public abstract void a(g paramg, int paramInt1, int paramInt2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.shift.b
 * JD-Core Version:    0.7.0.1
 */