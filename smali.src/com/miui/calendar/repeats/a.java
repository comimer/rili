package com.miui.calendar.repeats;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsSpinner;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.RadioButton;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.d;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.z;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import miuix.appcompat.app.l.b;
import miuix.appcompat.widget.Spinner;
import miuix.pickerwidget.widget.NumberPicker;
import miuix.pickerwidget.widget.NumberPicker.OnValueChangeListener;
import miuix.slidingwidget.widget.SlidingButton;

public class a
  extends Fragment
{
  private RadioButton D;
  private View E;
  private ViewGroup F;
  private ViewGroup G;
  private TextView H;
  private SlidingButton I;
  private RepeatSchema J;
  private boolean K;
  private int[] a;
  private int[] b;
  private int[] c;
  private r0 d = new r0();
  private String[] e;
  private String[] f;
  private String[] g;
  private String[] h;
  private String[] i;
  private int j;
  private int k;
  private ViewGroup l;
  private ViewGroup m;
  private Spinner n;
  private Spinner o;
  private Dialog p;
  private Dialog q;
  private Dialog r;
  private TextView v;
  private ViewGroup w;
  private ViewGroup x;
  private ViewGroup y;
  private RadioButton z;
  
  private void H()
  {
    Object localObject = new ArrayAdapter(getActivity(), 2131558552, this.e);
    ((ArrayAdapter)localObject).setDropDownViewResource(2131558736);
    this.n.setPrompt(getString(2131887379));
    this.n.setAdapter((SpinnerAdapter)localObject);
    Spinner localSpinner = this.n;
    localObject = this.J;
    int i1;
    if (localObject != null) {
      i1 = ((RepeatSchema)localObject).frequency;
    } else {
      i1 = 0;
    }
    localSpinner.setSelection(i1);
    this.n.setClickable(false);
    this.n.setLongClickable(false);
  }
  
  private void I()
  {
    Object localObject = new String[99];
    int i2;
    for (int i1 = 0; i1 < 99; i1 = i2)
    {
      d locald = getActivity();
      i2 = i1 + 1;
      localObject[i1] = b.d(locald, i2, this.n.getSelectedItemPosition());
    }
    localObject = new ArrayAdapter(getActivity(), 2131558552, (Object[])localObject);
    ((ArrayAdapter)localObject).setDropDownViewResource(2131558736);
    this.o.setAdapter((SpinnerAdapter)localObject);
    this.o.setSelection(0);
    this.o.setClickable(false);
    this.o.setLongClickable(false);
  }
  
  private void J()
  {
    this.v.setText(getString(2131887363, new Object[] { b.f(getActivity(), N(), this.d) }));
  }
  
  private boolean K(int paramInt)
  {
    boolean bool = false;
    int i1 = 0;
    int i3;
    for (int i2 = i1; i1 < 31; i2 = i3)
    {
      i3 = i2;
      if (((Button)this.x.findViewById(this.b[i1])).isSelected())
      {
        i2++;
        i3 = i2;
        if (i2 > 1) {
          return true;
        }
      }
      i1++;
    }
    if ((i2 != 1) || (!this.x.findViewById(this.b[paramInt]).isSelected())) {
      bool = true;
    }
    return bool;
  }
  
  private boolean L(int paramInt)
  {
    boolean bool = false;
    int i1 = 0;
    int i3;
    for (int i2 = i1; i1 < 12; i2 = i3)
    {
      i3 = i2;
      if (((Button)this.y.findViewById(this.c[i1])).isSelected())
      {
        i2++;
        i3 = i2;
        if (i2 > 1) {
          return true;
        }
      }
      i1++;
    }
    if ((i2 != 1) || (!this.y.findViewById(this.c[paramInt]).isSelected())) {
      bool = true;
    }
    return bool;
  }
  
  private boolean M(int paramInt)
  {
    boolean bool = false;
    int i1 = 0;
    int i3;
    for (int i2 = i1; i1 < 7; i2 = i3)
    {
      i3 = i2;
      if (((Button)this.w.findViewById(this.a[i1])).isSelected())
      {
        i2++;
        i3 = i2;
        if (i2 > 1) {
          return true;
        }
      }
      i1++;
    }
    if ((i2 != 1) || (!this.w.findViewById(this.a[paramInt]).isSelected())) {
      bool = true;
    }
    return bool;
  }
  
  private void O()
  {
    if (this.J != null)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("fillUiFromSchema(): ");
      ((StringBuilder)localObject).append(RepeatSchema.toJsonString(this.J));
      z.a("Cal:D:NewCustomRepeatFragment", ((StringBuilder)localObject).toString());
      this.n.setSelection(this.J.frequency);
      this.K = true;
      localObject = this.J;
      int i1 = ((RepeatSchema)localObject).frequency;
      int i2 = 0;
      int i3;
      if (1 == i1)
      {
        localObject = ((RepeatSchema)localObject).weekDays;
        if (localObject != null)
        {
          i1 = localObject.length;
          while (i2 < i1)
          {
            i3 = localObject[i2].intValue();
            ((Button)this.w.findViewById(this.a[b.n(getActivity(), i3)])).performClick();
            i2++;
          }
        }
      }
      else if (2 == i1)
      {
        if (((RepeatSchema)localObject).repeatsOnWeek())
        {
          this.D.setSelected(true);
          this.D.setChecked(true);
          this.j = this.J.week[0].intValue();
          this.k = b.p(getActivity(), this.J.week[1].intValue());
          i0(true);
        }
        else
        {
          localObject = this.J.days;
          i1 = localObject.length;
          for (i2 = 0; i2 < i1; i2++)
          {
            i3 = localObject[i2].intValue();
            if (i3 <= 0)
            {
              this.z.setChecked(false);
              return;
            }
            this.z.setChecked(true);
            ((Button)this.x.findViewById(this.b[(i3 - 1)])).performClick();
          }
        }
      }
      else if (3 == i1)
      {
        localObject = ((RepeatSchema)localObject).months;
        if (localObject != null)
        {
          i1 = localObject.length;
          for (i2 = 0; i2 < i1; i2++)
          {
            i3 = localObject[i2].intValue();
            ((Button)this.y.findViewById(this.c[(i3 - 1)])).performClick();
          }
        }
        if (this.J.repeatsOnWeek())
        {
          this.I.setChecked(true);
          this.I.setSelected(true);
          this.j = this.J.week[0].intValue();
          this.k = b.p(getActivity(), this.J.week[1].intValue());
          i0(true);
        }
        else
        {
          this.I.setChecked(false);
        }
      }
    }
  }
  
  private String[] P(String[] paramArrayOfString)
  {
    if (Q(paramArrayOfString[0].charAt(0)))
    {
      int i1 = paramArrayOfString.length;
      String[] arrayOfString = new String[i1];
      for (int i2 = 0; i2 < i1; i2++)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(f0(paramArrayOfString[i2].charAt(0)));
        localStringBuilder.append(paramArrayOfString[i2].substring(1));
        arrayOfString[i2] = localStringBuilder.toString();
      }
      return arrayOfString;
    }
    return paramArrayOfString;
  }
  
  private boolean Q(char paramChar)
  {
    boolean bool;
    if (('a' <= paramChar) && (paramChar <= 'z')) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void R()
  {
    b.l(getActivity());
    this.e = b.d;
    this.f = b.f;
    this.g = b.g;
    this.h = b.h;
    this.i = b.i;
    this.a = b.a;
    this.b = b.b;
    this.c = b.c;
  }
  
  private void S()
  {
    Object localObject = getActivity().getIntent();
    this.d.D(((Intent)localObject).getLongExtra("extra_event_time", System.currentTimeMillis()));
    localObject = ((Intent)localObject).getStringExtra("extra_custom_repeat_json");
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      this.J = RepeatSchema.fromJsonString((String)localObject);
    }
  }
  
  private void T()
  {
    this.z.setChecked(true);
    this.D.setChecked(false);
    this.D.setSelected(false);
  }
  
  private void U()
  {
    this.I.setChecked(false);
    this.I.setSelected(false);
  }
  
  private void V()
  {
    int i1 = 0;
    int i3;
    for (int i2 = 0;; i2++)
    {
      i3 = i1;
      if (i2 >= 12) {
        break;
      }
      if (((Button)this.y.findViewById(this.c[i2])).isSelected())
      {
        i3 = 1;
        break;
      }
    }
    if (i3 == 0)
    {
      i3 = this.d.p();
      ((Button)this.y.findViewById(this.c[i3])).performClick();
    }
  }
  
  private void W()
  {
    int i1 = 0;
    int i3;
    for (int i2 = 0;; i2++)
    {
      i3 = i1;
      if (i2 >= 31) {
        break;
      }
      if (((Button)this.x.findViewById(this.b[i2])).isSelected())
      {
        i3 = 1;
        break;
      }
    }
    if (i3 == 0)
    {
      i2 = this.d.q();
      ((Button)this.x.findViewById(this.b[(i2 - 1)])).performClick();
    }
  }
  
  private void X()
  {
    int i1 = 0;
    for (int i2 = 0; i2 < 7; i2++) {
      if (((Button)this.w.findViewById(this.a[i2])).isSelected())
      {
        i2 = 1;
        break label45;
      }
    }
    i2 = 0;
    label45:
    if (i2 == 0)
    {
      int i3 = Utils.C(getActivity()) - 1;
      i2 = this.d.t();
      if (1 == i3)
      {
        i1 = i2 - 1;
        i2 = i1;
        if (i1 < 0) {
          i2 = i1 + 7;
        }
      }
      else if (6 == i3)
      {
        if (6 == i2) {
          i2 = i1;
        } else {
          i2++;
        }
      }
      ((Button)this.w.findViewById(this.a[i2])).performClick();
    }
  }
  
  private void Y()
  {
    this.l.setOnClickListener(new i());
    this.n.setOnItemSelectedListener(new j());
    this.m.setOnClickListener(new k());
    this.o.setOnItemSelectedListener(new l());
    this.z.setOnCheckedChangeListener(new m());
    this.z.setOnClickListener(new n());
    this.D.setOnCheckedChangeListener(new o());
    this.D.setOnClickListener(new p());
    this.G.setOnClickListener(new q());
    this.I.setOnCheckedChangeListener(new a());
  }
  
  private void Z()
  {
    int i2;
    for (int i1 = 0; i1 < 31; i1 = i2)
    {
      final Button localButton = (Button)this.x.findViewById(this.b[i1]);
      i2 = i1 + 1;
      localButton.setText(String.valueOf(i2));
      localButton.setTag(Integer.valueOf(i1));
      localButton.setOnClickListener(new c(localButton));
    }
  }
  
  private void a0()
  {
    for (int i1 = 0; i1 < 7; i1++)
    {
      final Button localButton = (Button)this.w.findViewById(this.a[i1]);
      localButton.setText(this.f[i1]);
      localButton.setTag(Integer.valueOf(i1));
      localButton.setOnClickListener(new b(localButton));
    }
  }
  
  private void b0()
  {
    for (int i1 = 0; i1 < 12; i1++)
    {
      final Button localButton = (Button)this.y.findViewById(this.c[i1]);
      localButton.setText(this.g[i1]);
      localButton.setTag(Integer.valueOf(i1));
      localButton.setOnClickListener(new d(localButton));
    }
  }
  
  private void c0()
  {
    Object localObject1 = this.p;
    if (localObject1 != null) {
      ((Dialog)localObject1).dismiss();
    }
    View localView = getActivity().getLayoutInflater().inflate(2131558519, null);
    localObject1 = (NumberPicker)localView.findViewById(2131362910);
    Object localObject2 = P(this.e);
    ((NumberPicker)localObject1).setMinValue(0);
    ((NumberPicker)localObject1).setMaxValue(localObject2.length - 1);
    ((NumberPicker)localObject1).setValue(this.n.getSelectedItemPosition());
    ((NumberPicker)localObject1).setDisplayedValues((String[])localObject2);
    localObject2 = new l.b(getActivity());
    ((l.b)localObject2).I(localView);
    ((l.b)localObject2).G(getString(2131887379));
    ((l.b)localObject2).z(17039370, new e((NumberPicker)localObject1));
    ((l.b)localObject2).r(17039360, null);
    localObject1 = ((l.b)localObject2).a();
    this.p = ((Dialog)localObject1);
    ((Dialog)localObject1).show();
  }
  
  private void d0()
  {
    Object localObject = this.q;
    if (localObject != null) {
      ((Dialog)localObject).dismiss();
    }
    View localView = getActivity().getLayoutInflater().inflate(2131558519, null);
    final NumberPicker localNumberPicker = (NumberPicker)localView.findViewById(2131362910);
    localNumberPicker.setMinValue(1);
    localNumberPicker.setMaxValue(99);
    localNumberPicker.setValue(this.o.getSelectedItemPosition() + 1);
    localNumberPicker.setWrapSelectorWheel(true);
    localNumberPicker.setLabel(this.n.getSelectedItem().toString());
    localNumberPicker.setOnValueChangedListener(new r(this));
    localObject = new l.b(getActivity());
    ((l.b)localObject).I(localView);
    ((l.b)localObject).G(getString(2131887369, new Object[] { b.d(getActivity(), this.o.getSelectedItemPosition() + 1, this.n.getSelectedItemPosition()) }));
    ((l.b)localObject).z(17039370, new f(localNumberPicker));
    ((l.b)localObject).r(17039360, null);
    localObject = ((l.b)localObject).a();
    this.q = ((Dialog)localObject);
    ((Dialog)localObject).show();
  }
  
  private void e0()
  {
    if (!isResumed()) {
      return;
    }
    Object localObject1 = this.r;
    if (localObject1 != null) {
      ((Dialog)localObject1).dismiss();
    }
    View localView = getActivity().getLayoutInflater().inflate(2131558522, null);
    localObject1 = (NumberPicker)localView.findViewById(2131362913);
    final NumberPicker localNumberPicker = (NumberPicker)localView.findViewById(2131362915);
    Object localObject2 = P(this.h);
    ((NumberPicker)localObject1).setMinValue(0);
    ((NumberPicker)localObject1).setMaxValue(localObject2.length - 1);
    ((NumberPicker)localObject1).setDisplayedValues((String[])localObject2);
    ((NumberPicker)localObject1).setValue(this.j);
    ((NumberPicker)localObject1).setWrapSelectorWheel(true);
    localNumberPicker.setMinValue(0);
    localNumberPicker.setMaxValue(this.i.length - 1);
    localNumberPicker.setDisplayedValues(this.i);
    localNumberPicker.setValue(this.k);
    localNumberPicker.setWrapSelectorWheel(true);
    localObject2 = new l.b(getActivity());
    ((l.b)localObject2).I(localView);
    ((l.b)localObject2).G(getString(2131887381));
    ((l.b)localObject2).z(17039370, new g((NumberPicker)localObject1, localNumberPicker));
    ((l.b)localObject2).r(17039360, new h());
    ((l.b)localObject2).d(false);
    localObject1 = ((l.b)localObject2).a();
    this.r = ((Dialog)localObject1);
    ((Dialog)localObject1).show();
  }
  
  private char f0(char paramChar)
  {
    return (char)(paramChar - ' ');
  }
  
  private void g0(Button paramButton)
  {
    paramButton.setSelected(paramButton.isSelected() ^ true);
    if (paramButton.isSelected()) {
      paramButton.setTextColor(getResources().getColor(2131100895));
    } else {
      paramButton.setTextColor(getResources().getColor(2131100893));
    }
    J();
  }
  
  private void h0()
  {
    int i1 = this.n.getSelectedItemPosition();
    if (1 == i1)
    {
      this.w.setVisibility(0);
      this.x.setVisibility(8);
      this.y.setVisibility(8);
      T();
      U();
    }
    else if (2 == i1)
    {
      this.w.setVisibility(8);
      this.x.setVisibility(0);
      this.y.setVisibility(8);
      U();
    }
    else if (3 == i1)
    {
      this.w.setVisibility(8);
      this.x.setVisibility(8);
      this.y.setVisibility(0);
      T();
    }
    else
    {
      this.w.setVisibility(8);
      this.x.setVisibility(8);
      this.y.setVisibility(8);
      T();
      U();
    }
  }
  
  private void i0(boolean paramBoolean)
  {
    String str = getString(2131887381);
    Object localObject1;
    if (paramBoolean)
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(getString(2131887381));
      ((StringBuilder)localObject1).append(getString(2131887366, new Object[] { b.g(getActivity(), N()) }));
      localObject1 = ((StringBuilder)localObject1).toString();
    }
    else
    {
      localObject1 = str;
    }
    Object localObject2 = this.D;
    if ((((View)localObject2).isSelected()) && (paramBoolean)) {
      localObject3 = localObject1;
    } else {
      localObject3 = str;
    }
    ((TextView)localObject2).setText((CharSequence)localObject3);
    localObject2 = this.H;
    Object localObject3 = str;
    if (this.I.isSelected())
    {
      localObject3 = str;
      if (paramBoolean) {
        localObject3 = localObject1;
      }
    }
    ((TextView)localObject2).setText((CharSequence)localObject3);
  }
  
  public RepeatSchema N()
  {
    int i1 = this.n.getSelectedItemPosition();
    int i2 = this.o.getSelectedItemPosition() + 1;
    Object localObject;
    if (i1 == 0)
    {
      localObject = new RepeatSchema(i1, i2, null, null, null, null);
    }
    else
    {
      int i3;
      if (1 == i1)
      {
        localObject = new ArrayList(0);
        for (i3 = 0; i3 < 7; i3++) {
          if (((Button)this.w.findViewById(this.a[i3])).isSelected()) {
            ((List)localObject).add(Integer.valueOf(b.a(getActivity(), i3)));
          }
        }
        localObject = new RepeatSchema(i1, i2, (Integer[])((List)localObject).toArray(new Integer[0]), null, null, null);
      }
      else
      {
        if (2 != i1) {
          break label293;
        }
        if (!this.D.isChecked())
        {
          localObject = new ArrayList(0);
          for (i3 = 0; i3 < 31; i3++) {
            if (((Button)this.x.findViewById(this.b[i3])).isSelected()) {
              ((List)localObject).add(Integer.valueOf(i3 + 1));
            }
          }
          localObject = new RepeatSchema(i1, i2, null, (Integer[])((List)localObject).toArray(new Integer[0]), null, null);
        }
        else
        {
          localObject = new RepeatSchema(i1, i2, null, null, null, new Integer[] { Integer.valueOf(this.j), Integer.valueOf(b.o(getActivity(), this.k)) });
        }
      }
      for (;;)
      {
        break;
        label293:
        if (3 == i1)
        {
          localObject = new ArrayList(0);
          for (i3 = 0; i3 < 12; i3++) {
            if (((Button)this.y.findViewById(this.c[i3])).isSelected()) {
              ((List)localObject).add(Integer.valueOf(i3 + 1));
            }
          }
          if (!this.I.isChecked())
          {
            i3 = this.d.q();
            localObject = (Integer[])((List)localObject).toArray(new Integer[0]);
            localObject = new RepeatSchema(i1, i2, null, new Integer[] { Integer.valueOf(i3) }, (Integer[])localObject, null);
          }
          else
          {
            localObject = new RepeatSchema(i1, i2, null, null, (Integer[])((List)localObject).toArray(new Integer[0]), new Integer[] { Integer.valueOf(this.j), Integer.valueOf(b.o(getActivity(), this.k)) });
          }
        }
        else
        {
          localObject = null;
        }
      }
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("fillSchemaFromUi(): ");
    localStringBuilder.append(RepeatSchema.toJsonString((RepeatSchema)localObject));
    z.a("Cal:D:NewCustomRepeatFragment", localStringBuilder.toString());
    return localObject;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2131558516, null);
    this.l = ((ViewGroup)paramLayoutInflater.findViewById(2131362484));
    this.m = ((ViewGroup)paramLayoutInflater.findViewById(2131362625));
    this.n = ((Spinner)paramLayoutInflater.findViewById(2131362485));
    this.o = ((Spinner)paramLayoutInflater.findViewById(2131362626));
    this.v = ((TextView)paramLayoutInflater.findViewById(2131363043));
    this.w = ((ViewGroup)paramLayoutInflater.findViewById(2131363551));
    this.x = ((ViewGroup)paramLayoutInflater.findViewById(2131362806));
    this.y = ((ViewGroup)paramLayoutInflater.findViewById(2131363600));
    this.z = ((RadioButton)paramLayoutInflater.findViewById(2131362996));
    this.D = ((RadioButton)paramLayoutInflater.findViewById(2131362997));
    this.E = paramLayoutInflater.findViewById(2131362808);
    this.F = ((ViewGroup)paramLayoutInflater.findViewById(2131362816));
    this.G = ((ViewGroup)paramLayoutInflater.findViewById(2131363553));
    this.H = ((TextView)paramLayoutInflater.findViewById(2131363604));
    this.I = ((SlidingButton)paramLayoutInflater.findViewById(2131363554));
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    Dialog localDialog = this.p;
    if (localDialog != null) {
      localDialog.dismiss();
    }
    localDialog = this.q;
    if (localDialog != null) {
      localDialog.dismiss();
    }
    localDialog = this.r;
    if (localDialog != null) {
      localDialog.dismiss();
    }
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    S();
    Y();
    R();
    H();
    I();
    a0();
    Z();
    b0();
    O();
    J();
    X();
    W();
    V();
  }
  
  class a
    implements CompoundButton.OnCheckedChangeListener
  {
    a() {}
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      if (paramBoolean)
      {
        a.l(a.this);
      }
      else
      {
        a.o(a.this).setSelected(false);
        a.z(a.this);
      }
      a.p(a.this).setEnabled(paramBoolean);
      a.n(a.this, paramBoolean);
    }
  }
  
  class b
    implements View.OnClickListener
  {
    b(Button paramButton) {}
    
    public void onClick(View paramView)
    {
      if (a.q(a.this, Integer.valueOf(paramView.getTag().toString()).intValue())) {
        a.r(a.this, localButton);
      }
    }
  }
  
  class c
    implements View.OnClickListener
  {
    c(Button paramButton) {}
    
    public void onClick(View paramView)
    {
      if (a.s(a.this, Integer.valueOf(paramView.getTag().toString()).intValue())) {
        a.r(a.this, localButton);
      }
    }
  }
  
  class d
    implements View.OnClickListener
  {
    d(Button paramButton) {}
    
    public void onClick(View paramView)
    {
      if (a.t(a.this, Integer.valueOf(paramView.getTag().toString()).intValue())) {
        a.r(a.this, localButton);
      }
    }
  }
  
  class e
    implements DialogInterface.OnClickListener
  {
    e(NumberPicker paramNumberPicker) {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      a.i(a.this).setSelection(this.a.getValue());
    }
  }
  
  class f
    implements DialogInterface.OnClickListener
  {
    f(NumberPicker paramNumberPicker) {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      a.E(a.this).setSelection(localNumberPicker.getValue() - 1);
    }
  }
  
  class g
    implements DialogInterface.OnClickListener
  {
    g(NumberPicker paramNumberPicker1, NumberPicker paramNumberPicker2) {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      paramInt = a.i(a.this).getSelectedItemPosition();
      if (2 == paramInt) {
        a.m(a.this).setSelected(true);
      } else if (3 == paramInt) {
        a.o(a.this).setSelected(true);
      }
      a.v(a.this, this.a.getValue());
      a.w(a.this, localNumberPicker.getValue());
      a.z(a.this);
      a.n(a.this, true);
    }
  }
  
  class h
    implements DialogInterface.OnClickListener
  {
    h() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      paramInt = a.i(a.this).getSelectedItemPosition();
      if (2 == paramInt)
      {
        if (!a.m(a.this).isSelected()) {
          a.x(a.this).setChecked(true);
        }
      }
      else if ((3 == paramInt) && (!a.o(a.this).isSelected())) {
        a.o(a.this).setChecked(false);
      }
    }
  }
  
  class i
    implements View.OnClickListener
  {
    i() {}
    
    public void onClick(View paramView)
    {
      if (a.i(a.this).getAdapter() == null) {
        return;
      }
      a.j(a.this);
    }
  }
  
  class j
    implements AdapterView.OnItemSelectedListener
  {
    j() {}
    
    public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      a.u(a.this);
      a.z(a.this);
      a.A(a.this);
      if (a.B(a.this))
      {
        a.C(a.this, false);
        a.E(a.this).setSelection(a.D(a.this).interval - 1);
      }
    }
    
    public void onNothingSelected(AdapterView<?> paramAdapterView) {}
  }
  
  class k
    implements View.OnClickListener
  {
    k() {}
    
    public void onClick(View paramView)
    {
      a.F(a.this);
    }
  }
  
  class l
    implements AdapterView.OnItemSelectedListener
  {
    l() {}
    
    public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      a.z(a.this);
    }
    
    public void onNothingSelected(AdapterView<?> paramAdapterView) {}
  }
  
  class m
    implements CompoundButton.OnCheckedChangeListener
  {
    m() {}
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      paramCompoundButton = a.G(a.this);
      int i = 0;
      int j;
      if (paramBoolean) {
        j = 0;
      } else {
        j = 8;
      }
      paramCompoundButton.setVisibility(j);
      paramCompoundButton = a.k(a.this);
      if (paramBoolean) {
        j = i;
      } else {
        j = 8;
      }
      paramCompoundButton.setVisibility(j);
    }
  }
  
  class n
    implements View.OnClickListener
  {
    n() {}
    
    public void onClick(View paramView)
    {
      a.z(a.this);
    }
  }
  
  class o
    implements CompoundButton.OnCheckedChangeListener
  {
    o() {}
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      if (paramBoolean) {
        a.l(a.this);
      } else {
        a.m(a.this).setSelected(false);
      }
      a.n(a.this, paramBoolean);
    }
  }
  
  class p
    implements View.OnClickListener
  {
    p() {}
    
    public void onClick(View paramView)
    {
      a.l(a.this);
    }
  }
  
  class q
    implements View.OnClickListener
  {
    q() {}
    
    public void onClick(View paramView)
    {
      if (a.o(a.this).isChecked()) {
        a.l(a.this);
      }
    }
  }
  
  private static class r
    implements NumberPicker.OnValueChangeListener
  {
    private WeakReference<a> a;
    
    public r(a parama)
    {
      this.a = new WeakReference(parama);
    }
    
    public void onValueChange(NumberPicker paramNumberPicker, int paramInt1, int paramInt2)
    {
      a locala = (a)this.a.get();
      if (locala == null) {
        return;
      }
      a.y(locala).setTitle(locala.getString(2131887369, new Object[] { b.d(locala.getActivity(), paramNumberPicker.getValue(), a.i(locala).getSelectedItemPosition()) }));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.repeats.a
 * JD-Core Version:    0.7.0.1
 */