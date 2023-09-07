package h4;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.miui.calendar.util.t0;
import miuix.appcompat.app.l;
import miuix.pickerwidget.widget.NumberPicker;
import miuix.pickerwidget.widget.NumberPicker.OnValueChangeListener;

public class a
  extends l
{
  private TextView c;
  private NumberPicker d;
  private NumberPicker e;
  private TextView f;
  private Integer[] g;
  private e h;
  
  public a(Context paramContext, Integer[] paramArrayOfInteger, e parame, int paramInt1, int paramInt2)
  {
    super(paramContext);
    this.h = parame;
    this.g = paramArrayOfInteger;
    x(paramInt1, paramInt2);
  }
  
  private int v(int paramInt)
  {
    for (int i = 0;; i++)
    {
      Integer[] arrayOfInteger = this.g;
      if (i >= arrayOfInteger.length) {
        break;
      }
      if (paramInt == arrayOfInteger[i].intValue()) {
        return i;
      }
    }
    return -1;
  }
  
  private String[] w()
  {
    String[] arrayOfString = new String[this.g.length];
    for (int i = 0;; i++)
    {
      Integer[] arrayOfInteger = this.g;
      if (i >= arrayOfInteger.length) {
        break;
      }
      int j = arrayOfInteger[i].intValue();
      if (j != 1)
      {
        if (j != 2) {
          arrayOfString[i] = getContext().getResources().getQuantityString(2131755083, 1);
        } else {
          arrayOfString[i] = getContext().getResources().getQuantityString(2131755084, 1);
        }
      }
      else {
        arrayOfString[i] = getContext().getResources().getQuantityString(2131755085, 1);
      }
    }
    return arrayOfString;
  }
  
  private void x(int paramInt1, int paramInt2)
  {
    Object localObject = ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(2131558513, null);
    ((View)localObject).setPadding(1, 1, 1, 1);
    o((View)localObject);
    l(-1, getContext().getText(17039370), new a());
    l(-2, getContext().getText(17039360), null);
    this.c = ((TextView)((View)localObject).findViewById(2131363030));
    this.d = ((NumberPicker)((View)localObject).findViewById(2131362910));
    this.e = ((NumberPicker)((View)localObject).findViewById(2131363490));
    this.f = ((TextView)((View)localObject).findViewById(2131363373));
    localObject = w();
    this.e.setMinValue(0);
    this.e.setMaxValue(localObject.length - 1);
    this.e.setDisplayedValues((String[])localObject);
    this.e.setValue(v(paramInt1));
    this.e.setWrapSelectorWheel(true);
    this.e.setOnValueChangedListener(new b());
    this.d.setOnValueChangedListener(new c());
    y(paramInt1, paramInt2);
    z();
  }
  
  private void y(int paramInt1, int paramInt2)
  {
    if (paramInt1 != 1)
    {
      if (paramInt1 != 2)
      {
        if (paramInt1 != 3) {
          paramInt1 = 12;
        } else {
          paramInt1 = 30;
        }
      }
      else {
        paramInt1 = 24;
      }
    }
    else {
      paramInt1 = 60;
    }
    String[] arrayOfString = new String[paramInt1];
    int i = 0;
    int k;
    for (int j = 0; j < paramInt1; j = k)
    {
      k = j + 1;
      arrayOfString[j] = String.valueOf(k);
    }
    this.d.setDisplayedValues(null);
    this.d.setMinValue(0);
    this.d.setMaxValue(paramInt1 - 1);
    NumberPicker localNumberPicker = this.d;
    paramInt1 = i;
    if (paramInt2 > 0) {
      paramInt1 = paramInt2 - 1;
    }
    localNumberPicker.setValue(paramInt1);
    this.d.setDisplayedValues(arrayOfString);
    this.d.setWrapSelectorWheel(true);
  }
  
  private void z()
  {
    int i = this.e.getValue();
    Object localObject = this.g;
    if (i < localObject.length)
    {
      i = localObject[this.e.getValue()].intValue();
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 3) {
            localObject = "";
          } else {
            localObject = getContext().getResources().getQuantityString(2131755008, this.d.getValue() + 1, new Object[] { Integer.valueOf(this.d.getValue() + 1) });
          }
        }
        else {
          localObject = getContext().getResources().getQuantityString(2131755013, this.d.getValue() + 1, new Object[] { Integer.valueOf(this.d.getValue() + 1) });
        }
      }
      else {
        localObject = getContext().getResources().getQuantityString(2131755014, this.d.getValue() + 1, new Object[] { Integer.valueOf(this.d.getValue() + 1) });
      }
      this.c.setText((CharSequence)localObject);
    }
  }
  
  public void setTitle(int paramInt)
  {
    this.f.setText(paramInt);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.f.setText(paramCharSequence);
  }
  
  public void show()
  {
    super.show();
    e(-1).setOnClickListener(new d());
  }
  
  class a
    implements DialogInterface.OnClickListener
  {
    a() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      if (a.p(a.this) != null)
      {
        int i = a.q(a.this)[a.r(a.this).getValue()].intValue();
        int j = a.s(a.this).getValue() + 1;
        if (i != 1)
        {
          if (i != 2)
          {
            if (i != 3) {
              paramInt = 0;
            } else {
              paramInt = j * 1440;
            }
          }
          else {
            paramInt = j * 60;
          }
        }
        else {
          paramInt = j;
        }
        a.p(a.this).a(i, j, paramInt);
      }
    }
  }
  
  class b
    implements NumberPicker.OnValueChangeListener
  {
    b() {}
    
    public void onValueChange(NumberPicker paramNumberPicker, int paramInt1, int paramInt2)
    {
      paramNumberPicker = a.this;
      a.t(paramNumberPicker, a.q(paramNumberPicker)[paramInt2].intValue(), 0);
      a.u(a.this);
    }
  }
  
  class c
    implements NumberPicker.OnValueChangeListener
  {
    c() {}
    
    public void onValueChange(NumberPicker paramNumberPicker, int paramInt1, int paramInt2)
    {
      a.u(a.this);
    }
  }
  
  class d
    implements View.OnClickListener
  {
    d() {}
    
    public void onClick(View paramView)
    {
      if (a.p(a.this) != null)
      {
        int i = a.q(a.this)[a.r(a.this).getValue()].intValue();
        int j = a.s(a.this).getValue() + 1;
        int k;
        if (i != 1)
        {
          if (i != 2)
          {
            if (i != 3) {
              k = 0;
            } else {
              k = j * 1440;
            }
          }
          else {
            k = j * 60;
          }
        }
        else {
          k = j;
        }
        if (a.p(a.this).a(i, j, k))
        {
          a.this.dismiss();
        }
        else
        {
          Context localContext = a.this.getContext().getApplicationContext();
          paramView = new StringBuilder();
          paramView.append(a.s(a.this).getValue() + 1);
          paramView.append("");
          paramView.append(a.r(a.this).getDisplayedValues()[a.r(a.this).getValue()]);
          t0.g(localContext, 2131886491, new Object[] { paramView.toString() });
        }
      }
    }
  }
  
  public static abstract interface e
  {
    public abstract boolean a(int paramInt1, int paramInt2, int paramInt3);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h4.a
 * JD-Core Version:    0.7.0.1
 */