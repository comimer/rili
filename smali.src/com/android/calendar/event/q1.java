package com.android.calendar.event;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Trace;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.style.ForegroundColorSpan;
import android.text.util.Rfc822Token;
import android.text.util.Rfc822Tokenizer;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityRecord;
import android.widget.AbsListView;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.MultiAutoCompleteTextView;
import android.widget.RadioButton;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import androidx.fragment.app.Fragment;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.Attendee;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.common.event.schema.Reminder;
import com.android.calendar.common.y;
import com.android.ex.chips.RecipientEditTextView;
import com.miui.calendar.ai.TimeParser;
import com.miui.calendar.repeats.RepeatActivity;
import com.miui.calendar.repeats.RepeatEndActivity;
import com.miui.calendar.repeats.RepeatEndSchema;
import com.miui.calendar.repeats.RepeatSchema;
import com.miui.calendar.util.a0;
import com.miui.calendar.util.b0;
import com.miui.calendar.util.calendarcommon2.EventRecurrence;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.h;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.view.BetterScrollView;
import com.miui.calendar.view.MultiRadioGroup;
import com.miui.calendar.view.d0;
import h4.c.d;
import h4.e;
import h4.e.d;
import java.time.Instant;
import java.time.Month;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.chrono.ChronoZonedDateTime;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Formatter;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import miuix.appcompat.app.l.b;
import miuix.slidingwidget.widget.SlidingButton;

