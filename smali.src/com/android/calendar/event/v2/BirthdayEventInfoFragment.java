package com.android.calendar.event.v2;

import android.app.Activity;
import android.content.ContentUris;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.drawable.AnimationDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.provider.CalendarContract.Events;
import android.text.TextPaint;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.BirthdayEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.event.EditEventActivity;
import com.android.calendar.event.EventInfoActivity.EventInfo;
import com.android.calendar.event.i;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x0;
import java.util.Collection;
import java.util.Formatter;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.j;
import kotlin.jvm.internal.r;
import kotlin.u;
import kotlinx.coroutines.s1;
import kotlinx.coroutines.s1.a;
import kotlinx.coroutines.w0;
import miuix.animation.e;
import miuix.animation.f;
import w7.l;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;", "Lcom/android/calendar/event/v2/BaseEventInfoFragment;", "Lcom/android/calendar/common/event/schema/BirthdayEvent;", "Lkotlin/u;", "R", "", "isNeedAlarm", "P", "(Ljava/lang/Boolean;)V", "Q", "", "eventId", "U", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "isVisible", "y", "onResume", "x", "Lkotlin/Function1;", "", "deleteCallback", "w", "event", "Y", "onDestroyView", "l", "Landroid/view/View;", "mRootView", "m", "mCardView", "Landroid/widget/TextView;", "n", "Landroid/widget/TextView;", "mBirthdayTime", "Landroid/widget/LinearLayout;", "o", "Landroid/widget/LinearLayout;", "mBirthdayContainer", "p", "mBirthdayWeek", "q", "mBirthdayTitle", "r", "mBirthdayTitleContainer", "v", "mBirthdayTip", "mBirthdayUnit", "Lcom/android/calendar/common/event/schema/BirthdayEvent;", "mBirthdayEvent", "Landroid/widget/ImageView;", "Landroid/widget/ImageView;", "mAlarmIcon", "z", "mAlarmStatus", "D", "mAlarmContainer", "E", "Z", "isCurrentVisible", "F", "hasShowAnimation", "G", "mCardShadow", "H", "mFireImageView", "Landroid/graphics/drawable/AnimationDrawable;", "I", "Landroid/graphics/drawable/AnimationDrawable;", "mCakeFireAnimation", "J", "Landroid/view/ViewGroup;", "mImageContainer", "Lkotlinx/coroutines/s1;", "K", "Lkotlinx/coroutines/s1;", "mJob", "s", "()Z", "needRefreshOnResume", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class BirthdayEventInfoFragment
  extends BaseEventInfoFragment<BirthdayEvent>
{
  private LinearLayout D;
  private boolean E;
  private boolean F;
  private ImageView G;
  private ImageView H;
  private AnimationDrawable I;
  private ViewGroup J;
  private s1 K;
  public Map<Integer, View> L;
  private View l;
  private View m;
  private TextView n;
  private LinearLayout o;
  private TextView p;
  private TextView q;
  private LinearLayout r;
  private TextView v;
  private TextView w;
  private BirthdayEvent x;
  private ImageView y;
  private TextView z;
  
  private final void P(Boolean paramBoolean)
  {
    r.c(paramBoolean);
    boolean bool = paramBoolean.booleanValue();
    Object localObject1 = null;
    Object localObject2 = null;
    label75:
    Object localObject3;
    if (bool)
    {
      paramBoolean = this.y;
      if (paramBoolean != null) {
        paramBoolean.setImageResource(2131231289);
      }
      localObject1 = this.z;
      if (localObject1 != null)
      {
        paramBoolean = getContext();
        if (paramBoolean != null)
        {
          paramBoolean = paramBoolean.getResources();
          if (paramBoolean != null)
          {
            paramBoolean = paramBoolean.getString(2131886186);
            break label75;
          }
        }
        paramBoolean = null;
        ((TextView)localObject1).setText(paramBoolean);
      }
      localObject1 = this.D;
      if (localObject1 != null)
      {
        localObject3 = getContext();
        paramBoolean = (Boolean)localObject2;
        if (localObject3 != null)
        {
          localObject3 = ((Context)localObject3).getResources();
          paramBoolean = (Boolean)localObject2;
          if (localObject3 != null) {
            paramBoolean = ((Resources)localObject3).getDrawable(2131231093);
          }
        }
        ((View)localObject1).setBackground(paramBoolean);
      }
    }
    else
    {
      paramBoolean = this.y;
      if (paramBoolean != null) {
        paramBoolean.setImageResource(2131231287);
      }
      localObject2 = this.z;
      if (localObject2 != null)
      {
        paramBoolean = getContext();
        if (paramBoolean != null)
        {
          paramBoolean = paramBoolean.getResources();
          if (paramBoolean != null)
          {
            paramBoolean = paramBoolean.getString(2131886185);
            break label196;
          }
        }
        paramBoolean = null;
        label196:
        ((TextView)localObject2).setText(paramBoolean);
      }
      localObject2 = this.D;
      if (localObject2 != null)
      {
        localObject3 = getContext();
        paramBoolean = (Boolean)localObject1;
        if (localObject3 != null)
        {
          localObject3 = ((Context)localObject3).getResources();
          paramBoolean = (Boolean)localObject1;
          if (localObject3 != null) {
            paramBoolean = ((Resources)localObject3).getDrawable(2131231091);
          }
        }
        ((View)localObject2).setBackground(paramBoolean);
      }
    }
  }
  
  private final void Q()
  {
    Object localObject1 = this.l;
    if (localObject1 != null) {
      localObject1 = (ImageView)((View)localObject1).findViewById(2131362460);
    }
    localObject1 = this.l;
    if (localObject1 != null) {
      localObject1 = (ImageView)((View)localObject1).findViewById(2131362092);
    }
    Object localObject2 = this.l;
    localObject1 = null;
    if (localObject2 != null) {
      localObject2 = (ImageView)((View)localObject2).findViewById(2131363018);
    } else {
      localObject2 = null;
    }
    if (localObject2 != null) {
      ((ImageView)localObject2).setVisibility(0);
    }
    Object localObject3 = this.l;
    if (localObject3 != null) {
      localObject3 = (RelativeLayout)((View)localObject3).findViewById(2131362091);
    } else {
      localObject3 = null;
    }
    Object localObject4 = this.l;
    if (localObject4 != null) {
      localObject1 = ((View)localObject4).findViewById(2131361931);
    }
    if (localObject3 != null) {
      ((View)localObject3).setVisibility(0);
    }
    localObject4 = this.I;
    if (localObject4 != null) {
      ((AnimationDrawable)localObject4).stop();
    }
    localObject4 = this.I;
    if (localObject4 != null) {
      ((AnimationDrawable)localObject4).start();
    }
    if (DeviceUtils.L())
    {
      localObject1 = this.o;
      if (localObject1 != null) {
        ((View)localObject1).setVisibility(0);
      }
      localObject1 = this.r;
      if (localObject1 != null) {
        ((View)localObject1).setVisibility(0);
      }
      localObject1 = this.G;
      if (localObject1 != null) {
        ((ImageView)localObject1).setVisibility(0);
      }
      this.F = true;
      return;
    }
    miuix.animation.a.y(new View[] { localObject3 }).a().d();
    localObject4 = miuix.animation.a.y(new View[] { localObject3 }).a().set("start");
    localObject3 = miuix.animation.property.h.n;
    Object localObject5 = ((f)localObject4).i((miuix.animation.property.b)localObject3, 0);
    localObject4 = miuix.animation.property.h.d;
    Object localObject6 = ((f)localObject5).i((miuix.animation.property.b)localObject4, 0);
    localObject5 = miuix.animation.property.h.e;
    ((f)localObject6).i((miuix.animation.property.b)localObject5, 0).set("end").i((miuix.animation.property.b)localObject3, 1).i((miuix.animation.property.b)localObject4, 1).i((miuix.animation.property.b)localObject5, 1).y("start", new d9.a[] { new d9.a().k(-2, new float[] { 0.7F, 0.4F }) }).J("end", new d9.a[] { new d9.a().j(500L).k(-2, new float[] { 0.7F, 0.5F }) });
    miuix.animation.a.y(new View[] { localObject2 }).a().d();
    localObject2 = miuix.animation.a.y(new View[] { localObject2 }).a().set("start");
    localObject6 = miuix.animation.property.h.j;
    ((f)localObject2).i((miuix.animation.property.b)localObject6, 1500).i((miuix.animation.property.b)localObject3, 0).set("end").i((miuix.animation.property.b)localObject6, 60).i((miuix.animation.property.b)localObject3, 1).y("start", new d9.a[] { new d9.a().o((miuix.animation.property.b)localObject6, 0L, new float[0]).k(-2, new float[] { 0.99F, 0.3F }) }).J("end", new d9.a[] { new d9.a().o((miuix.animation.property.b)localObject6, 0L, new float[0]).j(300L).k(-2, new float[] { 0.99F, 0.4F }) });
    localObject2 = this.o;
    if (localObject2 != null) {
      ((View)localObject2).setVisibility(0);
    }
    localObject2 = this.r;
    if (localObject2 != null) {
      ((View)localObject2).setVisibility(0);
    }
    localObject2 = this.G;
    if (localObject2 != null) {
      ((ImageView)localObject2).setVisibility(0);
    }
    miuix.animation.a.y(new View[] { this.o, this.r, this.G }).a().d();
    miuix.animation.a.y(new View[] { this.o, this.r, this.G }).a().set("start").m((miuix.animation.property.b)localObject3, 0.0F).set("end").m((miuix.animation.property.b)localObject3, 1.0F).u("start").J("end", new d9.a[] { new d9.a().j(500L).k(-2, new float[] { 0.99F, 0.5F }) });
    miuix.animation.a.y(new View[] { localObject1 }).a().d();
    miuix.animation.a.y(new View[] { localObject1 }).a().set("start").i((miuix.animation.property.b)localObject4, 0).i((miuix.animation.property.b)localObject5, 0).set("end").i((miuix.animation.property.b)localObject4, 1).i((miuix.animation.property.b)localObject5, 1).y("start", new d9.a[] { new d9.a().k(-2, new float[] { 0.7F, 0.4F }) }).J("end", new d9.a[] { new d9.a().j(800L).k(-2, new float[] { 0.7F, 0.5F }) });
    this.F = true;
  }
  
  private final void R()
  {
    if (getContext() == null) {
      return;
    }
    Object localObject1 = this.q;
    if (localObject1 != null) {
      ((View)localObject1).post(new n0(this));
    }
    localObject1 = this.x;
    Object localObject2 = null;
    if (localObject1 != null) {
      localObject1 = Integer.valueOf(((BirthdayEvent)localObject1).getDateType());
    } else {
      localObject1 = null;
    }
    if ((localObject1 != null) && (((Integer)localObject1).intValue() == 0))
    {
      localObject3 = new Formatter(new StringBuilder(50), Locale.getDefault());
      localObject4 = getContext();
      localObject1 = p();
      if (localObject1 != null) {
        localObject1 = Long.valueOf(((EventInfoActivity.EventInfo)localObject1).getStartMillis());
      } else {
        localObject1 = null;
      }
      r.c(localObject1);
      long l1 = ((Long)localObject1).longValue();
      localObject1 = p();
      if (localObject1 != null) {
        localObject1 = Long.valueOf(((EventInfoActivity.EventInfo)localObject1).getStartMillis());
      } else {
        localObject1 = null;
      }
      r.c(localObject1);
      localObject4 = DateUtils.formatDateRange((Context)localObject4, (Formatter)localObject3, l1, ((Long)localObject1).longValue(), 131092, Utils.U(getContext()));
      r.e(localObject4, "formatDateRange(context,…ils.getTimeZone(context))");
      localObject3 = new Formatter(new StringBuilder(50), Locale.getDefault());
      Context localContext = getContext();
      localObject1 = p();
      if (localObject1 != null) {
        localObject1 = Long.valueOf(((EventInfoActivity.EventInfo)localObject1).getStartMillis());
      } else {
        localObject1 = null;
      }
      r.c(localObject1);
      l1 = ((Long)localObject1).longValue();
      localObject1 = p();
      if (localObject1 != null) {
        localObject1 = Long.valueOf(((EventInfoActivity.EventInfo)localObject1).getStartMillis());
      } else {
        localObject1 = null;
      }
      r.c(localObject1);
      localObject1 = DateUtils.formatDateRange(localContext, (Formatter)localObject3, l1, ((Long)localObject1).longValue(), 32770, Utils.U(getContext()));
      r.e(localObject1, "formatDateRange(context,…ils.getTimeZone(context))");
      localObject3 = this.n;
      if (localObject3 != null) {
        ((TextView)localObject3).setText(((Formatter)localObject4).toString());
      }
      localObject4 = this.p;
      if (localObject4 != null) {
        ((TextView)localObject4).setText(((Formatter)localObject1).toString());
      }
    }
    Object localObject3 = this.v;
    Object localObject4 = CalendarApplication.e();
    localObject1 = p();
    if (localObject1 != null) {
      localObject1 = Long.valueOf(((EventInfoActivity.EventInfo)localObject1).getStartMillis());
    } else {
      localObject1 = null;
    }
    r.c(localObject1);
    x0.H0((TextView)localObject3, r1.a.j((Context)localObject4, ((Long)localObject1).longValue(), this.x), 150);
    localObject1 = getContext();
    if (localObject1 != null)
    {
      localObject4 = this.v;
      if (localObject4 != null)
      {
        localObject4 = ((TextView)localObject4).getText();
        if (localObject4 != null)
        {
          i = ((CharSequence)localObject4).length();
          break label445;
        }
      }
      int i = 0;
      label445:
      if (i > 12)
      {
        localObject4 = this.v;
        if (localObject4 != null) {
          ((TextView)localObject4).setTextSize(0, x0.O((Context)localObject1, 30.0F));
        }
      }
      else
      {
        localObject4 = this.v;
        if (localObject4 != null) {
          ((TextView)localObject4).setTextSize(0, x0.O((Context)localObject1, 38.0F));
        }
      }
    }
    localObject1 = this.x;
    if (localObject1 != null)
    {
      localObject1 = ((Event)localObject1).getEx();
      if (localObject1 != null)
      {
        localObject1 = ((EventEx)localObject1).getReminders();
        break label531;
      }
    }
    localObject1 = null;
    label531:
    if ((localObject1 != null) && ((((Collection)localObject1).isEmpty() ^ true)))
    {
      localObject1 = this.D;
      if (localObject1 != null) {
        ((View)localObject1).setVisibility(0);
      }
      localObject4 = this.x;
      localObject1 = localObject2;
      if (localObject4 != null) {
        localObject1 = Boolean.valueOf(((Event)localObject4).isNeedAlarm());
      }
      P((Boolean)localObject1);
      localObject1 = this.D;
      if (localObject1 != null) {
        ((View)localObject1).setOnClickListener(new o0(this));
      }
      v.d(this.D);
    }
    else
    {
      localObject1 = this.D;
      if (localObject1 != null) {
        ((View)localObject1).setVisibility(8);
      }
    }
  }
  
  private static final void S(BirthdayEventInfoFragment paramBirthdayEventInfoFragment)
  {
    r.f(paramBirthdayEventInfoFragment, "this$0");
    Object localObject1 = paramBirthdayEventInfoFragment.q;
    if (localObject1 != null) {
      ((TextView)localObject1).setTextSize(0, 100.0F);
    }
    localObject1 = paramBirthdayEventInfoFragment.q;
    r.c(localObject1);
    TextPaint localTextPaint = ((TextView)localObject1).getPaint();
    r.e(localTextPaint, "mBirthdayTitle!!.paint");
    localObject1 = paramBirthdayEventInfoFragment.x;
    Object localObject2 = null;
    if (localObject1 != null) {
      localObject1 = ((BirthdayEvent)localObject1).getName();
    } else {
      localObject1 = null;
    }
    Object localObject3 = localObject1;
    if (localObject1 == null) {
      localObject3 = "";
    }
    float f = localTextPaint.measureText((String)localObject3);
    localObject1 = paramBirthdayEventInfoFragment.q;
    if (localObject1 != null) {
      localObject1 = Integer.valueOf(((View)localObject1).getWidth());
    } else {
      localObject1 = null;
    }
    r.c(localObject1);
    if (f >= ((Integer)localObject1).intValue() * 3)
    {
      localObject1 = paramBirthdayEventInfoFragment.q;
      if (localObject1 != null) {
        ((TextView)localObject1).setTextSize(0, 70.0F);
      }
      localObject1 = paramBirthdayEventInfoFragment.w;
      if (localObject1 != null) {
        ((TextView)localObject1).setTextSize(0, 70.0F);
      }
    }
    else
    {
      localObject1 = paramBirthdayEventInfoFragment.q;
      if (localObject1 != null) {
        ((TextView)localObject1).setTextSize(0, 100.0F);
      }
      localObject1 = paramBirthdayEventInfoFragment.w;
      if (localObject1 != null) {
        ((TextView)localObject1).setTextSize(0, 100.0F);
      }
    }
    localObject1 = paramBirthdayEventInfoFragment.q;
    if (localObject1 != null)
    {
      localObject3 = paramBirthdayEventInfoFragment.x;
      paramBirthdayEventInfoFragment = localObject2;
      if (localObject3 != null) {
        paramBirthdayEventInfoFragment = ((BirthdayEvent)localObject3).getName();
      }
      ((TextView)localObject1).setText(paramBirthdayEventInfoFragment);
    }
  }
  
  private static final void T(BirthdayEventInfoFragment paramBirthdayEventInfoFragment, View paramView)
  {
    r.f(paramBirthdayEventInfoFragment, "this$0");
    paramBirthdayEventInfoFragment.K = kotlinx.coroutines.h.d(kotlinx.coroutines.l0.a(w0.b()), null, null, new SuspendLambda(paramBirthdayEventInfoFragment, null)
    {
      int label;
      
      public final c<u> create(Object paramAnonymousObject, c<?> paramAnonymousc)
      {
        return new 1(this.this$0, paramAnonymousc);
      }
      
      public final Object invoke(kotlinx.coroutines.k0 paramAnonymousk0, c<? super u> paramAnonymousc)
      {
        return ((1)create(paramAnonymousk0, paramAnonymousc)).invokeSuspend(u.a);
      }
      
      public final Object invokeSuspend(Object paramAnonymousObject)
      {
        Object localObject1 = kotlin.coroutines.intrinsics.a.d();
        int i = this.label;
        if (i != 0)
        {
          if (i == 1) {
            j.b(paramAnonymousObject);
          } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
          }
        }
        else
        {
          j.b(paramAnonymousObject);
          Object localObject2 = BirthdayEventInfoFragment.O(this.this$0);
          if (localObject2 != null)
          {
            paramAnonymousObject = BirthdayEventInfoFragment.O(this.this$0);
            if (paramAnonymousObject != null) {
              paramAnonymousObject = kotlin.coroutines.jvm.internal.a.a(paramAnonymousObject.isNeedAlarm());
            } else {
              paramAnonymousObject = null;
            }
            r.c(paramAnonymousObject);
            ((Event)localObject2).setNeedAlarm(paramAnonymousObject.booleanValue() ^ true);
          }
          i.h(this.this$0.getContext(), BirthdayEventInfoFragment.O(this.this$0));
          paramAnonymousObject = w0.c();
          localObject2 = new SuspendLambda(this.this$0, null)
          {
            int label;
            
            public final c<u> create(Object paramAnonymous2Object, c<?> paramAnonymous2c)
            {
              return new 1(this.this$0, paramAnonymous2c);
            }
            
            public final Object invoke(kotlinx.coroutines.k0 paramAnonymous2k0, c<? super u> paramAnonymous2c)
            {
              return ((1)create(paramAnonymous2k0, paramAnonymous2c)).invokeSuspend(u.a);
            }
            
            public final Object invokeSuspend(Object paramAnonymous2Object)
            {
              kotlin.coroutines.intrinsics.a.d();
              if (this.label == 0)
              {
                j.b(paramAnonymous2Object);
                BirthdayEventInfoFragment localBirthdayEventInfoFragment = this.this$0;
                paramAnonymous2Object = BirthdayEventInfoFragment.O(localBirthdayEventInfoFragment);
                if (paramAnonymous2Object != null) {
                  paramAnonymous2Object = kotlin.coroutines.jvm.internal.a.a(paramAnonymous2Object.isNeedAlarm());
                } else {
                  paramAnonymous2Object = null;
                }
                BirthdayEventInfoFragment.N(localBirthdayEventInfoFragment, paramAnonymous2Object);
                return u.a;
              }
              throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
          };
          this.label = 1;
          if (kotlinx.coroutines.h.g(paramAnonymousObject, (p)localObject2, this) == localObject1) {
            return localObject1;
          }
        }
        return u.a;
      }
    }, 3, null);
  }
  
  private static final void V(BirthdayEventInfoFragment paramBirthdayEventInfoFragment, View paramView)
  {
    r.f(paramBirthdayEventInfoFragment, "this$0");
    paramBirthdayEventInfoFragment.k();
  }
  
  private static final void W(BirthdayEventInfoFragment paramBirthdayEventInfoFragment, DialogInterface paramDialogInterface)
  {
    r.f(paramBirthdayEventInfoFragment, "this$0");
    paramBirthdayEventInfoFragment.z(false);
  }
  
  private static final void X(BirthdayEventInfoFragment paramBirthdayEventInfoFragment, l paraml)
  {
    r.f(paramBirthdayEventInfoFragment, "this$0");
    paramBirthdayEventInfoFragment.z(false);
    if (paraml != null) {
      paraml.invoke(Integer.valueOf(2));
    }
  }
  
  private static final void Z(boolean paramBoolean, BirthdayEventInfoFragment paramBirthdayEventInfoFragment)
  {
    r.f(paramBirthdayEventInfoFragment, "this$0");
    if (!paramBoolean)
    {
      paramBirthdayEventInfoFragment = paramBirthdayEventInfoFragment.I;
      if (paramBirthdayEventInfoFragment != null) {
        paramBirthdayEventInfoFragment.stop();
      }
    }
    else
    {
      paramBirthdayEventInfoFragment = paramBirthdayEventInfoFragment.I;
      if (paramBirthdayEventInfoFragment != null) {
        paramBirthdayEventInfoFragment.start();
      }
    }
  }
  
  private static final void a0(BirthdayEventInfoFragment paramBirthdayEventInfoFragment)
  {
    r.f(paramBirthdayEventInfoFragment, "this$0");
    paramBirthdayEventInfoFragment = paramBirthdayEventInfoFragment.m;
    if (paramBirthdayEventInfoFragment != null) {
      paramBirthdayEventInfoFragment.sendAccessibilityEvent(8);
    }
  }
  
  protected BirthdayEvent U(long paramLong)
  {
    return s1.b.b(getContext(), paramLong);
  }
  
  protected void Y(BirthdayEvent paramBirthdayEvent)
  {
    r.f(paramBirthdayEvent, "event");
    this.x = paramBirthdayEvent;
    R();
  }
  
  public void i()
  {
    this.L.clear();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    r.f(paramLayoutInflater, "inflater");
    paramBundle = q();
    this.l = paramBundle;
    if (paramBundle == null) {
      this.l = paramLayoutInflater.inflate(2131558577, paramViewGroup, false);
    }
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater.setOnClickListener(new k0(this));
    }
    paramLayoutInflater = this.l;
    paramViewGroup = null;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (ViewGroup)paramLayoutInflater.findViewById(2131362591);
    } else {
      paramLayoutInflater = null;
    }
    this.J = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = paramLayoutInflater.findViewById(2131362127);
    } else {
      paramLayoutInflater = null;
    }
    this.m = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (TextView)paramLayoutInflater.findViewById(2131362038);
    } else {
      paramLayoutInflater = null;
    }
    this.n = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (LinearLayout)paramLayoutInflater.findViewById(2131362039);
    } else {
      paramLayoutInflater = null;
    }
    this.o = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (TextView)paramLayoutInflater.findViewById(2131362044);
    } else {
      paramLayoutInflater = null;
    }
    this.p = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (TextView)paramLayoutInflater.findViewById(2131362041);
    } else {
      paramLayoutInflater = null;
    }
    this.q = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (LinearLayout)paramLayoutInflater.findViewById(2131362042);
    } else {
      paramLayoutInflater = null;
    }
    this.r = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (TextView)paramLayoutInflater.findViewById(2131362040);
    } else {
      paramLayoutInflater = null;
    }
    this.v = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (TextView)paramLayoutInflater.findViewById(2131362043);
    } else {
      paramLayoutInflater = null;
    }
    this.w = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (ImageView)paramLayoutInflater.findViewById(2131361932);
    } else {
      paramLayoutInflater = null;
    }
    this.y = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (TextView)paramLayoutInflater.findViewById(2131361934);
    } else {
      paramLayoutInflater = null;
    }
    this.z = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (LinearLayout)paramLayoutInflater.findViewById(2131361931);
    } else {
      paramLayoutInflater = null;
    }
    this.D = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (ImageView)paramLayoutInflater.findViewById(2131362121);
    } else {
      paramLayoutInflater = null;
    }
    this.G = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (ImageView)paramLayoutInflater.findViewById(2131362460);
    } else {
      paramLayoutInflater = null;
    }
    this.H = paramLayoutInflater;
    if (!DeviceUtils.L())
    {
      paramLayoutInflater = this.H;
      if (paramLayoutInflater != null) {
        paramLayoutInflater.setImageResource(2131230993);
      }
      paramBundle = this.H;
      paramLayoutInflater = paramViewGroup;
      if (paramBundle != null) {
        paramLayoutInflater = paramBundle.getDrawable();
      }
      this.I = ((AnimationDrawable)paramLayoutInflater);
    }
    return this.l;
  }
  
  public void onDestroyView()
  {
    s1 locals1 = this.K;
    if (locals1 != null) {
      s1.a.a(locals1, null, 1, null);
    }
    super.onDestroyView();
    i();
  }
  
  public void onResume()
  {
    super.onResume();
    if ((this.E) && (!this.F)) {
      Q();
    }
  }
  
  protected boolean s()
  {
    return true;
  }
  
  public void w(l<? super Integer, u> paraml)
  {
    if (l()) {
      return;
    }
    Object localObject1 = p();
    Object localObject2 = null;
    if (localObject1 != null) {
      localObject1 = Long.valueOf(((EventInfoActivity.EventInfo)localObject1).getEventId());
    } else {
      localObject1 = null;
    }
    if (localObject1 == null) {
      return;
    }
    com.android.calendar.event.b localb = new com.android.calendar.event.b(getContext(), getActivity(), false);
    localb.B(new p0(this));
    localObject1 = p();
    r.c(localObject1);
    long l1 = ((EventInfoActivity.EventInfo)localObject1).getStartMillis();
    localObject1 = p();
    r.c(localObject1);
    long l2 = ((EventInfoActivity.EventInfo)localObject1).getEndMillis();
    EventInfoActivity.EventInfo localEventInfo = p();
    localObject1 = localObject2;
    if (localEventInfo != null) {
      localObject1 = Long.valueOf(localEventInfo.getEventId());
    }
    r.c(localObject1);
    localb.t(l1, l2, ((Long)localObject1).longValue(), 2, new q0(this, paraml), true);
    z(true);
  }
  
  public void x()
  {
    super.x();
    Object localObject = p();
    EventInfoActivity.EventInfo localEventInfo1 = null;
    if (localObject != null) {
      localObject = Long.valueOf(((EventInfoActivity.EventInfo)localObject).getEventId());
    } else {
      localObject = null;
    }
    if (localObject == null) {
      return;
    }
    Uri localUri = CalendarContract.Events.CONTENT_URI;
    EventInfoActivity.EventInfo localEventInfo2 = p();
    localObject = localEventInfo1;
    if (localEventInfo2 != null) {
      localObject = Long.valueOf(localEventInfo2.getEventId());
    }
    r.c(localObject);
    localObject = ContentUris.withAppendedId(localUri, ((Long)localObject).longValue());
    r.e(localObject, "withAppendedId(CalendarC…RI, eventInfo?.eventId!!)");
    localObject = new Intent("android.intent.action.EDIT", (Uri)localObject);
    localEventInfo1 = p();
    r.c(localEventInfo1);
    ((Intent)localObject).putExtra("beginTime", localEventInfo1.getStartMillis());
    localEventInfo1 = p();
    r.c(localEventInfo1);
    ((Intent)localObject).putExtra("endTime", localEventInfo1.getEndMillis());
    ((Intent)localObject).putExtra("allDay", true);
    ((Intent)localObject).putExtra("extra_key_edit_type", 1);
    ((Intent)localObject).setClass(requireContext(), EditEventActivity.class);
    ((Intent)localObject).putExtra("editMode", true);
    startActivity((Intent)localObject);
    localObject = getActivity();
    if (localObject != null) {
      ((Activity)localObject).finish();
    }
  }
  
  public void y(boolean paramBoolean)
  {
    super.y(paramBoolean);
    if (paramBoolean)
    {
      localObject = this.J;
      if (localObject != null)
      {
        boolean bool;
        if (((View)localObject).getVisibility() == 0) {
          bool = true;
        } else {
          bool = false;
        }
        localObject = Boolean.valueOf(bool);
      }
      else
      {
        localObject = null;
      }
      r.c(localObject);
      if (!((Boolean)localObject).booleanValue())
      {
        localObject = this.J;
        if (localObject != null) {
          ((View)localObject).setVisibility(0);
        }
      }
    }
    if (this.E == paramBoolean) {
      return;
    }
    this.E = paramBoolean;
    if ((paramBoolean) && (!this.F)) {
      Q();
    }
    if (DeviceUtils.L()) {
      return;
    }
    Object localObject = this.H;
    if (localObject != null) {
      ((View)localObject).post(new l0(paramBoolean, this));
    }
    if (paramBoolean)
    {
      localObject = this.m;
      if (localObject != null) {
        ((View)localObject).postDelayed(new m0(this), 1000L);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.v2.BirthdayEventInfoFragment
 * JD-Core Version:    0.7.0.1
 */