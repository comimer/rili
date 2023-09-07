package com.android.calendar.event.v2;

import android.app.Activity;
import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.database.AbstractCursor;
import android.database.MatrixCursor;
import android.graphics.Paint;
import android.net.Uri;
import android.os.Bundle;
import android.provider.CalendarContract.Attendees;
import android.provider.CalendarContract.Calendars;
import android.provider.CalendarContract.Events;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.AgendaEvent;
import com.android.calendar.common.event.schema.AgendaEvent.Calendar;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.common.event.schema.Reminder;
import com.android.calendar.event.AttendeesActivity;
import com.android.calendar.event.EditEventActivity;
import com.android.calendar.event.EventInfoActivity;
import com.android.calendar.event.EventInfoActivity.EventInfo;
import com.android.calendar.event.NewBaseEditFragment.f;
import com.android.calendar.event.NewEditReminderActivity;
import com.android.calendar.event.d0;
import com.android.calendar.event.f0;
import com.android.calendar.event.i.c;
import com.miui.calendar.repeats.RepeatEndSchema;
import com.miui.calendar.repeats.RepeatSchema;
import com.miui.calendar.util.b0;
import com.miui.calendar.util.calendarcommon2.EventRecurrence;
import com.miui.calendar.util.g.s;
import com.miui.calendar.util.p0.b;
import com.miui.calendar.util.p0.c;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.j0;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.s1;
import kotlinx.coroutines.s1.a;
import kotlinx.coroutines.w0;
import miuix.appcompat.widget.Spinner;
import miuix.slidingwidget.widget.SlidingButton;
import o1.i.d;
import org.greenrobot.eventbus.ThreadMode;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/v2/AgendaEventInfoFragment;", "Lcom/android/calendar/event/v2/BaseEventInfoFragment;", "Lcom/android/calendar/common/event/schema/AgendaEvent;", "Lkotlin/u;", "g1", "e1", "B0", "", "status", "", "c1", "event", "x0", "", "attendeeId", "i1", "Lcom/miui/calendar/util/g$s;", "d1", "editReminderDoneEvent", "Z0", "needForceSave", "b1", "h1", "Landroid/widget/TextView;", "textView", "", "str", "width", "y0", "(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;", "Landroid/content/Context;", "context", "onAttach", "onResume", "onPause", "eventId", "C0", "O0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "isVisible", "y", "onDestroy", "onEventMainThread", "originEventId", "A0", "(Ljava/lang/Long;)Ljava/lang/String;", "z0", "Lkotlin/Function1;", "deleteCallback", "w", "x", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "l", "Landroid/view/View;", "rootView", "Landroid/widget/FrameLayout;", "m", "Landroid/widget/FrameLayout;", "cardView", "n", "Landroid/widget/TextView;", "titleShortTextView", "o", "titleFullTextView", "p", "titleFullTextViewFl", "q", "fullDateLocationFl", "r", "eventInfoDetailContainer", "v", "locationShortTextView", "datetimeShortTextView", "datetimeAndLocationShort", "locationFullTextView", "z", "datetimeFullTextView", "D", "datetimeAndLocationFull", "Landroid/widget/ImageView;", "E", "Landroid/widget/ImageView;", "locationShortImageView", "F", "locationFullImageView", "G", "cardBottomMask", "H", "thirdPartyV2LinkTextView", "I", "headContainer", "Landroid/widget/RadioGroup;", "J", "Landroid/widget/RadioGroup;", "responseRadioGroup", "Landroid/view/ViewStub;", "K", "Landroid/view/ViewStub;", "responseRadioGroupVs", "L", "fullDateLocationVs", "M", "fullTextVs", "N", "Landroid/view/ViewGroup;", "descriptionContainer", "O", "descriptionTextView", "P", "expandCollapseTextView", "Q", "repeatContainer", "R", "repeatStartTextView", "S", "repeatEndContainer", "T", "repeatEndTextView", "U", "repeatStartContainer", "V", "calendarContainer", "Lmiuix/appcompat/widget/Spinner;", "W", "Lmiuix/appcompat/widget/Spinner;", "calendarSpinner", "X", "reminderContainer", "Y", "reminderTextView", "Z", "alarmContainer", "Lmiuix/slidingwidget/widget/SlidingButton;", "a0", "Lmiuix/slidingwidget/widget/SlidingButton;", "alarmSlidingButton", "b0", "attendeesContainer", "c0", "attendeesTextView", "d0", "hasAttendee", "e0", "isRepeating", "", "f0", "titleShortDoubleLineHeight", "g0", "datetimeShortTranslateY", "h0", "titleShortSingleLineHeight", "i0", "datetimeShortSingleLineTranslateY", "j0", "titleTranslateY", "k0", "datetimeTranslateY", "l0", "titleSingleLineTextSize", "m0", "titleDoubleLineTextSize", "n0", "isFull", "o0", "isPaused", "Lcom/android/calendar/event/l;", "p0", "Lcom/android/calendar/event/l;", "editResponseHelper", "Lcom/android/calendar/event/b;", "q0", "Lcom/android/calendar/event/b;", "deleteEventHelper", "Landroid/database/MatrixCursor;", "r0", "Landroid/database/MatrixCursor;", "calendarCursor", "Lkotlinx/coroutines/s1;", "s0", "Lkotlinx/coroutines/s1;", "mJob", "t0", "mEllipsizedJob", "u0", "Lcom/android/calendar/common/event/schema/AgendaEvent;", "mAgendaEvent", "v0", "Ljava/lang/String;", "mDisplayedDatetime", "w0", "mFullTitleViewInit", "s", "()Z", "needRefreshOnResume", "<init>", "()V", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class AgendaEventInfoFragment
  extends BaseEventInfoFragment<AgendaEvent>
{
  public static final a y0 = new a(null);
  private View D;
  private ImageView E;
  private ImageView F;
  private View G;
  private TextView H;
  private View I;
  private RadioGroup J;
  private ViewStub K;
  private ViewStub L;
  private ViewStub M;
  private ViewGroup N;
  private TextView O;
  private TextView P;
  private ViewGroup Q;
  private TextView R;
  private ViewGroup S;
  private TextView T;
  private ViewGroup U;
  private ViewGroup V;
  private Spinner W;
  private ViewGroup X;
  private TextView Y;
  private ViewGroup Z;
  private SlidingButton a0;
  private ViewGroup b0;
  private TextView c0;
  private boolean d0;
  private boolean e0;
  private float f0;
  private float g0;
  private float h0;
  private float i0;
  private float j0;
  private float k0;
  private View l;
  private float l0;
  private FrameLayout m;
  private float m0;
  private TextView n;
  private boolean n0;
  private TextView o;
  private boolean o0 = true;
  private View p;
  private com.android.calendar.event.l p0;
  private View q;
  private com.android.calendar.event.b q0;
  private View r;
  private MatrixCursor r0;
  private s1 s0;
  private s1 t0;
  private AgendaEvent u0;
  private TextView v;
  private String v0 = "";
  private TextView w;
  private boolean w0;
  private View x;
  public Map<Integer, View> x0;
  private TextView y;
  private TextView z;
  
  private final void B0()
  {
    if (this.u0 == null) {
      return;
    }
    Object localObject1 = this.L;
    Object localObject2 = null;
    if (localObject1 != null) {
      localObject1 = ((View)localObject1).getParent();
    } else {
      localObject1 = null;
    }
    if (localObject1 != null)
    {
      localObject1 = this.L;
      if (localObject1 != null)
      {
        localObject1 = ((ViewStub)localObject1).inflate();
        break label52;
      }
    }
    localObject1 = null;
    label52:
    Object localObject3 = this.M;
    if (localObject3 != null) {
      localObject3 = ((View)localObject3).getParent();
    } else {
      localObject3 = null;
    }
    if (localObject3 != null)
    {
      localObject3 = this.M;
      if (localObject3 != null)
      {
        localObject3 = ((ViewStub)localObject3).inflate();
        break label94;
      }
    }
    localObject3 = null;
    label94:
    if ((localObject1 != null) && (localObject3 != null))
    {
      localObject1 = ((View)localObject1).findViewById(2131362275);
      kotlin.jvm.internal.r.e(localObject1, "dateLocation.findViewByI…atetime_location_full_fl)");
      this.q = ((View)localObject1);
      localObject3 = ((View)localObject3).findViewById(2131362276);
      kotlin.jvm.internal.r.e(localObject3, "fullTextView.findViewByI…me_location_full_text_fl)");
      this.p = ((View)localObject3);
      localObject1 = localObject3;
      if (localObject3 == null)
      {
        kotlin.jvm.internal.r.x("titleFullTextViewFl");
        localObject1 = null;
      }
      this.o = ((TextView)((View)localObject1).findViewById(2131363478));
      localObject3 = this.q;
      localObject1 = localObject3;
      if (localObject3 == null)
      {
        kotlin.jvm.internal.r.x("fullDateLocationFl");
        localObject1 = null;
      }
      this.y = ((TextView)((View)localObject1).findViewById(2131363447));
      this.z = ((TextView)((View)localObject1).findViewById(2131363438));
      this.D = ((View)localObject1).findViewById(2131362274);
      this.F = ((ImageView)((View)localObject1).findViewById(2131362647));
      TextView localTextView = this.n;
      if (localTextView != null)
      {
        localObject3 = localTextView.getPaint();
        localObject1 = this.u0;
        kotlin.jvm.internal.r.c(localObject1);
        int i;
        if (((Paint)localObject3).measureText(((Event)localObject1).getTitle()) <= localTextView.getWidth()) {
          i = 1;
        } else {
          i = 0;
        }
        localObject1 = this.x;
        if (localObject1 != null) {
          ((View)localObject1).setTranslationY(this.k0);
        }
        if (i != 0)
        {
          localObject1 = this.o;
          if (localObject1 != null) {
            ((TextView)localObject1).setTextSize(0, this.l0);
          }
        }
        else
        {
          localObject1 = this.o;
          if (localObject1 != null) {
            ((TextView)localObject1).setTextSize(0, this.m0);
          }
        }
      }
      localObject3 = this.o;
      if (localObject3 != null)
      {
        localObject1 = this.u0;
        kotlin.jvm.internal.r.c(localObject1);
        ((TextView)localObject3).setText(((Event)localObject1).getTitle());
      }
      localObject1 = this.u0;
      kotlin.jvm.internal.r.c(localObject1);
      if (TextUtils.isEmpty(((Event)localObject1).getLocation()))
      {
        localObject1 = this.y;
        if (localObject1 != null) {
          ((View)localObject1).setVisibility(8);
        }
        localObject1 = this.F;
        if (localObject1 != null) {
          ((ImageView)localObject1).setVisibility(8);
        }
      }
      else
      {
        localObject1 = this.y;
        if (localObject1 != null) {
          ((View)localObject1).setVisibility(0);
        }
        localObject1 = this.F;
        if (localObject1 != null) {
          ((ImageView)localObject1).setVisibility(0);
        }
        localObject1 = this.y;
        if (localObject1 != null)
        {
          localObject3 = this.u0;
          kotlin.jvm.internal.r.c(localObject3);
          ((TextView)localObject1).setText(((Event)localObject3).getLocation());
        }
      }
      localObject3 = this.p;
      localObject1 = localObject3;
      if (localObject3 == null)
      {
        kotlin.jvm.internal.r.x("titleFullTextViewFl");
        localObject1 = null;
      }
      ((View)localObject1).setTranslationY(this.f0);
      localObject3 = this.p;
      localObject1 = localObject3;
      if (localObject3 == null)
      {
        kotlin.jvm.internal.r.x("titleFullTextViewFl");
        localObject1 = null;
      }
      ((View)localObject1).setAlpha(0.0F);
      if (!TextUtils.isEmpty(this.v0))
      {
        localObject1 = this.z;
        if (localObject1 != null) {
          ((TextView)localObject1).setText(this.v0);
        }
      }
      localObject3 = this.q;
      localObject1 = localObject3;
      if (localObject3 == null)
      {
        kotlin.jvm.internal.r.x("fullDateLocationFl");
        localObject1 = null;
      }
      ((View)localObject1).setTranslationY(this.g0);
      localObject1 = this.q;
      if (localObject1 == null)
      {
        kotlin.jvm.internal.r.x("fullDateLocationFl");
        localObject1 = localObject2;
      }
      ((View)localObject1).setAlpha(0.0F);
      this.w0 = true;
    }
  }
  
  private static final void D0(AgendaEventInfoFragment paramAgendaEventInfoFragment, View paramView)
  {
    kotlin.jvm.internal.r.f(paramAgendaEventInfoFragment, "this$0");
    paramAgendaEventInfoFragment.k();
  }
  
  private static final void E0(AgendaEventInfoFragment paramAgendaEventInfoFragment, View paramView)
  {
    kotlin.jvm.internal.r.f(paramAgendaEventInfoFragment, "this$0");
    if (com.miui.calendar.util.n.c) {
      return;
    }
    if (paramAgendaEventInfoFragment.n0) {
      paramAgendaEventInfoFragment.g1();
    } else {
      paramAgendaEventInfoFragment.e1();
    }
    paramAgendaEventInfoFragment.n0 ^= true;
  }
  
  private static final void F0(View paramView) {}
  
  private static final void G0(View paramView) {}
  
  private static final void H0(View paramView) {}
  
  private static final void I0(View paramView) {}
  
  private static final void J0(View paramView) {}
  
  private static final void K0(AgendaEventInfoFragment paramAgendaEventInfoFragment, View paramView)
  {
    kotlin.jvm.internal.r.f(paramAgendaEventInfoFragment, "this$0");
    paramAgendaEventInfoFragment = paramAgendaEventInfoFragment.a0;
    if (paramAgendaEventInfoFragment != null) {
      paramAgendaEventInfoFragment.performClick();
    }
  }
  
  private static final void L0(AgendaEventInfoFragment paramAgendaEventInfoFragment, View paramView)
  {
    kotlin.jvm.internal.r.f(paramAgendaEventInfoFragment, "this$0");
    paramAgendaEventInfoFragment = paramAgendaEventInfoFragment.n;
    if (paramAgendaEventInfoFragment != null) {
      paramAgendaEventInfoFragment.performClick();
    }
  }
  
  private static final void M0(AgendaEventInfoFragment paramAgendaEventInfoFragment, DialogInterface paramDialogInterface)
  {
    kotlin.jvm.internal.r.f(paramAgendaEventInfoFragment, "this$0");
    paramAgendaEventInfoFragment.z(false);
  }
  
  private static final void N0(AgendaEventInfoFragment paramAgendaEventInfoFragment, w7.l paraml, int paramInt)
  {
    kotlin.jvm.internal.r.f(paramAgendaEventInfoFragment, "this$0");
    if (!paramAgendaEventInfoFragment.o0) {
      paramAgendaEventInfoFragment.z(false);
    }
    if (paraml != null) {
      paraml.invoke(Integer.valueOf(paramInt));
    }
  }
  
  private static final void P0(final AgendaEvent paramAgendaEvent, AgendaEventInfoFragment paramAgendaEventInfoFragment, final CompoundButton paramCompoundButton, final boolean paramBoolean)
  {
    kotlin.jvm.internal.r.f(paramAgendaEvent, "$event");
    kotlin.jvm.internal.r.f(paramAgendaEventInfoFragment, "this$0");
    if (paramBoolean == paramAgendaEvent.isNeedAlarm()) {
      return;
    }
    paramCompoundButton = paramAgendaEventInfoFragment.getActivity();
    if (paramCompoundButton != null) {
      if (paramAgendaEventInfoFragment.e0)
      {
        EventEx localEventEx = paramAgendaEvent.getEx();
        Object localObject1 = paramAgendaEventInfoFragment.p();
        if (localObject1 != null)
        {
          localEventEx.setOriginalStart(((EventInfoActivity.EventInfo)localObject1).getStartMillis());
          localEventEx.setOriginalEnd(((EventInfoActivity.EventInfo)localObject1).getStartMillis());
          Object localObject2 = (AgendaEvent)paramAgendaEventInfoFragment.t();
          boolean bool1 = false;
          boolean bool2 = bool1;
          if (localObject2 != null)
          {
            localObject2 = ((Event)localObject2).getEx();
            bool2 = bool1;
            if (localObject2 != null)
            {
              bool2 = bool1;
              if (((EventInfoActivity.EventInfo)localObject1).getStartMillis() == ((EventEx)localObject2).getStart()) {
                bool2 = true;
              }
            }
          }
          localEventEx.setFirstEventInSeries(bool2);
          localEventEx.setStart(((EventInfoActivity.EventInfo)localObject1).getStartMillis());
          localEventEx.setEnd(((EventInfoActivity.EventInfo)localObject1).getEndMillis());
        }
        localEventEx.setRrule(null);
        localObject1 = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, paramAgendaEvent.getId());
        kotlin.jvm.internal.r.e(localObject1, "withAppendedId(Events.CONTENT_URI, event.id)");
        localEventEx.setUri(((Uri)localObject1).toString());
        new com.android.calendar.event.i(paramCompoundButton, paramAgendaEvent, paramAgendaEventInfoFragment.t()).f(paramBoolean, new i.c()
        {
          public void a()
          {
            SlidingButton localSlidingButton = AgendaEventInfoFragment.e0(this.a);
            if (localSlidingButton != null) {
              localSlidingButton.setChecked(paramBoolean ^ true);
            }
          }
          
          public void b()
          {
            try
            {
              AgendaEventInfoFragment localAgendaEventInfoFragment = this.a;
              k0 localk0 = l0.a(w0.b());
              SuspendLambda local1 = new com/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1;
              local1.<init>(this.a, paramCompoundButton, null);
              AgendaEventInfoFragment.v0(localAgendaEventInfoFragment, kotlinx.coroutines.h.d(localk0, null, null, local1, 3, null));
            }
            catch (Exception localException)
            {
              z.d("Cal:D:AgendaEventInfoFragment", "alarm onSuccess error", localException);
              paramCompoundButton.finish();
            }
          }
          
          public void c()
          {
            paramAgendaEvent.setNeedAlarm(paramBoolean);
            AgendaEvent localAgendaEvent = (AgendaEvent)this.a.t();
            if (localAgendaEvent != null) {
              localAgendaEvent.setNeedAlarm(paramBoolean);
            }
          }
        });
      }
      else
      {
        paramAgendaEvent.setNeedAlarm(paramBoolean);
        com.android.calendar.event.i.h(paramCompoundButton, paramAgendaEvent);
      }
    }
  }
  
  private static final void Q0(AgendaEventInfoFragment paramAgendaEventInfoFragment, AgendaEvent paramAgendaEvent, View paramView)
  {
    kotlin.jvm.internal.r.f(paramAgendaEventInfoFragment, "this$0");
    kotlin.jvm.internal.r.f(paramAgendaEvent, "$event");
    paramView = new Intent(paramAgendaEventInfoFragment.getContext(), AttendeesActivity.class);
    paramView.putExtra("extra_event", paramAgendaEvent);
    paramAgendaEventInfoFragment.startActivity(paramView);
  }
  
  private static final void R0(AgendaEventInfoFragment paramAgendaEventInfoFragment, AgendaEvent paramAgendaEvent, View paramView)
  {
    kotlin.jvm.internal.r.f(paramAgendaEventInfoFragment, "this$0");
    kotlin.jvm.internal.r.f(paramAgendaEvent, "$event");
    com.miui.calendar.thirdparty.d.h(paramAgendaEventInfoFragment.getContext(), paramAgendaEvent.getThirdPartyEPAction(), paramAgendaEvent.getThirdPartyEPData(), paramAgendaEvent.getThirdPartyEPPackageName(), 0, paramAgendaEvent.getThirdPartyEPData2());
  }
  
  private static final void S0(AgendaEventInfoFragment paramAgendaEventInfoFragment, AgendaEvent paramAgendaEvent, View paramView)
  {
    kotlin.jvm.internal.r.f(paramAgendaEventInfoFragment, "this$0");
    kotlin.jvm.internal.r.f(paramAgendaEvent, "$event");
    com.miui.calendar.thirdparty.d.h(paramAgendaEventInfoFragment.getContext(), paramAgendaEvent.getThirdPartyEPAction(), paramAgendaEvent.getThirdPartyEPData(), paramAgendaEvent.getThirdPartyEPPackageName(), 0, paramAgendaEvent.getThirdPartyEPData2());
  }
  
  private static final void T0(AgendaEventInfoFragment paramAgendaEventInfoFragment, AgendaEvent paramAgendaEvent, View paramView)
  {
    kotlin.jvm.internal.r.f(paramAgendaEventInfoFragment, "this$0");
    kotlin.jvm.internal.r.f(paramAgendaEvent, "$event");
    com.miui.calendar.thirdparty.d.a(paramAgendaEventInfoFragment.getContext(), paramAgendaEvent.getUrl());
  }
  
  private static final void U0(AgendaEventInfoFragment paramAgendaEventInfoFragment, AgendaEvent paramAgendaEvent, RadioGroup paramRadioGroup, int paramInt)
  {
    kotlin.jvm.internal.r.f(paramAgendaEventInfoFragment, "this$0");
    kotlin.jvm.internal.r.f(paramAgendaEvent, "$event");
    paramRadioGroup = paramAgendaEventInfoFragment.J;
    if (paramRadioGroup != null) {
      paramRadioGroup = Integer.valueOf(paramRadioGroup.getCheckedRadioButtonId());
    } else {
      paramRadioGroup = null;
    }
    int i = 1;
    if ((paramRadioGroup != null) && (paramRadioGroup.intValue() == 2131363013)) {
      paramInt = 1;
    } else if ((paramRadioGroup != null) && (paramRadioGroup.intValue() == 2131363011)) {
      paramInt = 4;
    } else if ((paramRadioGroup != null) && (paramRadioGroup.intValue() == 2131363012)) {
      paramInt = 2;
    } else {
      paramInt = 0;
    }
    if (paramInt == 0) {
      return;
    }
    paramRadioGroup = (AgendaEvent)paramAgendaEventInfoFragment.t();
    if (paramRadioGroup != null)
    {
      paramRadioGroup = paramRadioGroup.getEx();
      if ((paramRadioGroup != null) && (paramInt == paramRadioGroup.getSelfAttendeeStatus())) {}
    }
    else
    {
      i = 0;
    }
    if (i != 0) {
      return;
    }
    if (paramAgendaEvent.getCalendarOwnerAttendeeId() == -1L) {
      return;
    }
    if (paramAgendaEventInfoFragment.e0)
    {
      paramRadioGroup = paramAgendaEventInfoFragment.p0;
      if (paramRadioGroup != null)
      {
        paramRadioGroup.d(new o(paramAgendaEventInfoFragment, paramInt, paramAgendaEvent));
        paramRadioGroup.f(paramRadioGroup.c());
      }
    }
    else
    {
      paramAgendaEventInfoFragment.c1(paramInt);
    }
  }
  
  private static final void V0(AgendaEventInfoFragment paramAgendaEventInfoFragment, int paramInt1, AgendaEvent paramAgendaEvent, DialogInterface paramDialogInterface, int paramInt2)
  {
    kotlin.jvm.internal.r.f(paramAgendaEventInfoFragment, "this$0");
    kotlin.jvm.internal.r.f(paramAgendaEvent, "$event");
    int i = -1;
    if (paramInt2 != -2)
    {
      if (paramInt2 == -1) {
        paramAgendaEventInfoFragment.c1(paramInt1);
      }
    }
    else
    {
      paramDialogInterface = paramAgendaEventInfoFragment.p();
      Object localObject = null;
      if (paramDialogInterface != null) {
        paramDialogInterface = Integer.valueOf(paramDialogInterface.getAttendeeResponse());
      } else {
        paramDialogInterface = null;
      }
      if (paramDialogInterface != null)
      {
        paramDialogInterface = paramAgendaEventInfoFragment.p();
        paramInt2 = 0;
        paramInt1 = paramInt2;
        if (paramDialogInterface != null)
        {
          paramInt1 = paramInt2;
          if (paramDialogInterface.getAttendeeResponse() == 0) {
            paramInt1 = 1;
          }
        }
        if (paramInt1 == 0)
        {
          paramDialogInterface = paramAgendaEventInfoFragment.p();
          paramAgendaEvent = localObject;
          if (paramDialogInterface == null) {
            break label133;
          }
          paramAgendaEvent = Integer.valueOf(paramDialogInterface.getAttendeeResponse());
          break label133;
        }
      }
      paramAgendaEvent = Integer.valueOf(paramAgendaEvent.getAttendeeResponse());
      label133:
      if ((paramAgendaEvent != null) && (paramAgendaEvent.intValue() == 1))
      {
        paramInt1 = 2131363013;
      }
      else if ((paramAgendaEvent != null) && (paramAgendaEvent.intValue() == 4))
      {
        paramInt1 = 2131363011;
      }
      else if (paramAgendaEvent == null)
      {
        paramInt1 = i;
      }
      else
      {
        paramInt1 = i;
        if (paramAgendaEvent.intValue() == 2) {
          paramInt1 = 2131363012;
        }
      }
      paramAgendaEventInfoFragment = paramAgendaEventInfoFragment.J;
      if (paramAgendaEventInfoFragment != null) {
        paramAgendaEventInfoFragment.check(paramInt1);
      }
    }
  }
  
  private static final void W0(AgendaEventInfoFragment paramAgendaEventInfoFragment, final AgendaEvent paramAgendaEvent)
  {
    kotlin.jvm.internal.r.f(paramAgendaEventInfoFragment, "this$0");
    kotlin.jvm.internal.r.f(paramAgendaEvent, "$event");
    paramAgendaEventInfoFragment.t0 = kotlinx.coroutines.h.d(l0.a(w0.c()), null, null, new SuspendLambda(paramAgendaEventInfoFragment, paramAgendaEvent)
    {
      int label;
      
      public final kotlin.coroutines.c<kotlin.u> create(Object paramAnonymousObject, kotlin.coroutines.c<?> paramAnonymousc)
      {
        return new 1(this.this$0, paramAgendaEvent, paramAnonymousc);
      }
      
      public final Object invoke(k0 paramAnonymousk0, kotlin.coroutines.c<? super kotlin.u> paramAnonymousc)
      {
        return ((1)create(paramAnonymousk0, paramAnonymousc)).invokeSuspend(kotlin.u.a);
      }
      
      public final Object invokeSuspend(Object paramAnonymousObject)
      {
        Object localObject1 = kotlin.coroutines.intrinsics.a.d();
        int i = this.label;
        LinearLayout.LayoutParams localLayoutParams = null;
        if (i != 0)
        {
          if (i == 1) {
            kotlin.j.b(paramAnonymousObject);
          } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
          }
        }
        else
        {
          kotlin.j.b(paramAnonymousObject);
          paramAnonymousObject = kotlinx.coroutines.h.b(l0.a(w0.b()), null, null, new SuspendLambda(this.this$0, paramAgendaEvent)
          {
            int label;
            
            public final kotlin.coroutines.c<kotlin.u> create(Object paramAnonymous2Object, kotlin.coroutines.c<?> paramAnonymous2c)
            {
              return new 1(this.this$0, this.$event, paramAnonymous2c);
            }
            
            public final Object invoke(k0 paramAnonymous2k0, kotlin.coroutines.c<? super String> paramAnonymous2c)
            {
              return ((1)create(paramAnonymous2k0, paramAnonymous2c)).invokeSuspend(kotlin.u.a);
            }
            
            public final Object invokeSuspend(Object paramAnonymous2Object)
            {
              kotlin.coroutines.intrinsics.a.d();
              if (this.label == 0)
              {
                kotlin.j.b(paramAnonymous2Object);
                AgendaEventInfoFragment localAgendaEventInfoFragment = this.this$0;
                TextView localTextView = AgendaEventInfoFragment.j0(localAgendaEventInfoFragment);
                String str = this.$event.getDescription();
                paramAnonymous2Object = AgendaEventInfoFragment.j0(this.this$0);
                if (paramAnonymous2Object != null) {
                  paramAnonymous2Object = kotlin.coroutines.jvm.internal.a.b(paramAnonymous2Object.getWidth());
                } else {
                  paramAnonymous2Object = null;
                }
                return AgendaEventInfoFragment.d0(localAgendaEventInfoFragment, localTextView, str, paramAnonymous2Object);
              }
              throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
          }, 3, null);
          this.label = 1;
          localObject2 = paramAnonymousObject.E(this);
          paramAnonymousObject = localObject2;
          if (localObject2 == localObject1) {
            return localObject1;
          }
        }
        Object localObject2 = (String)paramAnonymousObject;
        if (localObject2 != null)
        {
          paramAnonymousObject = paramAgendaEvent;
          localObject1 = this.this$0;
          if (((String)localObject2).length() >= paramAnonymousObject.getDescription().length())
          {
            paramAnonymousObject = AgendaEventInfoFragment.k0((AgendaEventInfoFragment)localObject1);
            if (paramAnonymousObject != null) {
              paramAnonymousObject.setVisibility(8);
            }
          }
          else
          {
            paramAnonymousObject = AgendaEventInfoFragment.k0((AgendaEventInfoFragment)localObject1);
            if (paramAnonymousObject != null) {
              paramAnonymousObject.setVisibility(0);
            }
            TextView localTextView = AgendaEventInfoFragment.k0((AgendaEventInfoFragment)localObject1);
            paramAnonymousObject = localLayoutParams;
            if (localTextView != null) {
              paramAnonymousObject = localTextView.getLayoutParams();
            }
            kotlin.jvm.internal.r.d(paramAnonymousObject, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            localLayoutParams = (LinearLayout.LayoutParams)paramAnonymousObject;
            localLayoutParams.topMargin = ((int)x0.O(((BaseEventInfoFragment)localObject1).r(), -60.0F));
            paramAnonymousObject = AgendaEventInfoFragment.k0((AgendaEventInfoFragment)localObject1);
            if (paramAnonymousObject != null) {
              paramAnonymousObject.setLayoutParams(localLayoutParams);
            }
          }
          paramAnonymousObject = AgendaEventInfoFragment.j0((AgendaEventInfoFragment)localObject1);
          if (paramAnonymousObject != null) {
            paramAnonymousObject.setText((CharSequence)localObject2);
          }
        }
        return kotlin.u.a;
      }
    }, 3, null);
  }
  
  private static final void X0(AgendaEventInfoFragment paramAgendaEventInfoFragment, AgendaEvent paramAgendaEvent, View paramView)
  {
    kotlin.jvm.internal.r.f(paramAgendaEventInfoFragment, "this$0");
    kotlin.jvm.internal.r.f(paramAgendaEvent, "$event");
    paramView = paramAgendaEventInfoFragment.O;
    if (paramView != null) {
      paramView.setText(paramAgendaEvent.getDescription());
    }
    paramAgendaEventInfoFragment = paramAgendaEventInfoFragment.P;
    if (paramAgendaEventInfoFragment != null) {
      paramAgendaEventInfoFragment.setVisibility(8);
    }
  }
  
  private static final void Y0(AgendaEventInfoFragment paramAgendaEventInfoFragment, AgendaEvent paramAgendaEvent, View paramView)
  {
    kotlin.jvm.internal.r.f(paramAgendaEventInfoFragment, "this$0");
    kotlin.jvm.internal.r.f(paramAgendaEvent, "$event");
    Object localObject = paramAgendaEventInfoFragment.getContext();
    if (localObject != null)
    {
      paramView = new Intent();
      paramView.setClass((Context)localObject, NewEditReminderActivity.class);
      localObject = new ArrayList();
      Iterator localIterator = paramAgendaEvent.getEx().getReminders().iterator();
      while (localIterator.hasNext()) {
        ((ArrayList)localObject).add(Integer.valueOf(((Reminder)localIterator.next()).getMinutes()));
      }
      paramView.putExtra("extra_event_id", paramAgendaEvent.getId());
      paramView.putExtra("extra_reminders", (Serializable)localObject);
      paramView.putExtra("extra_allday", paramAgendaEvent.isAllDay());
      paramView.putExtra("extra_max_reminders", paramAgendaEvent.getEx().getCalendarMaxReminders());
      paramAgendaEventInfoFragment.startActivity(paramView);
    }
  }
  
  private final void Z0(g.s params)
  {
    if (params == null) {
      return;
    }
    ((AgendaEvent)n()).getEx().setReminders(params.a);
    TextView localTextView = this.Y;
    if (localTextView != null) {
      localTextView.setText(f0.b(getContext(), params.a, ((AgendaEvent)n()).isAllDay()));
    }
    h1();
    b1(true);
  }
  
  private static final void a1(AgendaEventInfoFragment paramAgendaEventInfoFragment)
  {
    kotlin.jvm.internal.r.f(paramAgendaEventInfoFragment, "this$0");
    paramAgendaEventInfoFragment = paramAgendaEventInfoFragment.I;
    if (paramAgendaEventInfoFragment != null) {
      paramAgendaEventInfoFragment.sendAccessibilityEvent(8);
    }
  }
  
  private final boolean b1(boolean paramBoolean)
  {
    Object localObject1 = t();
    int i = 0;
    if (localObject1 == null) {
      return false;
    }
    localObject1 = t();
    kotlin.jvm.internal.r.c(localObject1);
    Object localObject2 = (AgendaEvent)localObject1;
    localObject1 = new ArrayList(3);
    Object localObject3 = ((Event)localObject2).getEx().getReminders();
    localObject2 = ((AgendaEvent)n()).getEx().getReminders();
    kotlin.jvm.internal.r.e(localObject3, "originalReminders");
    kotlin.collections.t.y((List)localObject3);
    kotlin.jvm.internal.r.e(localObject2, "reminders");
    kotlin.collections.t.y((List)localObject2);
    if (!com.android.calendar.event.j.q((ArrayList)localObject1, ((AgendaEvent)n()).getId(), (ArrayList)localObject2, (ArrayList)localObject3, paramBoolean)) {
      return false;
    }
    localObject2 = new com.android.calendar.common.a(getActivity(), this);
    ((com.android.calendar.common.a)localObject2).m(0, null, CalendarContract.Calendars.CONTENT_URI.getAuthority(), (ArrayList)localObject1, 0L);
    localObject3 = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, ((AgendaEvent)n()).getId());
    kotlin.jvm.internal.r.e(localObject3, "withAppendedId(Events.CONTENT_URI, event.id)");
    if (((AgendaEvent)n()).getEx().getReminders().size() > 0) {
      i = 1;
    }
    if (i != ((AgendaEvent)n()).getEx().hasAlarm())
    {
      localObject1 = new ContentValues();
      ((ContentValues)localObject1).put("hasAlarm", Integer.valueOf(i));
      ((com.android.calendar.common.a)localObject2).q(0, null, (Uri)localObject3, (ContentValues)localObject1, null, null, 0L);
    }
    return true;
  }
  
  private final boolean c1(int paramInt)
  {
    if (paramInt == 0) {
      return false;
    }
    Object localObject = (AgendaEvent)t();
    if (localObject != null)
    {
      localObject = ((Event)localObject).getEx();
      if ((localObject != null) && (paramInt == ((EventEx)localObject).getSelfAttendeeStatus()))
      {
        i = 1;
        break label42;
      }
    }
    int i = 0;
    label42:
    if (i != 0) {
      return false;
    }
    if (((AgendaEvent)n()).getCalendarOwnerAttendeeId() == -1L) {
      return false;
    }
    if (!this.e0)
    {
      i1((AgendaEvent)n(), ((AgendaEvent)n()).getCalendarOwnerAttendeeId(), paramInt);
      return true;
    }
    localObject = this.p0;
    if (localObject != null) {
      localObject = Integer.valueOf(((com.android.calendar.event.l)localObject).c());
    } else {
      localObject = null;
    }
    if ((localObject != null) && (((Integer)localObject).intValue() == -1)) {
      return false;
    }
    if ((localObject != null) && (((Integer)localObject).intValue() == 0))
    {
      x0((AgendaEvent)n(), paramInt);
      return true;
    }
    if ((localObject != null) && (((Integer)localObject).intValue() == 1))
    {
      i1((AgendaEvent)n(), ((AgendaEvent)n()).getCalendarOwnerAttendeeId(), paramInt);
      return true;
    }
    Log.e("Cal:D:AgendaEventInfoFragment", "Unexpected choice for updating invitation response");
    return false;
  }
  
  private final void d1(g.s params)
  {
    if (getContext() == null) {
      return;
    }
    o1.i.k(getContext(), new b(params, this));
  }
  
  private final void e1()
  {
    B0();
    Object localObject = this.G;
    if (localObject != null) {
      ((View)localObject).setVisibility(8);
    }
    if (this.o != null)
    {
      localObject = this.m;
      if ((localObject != null) && (this.D != null) && (localObject != null)) {
        ((View)localObject).post(new k(this));
      }
    }
  }
  
  private static final void f1(AgendaEventInfoFragment paramAgendaEventInfoFragment)
  {
    kotlin.jvm.internal.r.f(paramAgendaEventInfoFragment, "this$0");
    Object localObject1 = paramAgendaEventInfoFragment.m;
    kotlin.jvm.internal.r.c(localObject1);
    int i = ((View)localObject1).getHeight();
    localObject1 = paramAgendaEventInfoFragment.o;
    kotlin.jvm.internal.r.c(localObject1);
    int j = ((View)localObject1).getHeight();
    localObject1 = paramAgendaEventInfoFragment.D;
    kotlin.jvm.internal.r.c(localObject1);
    j = (i - j - ((View)localObject1).getHeight()) / 2;
    localObject1 = miuix.animation.a.y(new View[] { paramAgendaEventInfoFragment.n }).a().q("end");
    miuix.animation.property.h localh1 = miuix.animation.property.h.n;
    localObject1 = ((miuix.animation.f)localObject1).i(localh1, 0);
    miuix.animation.property.h localh2 = miuix.animation.property.h.b;
    ((miuix.animation.f)localObject1).i(localh2, j).J("end", new d9.a[] { new d9.a().o(localh2, 0L, new float[0]).k(0, new float[] { 500.0F, 0.9F, 0.8F }), new d9.a() });
    View localView = paramAgendaEventInfoFragment.p;
    Object localObject2 = null;
    localObject1 = localView;
    if (localView == null)
    {
      kotlin.jvm.internal.r.x("titleFullTextViewFl");
      localObject1 = null;
    }
    miuix.animation.a.y(new View[] { localObject1 }).a().q("end").i(localh1, 1).i(localh2, j).J("end", new d9.a[] { new d9.a().o(localh2, 0L, new float[0]).k(0, new float[] { 500.0F, 0.9F, 0.8F }), new d9.a() });
    localObject1 = paramAgendaEventInfoFragment.o;
    kotlin.jvm.internal.r.c(localObject1);
    j += ((View)localObject1).getHeight();
    miuix.animation.a.y(new View[] { paramAgendaEventInfoFragment.x }).a().q("end").i(localh1, 0).i(localh2, j).J("end", new d9.a[] { new d9.a().o(localh2, 0L, new float[0]).k(0, new float[] { 500.0F, 0.9F, 0.8F }), new d9.a() });
    localView = paramAgendaEventInfoFragment.q;
    localObject1 = localView;
    if (localView == null)
    {
      kotlin.jvm.internal.r.x("fullDateLocationFl");
      localObject1 = null;
    }
    miuix.animation.a.y(new View[] { localObject1 }).a().q("end").i(localh1, 1).i(localh2, j).J("end", new d9.a[] { new d9.a().o(localh2, 0L, new float[0]).k(0, new float[] { 500.0F, 0.9F, 0.8F }), new d9.a() });
    localObject1 = miuix.animation.a.y(new View[] { paramAgendaEventInfoFragment.r }).a();
    localView = paramAgendaEventInfoFragment.r;
    paramAgendaEventInfoFragment = localObject2;
    if (localView != null) {
      paramAgendaEventInfoFragment = Integer.valueOf(localView.getHeight());
    }
    ((miuix.animation.f)localObject1).I(new Object[] { localh2, paramAgendaEventInfoFragment, new d9.a().k(0, new float[] { 500.0F, 0.9F, 0.8F }) });
  }
  
  private final void g1()
  {
    if (!this.w0) {
      return;
    }
    Object localObject1 = this.G;
    if (localObject1 != null) {
      ((View)localObject1).setVisibility(0);
    }
    localObject1 = miuix.animation.a.y(new View[] { this.n }).a().q("end");
    miuix.animation.property.h localh1 = miuix.animation.property.h.n;
    localObject1 = ((miuix.animation.f)localObject1).i(localh1, 1);
    miuix.animation.property.h localh2 = miuix.animation.property.h.b;
    ((miuix.animation.f)localObject1).m(localh2, this.j0).J("end", new d9.a[] { new d9.a() });
    View localView = this.p;
    Object localObject2 = null;
    localObject1 = localView;
    if (localView == null)
    {
      kotlin.jvm.internal.r.x("titleFullTextViewFl");
      localObject1 = null;
    }
    miuix.animation.a.y(new View[] { localObject1 }).a().q("end").i(localh1, 0).m(localh2, this.j0).J("end", new d9.a[] { new d9.a() });
    miuix.animation.a.y(new View[] { this.x }).a().q("end").i(localh1, 1).m(localh2, this.k0).J("end", new d9.a[] { new d9.a() });
    localObject1 = this.q;
    if (localObject1 == null)
    {
      kotlin.jvm.internal.r.x("fullDateLocationFl");
      localObject1 = localObject2;
    }
    miuix.animation.a.y(new View[] { localObject1 }).a().q("end").i(localh1, 0).m(localh2, this.k0).J("end", new d9.a[] { new d9.a() });
    miuix.animation.a.y(new View[] { this.r }).a().I(new Object[] { localh2, Integer.valueOf(0) });
  }
  
  private final void h1()
  {
    ViewGroup localViewGroup;
    if ((((AgendaEvent)n()).getEx().getReminders() != null) && (!((AgendaEvent)n()).getEx().getReminders().isEmpty()))
    {
      localViewGroup = this.Z;
      if (localViewGroup != null) {
        localViewGroup.setVisibility(0);
      }
    }
    else
    {
      localViewGroup = this.Z;
      if (localViewGroup != null) {
        localViewGroup.setVisibility(8);
      }
    }
  }
  
  private final void i1(AgendaEvent paramAgendaEvent, long paramLong, int paramInt)
  {
    ContentValues localContentValues = new ContentValues();
    if (!TextUtils.isEmpty(paramAgendaEvent.getEx().getOwnerAccount())) {
      localContentValues.put("attendeeEmail", paramAgendaEvent.getEx().getOwnerAccount());
    }
    localContentValues.put("attendeeStatus", Integer.valueOf(paramInt));
    localContentValues.put("event_id", Long.valueOf(paramAgendaEvent.getId()));
    paramAgendaEvent = ContentUris.withAppendedId(CalendarContract.Attendees.CONTENT_URI, paramLong);
    kotlin.jvm.internal.r.e(paramAgendaEvent, "withAppendedId(Attendees.CONTENT_URI, attendeeId)");
    Object localObject = getContext();
    if (localObject != null)
    {
      localObject = ((Context)localObject).getContentResolver();
      if (localObject != null) {
        ((ContentResolver)localObject).update(paramAgendaEvent, localContentValues, null, null);
      }
    }
  }
  
  private final void x0(AgendaEvent paramAgendaEvent, int paramInt)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("originalInstanceTime", Long.valueOf(paramAgendaEvent.getStartTimeMillis()));
    localContentValues.put("selfAttendeeStatus", Integer.valueOf(paramInt));
    localContentValues.put("eventStatus", Integer.valueOf(1));
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(ContentProviderOperation.newInsert(Uri.withAppendedPath(CalendarContract.Events.CONTENT_EXCEPTION_URI, String.valueOf(paramAgendaEvent.getId()))).withValues(localContentValues).build());
    paramAgendaEvent = getContext();
    if (paramAgendaEvent != null)
    {
      paramAgendaEvent = paramAgendaEvent.getContentResolver();
      if (paramAgendaEvent != null) {
        paramAgendaEvent.applyBatch("com.android.calendar", localArrayList);
      }
    }
  }
  
  private final String y0(TextView paramTextView, String paramString, Integer paramInteger)
  {
    if ((paramTextView != null) && (paramString != null) && (paramInteger != null) && (paramInteger.intValue() > 0))
    {
      paramTextView = paramTextView.getPaint();
      kotlin.jvm.internal.r.e(paramTextView, "textView.paint");
      if (paramTextView.measureText(paramString) < paramInteger.intValue() * 3) {
        return paramString;
      }
      float f1 = 0.0F;
      Object localObject1 = getContext();
      if (localObject1 != null) {
        f1 = paramTextView.measureText(((Context)localObject1).getString(2131886981)) / 8;
      }
      localObject1 = new ArrayList();
      Object localObject2;
      int j;
      for (int i = 0; i < paramString.length(); i = j)
      {
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("ellipsizeString end:");
        ((StringBuilder)localObject2).append(i);
        ((StringBuilder)localObject2).append(" str.length:");
        ((StringBuilder)localObject2).append(paramString.length());
        z.g("Cal:D:AgendaEventInfoFragment", ((StringBuilder)localObject2).toString());
        j = paramTextView.breakText(paramString, i, paramString.length(), true, paramInteger.intValue(), null);
        if (j == 0) {
          break;
        }
        j += i;
        String str = paramString.substring(i, j);
        kotlin.jvm.internal.r.e(str, "this as java.lang.String…ing(startIndex, endIndex)");
        i = kotlin.text.k.U(str, "\n", 0, false, 6, null);
        if (i >= 0)
        {
          i++;
          localObject2 = str.substring(0, i);
          kotlin.jvm.internal.r.e(localObject2, "this as java.lang.String…ing(startIndex, endIndex)");
          ((List)localObject1).add(localObject2);
          if (i < str.length())
          {
            localObject2 = str.substring(i, str.length());
            kotlin.jvm.internal.r.e(localObject2, "this as java.lang.String…ing(startIndex, endIndex)");
            ((List)localObject1).add(localObject2);
          }
        }
        else
        {
          ((List)localObject1).add(str);
        }
        if (((List)localObject1).size() > 3) {
          break;
        }
      }
      if (((Collection)localObject1).size() <= 3) {
        return paramString;
      }
      paramString = (String)((List)localObject1).get(2);
      paramInteger = new b8.c(0, 1).iterator();
      for (paramTextView = ""; paramInteger.hasNext(); paramTextView = ((StringBuilder)localObject2).toString())
      {
        i = ((j0)paramInteger).nextInt();
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append(paramTextView);
        ((StringBuilder)localObject2).append((String)((List)localObject1).get(i));
      }
      paramInteger = new StringBuilder();
      paramInteger.append(paramTextView);
      float f2 = paramString.length();
      paramTextView = "...";
      if (f2 > f1)
      {
        paramTextView = new StringBuilder();
        paramString = paramString.substring(0, paramString.length() - (int)f1);
        kotlin.jvm.internal.r.e(paramString, "this as java.lang.String…ing(startIndex, endIndex)");
        paramTextView.append(paramString);
        paramTextView.append("...");
        paramTextView = paramTextView.toString();
      }
      paramInteger.append(paramTextView);
      return paramInteger.toString();
    }
    return null;
  }
  
  protected final String A0(Long paramLong)
  {
    if ((t() != null) && (getContext() != null))
    {
      paramLong = com.miui.calendar.util.p0.d(requireContext().getApplicationContext()).u(CalendarContract.Events.CONTENT_URI).s("original_id=?").o(new String[] { String.valueOf(paramLong) }).r(new String[] { "_id" }).t(new Class[] { Integer.TYPE }).q("_id DESC").i();
      kotlin.jvm.internal.r.e(paramLong, "connect(requireContext()…\n                .query()");
      return paramLong.l(0).c(0);
    }
    return null;
  }
  
  protected AgendaEvent C0(long paramLong)
  {
    Object localObject1 = null;
    Object localObject3;
    try
    {
      Context localContext = getContext();
      Object localObject2 = p();
      if (localObject2 != null) {
        localObject2 = Long.valueOf(((EventInfoActivity.EventInfo)localObject2).getStartMillis());
      } else {
        localObject2 = null;
      }
      Object localObject4 = p();
      if (localObject4 != null) {
        localObject4 = Long.valueOf(((EventInfoActivity.EventInfo)localObject4).getEndMillis());
      } else {
        localObject4 = null;
      }
      localObject2 = a2.a.d(localContext, Long.valueOf(paramLong), (Long)localObject2, (Long)localObject4);
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      localObject3 = localObject1;
    }
    return localObject3;
  }
  
  protected void O0(final AgendaEvent paramAgendaEvent)
  {
    kotlin.jvm.internal.r.f(paramAgendaEvent, "event");
    if (getContext() == null) {
      return;
    }
    this.u0 = paramAgendaEvent;
    float f1;
    if (TextUtils.isEmpty(paramAgendaEvent.getLocation()))
    {
      localObject = this.v;
      if (localObject != null) {
        ((View)localObject).setVisibility(8);
      }
      localObject = this.E;
      if (localObject != null) {
        ((ImageView)localObject).setVisibility(8);
      }
      f1 = this.i0;
    }
    else
    {
      localObject = this.v;
      if (localObject != null) {
        ((TextView)localObject).setText(paramAgendaEvent.getLocation());
      }
      localObject = this.v;
      if (localObject != null) {
        ((View)localObject).setContentDescription(paramAgendaEvent.getLocation());
      }
      localObject = this.v;
      if (localObject != null) {
        ((View)localObject).setVisibility(0);
      }
      localObject = this.E;
      if (localObject != null) {
        ((ImageView)localObject).setVisibility(0);
      }
      f1 = this.g0;
    }
    this.k0 = f1;
    TextView localTextView = this.n;
    if (localTextView != null)
    {
      if (localTextView != null) {
        localTextView.setTextSize(0, this.l0);
      }
      if (localTextView.getPaint().measureText(paramAgendaEvent.getTitle()) <= localTextView.getWidth()) {
        i = 1;
      } else {
        i = 0;
      }
      localObject = this.x;
      if (localObject != null) {
        ((View)localObject).setTranslationY(this.k0);
      }
      float f2;
      if (i != 0)
      {
        localTextView.setTextSize(0, this.l0);
        f1 = this.k0;
        f2 = this.h0;
      }
      for (;;)
      {
        f1 -= f2;
        break;
        localTextView.setTextSize(0, this.m0);
        if (localTextView.getPaint().measureText(paramAgendaEvent.getTitle()) <= localTextView.getWidth()) {
          i = 1;
        } else {
          i = 0;
        }
        if (i != 0)
        {
          f1 = this.k0;
          f2 = this.h0;
        }
        else
        {
          f1 = this.k0;
          f2 = this.f0;
        }
      }
      this.j0 = f1;
      localTextView.setTranslationY(f1);
      localTextView.setText(paramAgendaEvent.getTitle());
    }
    Object localObject = l0.a(w0.b());
    localTextView = null;
    this.s0 = kotlinx.coroutines.h.d((k0)localObject, null, null, new SuspendLambda(paramAgendaEvent, null)
    {
      int label;
      
      public final kotlin.coroutines.c<kotlin.u> create(Object paramAnonymousObject, kotlin.coroutines.c<?> paramAnonymousc)
      {
        return new 2(this.this$0, paramAgendaEvent, paramAnonymousc);
      }
      
      public final Object invoke(k0 paramAnonymousk0, kotlin.coroutines.c<? super kotlin.u> paramAnonymousc)
      {
        return ((2)create(paramAnonymousk0, paramAnonymousc)).invokeSuspend(kotlin.u.a);
      }
      
      public final Object invokeSuspend(Object paramAnonymousObject)
      {
        Object localObject1 = kotlin.coroutines.intrinsics.a.d();
        final int i = this.label;
        int j = 1;
        Object localObject2;
        if (i != 0)
        {
          if (i != 1)
          {
            if (i == 2)
            {
              kotlin.j.b(paramAnonymousObject);
              break label297;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
          }
          kotlin.j.b(paramAnonymousObject);
        }
        else
        {
          kotlin.j.b(paramAnonymousObject);
          localObject2 = Utils.U(this.this$0.getContext());
          i = b0.a(this.this$0.getContext(), paramAgendaEvent.getEx().getRdate());
          localObject3 = Utils.w(paramAgendaEvent.getStartTimeMillis(), paramAgendaEvent.getEndTimeMillis(), System.currentTimeMillis(), (String)localObject2, paramAgendaEvent.isAllDay(), this.this$0.getContext(), i);
          paramAnonymousObject = this.this$0;
          kotlin.jvm.internal.r.e(localObject3, "displayedDatetime");
          AgendaEventInfoFragment.u0(paramAnonymousObject, (String)localObject3);
          paramAnonymousObject = w0.c();
          localObject3 = new SuspendLambda(this.this$0, (String)localObject3)
          {
            int label;
            
            public final kotlin.coroutines.c<kotlin.u> create(Object paramAnonymous2Object, kotlin.coroutines.c<?> paramAnonymous2c)
            {
              return new 1(this.this$0, this.$displayedDatetime, this.$event, this.$localTimezone, i, paramAnonymous2c);
            }
            
            public final Object invoke(k0 paramAnonymous2k0, kotlin.coroutines.c<? super kotlin.u> paramAnonymous2c)
            {
              return ((1)create(paramAnonymous2k0, paramAnonymous2c)).invokeSuspend(kotlin.u.a);
            }
            
            public final Object invokeSuspend(Object paramAnonymous2Object)
            {
              kotlin.coroutines.intrinsics.a.d();
              if (this.label == 0)
              {
                kotlin.j.b(paramAnonymous2Object);
                if (!this.this$0.isAdded()) {
                  return kotlin.u.a;
                }
                paramAnonymous2Object = AgendaEventInfoFragment.i0(this.this$0);
                if (paramAnonymous2Object != null) {
                  paramAnonymous2Object.setText(this.$displayedDatetime);
                }
                Object localObject1 = AgendaEventInfoFragment.m0(this.this$0);
                if (localObject1 != null)
                {
                  paramAnonymous2Object = new StringBuilder();
                  paramAnonymous2Object.append(this.this$0.getResources().getString(2131887593));
                  paramAnonymous2Object.append(',');
                  paramAnonymous2Object.append(this.this$0.getResources().getString(2131886559));
                  paramAnonymous2Object.append(this.$event.getTitle());
                  paramAnonymous2Object.append(',');
                  paramAnonymous2Object.append(this.this$0.getResources().getString(2131886553));
                  paramAnonymous2Object.append(this.$displayedDatetime);
                  ((View)localObject1).setContentDescription(paramAnonymous2Object.toString());
                }
                AgendaEventInfoFragment.w0(this.this$0, TextUtils.isEmpty(this.$event.getEx().getRrule()) ^ true);
                if (AgendaEventInfoFragment.r0(this.this$0))
                {
                  paramAnonymous2Object = AgendaEventInfoFragment.n0(this.this$0);
                  if (paramAnonymous2Object != null) {
                    paramAnonymous2Object.setVisibility(0);
                  }
                  paramAnonymous2Object = AgendaEventInfoFragment.o0(this.this$0);
                  if (paramAnonymous2Object != null) {
                    paramAnonymous2Object.setVisibility(0);
                  }
                  localObject1 = new EventRecurrence();
                  ((EventRecurrence)localObject1).j(this.$event.getEx().getRrule());
                  paramAnonymous2Object = new r0(this.$localTimezone);
                  paramAnonymous2Object.D(this.$event.getStartTimeMillis());
                  if (this.$event.isAllDay()) {
                    paramAnonymous2Object.L("UTC");
                  }
                  ((EventRecurrence)localObject1).a = paramAnonymous2Object;
                  Object localObject2;
                  if (!com.miui.calendar.repeats.b.h((EventRecurrence)localObject1, paramAnonymous2Object))
                  {
                    paramAnonymous2Object = d0.c(this.this$0.getResources(), (EventRecurrence)localObject1);
                  }
                  else
                  {
                    localObject2 = RepeatSchema.fromEventRecurrence((EventRecurrence)localObject1);
                    paramAnonymous2Object = com.miui.calendar.repeats.b.c(this.this$0.getContext(), (RepeatSchema)localObject2, paramAnonymous2Object);
                  }
                  localObject1 = RepeatEndSchema.fromEventRecurrence((EventRecurrence)localObject1).getRepeatEndString(this.this$0.getContext());
                  if (paramAnonymous2Object != null)
                  {
                    localObject2 = AgendaEventInfoFragment.q0(this.this$0);
                    if (localObject2 != null) {
                      ((TextView)localObject2).setText(paramAnonymous2Object);
                    }
                    paramAnonymous2Object = AgendaEventInfoFragment.p0(this.this$0);
                    if (paramAnonymous2Object != null) {
                      paramAnonymous2Object.setText((CharSequence)localObject1);
                    }
                  }
                }
                else if (i == 1)
                {
                  int i = b0.b(this.this$0.getContext(), this.$event.getEx().getRdate());
                  if (i != 2)
                  {
                    if (i != 3)
                    {
                      paramAnonymous2Object = null;
                    }
                    else
                    {
                      paramAnonymous2Object = this.this$0.getResources();
                      if (com.miui.calendar.util.y.f(this.this$0.getContext())) {
                        i = 2131887383;
                      } else {
                        i = 2131887382;
                      }
                      paramAnonymous2Object = paramAnonymous2Object.getString(i);
                    }
                  }
                  else
                  {
                    paramAnonymous2Object = this.this$0.getResources();
                    if (com.miui.calendar.util.y.f(this.this$0.getContext())) {
                      i = 2131887387;
                    } else {
                      i = 2131887386;
                    }
                    paramAnonymous2Object = paramAnonymous2Object.getString(i);
                  }
                  if (paramAnonymous2Object != null)
                  {
                    localObject1 = AgendaEventInfoFragment.q0(this.this$0);
                    if (localObject1 != null) {
                      ((TextView)localObject1).setText(paramAnonymous2Object);
                    }
                    paramAnonymous2Object = AgendaEventInfoFragment.o0(this.this$0);
                    if (paramAnonymous2Object != null) {
                      paramAnonymous2Object.setVisibility(8);
                    }
                  }
                }
                else
                {
                  paramAnonymous2Object = AgendaEventInfoFragment.n0(this.this$0);
                  if (paramAnonymous2Object != null) {
                    paramAnonymous2Object.setVisibility(8);
                  }
                }
                return kotlin.u.a;
              }
              throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
          };
          this.label = 1;
          if (kotlinx.coroutines.h.g(paramAnonymousObject, (w7.p)localObject3, this) == localObject1) {
            return localObject1;
          }
        }
        paramAnonymousObject = this.this$0.getContext();
        if (paramAnonymousObject != null)
        {
          localObject2 = paramAgendaEvent;
          localObject3 = this.this$0;
          if (((Event)localObject2).getEx().getCalendarAccessLevel() < 500) {
            j = 0;
          }
          if (j != 0) {
            paramAnonymousObject = a2.a.b(paramAnonymousObject);
          } else {
            paramAnonymousObject = a2.a.a(paramAnonymousObject);
          }
          AgendaEventInfoFragment.t0((AgendaEventInfoFragment)localObject3, paramAnonymousObject);
        }
        paramAnonymousObject = w0.c();
        Object localObject3 = new SuspendLambda(this.this$0, paramAgendaEvent)
        {
          int label;
          
          private static final void invokeSuspend$lambda-0(AgendaEventInfoFragment paramAnonymous2AgendaEventInfoFragment, View paramAnonymous2View)
          {
            paramAnonymous2AgendaEventInfoFragment = AgendaEventInfoFragment.h0(paramAnonymous2AgendaEventInfoFragment);
            if (paramAnonymous2AgendaEventInfoFragment != null) {
              paramAnonymous2AgendaEventInfoFragment.performClick();
            }
          }
          
          public final kotlin.coroutines.c<kotlin.u> create(Object paramAnonymous2Object, kotlin.coroutines.c<?> paramAnonymous2c)
          {
            return new 3(this.this$0, this.$event, paramAnonymous2c);
          }
          
          public final Object invoke(k0 paramAnonymous2k0, kotlin.coroutines.c<? super kotlin.u> paramAnonymous2c)
          {
            return ((3)create(paramAnonymous2k0, paramAnonymous2c)).invokeSuspend(kotlin.u.a);
          }
          
          public final Object invokeSuspend(Object paramAnonymous2Object)
          {
            kotlin.coroutines.intrinsics.a.d();
            if (this.label == 0)
            {
              kotlin.j.b(paramAnonymous2Object);
              if (!this.this$0.isAdded()) {
                return kotlin.u.a;
              }
              if (AgendaEventInfoFragment.g0(this.this$0) != null)
              {
                paramAnonymous2Object = AgendaEventInfoFragment.h0(this.this$0);
                if (paramAnonymous2Object != null) {
                  paramAnonymous2Object.setAdapter(new NewBaseEditFragment.f(this.this$0.getContext(), AgendaEventInfoFragment.g0(this.this$0), false));
                }
                paramAnonymous2Object = AgendaEventInfoFragment.h0(this.this$0);
                if (paramAnonymous2Object != null) {
                  paramAnonymous2Object.setSelection(this.$event.getCalendarPosition());
                }
                if ((!AgendaEventInfoFragment.l0(this.this$0)) && (this.$event.getEx().canModifyEvent()) && (com.android.calendar.event.j.f(this.$event)))
                {
                  com.miui.calendar.util.v.k(AgendaEventInfoFragment.f0(this.this$0));
                  paramAnonymous2Object = AgendaEventInfoFragment.f0(this.this$0);
                  if (paramAnonymous2Object != null) {
                    paramAnonymous2Object.setOnClickListener(new x(this.this$0));
                  }
                  paramAnonymous2Object = AgendaEventInfoFragment.h0(this.this$0);
                  if (paramAnonymous2Object != null) {
                    paramAnonymous2Object.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
                    {
                      private static final void b(AgendaEventInfoFragment paramAnonymous3AgendaEventInfoFragment)
                      {
                        kotlin.jvm.internal.r.f(paramAnonymous3AgendaEventInfoFragment, "this$0");
                        androidx.fragment.app.d locald = paramAnonymous3AgendaEventInfoFragment.getActivity();
                        if (locald != null) {
                          try
                          {
                            k0 localk0 = l0.a(w0.b());
                            SuspendLambda local1 = new com/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3$2$onItemSelected$1$1$1;
                            local1.<init>(paramAnonymous3AgendaEventInfoFragment, locald, null);
                            AgendaEventInfoFragment.v0(paramAnonymous3AgendaEventInfoFragment, kotlinx.coroutines.h.d(localk0, null, null, local1, 3, null));
                          }
                          catch (Exception paramAnonymous3AgendaEventInfoFragment)
                          {
                            z.d("Cal:D:AgendaEventInfoFragment", "change calendar onSuccess error", paramAnonymous3AgendaEventInfoFragment);
                            locald.finish();
                          }
                        }
                      }
                      
                      public void onItemSelected(AdapterView<?> paramAnonymous3AdapterView, View paramAnonymous3View, int paramAnonymous3Int, long paramAnonymous3Long)
                      {
                        paramAnonymous3AdapterView = this.a.getCalendars();
                        if (paramAnonymous3AdapterView != null)
                        {
                          paramAnonymous3AdapterView = (AgendaEvent.Calendar)paramAnonymous3AdapterView.get(paramAnonymous3Int);
                          if (paramAnonymous3AdapterView != null)
                          {
                            if (this.a.getEx().getCalendarId() == paramAnonymous3AdapterView.getCalendarId()) {
                              return;
                            }
                            this.a.getEx().setCalendarId(paramAnonymous3AdapterView.getCalendarId());
                            this.a.getEx().setOrganizer(paramAnonymous3AdapterView.getOrganizer());
                            this.a.getEx().setAccountName(paramAnonymous3AdapterView.getAccountName());
                            this.a.getEx().setAccountType(paramAnonymous3AdapterView.getAccountType());
                            paramAnonymous3AdapterView = this.b.m();
                            paramAnonymous3Int = 1;
                            if ((paramAnonymous3AdapterView == null) || (paramAnonymous3AdapterView.p(this.a, this.b.t(), 3, true, new y(this.b)) != true)) {
                              paramAnonymous3Int = 0;
                            }
                            if (paramAnonymous3Int != 0)
                            {
                              paramAnonymous3AdapterView = this.b.getContext();
                              kotlin.jvm.internal.r.c(paramAnonymous3AdapterView);
                              t0.h(paramAnonymous3AdapterView, 2131887405, null, 4, null);
                            }
                          }
                        }
                      }
                      
                      public void onNothingSelected(AdapterView<?> paramAnonymous3AdapterView) {}
                    });
                  }
                }
                else
                {
                  paramAnonymous2Object = AgendaEventInfoFragment.f0(this.this$0);
                  if (paramAnonymous2Object != null) {
                    paramAnonymous2Object.setOnClickListener(null);
                  }
                  paramAnonymous2Object = AgendaEventInfoFragment.h0(this.this$0);
                  if (paramAnonymous2Object != null) {
                    paramAnonymous2Object.setOnItemSelectedListener(null);
                  }
                  paramAnonymous2Object = AgendaEventInfoFragment.h0(this.this$0);
                  if (paramAnonymous2Object != null) {
                    paramAnonymous2Object.setEnabled(false);
                  }
                }
              }
              return kotlin.u.a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
          }
        };
        this.label = 2;
        if (kotlinx.coroutines.h.g(paramAnonymousObject, (w7.p)localObject3, this) == localObject1) {
          return localObject1;
        }
        label297:
        return kotlin.u.a;
      }
    }, 3, null);
    if (!paramAgendaEvent.getEx().canRespond())
    {
      localObject = this.J;
      if (localObject != null) {
        ((View)localObject).setVisibility(8);
      }
    }
    else
    {
      localObject = this.K;
      if (localObject != null) {
        localObject = ((View)localObject).getParent();
      } else {
        localObject = null;
      }
      if (localObject != null)
      {
        localObject = this.K;
        if (localObject != null)
        {
          localObject = ((ViewStub)localObject).inflate();
          break label468;
        }
      }
      localObject = null;
      label468:
      if (localObject != null) {
        localObject = (RadioGroup)((View)localObject).findViewById(2131363061);
      } else {
        localObject = null;
      }
      this.J = ((RadioGroup)localObject);
      if (localObject != null) {
        ((View)localObject).setVisibility(0);
      }
      localObject = p();
      if (localObject != null) {
        localObject = Integer.valueOf(((EventInfoActivity.EventInfo)localObject).getAttendeeResponse());
      } else {
        localObject = null;
      }
      if (localObject != null)
      {
        localObject = p();
        if ((localObject != null) && (((EventInfoActivity.EventInfo)localObject).getAttendeeResponse() == 0)) {
          i = 1;
        } else {
          i = 0;
        }
        if (i == 0)
        {
          EventInfoActivity.EventInfo localEventInfo = p();
          localObject = localTextView;
          if (localEventInfo == null) {
            break label595;
          }
          localObject = Integer.valueOf(localEventInfo.getAttendeeResponse());
          break label595;
        }
      }
      localObject = Integer.valueOf(paramAgendaEvent.getAttendeeResponse());
      label595:
      if ((localObject != null) && (((Integer)localObject).intValue() == 1)) {
        i = 2131363013;
      } else if ((localObject != null) && (((Integer)localObject).intValue() == 4)) {
        i = 2131363011;
      } else if ((localObject != null) && (((Integer)localObject).intValue() == 2)) {
        i = 2131363012;
      } else {
        i = -1;
      }
      localObject = this.J;
      if (localObject != null) {
        ((RadioGroup)localObject).check(i);
      }
      localObject = this.J;
      if (localObject != null) {
        ((RadioGroup)localObject).setOnCheckedChangeListener(new a(this, paramAgendaEvent));
      }
    }
    if (TextUtils.isEmpty(paramAgendaEvent.getDescription()))
    {
      localObject = this.N;
      if (localObject != null) {
        ((View)localObject).setVisibility(8);
      }
    }
    else
    {
      localObject = this.N;
      if (localObject != null) {
        ((View)localObject).setVisibility(0);
      }
      localObject = this.N;
      if (localObject != null) {
        ((View)localObject).post(new l(this, paramAgendaEvent));
      }
      localObject = this.P;
      if (localObject != null) {
        ((View)localObject).setOnClickListener(new p(this, paramAgendaEvent));
      }
    }
    localObject = this.Y;
    if (localObject != null) {
      ((TextView)localObject).setText(f0.b(getContext(), paramAgendaEvent.getEx().getReminders(), paramAgendaEvent.isAllDay()));
    }
    localObject = this.X;
    if (localObject != null) {
      ((View)localObject).setOnClickListener(new q(this, paramAgendaEvent));
    }
    h1();
    localObject = this.a0;
    if (localObject != null) {
      ((SlidingButton)localObject).setChecked(paramAgendaEvent.isNeedAlarm());
    }
    localObject = this.a0;
    if (localObject != null) {
      ((CompoundButton)localObject).setOnCheckedChangeListener(new r(paramAgendaEvent, this));
    }
    localObject = paramAgendaEvent.getAcceptedAttendees();
    if (localObject != null) {
      i = ((List)localObject).size();
    } else {
      i = 0;
    }
    localObject = paramAgendaEvent.getDeclinedAttendees();
    int j;
    if (localObject != null) {
      j = ((List)localObject).size();
    } else {
      j = 0;
    }
    localObject = paramAgendaEvent.getTentativeAttendees();
    int k;
    if (localObject != null) {
      k = ((List)localObject).size();
    } else {
      k = 0;
    }
    localObject = paramAgendaEvent.getNoResponseAttendees();
    int i1;
    if (localObject != null) {
      i1 = ((List)localObject).size();
    } else {
      i1 = 0;
    }
    int i = i + j + k + i1;
    if (i > 0)
    {
      this.d0 = true;
      localObject = this.b0;
      if (localObject != null) {
        ((View)localObject).setVisibility(0);
      }
      localObject = this.c0;
      if (localObject != null) {
        ((TextView)localObject).setText(getResources().getQuantityString(2131755077, i, new Object[] { Integer.valueOf(i) }));
      }
      localObject = this.b0;
      if (localObject != null) {
        ((View)localObject).setOnClickListener(new s(this, paramAgendaEvent));
      }
    }
    else
    {
      this.d0 = false;
      localObject = this.b0;
      if (localObject != null) {
        ((View)localObject).setVisibility(8);
      }
    }
    if ((!TextUtils.isEmpty(paramAgendaEvent.getThirdPartyEPText())) && (!TextUtils.isEmpty(paramAgendaEvent.getThirdPartyEPData())))
    {
      localObject = this.H;
      if (localObject != null) {
        ((View)localObject).setVisibility(0);
      }
      localObject = this.H;
      if (localObject != null) {
        ((TextView)localObject).setText(paramAgendaEvent.getThirdPartyEPText());
      }
      localObject = this.H;
      if (localObject != null) {
        ((View)localObject).setOnClickListener(new t(this, paramAgendaEvent));
      }
    }
    else
    {
      localObject = this.H;
      if (localObject != null) {
        ((View)localObject).setVisibility(8);
      }
    }
    if ((!TextUtils.isEmpty(paramAgendaEvent.getThirdPartyEPText())) && (!TextUtils.isEmpty(paramAgendaEvent.getThirdPartyEPData())))
    {
      localObject = this.H;
      if (localObject != null) {
        ((View)localObject).setVisibility(0);
      }
      localObject = this.H;
      if (localObject != null) {
        ((TextView)localObject).setText(paramAgendaEvent.getThirdPartyEPText());
      }
      localObject = this.H;
      if (localObject != null) {
        ((View)localObject).setOnClickListener(new u(this, paramAgendaEvent));
      }
    }
    else if ((!TextUtils.isEmpty(paramAgendaEvent.getUrl())) && (!TextUtils.isEmpty(paramAgendaEvent.getUrlText())))
    {
      localObject = this.H;
      if (localObject != null) {
        ((View)localObject).setVisibility(0);
      }
      localObject = this.H;
      if (localObject != null) {
        ((TextView)localObject).setText(paramAgendaEvent.getUrlText());
      }
      localObject = this.H;
      if (localObject != null) {
        ((View)localObject).setOnClickListener(new v(this, paramAgendaEvent));
      }
    }
    else
    {
      paramAgendaEvent = this.H;
      if (paramAgendaEvent != null) {
        paramAgendaEvent.setVisibility(8);
      }
    }
  }
  
  public void i()
  {
    this.x0.clear();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 != 10011) || (paramInt2 != 10022))
    {
      paramIntent = getActivity();
      if (paramIntent != null) {
        paramIntent.finish();
      }
    }
  }
  
  public void onAttach(Context paramContext)
  {
    kotlin.jvm.internal.r.f(paramContext, "context");
    super.onAttach(paramContext);
    this.g0 = x0.O(paramContext, 308.0F);
    this.f0 = x0.O(paramContext, 209.0F);
    this.i0 = x0.O(paramContext, 365.0F);
    this.h0 = x0.O(paramContext, 137.0F);
    this.l0 = x0.O(paramContext, 83.0F);
    this.m0 = x0.O(paramContext, 64.0F);
    this.p0 = new com.android.calendar.event.l(getActivity());
    paramContext = p();
    int i = 0;
    int j = i;
    if (paramContext != null)
    {
      j = i;
      if (paramContext.getAttendeeResponse() == 0) {
        j = 1;
      }
    }
    if (j == 0)
    {
      paramContext = this.p0;
      kotlin.jvm.internal.r.c(paramContext);
      paramContext.e(1);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    kotlin.jvm.internal.r.f(paramLayoutInflater, "inflater");
    paramBundle = q();
    this.l = paramBundle;
    if (paramBundle == null) {
      this.l = paramLayoutInflater.inflate(2131558573, paramViewGroup, false);
    }
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null)
    {
      paramLayoutInflater.setOnClickListener(new b(this));
      this.m = ((FrameLayout)paramLayoutInflater.findViewById(2131362127));
      paramViewGroup = (TextView)paramLayoutInflater.findViewById(2131363479);
      this.n = paramViewGroup;
      if (paramViewGroup != null) {
        paramViewGroup.setOnClickListener(new c(this));
      }
      this.o = ((TextView)paramLayoutInflater.findViewById(2131363478));
      this.r = paramLayoutInflater.findViewById(2131362425);
      paramViewGroup = (TextView)paramLayoutInflater.findViewById(2131363448);
      this.v = paramViewGroup;
      if (paramViewGroup != null) {
        paramViewGroup.setOnClickListener(new d());
      }
      paramViewGroup = (TextView)paramLayoutInflater.findViewById(2131363439);
      this.w = paramViewGroup;
      if (paramViewGroup != null) {
        paramViewGroup.setOnClickListener(new e());
      }
      this.E = ((ImageView)paramLayoutInflater.findViewById(2131362648));
      this.x = paramLayoutInflater.findViewById(2131362277);
      this.J = ((RadioGroup)paramLayoutInflater.findViewById(2131363061));
      this.K = ((ViewStub)paramLayoutInflater.findViewById(2131363062));
      this.L = ((ViewStub)paramLayoutInflater.findViewById(2131362246));
      this.M = ((ViewStub)paramLayoutInflater.findViewById(2131362245));
      paramViewGroup = (ViewGroup)paramLayoutInflater.findViewById(2131362700);
      this.N = paramViewGroup;
      if (paramViewGroup != null) {
        paramViewGroup.setOnClickListener(new f());
      }
      this.O = ((TextView)paramLayoutInflater.findViewById(2131363442));
      this.P = ((TextView)paramLayoutInflater.findViewById(2131362439));
      this.Q = ((ViewGroup)paramLayoutInflater.findViewById(2131362702));
      this.R = ((TextView)paramLayoutInflater.findViewById(2131363465));
      paramViewGroup = (ViewGroup)paramLayoutInflater.findViewById(2131362174);
      this.U = paramViewGroup;
      if (paramViewGroup != null) {
        paramViewGroup.setOnClickListener(new g());
      }
      this.S = ((ViewGroup)paramLayoutInflater.findViewById(2131362173));
      this.T = ((TextView)paramLayoutInflater.findViewById(2131363463));
      paramViewGroup = this.S;
      if (paramViewGroup != null) {
        paramViewGroup.setOnClickListener(new h());
      }
      this.V = ((ViewGroup)paramLayoutInflater.findViewById(2131363073));
      this.W = ((Spinner)paramLayoutInflater.findViewById(2131363189));
      this.X = ((ViewGroup)paramLayoutInflater.findViewById(2131362172));
      this.Y = ((TextView)paramLayoutInflater.findViewById(2131363460));
      com.miui.calendar.util.v.k(this.X);
      this.Z = ((ViewGroup)paramLayoutInflater.findViewById(2131362170));
      this.a0 = ((SlidingButton)paramLayoutInflater.findViewById(2131363088));
      paramViewGroup = this.Z;
      if (paramViewGroup != null) {
        paramViewGroup.setOnClickListener(new i(this));
      }
      this.b0 = ((ViewGroup)paramLayoutInflater.findViewById(2131362694));
      this.c0 = ((TextView)paramLayoutInflater.findViewById(2131363433));
      this.G = paramLayoutInflater.findViewById(2131362110);
      this.H = ((TextView)paramLayoutInflater.findViewById(2131363469));
      paramLayoutInflater = paramLayoutInflater.findViewById(2131362426);
      this.I = paramLayoutInflater;
      if (paramLayoutInflater != null) {
        paramLayoutInflater.setOnClickListener(new j(this));
      }
    }
    paramLayoutInflater = this.n;
    if (paramLayoutInflater != null) {
      paramLayoutInflater.setTranslationY(this.f0);
    }
    paramLayoutInflater = this.x;
    if (paramLayoutInflater != null) {
      paramLayoutInflater.setTranslationY(this.g0);
    }
    paramLayoutInflater = this.n;
    if (paramLayoutInflater != null) {
      paramLayoutInflater.setAlpha(1.0F);
    }
    paramLayoutInflater = this.x;
    if (paramLayoutInflater != null) {
      paramLayoutInflater.setAlpha(1.0F);
    }
    return this.l;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    Object localObject = this.r0;
    if (localObject != null) {
      ((AbstractCursor)localObject).close();
    }
    localObject = this.s0;
    if (localObject != null) {
      s1.a.a((s1)localObject, null, 1, null);
    }
    localObject = this.t0;
    if (localObject != null) {
      s1.a.a((s1)localObject, null, 1, null);
    }
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public final void onEventMainThread(g.s params)
  {
    Object localObject1 = p();
    Object localObject2 = null;
    if (localObject1 != null) {
      localObject1 = Long.valueOf(((EventInfoActivity.EventInfo)localObject1).getEventId());
    } else {
      localObject1 = null;
    }
    Object localObject3;
    if (params != null) {
      localObject3 = Long.valueOf(params.b);
    } else {
      localObject3 = null;
    }
    if (!kotlin.jvm.internal.r.a(localObject1, localObject3)) {
      return;
    }
    com.miui.calendar.util.g.b(params, "Cal:D:AgendaEventInfoFragment");
    localObject1 = localObject2;
    if (params != null) {
      localObject1 = params.a;
    }
    if ((localObject1 != null) && (getContext() != null) && (((AgendaEvent)n()).getEx() != null))
    {
      localObject3 = ((AgendaEvent)n()).getEx().getReminders();
      localObject1 = localObject3;
      if (localObject3 == null) {
        localObject1 = new ArrayList();
      }
      if (com.android.calendar.settings.j.m(getContext()))
      {
        Z0(params);
      }
      else if (params.a.size() == 0)
      {
        Z0(params);
      }
      else if (((ArrayList)localObject1).size() == params.a.size())
      {
        int i = ((ArrayList)localObject1).size();
        int j = 0;
        for (int k = 0; k < i; k++) {
          if (!params.a.contains(((ArrayList)localObject1).get(k)))
          {
            k = j;
            break label227;
          }
        }
        k = 1;
        label227:
        if (k == 0) {
          d1(params);
        } else {
          Z0(params);
        }
      }
      else
      {
        d1(params);
      }
    }
  }
  
  public void onPause()
  {
    this.o0 = true;
    super.onPause();
  }
  
  public void onResume()
  {
    this.o0 = false;
    super.onResume();
  }
  
  protected boolean s()
  {
    return true;
  }
  
  public void w(w7.l<? super Integer, kotlin.u> paraml)
  {
    if (l()) {
      return;
    }
    if (this.q0 == null) {
      this.q0 = new com.android.calendar.event.b(getContext(), getActivity(), false);
    }
    Object localObject = this.q0;
    if (localObject != null) {
      ((com.android.calendar.event.b)localObject).B(new m(this));
    }
    localObject = this.q0;
    if (localObject != null) {
      ((com.android.calendar.event.b)localObject).A(new n(this, paraml));
    }
    z(true);
    localObject = p();
    if (localObject != null) {
      if (((EventInfoActivity.EventInfo)localObject).getEventId() > 0L)
      {
        paraml = this.q0;
        if (paraml != null) {
          paraml.s(((EventInfoActivity.EventInfo)localObject).getStartMillis(), ((EventInfoActivity.EventInfo)localObject).getEndMillis(), ((EventInfoActivity.EventInfo)localObject).getEventId(), -1);
        }
      }
      else if (paraml != null)
      {
        paraml.invoke(Integer.valueOf(0));
      }
    }
  }
  
  public void x()
  {
    if (getContext() == null) {
      return;
    }
    EventInfoActivity.EventInfo localEventInfo = p();
    if (localEventInfo != null)
    {
      Object localObject = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, localEventInfo.getEventId());
      kotlin.jvm.internal.r.e(localObject, "withAppendedId(Events.CONTENT_URI, it.eventId)");
      localObject = new Intent("android.intent.action.EDIT", (Uri)localObject);
      ((Intent)localObject).putExtra("beginTime", localEventInfo.getStartMillis());
      ((Intent)localObject).putExtra("endTime", localEventInfo.getEndMillis());
      ((Intent)localObject).putExtra("extra_key_edit_type", 0);
      ((Intent)localObject).setClass(requireContext(), EditEventActivity.class);
      startActivityForResult((Intent)localObject, 10011);
    }
  }
  
  public void y(boolean paramBoolean)
  {
    super.y(paramBoolean);
    if (paramBoolean)
    {
      View localView = this.I;
      if (localView != null) {
        localView.postDelayed(new w(this), 1000L);
      }
    }
  }
  
  protected final String z0()
  {
    if ((t() != null) && (getContext() != null))
    {
      p0.b localb = com.miui.calendar.util.p0.d(requireContext().getApplicationContext()).u(CalendarContract.Events.CONTENT_URI).r(new String[] { "_id" }).t(new Class[] { Integer.TYPE }).q("_id DESC").i();
      kotlin.jvm.internal.r.e(localb, "connect(requireContext()…\n                .query()");
      return localb.l(0).c(0);
    }
    return null;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/v2/AgendaEventInfoFragment$a;", "", "", "MAX_DESC_LENGTH", "I", "", "TAG", "Ljava/lang/String;", "UPDATE_ALL", "UPDATE_SINGLE", "mRequestCode", "mResultCode", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/event/v2/AgendaEventInfoFragment$b", "Lo1/i$d;", "Lkotlin/u;", "b", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b
    implements i.d
  {
    b(g.s params, AgendaEventInfoFragment paramAgendaEventInfoFragment) {}
    
    public void a()
    {
      jdField_this.D(true);
      jdField_this.A(this.a);
      o1.i.i(jdField_this.getContext());
    }
    
    public void b()
    {
      ArrayList localArrayList = this.a.a;
      if (localArrayList != null) {
        localArrayList.clear();
      }
      AgendaEventInfoFragment.s0(jdField_this, this.a);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.v2.AgendaEventInfoFragment
 * JD-Core Version:    0.7.0.1
 */