public class q1
  implements AdapterView.OnItemSelectedListener, DialogInterface.OnClickListener
{
  private static StringBuilder N0 = new StringBuilder(50);
  private static Formatter O0 = new Formatter(N0, Locale.getDefault());
  private static InputFilter[] P0 = { new g2.a() };
  private String A0;
  private final String B0;
  private boolean C0 = false;
  miuix.appcompat.widget.Spinner D;
  private int D0 = 0;
  MultiRadioGroup E;
  private int E0 = 0;
  EditText F;
  private EventRecurrence F0 = new EventRecurrence();
  LinearLayout G;
  private ArrayList<LinearLayout> G0 = new ArrayList(0);
  TextView H;
  private Cursor H0;
  TextView I;
  private int I0;
  TextView J;
  private String J0 = "";
  TextView K;
  private t K0 = null;
  LinearLayout L;
  private String L0;
  TextView M;
  private Runnable M0 = new p();
  LinearLayout N;
  MultiAutoCompleteTextView O;
  View P;
  View Q;
  View R;
  View S;
  View T;
  View U;
  View V;
  LinearLayout W;
  SlidingButton X;
  private e Y;
  private h4.c Z;
  HashSet<Integer> a = new HashSet();
  private int[] a0 = new int[4];
  ArrayList<View> b = new ArrayList();
  private int[] b0 = new int[4];
  ArrayList<View> c = new ArrayList();
  private miuix.appcompat.app.l c0;
  ArrayList<View> d = new ArrayList();
  private Context d0;
  TextView e;
  private NewBaseEditFragment e0;
  BetterScrollView f;
  private View f0;
  LinearLayout g;
  private Event g0;
  TextView h;
  private String h0;
  LinearLayout i;
  private com.android.ex.chips.a i0;
  TextView j;
  private g2.b j0;
  TextView k;
  private com.android.calendar.common.l k0;
  View l;
  private r l0;
  View m;
  private ArrayList<Integer> m0 = new ArrayList(0);
  TextView n;
  private RepeatSchema n0;
  TextView o;
  private RepeatEndSchema o0;
  TextView p;
  private boolean p0;
  TextView q;
  private Handler q0;
  LinearLayout r;
  private boolean r0;
  private r0 s0;
  private r0 t0;
  private ZonedDateTime u0;
  SlidingButton v;
  private ZonedDateTime v0;
  miuix.appcompat.widget.Spinner w;
  private ZonedDateTime w0;
  LinearLayout x;
  private ZonedDateTime x0;
  miuix.appcompat.widget.Spinner y;
  private long y0 = -1L;
  LinearLayout z;
  private long z0 = -1L;
  
  public q1(NewBaseEditFragment paramNewBaseEditFragment, View paramView)
  {
    Trace.beginSection("NewEditEventView");
    this.e0 = paramNewBaseEditFragment;
    this.d0 = paramNewBaseEditFragment.getActivity();
    this.f0 = paramView;
    if (this.q0 == null) {
      this.q0 = new Handler();
    }
    this.f0.addOnAttachStateChangeListener(new l());
    this.I0 = this.d0.getResources().getColor(2131100943);
    this.e = ((TextView)paramView.findViewById(2131362706));
    this.f = ((BetterScrollView)paramView.findViewById(2131363095));
    this.F = ((EditText)paramView.findViewById(2131363373));
    this.H = ((TextView)paramView.findViewById(2131362714));
    this.G = ((LinearLayout)paramView.findViewById(2131362716));
    this.I = ((TextView)paramView.findViewById(2131362338));
    this.g = ((LinearLayout)paramView.findViewById(2131362486));
    this.h = ((TextView)paramView.findViewById(2131363238));
    this.i = ((LinearLayout)paramView.findViewById(2131363393));
    this.j = ((TextView)paramView.findViewById(2131362408));
    this.J = ((TextView)this.f0.findViewById(2131363558));
    this.K = ((TextView)this.f0.findViewById(2131363370));
    this.k = ((TextView)paramView.findViewById(2131363368));
    this.l = paramView.findViewById(2131363369);
    this.m = paramView.findViewById(2131363371);
    this.n = ((TextView)paramView.findViewById(2131363246));
    this.o = ((TextView)paramView.findViewById(2131363239));
    this.p = ((TextView)paramView.findViewById(2131362413));
    this.q = ((TextView)paramView.findViewById(2131362409));
    this.r = ((LinearLayout)paramView.findViewById(2131361945));
    this.v = ((SlidingButton)paramView.findViewById(2131362630));
    this.w = ((miuix.appcompat.widget.Spinner)paramView.findViewById(2131362099));
    this.x = ((LinearLayout)paramView.findViewById(2131363049));
    paramNewBaseEditFragment = (miuix.appcompat.widget.Spinner)paramView.findViewById(2131363046);
    this.y = paramNewBaseEditFragment;
    paramNewBaseEditFragment.setEnabled(false);
    this.y.setClickable(false);
    this.z = ((LinearLayout)paramView.findViewById(2131363048));
    this.D = ((miuix.appcompat.widget.Spinner)paramView.findViewById(2131363047));
    this.P = paramView.findViewById(2131362097);
    this.Q = paramView.findViewById(2131362095);
    this.S = paramView.findViewById(2131363055);
    this.T = paramView.findViewById(2131362929);
    this.R = paramView.findViewById(2131362341);
    this.U = paramView.findViewById(2131362487);
    this.V = paramView.findViewById(2131363394);
    this.N = ((LinearLayout)paramView.findViewById(2131361998));
    this.O = ((MultiAutoCompleteTextView)paramView.findViewById(2131361997));
    this.a.add(Integer.valueOf(2131361945));
    this.a.add(Integer.valueOf(2131362486));
    this.a.add(Integer.valueOf(2131362487));
    this.a.add(Integer.valueOf(2131363393));
    this.a.add(Integer.valueOf(2131363394));
    paramNewBaseEditFragment = this.F;
    paramNewBaseEditFragment.setTag(paramNewBaseEditFragment.getBackground());
    paramNewBaseEditFragment = this.H;
    paramNewBaseEditFragment.setTag(paramNewBaseEditFragment.getBackground());
    paramNewBaseEditFragment = this.I;
    paramNewBaseEditFragment.setTag(paramNewBaseEditFragment.getBackground());
    paramNewBaseEditFragment = this.y;
    paramNewBaseEditFragment.setTag(paramNewBaseEditFragment.getBackground());
    paramNewBaseEditFragment = this.D;
    paramNewBaseEditFragment.setTag(paramNewBaseEditFragment.getBackground());
    paramNewBaseEditFragment = this.O;
    paramNewBaseEditFragment.setTag(paramNewBaseEditFragment.getBackground());
    this.a0[0] = this.H.getPaddingLeft();
    this.a0[1] = this.H.getPaddingTop();
    this.a0[2] = this.H.getPaddingRight();
    this.a0[3] = this.H.getPaddingBottom();
    this.b0[0] = this.y.getPaddingLeft();
    this.b0[1] = this.y.getPaddingTop();
    this.b0[2] = this.y.getPaddingRight();
    this.b0[3] = this.y.getPaddingBottom();
    this.c.add(this.F);
    this.c.add(this.H);
    this.c.add(this.I);
    this.c.add(this.O);
    this.d.add(paramView.findViewById(2131363566));
    this.d.add(paramView.findViewById(2131363371));
    this.b.add(this.r);
    this.b.add(this.g);
    this.b.add(this.i);
    this.b.add(this.l);
    this.b.add(this.U);
    this.b.add(this.V);
    this.E = ((MultiRadioGroup)paramView.findViewById(2131363056));
    this.L = ((LinearLayout)paramView.findViewById(2131363037));
    this.M = ((TextView)paramView.findViewById(2131363035));
    this.A0 = Utils.U(this.d0);
    this.B0 = Utils.U(this.d0);
    this.s0 = new r0(this.A0);
    this.t0 = new r0(this.A0);
    this.j0 = new g2.b(null);
    Y((RecipientEditTextView)this.O);
    u0(null);
    x0.D0(this.d0, this.F);
    this.q0.postDelayed(new m(), this.d0.getResources().getInteger(2131427361));
    this.F.setOnEditorActionListener(new n());
    this.F.addTextChangedListener(new o());
    this.F.setFilters(x0.i(this.d0, 1000, 2131886262));
    this.H.setFilters(x0.i(this.d0, 500, 2131887727));
    this.I.setFilters(x0.i(this.d0, 1000, 2131887726));
    this.W = ((LinearLayout)paramView.findViewById(2131361933));
    this.X = ((SlidingButton)paramView.findViewById(2131362629));
    Trace.endSection();
  }
  
  private void B0(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < this.k0.getCount()))
    {
      y localy = (y)this.k0.getItem(paramInt);
      this.K.setText(localy.toString());
      this.k.setText(localy.toString());
      this.A0 = localy.a;
      this.s0.h().setTimeZone(TimeZone.getTimeZone(this.A0));
      this.s0.y(true);
      this.t0.h().setTimeZone(TimeZone.getTimeZone(this.A0));
      this.t0.y(true);
      this.k0.f(this.A0);
    }
  }
  
  private void C0(CharSequence paramCharSequence, int paramInt)
  {
    this.F.setText(paramCharSequence);
    EditText localEditText = this.F;
    if (paramInt < 0) {
      paramInt = paramCharSequence.length();
    }
    localEditText.setSelection(paramInt);
  }
  
  private void D0(int paramInt)
  {
    if (this.g0 == null)
    {
      z.m("Cal:D:EditEventView", "setViewStates(): model is NULL");
      return;
    }
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("setViewStates(): mode:");
    ((StringBuilder)localObject1).append(paramInt);
    z.g("Cal:D:EditEventView", ((StringBuilder)localObject1).toString());
    int i1 = 8;
    Object localObject2;
    if ((paramInt != 0) && (this.g0.getEx().canModifyEvent()))
    {
      localObject1 = this.d.iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((View)((Iterator)localObject1).next()).setVisibility(8);
      }
      localObject1 = this.b.iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((View)((Iterator)localObject1).next()).setVisibility(0);
      }
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext())
      {
        localObject1 = (View)localIterator.next();
        if ((localObject1 instanceof EditText)) {
          t0((EditText)localObject1, false);
        } else {
          ((View)localObject1).setEnabled(true);
        }
        if (((View)localObject1).getTag() != null)
        {
          ((View)localObject1).setBackgroundDrawable((Drawable)((View)localObject1).getTag());
          localObject2 = this.a0;
          ((View)localObject1).setPaddingRelative(localObject2[0], localObject2[1], localObject2[2], localObject2[3]);
        }
      }
      if (!j.f(this.g0))
      {
        this.Q.setVisibility(0);
        this.P.setVisibility(8);
      }
      else
      {
        this.Q.setVisibility(8);
        this.P.setVisibility(0);
      }
      localObject1 = this.y;
      ((View)localObject1).setBackground((Drawable)((View)localObject1).getTag());
      localObject1 = this.y;
      localObject2 = this.b0;
      ((View)localObject1).setPaddingRelative(localObject2[0], localObject2[1], localObject2[2], localObject2[3]);
      this.D.setBackground((Drawable)this.y.getTag());
      localObject2 = this.D;
      localObject1 = this.b0;
      ((View)localObject2).setPaddingRelative(localObject1[0], localObject1[1], localObject1[2], localObject1[3]);
      if (this.g0.getEx().getOriginalSyncId() == null)
      {
        this.y.setEnabled(true);
        this.D.setEnabled(true);
      }
      else
      {
        this.y.setEnabled(false);
        this.D.setEnabled(false);
      }
      this.L.setVisibility(0);
      this.R.setVisibility(0);
      this.G.setVisibility(0);
      this.x.setVisibility(0);
      if ((this.y.getSelectedItemPosition() != 0) && (this.D0 == 0)) {
        this.z.setVisibility(0);
      }
      this.l.setVisibility(0);
      localObject1 = this.S;
      paramInt = i1;
      if (this.r0) {
        paramInt = 0;
      }
      ((View)localObject1).setVisibility(paramInt);
    }
    else
    {
      E0();
      localObject1 = this.d.iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((View)((Iterator)localObject1).next()).setVisibility(0);
      }
      localObject1 = this.b.iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((View)((Iterator)localObject1).next()).setVisibility(8);
      }
      localObject1 = this.c.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (View)((Iterator)localObject1).next();
        if ((localObject2 instanceof EditText)) {
          t0((EditText)localObject2, true);
        } else {
          ((View)localObject2).setEnabled(false);
        }
        ((View)localObject2).setBackgroundDrawable(null);
      }
      this.P.setVisibility(8);
      this.Q.setVisibility(0);
      this.y.setEnabled(false);
      this.y.setBackground(null);
      this.D.setEnabled(false);
      this.D.setBackground(null);
      if (this.g0.getEx().canAddReminders()) {
        this.L.setVisibility(0);
      } else {
        this.L.setVisibility(8);
      }
      if (TextUtils.isEmpty(this.H.getText())) {
        this.G.setVisibility(8);
      }
      if (TextUtils.isEmpty(this.I.getText())) {
        this.R.setVisibility(8);
      }
    }
    o0(this.v.isChecked());
  }
  
  private void F0()
  {
    this.r.setOnClickListener(new q());
    v.j(this.r);
    this.v.setOnCheckedChangeListener(new b());
    this.W.setOnClickListener(new c());
    v.j(this.W);
    this.X.setOnCheckedChangeListener(new d());
    this.l.setOnClickListener(new e());
    v.j(this.l);
    this.x.setOnClickListener(new f());
    v.j(this.x);
    this.z.setOnClickListener(new g());
    v.j(this.z);
    this.P.setOnClickListener(new h());
    v.j(this.P);
  }
  
  private void G0()
  {
    this.F.setInputType(1);
    x0.D0(this.d0, this.F);
    this.F.clearFocus();
  }
  
  private void H0()
  {
    Object localObject = new l.b(this.d0);
    ((l.b)localObject).g(true);
    Context localContext = ((l.b)localObject).b();
    ((l.b)localObject).F(2131887692);
    com.android.calendar.common.l locall = this.k0;
    ((l.b)localObject).D(locall, locall.b(this.A0), this);
    this.c0 = ((l.b)localObject).a();
    localObject = (TextView)((LayoutInflater)localContext.getSystemService("layout_inflater")).inflate(2131558974, null);
    ((TextView)localObject).setText(this.d0.getString(2131886503));
    ((View)localObject).setOnClickListener(new a((TextView)localObject));
    if ((!this.k0.c()) && (this.c0.f() != null)) {
      this.c0.f().addFooterView((View)localObject);
    }
    this.c0.setCanceledOnTouchOutside(true);
    this.c0.show();
  }
  
  private void I0(HashMap<String, Attendee> paramHashMap)
  {
    if ((paramHashMap != null) && (!paramHashMap.isEmpty()))
    {
      this.O.setText(null);
      paramHashMap = paramHashMap.values().iterator();
      while (paramHashMap.hasNext())
      {
        Attendee localAttendee = (Attendee)paramHashMap.next();
        this.O.append(localAttendee.getEmail());
      }
    }
  }
  
  private void J0(String paramString)
  {
    LinearLayout localLinearLayout = this.N;
    int i1;
    if ((this.g0.getEx().hasAttendeeData()) && (!h.c(paramString)) && (!h.d(paramString))) {
      i1 = 0;
    } else {
      i1 = 8;
    }
    localLinearLayout.setVisibility(i1);
  }
  
  private void K0()
  {
    String str = Utils.U(this.d0);
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("updateHomeTime(): tz:");
    ((StringBuilder)localObject1).append(str);
    ((StringBuilder)localObject1).append(", mTimezone:");
    ((StringBuilder)localObject1).append(this.A0);
    z.a("Cal:D:EditEventView", ((StringBuilder)localObject1).toString());
    if ((!this.v.isChecked()) && (!TextUtils.equals(str, this.A0)) && (this.E0 != 0))
    {
      boolean bool1 = DateFormat.is24HourFormat(this.d0);
      int i1;
      if (bool1) {
        i1 = 129;
      } else {
        i1 = 1;
      }
      long l1 = this.s0.P(false);
      long l2 = this.t0.P(false);
      boolean bool2;
      if (this.s0.k() != 0) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      boolean bool3;
      if (this.t0.k() != 0) {
        bool3 = true;
      } else {
        bool3 = false;
      }
      localObject1 = TimeZone.getTimeZone(str).getDisplayName(bool2, 0, Locale.getDefault());
      StringBuilder localStringBuilder = new StringBuilder();
      N0.setLength(0);
      Object localObject2 = this.d0;
      Formatter localFormatter = O0;
      localStringBuilder.append(DateUtils.formatDateRange((Context)localObject2, localFormatter, l1, l1, i1, str));
      localStringBuilder.append(" ");
      localStringBuilder.append((String)localObject1);
      N0.setLength(0);
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append(DateUtils.formatDateRange(this.d0, O0, l1, l1, 524310, str).toString());
      ((StringBuilder)localObject2).append(" ");
      localStringBuilder.insert(0, ((StringBuilder)localObject2).toString());
      this.n.setText(localStringBuilder.toString());
      if (bool3 != bool2) {
        localObject1 = TimeZone.getTimeZone(str).getDisplayName(bool3, 0, Locale.getDefault());
      }
      if (bool1) {
        i1 = 129;
      } else {
        i1 = 1;
      }
      localStringBuilder.setLength(0);
      N0.setLength(0);
      localStringBuilder.append(DateUtils.formatDateRange(this.d0, O0, l2, l2, i1, str));
      localStringBuilder.append(" ");
      localStringBuilder.append((String)localObject1);
      N0.setLength(0);
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(DateUtils.formatDateRange(this.d0, O0, l2, l2, 524310, str).toString());
      ((StringBuilder)localObject1).append(" ");
      localStringBuilder.insert(0, ((StringBuilder)localObject1).toString());
      this.p.setText(localStringBuilder.toString());
      this.U.setVisibility(0);
      this.V.setVisibility(0);
    }
    else
    {
      this.U.setVisibility(8);
      this.V.setVisibility(8);
    }
  }
  
  private void P(StringBuilder paramStringBuilder, View paramView)
  {
    if ((paramView != null) && (paramView.getVisibility() == 0))
    {
      Object localObject;
      if ((paramView instanceof TextView))
      {
        paramView = ((TextView)paramView).getText();
        if (!TextUtils.isEmpty(paramView.toString().trim()))
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append(paramView);
          ((StringBuilder)localObject).append(". ");
          paramStringBuilder.append(((StringBuilder)localObject).toString());
        }
      }
      else
      {
        int i1;
        if ((paramView instanceof MultiRadioGroup))
        {
          i1 = ((MultiRadioGroup)paramView).getCheckedRadioButtonId();
          if (i1 != -1)
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append(((RadioButton)paramView.findViewById(i1)).getText());
            ((StringBuilder)localObject).append(". ");
            paramStringBuilder.append(((StringBuilder)localObject).toString());
          }
        }
        else if ((paramView instanceof miuix.appcompat.widget.Spinner))
        {
          paramView = (miuix.appcompat.widget.Spinner)paramView;
          if ((paramView.getSelectedItem() instanceof String))
          {
            localObject = ((String)paramView.getSelectedItem()).trim();
            if (!TextUtils.isEmpty((CharSequence)localObject))
            {
              paramView = new StringBuilder();
              paramView.append((String)localObject);
              paramView.append(". ");
              paramStringBuilder.append(paramView.toString());
            }
          }
        }
        else if ((paramView instanceof ViewGroup))
        {
          paramView = (ViewGroup)paramView;
          int i2 = paramView.getChildCount();
          for (i1 = 0; i1 < i2; i1++) {
            P(paramStringBuilder, paramView.getChildAt(i1));
          }
        }
      }
    }
  }
  
  private void Q()
  {
    this.u0 = ZonedDateTime.ofInstant(Instant.ofEpochMilli(this.s0.P(false)), ZoneId.of(this.A0));
    this.v0 = ZonedDateTime.ofInstant(Instant.ofEpochMilli(this.t0.P(false)), ZoneId.of(this.A0));
    this.w0 = this.u0.withZoneSameInstant(ZoneId.of(this.B0));
    this.x0 = this.v0.withZoneSameInstant(ZoneId.of(this.B0));
    this.g.setOnClickListener(new s(this.u0, true, true));
    this.i.setOnClickListener(new s(this.v0, false, true));
    this.U.setOnClickListener(new s(this.w0, true, false));
    this.V.setOnClickListener(new s(this.x0, false, false));
  }
  
  private void R()
  {
    if (this.K0 == null) {
      return;
    }
    this.K0 = null;
    int i1 = this.F.getSelectionStart();
    this.F.getText().clearSpans();
    C0(this.F.getText().toString(), i1);
  }
  
  private String U()
  {
    Object localObject = this.F.getText().toString();
    if ((this.K0 != null) && (((String)localObject).length() != 0))
    {
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder((CharSequence)localObject);
      localObject = this.K0;
      return localSpannableStringBuilder.replace(((t)localObject).a, ((t)localObject).b, "").toString();
    }
    return this.F.getText().toString();
  }
  
  private int V(int paramInt)
  {
    if (paramInt != 8)
    {
      if (paramInt != 9) {
        return 1;
      }
      return 3;
    }
    return 2;
  }
  
  private void W()
  {
    Object localObject = this.F;
    if (localObject != null)
    {
      x0.l0(this.d0, (View)localObject);
      this.F.clearFocus();
    }
    localObject = this.H;
    if (localObject != null)
    {
      x0.l0(this.d0, (View)localObject);
      this.H.clearFocus();
    }
    localObject = this.I;
    if (localObject != null)
    {
      x0.l0(this.d0, (View)localObject);
      this.I.clearFocus();
    }
  }
  
  private MultiAutoCompleteTextView Y(RecipientEditTextView paramRecipientEditTextView)
  {
    Object localObject;
    if (com.android.ex.chips.c.d())
    {
      localObject = new u1(this.d0);
      this.i0 = ((com.android.ex.chips.a)localObject);
      paramRecipientEditTextView.setAdapter((com.android.ex.chips.b)localObject);
      paramRecipientEditTextView.setOnFocusListShrinkRecipients(false);
    }
    else
    {
      m localm = new m(this.d0);
      this.i0 = localm;
      localObject = (m)localm;
      paramRecipientEditTextView.setAdapter(localm);
    }
    paramRecipientEditTextView.setTokenizer(new Rfc822Tokenizer());
    paramRecipientEditTextView.setValidator(this.j0);
    paramRecipientEditTextView.setFilters(P0);
    return paramRecipientEditTextView;
  }
  
  private boolean Z()
  {
    if (this.p0) {
      return true;
    }
    EventRecurrence localEventRecurrence = this.F0;
    int i1 = localEventRecurrence.b;
    if (i1 != 4)
    {
      if (i1 != 5)
      {
        if (i1 != 6)
        {
          if (i1 == 7) {
            return false;
          }
        }
        else
        {
          if (localEventRecurrence.k()) {
            return false;
          }
          localEventRecurrence = this.F0;
          if ((localEventRecurrence.o == 0) && (localEventRecurrence.q == 1) && (localEventRecurrence.p[0] > 0)) {
            return false;
          }
        }
      }
      else
      {
        if ((localEventRecurrence.l()) && (com.miui.calendar.repeats.b.i(this.s0))) {
          return false;
        }
        if (this.F0.o == 1) {
          return false;
        }
      }
      return true;
    }
    return false;
  }
  
  private void d0(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("onDateTimeChosen: ");
    ((StringBuilder)localObject1).append(paramInt1);
    ((StringBuilder)localObject1).append(".");
    ((StringBuilder)localObject1).append(paramInt2);
    ((StringBuilder)localObject1).append(".");
    ((StringBuilder)localObject1).append(paramInt3);
    ((StringBuilder)localObject1).append(" ");
    ((StringBuilder)localObject1).append(paramInt4);
    ((StringBuilder)localObject1).append(":");
    ((StringBuilder)localObject1).append(paramInt5);
    Log.d("Cal:D:EditEventView", ((StringBuilder)localObject1).toString());
    Object localObject2;
    String str;
    if (paramBoolean2)
    {
      localObject2 = this.u0;
      localObject1 = this.v0;
      str = this.A0;
    }
    else
    {
      localObject2 = this.w0;
      localObject1 = this.x0;
      str = this.B0;
    }
    Object localObject3;
    Object localObject4;
    if (paramBoolean1)
    {
      int i1 = ((ZonedDateTime)localObject1).getYear();
      int i2 = ((ZonedDateTime)localObject2).getYear();
      int i3 = ((ZonedDateTime)localObject1).getMonth().getValue();
      int i4 = ((ZonedDateTime)localObject2).getMonth().getValue();
      int i5 = ((ZonedDateTime)localObject1).getDayOfMonth();
      int i6 = ((ZonedDateTime)localObject2).getDayOfMonth();
      int i7 = ((ZonedDateTime)localObject1).getHour();
      int i8 = ((ZonedDateTime)localObject2).getHour();
      int i9 = ((ZonedDateTime)localObject1).getMinute();
      int i10 = ((ZonedDateTime)localObject2).getMinute();
      localObject1 = ((ZonedDateTime)localObject2).withYear(paramInt1).withMonth(paramInt2 + 1).withDayOfMonth(paramInt3).withHour(0).withMinute(0).withSecond(0);
      localObject2 = localObject1;
      if (!this.C0) {
        localObject2 = ((ZonedDateTime)localObject1).withHour(paramInt4).withMinute(paramInt5);
      }
      localObject3 = ZonedDateTime.of(0, 1, 1, 0, 0, 0, 0, ZoneId.of(str)).plusYears(paramInt1 + (i1 - i2)).plusMonths(paramInt2 + (i3 - i4)).plusDays(paramInt3 + (i5 - i6) - 1);
      localObject1 = localObject3;
      localObject4 = localObject2;
      if (!this.C0)
      {
        localObject1 = ((ZonedDateTime)localObject3).plusHours(paramInt4 + (i7 - i8)).plusMinutes(paramInt5 + (i9 - i10));
        localObject4 = localObject2;
      }
    }
    else
    {
      localObject1 = ((ZonedDateTime)localObject1).withYear(paramInt1).withMonth(paramInt2 + 1).withDayOfMonth(paramInt3);
      localObject3 = localObject1;
      if (!this.C0) {
        localObject3 = ((ZonedDateTime)localObject1).withHour(paramInt4).withMinute(paramInt5);
      }
      localObject1 = localObject3;
      localObject4 = localObject2;
      if (((ChronoZonedDateTime)localObject3).isBefore((ChronoZonedDateTime)localObject2))
      {
        localObject1 = ((ZonedDateTime)localObject2).withZoneSameInstant(ZoneId.of(str));
        localObject4 = localObject2;
      }
    }
    this.s0.h().setTimeZone(TimeZone.getTimeZone(str));
    this.t0.h().setTimeZone(TimeZone.getTimeZone(str));
    this.s0.C(localObject4.getSecond(), localObject4.getMinute(), localObject4.getHour(), localObject4.getDayOfMonth(), localObject4.getMonth().getValue() - 1, localObject4.getYear());
    this.t0.C(((ZonedDateTime)localObject1).getSecond(), ((ZonedDateTime)localObject1).getMinute(), ((ZonedDateTime)localObject1).getHour(), ((ZonedDateTime)localObject1).getDayOfMonth(), ((ZonedDateTime)localObject1).getMonth().getValue() - 1, ((ZonedDateTime)localObject1).getYear());
    Q();
    s0(this.h, this.s0.P(false));
    s0(this.j, this.t0.P(false));
    K0();
  }
  
  private void f0(ZonedDateTime paramZonedDateTime, final boolean paramBoolean)
  {
    Object localObject = this.Z;
    if (localObject != null) {
      ((miuix.appcompat.app.l)localObject).dismiss();
    }
    int i1;
    if (this.E0 != 1) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    paramZonedDateTime = new h4.c(this.d0, new k(paramBoolean), this.D0, paramZonedDateTime.getYear(), paramZonedDateTime.getMonth().getValue() - 1, paramZonedDateTime.getDayOfMonth());
    this.Z = paramZonedDateTime;
    if (i1 != 0) {
      paramZonedDateTime.E();
    }
    paramZonedDateTime = this.Z;
    localObject = this.d0.getResources();
    if (paramBoolean) {
      i1 = 2131886493;
    } else {
      i1 = 2131886516;
    }
    paramZonedDateTime.setTitle(((Resources)localObject).getString(i1));
    this.Z.setCanceledOnTouchOutside(true);
    this.Z.show();
  }
  
  private void g0(ZonedDateTime paramZonedDateTime, final boolean paramBoolean1, final boolean paramBoolean2)
  {
    e locale = this.Y;
    if (locale != null) {
      locale.dismiss();
    }
    boolean bool;
    if (this.E0 != 1) {
      bool = true;
    } else {
      bool = false;
    }
    locale = new e(this.d0, new j(paramBoolean1, paramBoolean2), this.D0, bool);
    this.Y = locale;
    Resources localResources = this.d0.getResources();
    int i1;
    if (paramBoolean1) {
      i1 = 2131886493;
    } else {
      i1 = 2131886516;
    }
    locale.setTitle(localResources.getString(i1));
    this.Y.setCanceledOnTouchOutside(true);
    this.Y.x(paramZonedDateTime);
    this.Y.show();
  }
  
  private void h0()
  {
    if (this.g0 == null)
    {
      z.m("Cal:D:EditEventView", "populateRepeats(): model is NULL");
      return;
    }
    ArrayList localArrayList = new ArrayList(0);
    Object localObject = new ArrayList(0);
    int i1;
    int i2;
    if (this.D0 == 0)
    {
      boolean bool = Z();
      com.miui.calendar.repeats.b.m(this.d0, this.s0, localArrayList, (List)localObject, bool);
      this.m0 = ((ArrayList)localObject);
      if ((bool) && (this.n0 != null)) {
        localArrayList.set(localArrayList.size() - 1, com.miui.calendar.repeats.b.c(this.d0, this.n0, this.s0));
      }
      i1 = ((ArrayList)localObject).indexOf(Integer.valueOf(0));
      if (!TextUtils.isEmpty(this.g0.getEx().getRrule()))
      {
        if (bool)
        {
          i1 = ((ArrayList)localObject).indexOf(Integer.valueOf(7));
        }
        else
        {
          EventRecurrence localEventRecurrence = this.F0;
          i2 = localEventRecurrence.b;
          if (i2 != 4)
          {
            if (i2 != 5)
            {
              if (i2 != 6)
              {
                if (i2 == 7) {
                  i1 = ((ArrayList)localObject).indexOf(Integer.valueOf(6));
                }
              }
              else if (localEventRecurrence.k()) {
                i1 = ((ArrayList)localObject).indexOf(Integer.valueOf(4));
              } else {
                i1 = ((ArrayList)localObject).indexOf(Integer.valueOf(5));
              }
            }
            else if (localEventRecurrence.l()) {
              i1 = ((ArrayList)localObject).indexOf(Integer.valueOf(2));
            } else {
              i1 = ((ArrayList)localObject).indexOf(Integer.valueOf(3));
            }
          }
          else {
            i1 = ((ArrayList)localObject).indexOf(Integer.valueOf(1));
          }
        }
      }
      else {
        this.z.setVisibility(8);
      }
    }
    else
    {
      com.miui.calendar.repeats.b.j(this.d0, this.s0, localArrayList, (List)localObject);
      this.m0 = ((ArrayList)localObject);
      i1 = ((ArrayList)localObject).indexOf(Integer.valueOf(0));
      i2 = b0.b(this.d0, this.g0.getEx().getRdate());
      if (i2 == 2) {
        i1 = ((ArrayList)localObject).indexOf(Integer.valueOf(8));
      } else if (i2 == 3) {
        i1 = ((ArrayList)localObject).indexOf(Integer.valueOf(9));
      }
    }
    localObject = new ArrayAdapter(this.d0, 2131558552, localArrayList);
    ((ArrayAdapter)localObject).setDropDownViewResource(2131558736);
    this.y.setAdapter((SpinnerAdapter)localObject);
    this.y.setSelection(i1);
    this.y.setClickable(false);
    this.y.setLongClickable(false);
    this.D.setClickable(false);
    this.D.setLongClickable(false);
    if (this.g0.getEx().getOriginalSyncId() != null)
    {
      this.y.setEnabled(false);
      this.D.setEnabled(false);
    }
  }
  
  private void i0()
  {
    if (this.g0 == null)
    {
      z.m("Cal:D:EditEventView", "populateRepeatsEnd(): model is NULL");
      return;
    }
    Object localObject = new ArrayList(0);
    com.miui.calendar.repeats.b.k(this.d0, (List)localObject, this.o0);
    localObject = new ArrayAdapter(this.d0, 2131558552, (List)localObject);
    ((ArrayAdapter)localObject).setDropDownViewResource(2131558736);
    this.D.setAdapter((SpinnerAdapter)localObject);
    miuix.appcompat.widget.Spinner localSpinner = this.D;
    localObject = this.o0;
    int i1;
    if (localObject != null) {
      i1 = ((RepeatEndSchema)localObject).index;
    } else {
      i1 = 0;
    }
    localSpinner.setSelection(i1);
    if (this.g0.getEx().getOriginalSyncId() != null) {
      this.D.setEnabled(false);
    }
    if (this.D0 == 1) {
      this.z.setVisibility(8);
    }
  }
  
  private void j0(long paramLong)
  {
    Object localObject = this.k0;
    if (localObject == null) {
      this.k0 = new com.android.calendar.common.l(this.d0, this.A0, paramLong);
    } else {
      ((com.android.calendar.common.l)localObject).g(paramLong);
    }
    localObject = this.c0;
    if (localObject != null) {
      ((miuix.appcompat.app.l)localObject).f().setAdapter(this.k0);
    }
    B0(this.k0.b(this.A0));
  }
  
  private void k0()
  {
    long l1 = this.s0.P(false);
    long l2 = this.t0.P(false);
    s0(this.h, l1);
    s0(this.j, l2);
    Q();
  }
  
  private void l0()
  {
    Object localObject = this.g0;
    if (localObject == null)
    {
      z.m("Cal:D:EditEventView", "prepareReminders(): model is NULL");
      return;
    }
    localObject = ((Event)localObject).getEx().getReminders();
    this.M.setText(f0.b(this.d0, (ArrayList)localObject, this.C0));
    if ((localObject != null) && (!((ArrayList)localObject).isEmpty())) {
      this.W.setVisibility(0);
    } else {
      this.W.setVisibility(8);
    }
    this.L.setOnClickListener(new i());
    v.j(this.L);
  }
  
  private void m0(long paramLong1, long paramLong2, boolean paramBoolean, t paramt)
  {
    z.a("Cal:D:EditEventView", "refreshOnMainThread start.");
    if (paramt == null)
    {
      R();
    }
    else
    {
      this.K0 = paramt;
      String str = this.F.getText().toString();
      SpannableString localSpannableString = new SpannableString(str);
      localSpannableString.setSpan(new ForegroundColorSpan(this.I0), Math.max(paramt.a, 0), Math.min(paramt.b, str.length()), 17);
      C0(localSpannableString, this.F.getSelectionStart());
    }
    this.C0 = paramBoolean;
    paramt = new r0();
    boolean bool1 = paramLong1 < -1L;
    if (bool1)
    {
      paramt.D(paramLong1);
      d0(paramt.v(), paramt.p(), paramt.q(), paramt.m(), paramt.o(), true, false);
    }
    boolean bool2 = paramLong2 < -1L;
    if (bool2)
    {
      paramt.D(paramLong2);
      d0(paramt.v(), paramt.p(), paramt.q(), paramt.m(), paramt.o(), false, false);
    }
    if ((bool1) || (bool2)) {
      g0.d("key_trigger_event_time_parser");
    }
    this.v.setChecked(paramBoolean);
    z.a("Cal:D:EditEventView", "refreshOnMainThread over.");
  }
  
  private void n0()
  {
    AccessibilityManager localAccessibilityManager = (AccessibilityManager)this.d0.getSystemService("accessibility");
    if ((localAccessibilityManager.isEnabled()) && (this.g0 != null))
    {
      Object localObject = new StringBuilder();
      P((StringBuilder)localObject, this.f0);
      String str = ((StringBuilder)localObject).toString();
      localObject = AccessibilityEvent.obtain(8);
      ((AccessibilityRecord)localObject).setClassName(getClass().getName());
      ((AccessibilityEvent)localObject).setPackageName(this.d0.getPackageName());
      ((AccessibilityRecord)localObject).getText().add(str);
      ((AccessibilityRecord)localObject).setAddedCount(str.length());
      localAccessibilityManager.sendAccessibilityEvent((AccessibilityEvent)localObject);
    }
  }
  
  private void o0(boolean paramBoolean)
  {
    r0 localr0;
    long l1;
    if (paramBoolean)
    {
      if ((this.t0.m() == 0) && (this.t0.o() == 0))
      {
        if (this.C0 != paramBoolean)
        {
          localr0 = this.t0;
          localr0.J(localr0.q() - 1);
        }
        l1 = this.t0.y(true);
        if (this.t0.a(this.s0))
        {
          this.t0.E(this.s0);
          l1 = this.t0.y(true);
        }
        s0(this.j, l1);
      }
      this.l.setVisibility(8);
      this.m.setVisibility(8);
    }
    else
    {
      if ((this.t0.m() == 0) && (this.t0.o() == 0))
      {
        if (this.C0 != paramBoolean)
        {
          localr0 = this.t0;
          localr0.J(localr0.q() + 1);
        }
        l1 = this.t0.y(true);
        s0(this.j, l1);
      }
      this.l.setVisibility(0);
      this.m.setVisibility(8);
    }
    this.C0 = paramBoolean;
    k0();
    K0();
  }
  
  private void s0(TextView paramTextView, long paramLong)
  {
    int i1 = this.D0;
    int i2 = 1;
    Object localObject1;
    if (i1 == 0)
    {
      localObject1 = new Formatter(new StringBuilder(50), Locale.getDefault());
      localObject1 = DateUtils.formatDateRange(this.d0, (Formatter)localObject1, paramLong, paramLong, 98326, this.A0).toString();
    }
    else
    {
      localObject1 = Calendar.getInstance();
      ((Calendar)localObject1).setTimeZone(TimeZone.getTimeZone(this.A0));
      ((Calendar)localObject1).setTimeInMillis(paramLong);
      z.a("Cal:D:EditEventView", ((Calendar)localObject1).toString());
      localObject1 = a0.d(((Calendar)localObject1).get(1), ((Calendar)localObject1).get(2), ((Calendar)localObject1).get(5));
      localObject1 = a0.m(this.d0.getResources(), localObject1[0], localObject1[1] - 1, localObject1[2]);
    }
    Object localObject2;
    if (!this.C0)
    {
      if (DateFormat.is24HourFormat(this.d0)) {
        i2 = 129;
      }
      localObject2 = new Formatter(new StringBuilder(50), Locale.getDefault());
      localObject2 = DateUtils.formatDateRange(this.d0, (Formatter)localObject2, paramLong, paramLong, i2, this.A0).toString();
    }
    else
    {
      localObject2 = "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append((String)localObject1);
    localStringBuilder.append(" ");
    localStringBuilder.append((String)localObject2);
    paramTextView.setText(localStringBuilder.toString());
  }
  
  private void t0(EditText paramEditText, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramEditText.setTextColor(this.d0.getResources().getColor(2131099922));
      paramEditText.setCursorVisible(false);
      paramEditText.setFocusable(false);
      paramEditText.setFocusableInTouchMode(false);
    }
    else
    {
      paramEditText.setTextColor(this.d0.getResources().getColor(2131099921));
      paramEditText.setCursorVisible(true);
      paramEditText.setFocusable(true);
      paramEditText.setFocusableInTouchMode(true);
    }
  }
  
  public void A0(int paramInt, RepeatSchema paramRepeatSchema)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("setRepeatSelection(): index:");
    localStringBuilder.append(paramInt);
    localStringBuilder.append(", schema:");
    localStringBuilder.append(RepeatSchema.toJsonString(paramRepeatSchema));
    z.a("Cal:D:EditEventView", localStringBuilder.toString());
    boolean bool = com.miui.calendar.repeats.b.i(this.s0);
    int i1 = 1;
    int i2 = 0;
    if (bool ? 7 == paramInt : 6 == paramInt) {
      bool = true;
    } else {
      bool = false;
    }
    this.p0 = bool;
    this.n0 = paramRepeatSchema;
    h0();
    paramRepeatSchema = this.y;
    if ((paramRepeatSchema != null) && (paramInt < paramRepeatSchema.getCount()))
    {
      this.y.setSelection(paramInt);
      if (paramInt != 0) {
        paramInt = i1;
      } else {
        paramInt = 0;
      }
      paramRepeatSchema = this.z;
      if ((paramInt == 0) || (this.D0 != 0)) {
        i2 = 8;
      }
      paramRepeatSchema.setVisibility(i2);
      if (paramInt != 0) {
        i0();
      }
    }
  }
  
  protected void E0()
  {
    String str = this.A0;
    int i1;
    if (this.g0.isAllDay())
    {
      i1 = 18;
      str = "UTC";
    }
    else
    {
      i1 = 17;
      if (DateFormat.is24HourFormat(this.d0)) {
        i1 = 145;
      }
    }
    long l1 = this.s0.y(true);
    long l2 = this.t0.y(true);
    long l3 = l2;
    long l4 = l1;
    if (this.C0)
    {
      l4 = l1 + 86400000L;
      l3 = l2 + 86400000L;
    }
    N0.setLength(0);
    str = DateUtils.formatDateRange(this.d0, O0, l4, l3, i1, str).toString();
    this.J.setText(str);
  }
  
  public void L0()
  {
    Event localEvent = this.g0;
    if (localEvent == null) {
      return;
    }
    if (localEvent.getEx().canModifyEvent())
    {
      D0(this.E0);
      J0(this.h0);
    }
    else
    {
      D0(0);
    }
  }
  
  public void O(String paramString, g2.b paramb)
  {
    paramString = j.i(paramString, paramb);
    try
    {
      paramb = paramString.iterator();
      while (paramb.hasNext())
      {
        paramString = (Rfc822Token)paramb.next();
        Attendee localAttendee = new com/android/calendar/common/event/schema/Attendee;
        localAttendee.<init>(paramString.getName(), paramString.getAddress());
        if (TextUtils.isEmpty(localAttendee.getName())) {
          localAttendee.setName(localAttendee.getEmail());
        }
        this.g0.getEx().addAttendee(localAttendee);
      }
      return;
    }
    finally {}
  }
  
  public void S()
  {
    Object localObject = this.Z;
    if (localObject != null) {
      ((miuix.appcompat.app.l)localObject).dismiss();
    }
    localObject = this.Y;
    if (localObject != null) {
      ((miuix.appcompat.app.l)localObject).dismiss();
    }
  }
  
  public boolean T(boolean paramBoolean)
  {
    Object localObject = this.g0;
    if ((localObject != null) && (this.H0 != null))
    {
      ((Event)localObject).getEx().normalizeReminders();
      localObject = this.g0.getEx();
      boolean bool;
      if (this.g0.getEx().getReminders().size() > 0) {
        bool = true;
      } else {
        bool = false;
      }
      ((EventEx)localObject).setHasAlarm(bool);
      if (!TextUtils.isEmpty(this.g0.getTitle())) {
        g0.d("edit_event_edit_title");
      }
      if (!TextUtils.isEmpty(this.g0.getLocation())) {
        g0.d("edit_event_edit_location");
      }
      if (!TextUtils.isEmpty(this.g0.getDescription())) {
        g0.d("edit_event_edit_description");
      }
      this.g0.setTitle(U());
      this.g0.setAllDay(this.v.isChecked());
      this.g0.setNeedAlarm(this.X.isChecked());
      this.g0.setLocation(this.H.getText().toString());
      this.g0.setDescription(this.I.getText().toString());
      if (TextUtils.isEmpty(this.g0.getLocation())) {
        this.g0.setLocation(null);
      }
      if (TextUtils.isEmpty(this.g0.getDescription())) {
        this.g0.setDescription(null);
      }
      int i1 = Utils.N(this.E.getCheckedRadioButtonId());
      if (i1 != 0) {
        this.g0.getEx().setSelfAttendeeStatus(i1);
      }
      if (this.O != null)
      {
        this.j0.b(true);
        this.O.performValidation();
        this.g0.getEx().getAttendeeList().clear();
        O(this.O.getText().toString(), this.j0);
        this.j0.b(false);
      }
      this.g0.getEx().setCalendarId(this.w.getSelectedItemId());
      i1 = this.w.getSelectedItemPosition();
      long l1;
      if (this.H0.moveToPosition(i1))
      {
        l1 = this.H0.getLong(0);
        localObject = this.H0.getString(2);
        b2.a.j(this.d0, "preference_defaultCalendarId", l1);
        b2.a.k(this.d0, "preference_defaultCalendar", (String)localObject);
        this.g0.getEx().setOwnerAccount((String)localObject);
        this.g0.getEx().setOrganizer((String)localObject);
        this.g0.getEx().setCalendarId(this.H0.getLong(0));
        this.g0.getEx().setAccountName(this.H0.getString(10));
        this.g0.getEx().setAccountType(this.H0.getString(9));
        this.g0.getEx().setCalendarDisplayName(this.H0.getString(1));
      }
      if (this.g0.isAllDay())
      {
        if (paramBoolean) {
          localObject = "UTC";
        } else {
          localObject = this.A0;
        }
        this.A0 = ((String)localObject);
        this.s0.F(0);
        this.s0.H(0);
        this.s0.K(0);
        this.s0.h().setTimeZone(TimeZone.getTimeZone(this.A0));
        this.g0.getEx().setStart(this.s0.y(true));
        this.t0.F(0);
        this.t0.H(0);
        this.t0.K(0);
        this.t0.h().setTimeZone(TimeZone.getTimeZone(this.A0));
        if (paramBoolean) {
          l1 = this.t0.y(true) + 86400000L;
        } else {
          l1 = this.t0.y(true);
        }
        if (l1 < this.g0.getEx().getStart()) {
          this.g0.getEx().setEnd(this.g0.getEx().getStart() + 86400000L);
        } else {
          this.g0.getEx().setEnd(l1);
        }
      }
      else
      {
        this.s0.h().setTimeZone(TimeZone.getTimeZone(this.A0));
        this.t0.h().setTimeZone(TimeZone.getTimeZone(this.A0));
        this.g0.getEx().setStart(this.s0.P(true));
        this.g0.getEx().setEnd(this.t0.P(true));
      }
      this.g0.getEx().setTimezone(this.A0);
      if (this.E0 == 1)
      {
        i1 = 0;
      }
      else
      {
        i1 = this.y.getSelectedItemPosition();
        i1 = ((Integer)this.m0.get(i1)).intValue();
      }
      j.z(i1, this.g0, Utils.C(this.d0), this.n0, this.o0);
      if (this.D0 == 1)
      {
        i1 = V(i1);
        localObject = Calendar.getInstance();
        ((Calendar)localObject).setTimeInMillis(this.s0.P(false));
        this.g0.getEx().setRdate(b0.d((Calendar)localObject, i1, this.g0.isAllDay()));
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("fillModelFromUI(): rdate:");
        ((StringBuilder)localObject).append(this.g0.getEx().getRdate());
        z.b("Cal:D:EditEventView", ((StringBuilder)localObject).toString());
      }
      else
      {
        this.g0.getEx().setRdate(null);
      }
      if (!this.g0.isAllDay()) {
        this.k0.e(this.A0);
      }
      if (this.K0 != null) {
        g0.d("key_use_parsed_time_event");
      }
      return true;
    }
    z.m("Cal:D:EditEventView", "fillModelFromUI(): model or calendarsCursor is NULL");
    return false;
  }
  
  public void X(Cursor paramCursor, int paramInt)
  {
    this.H0 = paramCursor;
    paramCursor = new NewBaseEditFragment.f(this.d0, this.H0);
    this.w.setAdapter(paramCursor);
    this.w.setPromptId(2131886531);
    this.w.setSelection(paramInt);
    this.w.setOnItemSelectedListener(this);
  }
  
  public boolean a0()
  {
    if ((this.F == null) || (TextUtils.isEmpty(U())))
    {
      TextView localTextView = this.H;
      if ((localTextView == null) || (TextUtils.isEmpty(localTextView.getText())))
      {
        localTextView = this.I;
        if ((localTextView == null) || (TextUtils.isEmpty(localTextView.getText()))) {
          break label60;
        }
      }
    }
    boolean bool = true;
    return bool;
    label60:
    bool = false;
    return bool;
  }
  
  public void c0(Cursor paramCursor, int paramInt)
  {
    if (this.g0 == null)
    {
      z.m("Cal:D:EditEventView", "onCalendarSpinnerSelected(): model is NULL");
      return;
    }
    if ((paramCursor != null) && (paramCursor.getCount() > 0))
    {
      int i1 = paramCursor.getInt(paramCursor.getColumnIndexOrThrow("calendar_color"));
      long l1 = paramCursor.getLong(paramCursor.getColumnIndexOrThrow("_id"));
      if (l1 == this.g0.getEx().getCalendarId()) {
        return;
      }
      this.g0.getEx().setCalendarId(l1);
      this.g0.getEx().setCalendarColor(i1);
      i1 = paramCursor.getColumnIndexOrThrow("maxReminders");
      this.g0.getEx().setCalendarMaxReminders(paramCursor.getInt(i1));
      i1 = paramCursor.getColumnIndexOrThrow("account_type");
      this.g0.getEx().setAccountType(paramCursor.getString(i1));
      i1 = paramCursor.getColumnIndexOrThrow("account_name");
      this.g0.getEx().setAccountName(paramCursor.getString(i1));
      J0(this.g0.getEx().getAccountType());
      j.m(this.d0, this.g0, this.C0);
      this.G0.clear();
      l0();
      i1 = paramCursor.getColumnIndexOrThrow("calendar_displayName");
      paramCursor = Utils.o1(this.d0.getResources(), paramCursor.getString(i1));
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("***onCalendarSpinnerSelected, calendar display name: ");
      localStringBuilder.append(Utils.U0(paramCursor));
      Log.v("Cal:D:EditEventView", localStringBuilder.toString());
      if ((this.l0 != null) && (!TextUtils.isEmpty(paramCursor))) {
        this.l0.e(paramCursor, paramInt);
      }
      return;
    }
    z.m("Cal:D:EditEventView", "onCalendarSpinnerSelected(): Cursor not set on calendar item");
  }
  
  public void e0()
  {
    Handler localHandler = this.q0;
    if (localHandler != null) {
      localHandler.removeCallbacks(this.M0);
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ((paramDialogInterface == this.c0) && (paramInt >= 0) && (paramInt < this.k0.getCount()))
    {
      B0(paramInt);
      k0();
      K0();
      paramDialogInterface.dismiss();
    }
  }
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramAdapterView.getId() == 2131362099) {
      c0((Cursor)paramAdapterView.getItemAtPosition(paramInt), paramInt);
    }
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
  
  public void p0(r paramr)
  {
    this.l0 = paramr;
  }
  
  public void q0(int paramInt)
  {
    this.w.setSelection(paramInt);
  }
  
  public void r0(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    this.q0.post(new p1(this, paramString));
  }
  
  public void u0(Event paramEvent)
  {
    w0(paramEvent, false, false);
  }
  
  public void v0(Event paramEvent, boolean paramBoolean)
  {
    w0(paramEvent, false, paramBoolean);
  }
  
  public void w0(Event paramEvent, boolean paramBoolean1, boolean paramBoolean2)
  {
    z.a("Cal:D:EditEventView", "setModel()");
    if (paramBoolean2) {
      return;
    }
    this.g0 = paramEvent;
    Object localObject1 = this.i0;
    if ((localObject1 != null) && ((localObject1 instanceof m)))
    {
      ((m)localObject1).e();
      this.i0 = null;
    }
    if (paramEvent == null)
    {
      this.e.setVisibility(0);
      this.f.setVisibility(8);
      return;
    }
    this.r0 = paramEvent.getEx().canRespond();
    if (b0.b(this.d0, paramEvent.getEx().getRdate()) != 0) {
      this.D0 = 1;
    } else {
      this.D0 = 0;
    }
    long l1 = paramEvent.getEx().getStart();
    long l2 = paramEvent.getEx().getEnd();
    this.A0 = paramEvent.getEx().getTimezone();
    this.s0.h().setTimeZone(TimeZone.getTimeZone(this.A0));
    this.s0.D(l1);
    this.s0.y(true);
    this.t0.h().setTimeZone(TimeZone.getTimeZone(this.A0));
    this.t0.D(l2);
    this.t0.y(true);
    Object localObject2 = paramEvent.getEx().getRrule();
    localObject1 = paramEvent.getEx().getRdate();
    if (!TextUtils.isEmpty((CharSequence)localObject2))
    {
      this.F0.j((String)localObject2);
    }
    else if (!TextUtils.isEmpty((CharSequence)localObject1))
    {
      this.D0 = b0.a(this.d0, (String)localObject1);
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("setModel(): mDateType: ");
      ((StringBuilder)localObject1).append(this.D0);
      z.a("Cal:D:EditEventView", ((StringBuilder)localObject1).toString());
    }
    localObject2 = paramEvent.getEx().getAccountType();
    localObject1 = localObject2;
    if (localObject2 == null)
    {
      i1 = this.w.getSelectedItemPosition();
      Cursor localCursor = (Cursor)this.w.getItemAtPosition(i1);
      localObject1 = localObject2;
      if (localCursor != null) {
        localObject1 = localCursor.getString(localCursor.getColumnIndexOrThrow("account_type"));
      }
    }
    this.h0 = ((String)localObject1);
    J0((String)localObject1);
    paramBoolean2 = this.v.isChecked();
    this.C0 = false;
    this.C0 = this.g0.isAllDay();
    if (paramEvent.isAllDay())
    {
      this.v.setChecked(true);
      this.A0 = Utils.U(this.d0);
      this.s0.h().setTimeZone(TimeZone.getTimeZone(this.A0));
      this.t0.h().setTimeZone(TimeZone.getTimeZone(this.A0));
      this.t0.y(true);
    }
    else
    {
      this.v.setChecked(false);
    }
    this.X.setChecked(paramEvent.isNeedAlarm());
    if ((this.C0) && (paramBoolean1))
    {
      localObject2 = this.t0;
      ((r0)localObject2).D(((r0)localObject2).y(true) - 86400000L);
    }
    if (this.y0 == -1L) {
      this.y0 = this.s0.P(true);
    }
    if (this.z0 == -1L) {
      this.z0 = this.t0.P(true);
    }
    if (paramBoolean2 == this.v.isChecked()) {
      o0(paramBoolean2);
    }
    j0(this.s0.y(true));
    l0();
    if (paramEvent.getTitle() != null)
    {
      this.F.setTextKeepState(paramEvent.getTitle());
      localObject2 = this.F;
      ((EditText)localObject2).setSelection(((TextView)localObject2).length());
    }
    if ((!paramEvent.getEx().isOrganizer()) && (!TextUtils.isEmpty(paramEvent.getEx().getOrganizer())) && (!paramEvent.getEx().getOrganizer().endsWith("calendar.google.com")))
    {
      ((TextView)this.f0.findViewById(2131362927)).setText(paramEvent.getEx().getOrganizerDisplayName());
    }
    else
    {
      this.f0.findViewById(2131362928).setVisibility(8);
      this.f0.findViewById(2131362927).setVisibility(8);
      this.T.setVisibility(8);
    }
    if (paramEvent.getLocation() != null) {
      this.H.setTextKeepState(paramEvent.getLocation());
    }
    if (paramEvent.getDescription() != null) {
      this.I.setTextKeepState(paramEvent.getDescription());
    }
    localObject2 = this.f0.findViewById(2131363052);
    if (this.r0)
    {
      i1 = Utils.m(paramEvent.getEx().getSelfAttendeeStatus());
      this.E.h(i1);
      this.E.setVisibility(0);
      ((View)localObject2).setVisibility(0);
    }
    else
    {
      ((View)localObject2).setVisibility(8);
      this.E.setVisibility(8);
    }
    int i1 = Utils.x(this.d0.getResources(), paramEvent.getEx().getAccountName(), (String)localObject1, paramEvent.getEx().getCalendarDisplayName(), paramEvent.getEx().getCalendarColor());
    localObject1 = this.d0.getResources();
    localObject2 = (TextView)this.f0.findViewById(2131362098);
    if (localObject2 != null) {
      ((TextView)localObject2).setText(Utils.o1((Resources)localObject1, paramEvent.getEx().getCalendarDisplayName()));
    }
    ((TextView)localObject2).setCompoundDrawablesWithIntrinsicBounds(null, null, new BitmapDrawable((Resources)localObject1, x0.n((Resources)localObject1, i1, ((Resources)localObject1).getDimensionPixelSize(2131165726))), null);
    d0.a((View)localObject2, -1, -1, 0, -1);
    ((TextView)localObject2).setCompoundDrawablePadding(this.d0.getResources().getDimensionPixelSize(2131165752));
    k0();
    I0(paramEvent.getEx().getAttendeeList());
    h0();
    L0();
    this.f.setVisibility(0);
    this.e.setVisibility(8);
    n0();
    paramBoolean1 = com.miui.calendar.repeats.b.h(this.F0, this.s0);
    this.p0 = paramBoolean1;
    if (paramBoolean1)
    {
      this.n0 = RepeatSchema.fromEventRecurrence(this.F0);
      h0();
    }
    y0(RepeatEndSchema.fromEventRecurrence(this.F0));
    F0();
  }
  
  public void x0(int paramInt)
  {
    this.E0 = paramInt;
    L0();
    K0();
  }
  
  public void y0(RepeatEndSchema paramRepeatEndSchema)
  {
    this.o0 = paramRepeatEndSchema;
    i0();
    paramRepeatEndSchema = this.D;
    if ((paramRepeatEndSchema != null) && (this.o0.index < paramRepeatEndSchema.getCount())) {
      this.D.setSelection(this.o0.index);
    }
  }
  
  public void z0(RepeatSchema paramRepeatSchema)
  {
    miuix.appcompat.widget.Spinner localSpinner = this.y;
    int i1;
    if (localSpinner != null) {
      i1 = localSpinner.getSelectedItemPosition();
    } else {
      i1 = 0;
    }
    A0(i1, paramRepeatSchema);
  }
  
  class a
    implements View.OnClickListener
  {
    a(TextView paramTextView) {}
    
    public void onClick(View paramView)
    {
      q1.b(q1.this).f().removeFooterView(this.a);
      q1.c(q1.this).h();
      final int i = q1.c(q1.this).b(q1.r(q1.this));
      q1.b(q1.this).f().post(new a(i));
    }
    
    class a
      implements Runnable
    {
      a(int paramInt) {}
      
      public void run()
      {
        q1.b(q1.this).f().setItemChecked(i, true);
        q1.b(q1.this).f().setSelection(i);
      }
    }
  }
  
  class b
    implements CompoundButton.OnCheckedChangeListener
  {
    b() {}
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      if (q1.y(q1.this) == null)
      {
        z.m("Cal:D:EditEventView", "mAllDayCheckBox.onCheckedChanged(): model is NULL");
        return;
      }
      g0.d("edit_event_click_all_day");
      q1.L(q1.this, paramBoolean);
      q1.k(q1.this).h().setTimeZone(TimeZone.getTimeZone(q1.r(q1.this)));
      q1.n(q1.this).h().setTimeZone(TimeZone.getTimeZone(q1.r(q1.this)));
      paramCompoundButton = q1.this;
      q1.D(paramCompoundButton, q1.K(paramCompoundButton));
      j.m(q1.v(q1.this), q1.y(q1.this), q1.K(q1.this));
      q1.F(q1.this);
      q1.G(q1.this);
    }
  }
  
  class c
    implements View.OnClickListener
  {
    c() {}
    
    public void onClick(View paramView)
    {
      paramView = q1.this.X;
      paramView.setChecked(paramView.isChecked() ^ true);
    }
  }
  
  class d
    implements CompoundButton.OnCheckedChangeListener
  {
    d() {}
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      if (!paramBoolean) {
        com.android.calendar.settings.j.t(q1.v(q1.this), false);
      }
    }
  }
  
  class e
    implements View.OnClickListener
  {
    e() {}
    
    public void onClick(View paramView)
    {
      g0.d("edit_event_click_timezone");
      q1.H(q1.this);
    }
  }
  
  class f
    implements View.OnClickListener
  {
    f() {}
    
    public void onClick(View paramView)
    {
      g0.d("edit_event_click_repeats");
      if (q1.f(q1.this) == 0)
      {
        paramView = new Intent(q1.v(q1.this), RepeatActivity.class);
        paramView.putExtra("extra_event_time", q1.k(q1.this).P(true));
        paramView.putExtra("extra_repeat_time_zone", q1.r(q1.this));
        paramView.putExtra("extra_repeat_selection", q1.this.y.getSelectedItemPosition());
        if (q1.I(q1.this) != null) {
          paramView.putExtra("extra_custom_repeat_json", RepeatSchema.toJsonString(q1.I(q1.this)));
        }
        q1.v(q1.this).startActivity(paramView);
      }
      else
      {
        q1.this.y.performClick();
      }
    }
  }
  
  class g
    implements View.OnClickListener
  {
    g() {}
    
    public void onClick(View paramView)
    {
      g0.d("edit_event_click_repeats_end");
      paramView = new Intent(q1.v(q1.this), RepeatEndActivity.class);
      paramView.putExtra("extra_event_time", q1.k(q1.this).P(true));
      if (q1.J(q1.this) != null) {
        paramView.putExtra("extra_repeat_end_json", RepeatEndSchema.toJsonString(q1.J(q1.this)));
      }
      q1.v(q1.this).startActivity(paramView);
    }
  }
  
  class h
    implements View.OnClickListener
  {
    h() {}
    
    public void onClick(View paramView)
    {
      g0.d("edit_event_click_calendar_selector");
      q1.this.w.performClick();
    }
  }
  
  class i
    implements View.OnClickListener
  {
    i() {}
    
    public void onClick(View paramView)
    {
      if (q1.y(q1.this) == null)
      {
        z.m("Cal:D:EditEventView", "mRemindersRow.onClick(): model is NULL");
        return;
      }
      g0.d("edit_event_click_reminder");
      Intent localIntent = new Intent();
      localIntent.setClass(q1.v(q1.this), NewEditReminderActivity.class);
      paramView = new ArrayList();
      Object localObject = q1.y(q1.this).getEx().getReminders().iterator();
      while (((Iterator)localObject).hasNext()) {
        paramView.add(Integer.valueOf(((Reminder)((Iterator)localObject).next()).getMinutes()));
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("prepareReminders(): reminderMinutes:");
      ((StringBuilder)localObject).append(paramView);
      z.a("Cal:D:EditEventView", ((StringBuilder)localObject).toString());
      localIntent.putExtra("extra_reminders", paramView);
      localIntent.putExtra("extra_allday", q1.K(q1.this));
      localIntent.putExtra("extra_max_reminders", q1.y(q1.this).getEx().getCalendarMaxReminders());
      q1.v(q1.this).startActivity(localIntent);
    }
  }
  
  class j
    implements e.d
  {
    j(boolean paramBoolean1, boolean paramBoolean2) {}
    
    public void a(e parame, int paramInt, long paramLong)
    {
      q1.g(q1.this, paramInt);
      parame = new r0();
      parame.D(paramLong);
      q1.h(q1.this, parame.v(), parame.p(), parame.q(), parame.m(), parame.o(), paramBoolean1, paramBoolean2);
      parame = q1.this;
      q1.j(parame, q1.k(parame).P(true));
      parame = q1.this;
      q1.m(parame, q1.n(parame).P(true));
      q1.o(q1.this).dismiss();
      q1.p(q1.this);
      q1.q(q1.this);
      q1.s(q1.this);
    }
  }
  
  class k
    implements c.d
  {
    k(boolean paramBoolean) {}
    
    public void a(h4.c paramc, int paramInt1, boolean paramBoolean, int paramInt2, int paramInt3, int paramInt4, String paramString)
    {
      q1.g(q1.this, paramInt1);
      q1.h(q1.this, paramInt2, paramInt3, paramInt4, 0, 0, paramBoolean, false);
      paramc = q1.this;
      q1.j(paramc, q1.k(paramc).P(true));
      paramc = q1.this;
      q1.m(paramc, q1.n(paramc).P(true));
      q1.t(q1.this).dismiss();
      q1.p(q1.this);
      q1.q(q1.this);
      q1.s(q1.this);
    }
  }
  
  class l
    implements View.OnAttachStateChangeListener
  {
    l() {}
    
    public void onViewAttachedToWindow(View paramView) {}
    
    public void onViewDetachedFromWindow(View paramView)
    {
      q1.d(q1.this).removeCallbacksAndMessages(null);
      q1.e(q1.this, null);
    }
  }
  
  class m
    implements Runnable
  {
    m() {}
    
    public void run()
    {
      q1.u(q1.this);
    }
  }
  
  class n
    implements TextView.OnEditorActionListener
  {
    n() {}
    
    public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
    {
      if ((paramKeyEvent != null) && (paramKeyEvent.getKeyCode() == 66))
      {
        x0.l0(q1.v(q1.this), q1.this.F);
        return true;
      }
      return false;
    }
  }
  
  class o
    implements TextWatcher
  {
    o() {}
    
    public void afterTextChanged(Editable paramEditable)
    {
      paramEditable = paramEditable.toString();
      if ((!TextUtils.equals(paramEditable, q1.w(q1.this))) && (!TextUtils.equals(paramEditable, q1.y(q1.this).getTitle())))
      {
        q1.d(q1.this).removeCallbacks(q1.z(q1.this));
        q1.B(q1.this, paramEditable);
        q1.d(q1.this).postDelayed(q1.z(q1.this), 300L);
      }
    }
    
    public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
    {
      q1.x(q1.this, paramCharSequence.toString());
    }
    
    public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  }
  
  class p
    implements Runnable
  {
    p() {}
    
    public void run()
    {
      z.a("Cal:D:EditEventView", "handleTimeParse start");
      long l1 = q1.i(q1.this);
      long l2 = q1.l(q1.this);
      boolean bool = q1.K(q1.this);
      if (TextUtils.isEmpty(q1.A(q1.this)))
      {
        q1.C(q1.this, l1, l2, bool, null);
        return;
      }
      TimeParser.a(q1.v(q1.this), q1.A(q1.this), new r1(this, l1, l2, bool));
    }
  }
  
  class q
    implements View.OnClickListener
  {
    q() {}
    
    public void onClick(View paramView)
    {
      paramView = q1.this.v;
      paramView.setChecked(paramView.isChecked() ^ true);
    }
  }
  
  public static abstract interface r
  {
    public abstract void e(String paramString, int paramInt);
  }
  
  private class s
    implements View.OnClickListener
  {
    private ZonedDateTime a;
    private boolean b;
    private boolean c;
    
    public s(ZonedDateTime paramZonedDateTime, boolean paramBoolean1, boolean paramBoolean2)
    {
      this.a = paramZonedDateTime;
      this.b = paramBoolean1;
      this.c = paramBoolean2;
    }
    
    public void onClick(View paramView)
    {
      q1.E(q1.this);
      if (this.b) {
        g0.d("edit_event_click_start");
      } else {
        g0.d("edit_event_click_end");
      }
      q1.d(q1.this).postDelayed(new a(), 200L);
    }
    
    class a
      implements Runnable
    {
      a() {}
      
      public void run()
      {
        q1.s locals;
        if (!q1.K(q1.this))
        {
          locals = q1.s.this;
          q1.M(locals.d, q1.s.a(locals), q1.s.b(q1.s.this), q1.s.c(q1.s.this));
        }
        else
        {
          locals = q1.s.this;
          q1.N(locals.d, q1.s.a(locals), q1.s.b(q1.s.this));
        }
      }
    }
  }
  
  private static final class t
  {
    public int a;
    public int b;
    
    public t(int paramInt1, int paramInt2)
    {
      this.a = paramInt1;
      this.b = paramInt2;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.q1
 * JD-Core Version:    0.7.0.1
 */