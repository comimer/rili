package com.android.calendar.alerts;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AppOpsManager;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.os.Process;
import android.provider.CalendarContract.CalendarAlerts;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager.widget.ViewPager.j;
import androidx.viewpager.widget.ViewPager.m;
import com.miui.calendar.alerts.entities.BaseAlert;
import com.miui.calendar.util.c0;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import miuix.appcompat.app.l;
import miuix.appcompat.app.l.b;
import miuix.appcompat.app.m;
import o1.e;
import o1.f;
import o1.i;

public class AlertActivity
  extends com.android.calendar.common.b
{
  private b b;
  private ContentResolver c;
  private View d;
  private ViewPager e;
  private LinearLayout f;
  private l g;
  private e h = null;
  private boolean i = false;
  private boolean j = false;
  private boolean k = false;
  private Handler l = new f(this);
  private List<BaseAlert> m = new ArrayList(1);
  private View[] n;
  private int o = 0;
  private TelephonyManager p;
  private PhoneStateListener q = new a();
  private ViewPager.j r = new d();
  private final b.b v = new a(this);
  
  private void A0(boolean paramBoolean)
  {
    ((AppOpsManager)getSystemService("appops")).checkOpNoThrow("android:write_settings", Process.myUid(), getPackageName());
  }
  
  private void B0()
  {
    List localList = this.m;
    if ((localList != null) && (!localList.isEmpty()))
    {
      this.o = 0;
      this.b.v(this.m);
      C0();
    }
    else
    {
      finish();
    }
  }
  
  private void C0()
  {
    if (this.f == null) {
      return;
    }
    if (this.b.d() > 1)
    {
      this.f.setVisibility(0);
      this.f.removeAllViews();
      this.n = new View[this.b.d()];
      this.o = this.e.getCurrentItem();
      for (int i1 = 0; i1 < this.b.d(); i1++)
      {
        View[] arrayOfView = this.n;
        boolean bool;
        if (i1 == this.o) {
          bool = true;
        } else {
          bool = false;
        }
        arrayOfView[i1] = m0(bool);
        this.f.addView(this.n[i1]);
      }
    }
    this.f.setVisibility(8);
  }
  
  private View m0(boolean paramBoolean)
  {
    View localView = new View(this);
    int i1 = getResources().getDimensionPixelOffset(2131165466);
    int i2 = getResources().getDimensionPixelOffset(2131165464);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(i1, i1);
    localLayoutParams.setMarginEnd(i2);
    localLayoutParams.setMarginStart(i2);
    localView.setLayoutParams(localLayoutParams);
    if (paramBoolean) {
      localView.setBackgroundResource(2131230924);
    } else {
      localView.setBackgroundResource(2131230923);
    }
    return localView;
  }
  
  private void n0()
  {
    Object localObject = this.d;
    if ((localObject == null) || (((View)localObject).getParent() != null))
    {
      localObject = LayoutInflater.from(this).inflate(2131558918, null);
      this.d = ((View)localObject);
      this.e = ((ViewPager)((View)localObject).findViewById(2131361936));
      this.f = ((LinearLayout)this.d.findViewById(2131362373));
      this.e.setAdapter(this.b);
      this.e.c(this.r);
      this.b.w(this.v);
    }
    localObject = new l.b(this).F(2131886189).I(this.d).d(false).y(new o1.d(this)).z(2131886184, new e(this)).r(2131887347, new f(this)).a();
    this.g = ((l)localObject);
    ((l)localObject).setCanceledOnTouchOutside(false);
    this.g.show();
    this.g.e(-1).setOnClickListener(new b());
    this.g.e(-2).setOnClickListener(new c());
  }
  
  private void o0()
  {
    this.l.removeMessages(1000);
  }
  
  @SuppressLint({"MissingPermission"})
  private void p0(long paramLong)
  {
    if (paramLong == -1L) {
      return;
    }
    ContentValues localContentValues = new ContentValues(1);
    localContentValues.put("state", Integer.valueOf(2));
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("_id=");
    ((StringBuilder)localObject).append(paramLong);
    localObject = ((StringBuilder)localObject).toString();
    this.c.update(CalendarContract.CalendarAlerts.CONTENT_URI, localContentValues, (String)localObject, null);
  }
  
  private boolean q0()
  {
    Object localObject = this.m;
    if (localObject != null)
    {
      int i1 = ((List)localObject).size();
      int i2 = this.o;
      if (i1 > i2)
      {
        localObject = (BaseAlert)this.m.get(i2);
        s0(((BaseAlert)localObject).getNotificationId());
        p0(((BaseAlert)localObject).getAlertId());
        this.m.remove(this.o);
        B0();
        return this.m.isEmpty();
      }
    }
    s0(-1);
    return true;
  }
  
  private void r0()
  {
    Handler localHandler = this.l;
    localHandler.sendMessageDelayed(localHandler.obtainMessage(1000), 600000L);
  }
  
  private void s0(int paramInt)
  {
    if (paramInt != -1) {
      i.c(this, paramInt);
    } else {
      i.b(this);
    }
    o1.a.g(false);
    o1.a.l();
  }
  
  private boolean t0()
  {
    l locall = this.g;
    boolean bool;
    if ((locall != null) && (locall.e(-1).isEnabled())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void y0()
  {
    Object localObject = this.m;
    if (localObject == null) {
      return;
    }
    ((List)localObject).clear();
    localObject = (BaseAlert)getIntent().getParcelableExtra("extra_key_alert");
    if (localObject != null) {
      this.m.add(localObject);
    }
    B0();
  }
  
  private boolean z0()
  {
    Object localObject = this.m;
    if (localObject != null)
    {
      int i1 = ((List)localObject).size();
      int i2 = this.o;
      if (i1 > i2)
      {
        localObject = (BaseAlert)this.m.get(i2);
        s0(((BaseAlert)localObject).getNotificationId());
        Intent localIntent = new Intent("com.android.calendar.SET_REMINDER_LATER");
        localIntent.setClass(this, AlertLaterReceiver.class);
        localIntent.putExtra("extra_key_alert", (Parcelable)localObject);
        sendBroadcast(localIntent);
        this.m.remove(this.o);
        B0();
        return this.m.isEmpty();
      }
    }
    s0(-1);
    return true;
  }
  
  public void onBackPressed()
  {
    if (t0())
    {
      z.h("Cal:D:AlertActivity", "onBackPressed(): just return");
      return;
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    z.h("Cal:D:AlertActivity", "onCreate()");
    setContentView(2131558469);
    setFinishOnTouchOutside(false);
    this.j = getIntent().getBooleanExtra("miui.intent.extra_calendar_reminder_alarm_alert", false);
    boolean bool = getIntent().getBooleanExtra("miui.intent.extra_calendar_reminder_screen_on", true);
    this.k = bool;
    if (bool)
    {
      Window localWindow = getWindow();
      localWindow.addFlags(6815747);
      localWindow.addFlags(128);
      localWindow.getAttributes().dimAmount = 0.3F;
    }
    this.c = getContentResolver();
    this.b = new b(this);
    y0();
    if (paramBundle == null) {
      showDialog(1);
    }
    this.h = new e(null);
    if (!this.i)
    {
      paramBundle = new IntentFilter("android.intent.action.KEYCODE_POWER_UP");
      paramBundle.addAction("com.miui.calendar.action.STOP_ALERT_ACTIVITY");
      paramBundle.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
      registerReceiver(this.h, paramBundle);
      this.i = true;
    }
    if ((this.j) || (this.k)) {
      r0();
    }
    paramBundle = (TelephonyManager)getSystemService("phone");
    this.p = paramBundle;
    if ((paramBundle != null) && (g4.a.e(this))) {
      this.p.listen(this.q, 32);
    }
    n0();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    z.h("Cal:D:AlertActivity", "onDestroy()");
    Object localObject = this.g;
    if (localObject != null) {
      ((l)localObject).c();
    }
    this.p.listen(this.q, 0);
    if (this.j) {
      o0();
    }
    if (this.i)
    {
      unregisterReceiver(this.h);
      this.i = false;
    }
    localObject = this.m;
    if ((localObject != null) && (((List)localObject).isEmpty()))
    {
      z.h("Cal:D:AlertActivity", "onDestroy()");
      localObject = this.m.iterator();
      while (((Iterator)localObject).hasNext())
      {
        BaseAlert localBaseAlert = (BaseAlert)((Iterator)localObject).next();
        s0(localBaseAlert.getNotificationId());
        c.e(this, localBaseAlert, 0);
      }
      this.m = null;
    }
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    this.j = getIntent().getBooleanExtra("miui.intent.extra_calendar_reminder_alarm_alert", false);
    boolean bool = getIntent().getBooleanExtra("miui.intent.extra_calendar_reminder_screen_on", true);
    this.k = bool;
    if (bool)
    {
      paramIntent = getWindow();
      paramIntent.addFlags(7864321);
      paramIntent.addFlags(128);
      paramIntent.getAttributes().dimAmount = 0.3F;
    }
    if ((this.j) || (this.k)) {
      r0();
    }
    BaseAlert localBaseAlert = (BaseAlert)getIntent().getParcelableExtra("extra_key_alert");
    if (localBaseAlert != null)
    {
      paramIntent = this.m;
      if (paramIntent != null) {
        paramIntent.add(0, localBaseAlert);
      }
    }
    B0();
  }
  
  protected void onPause()
  {
    z.a("Cal:D:AlertActivity", "onPause()");
    super.onPause();
    if (this.k) {
      A0(false);
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    z.h("Cal:D:AlertActivity", "onResume()");
    if (this.k) {
      A0(true);
    }
  }
  
  class a
    extends PhoneStateListener
  {
    a() {}
    
    public void onCallStateChanged(int paramInt, String paramString)
    {
      o1.a.d(paramInt, AlertActivity.this);
    }
  }
  
  class b
    implements View.OnClickListener
  {
    b() {}
    
    public void onClick(View paramView)
    {
      if (AlertActivity.c0(AlertActivity.this)) {
        AlertActivity.d0(AlertActivity.this).dismiss();
      }
    }
  }
  
  class c
    implements View.OnClickListener
  {
    c() {}
    
    public void onClick(View paramView)
    {
      if (AlertActivity.e0(AlertActivity.this)) {
        AlertActivity.d0(AlertActivity.this).dismiss();
      }
    }
  }
  
  class d
    extends ViewPager.m
  {
    d() {}
    
    public void onPageSelected(int paramInt)
    {
      if ((AlertActivity.f0(AlertActivity.this) != null) && (AlertActivity.f0(AlertActivity.this).length > paramInt))
      {
        AlertActivity.f0(AlertActivity.this)[paramInt].setBackgroundResource(2131230924);
        AlertActivity.f0(AlertActivity.this)[AlertActivity.g0(AlertActivity.this)].setBackgroundResource(2131230923);
        AlertActivity.h0(AlertActivity.this, paramInt);
      }
    }
  }
  
  private class e
    extends BroadcastReceiver
  {
    private e() {}
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      paramContext = new StringBuilder();
      paramContext.append("FinishReceiver:intent:");
      paramContext.append(paramIntent);
      z.h("Cal:D:AlertActivity", paramContext.toString());
      paramContext = paramIntent.getAction();
      if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(paramContext))
      {
        paramContext = paramIntent.getStringExtra("reason");
        if (paramContext == null) {
          return;
        }
        if ((paramContext.equals("homekey")) || (paramContext.equals("recentapps")))
        {
          z.h("Cal:D:AlertActivity", "FinishReceiver: Home Key or RecentApps Pressed");
          if (AlertActivity.i0(AlertActivity.this) == null)
          {
            AlertActivity.k0(AlertActivity.this, -1);
          }
          else
          {
            paramIntent = AlertActivity.i0(AlertActivity.this).iterator();
            while (paramIntent.hasNext())
            {
              paramContext = (BaseAlert)paramIntent.next();
              AlertActivity.k0(AlertActivity.this, paramContext.getNotificationId());
              c.e(AlertActivity.this, paramContext, 0);
            }
            AlertActivity.j0(AlertActivity.this, null);
          }
          AlertActivity.this.finish();
        }
      }
      else if ("android.intent.action.KEYCODE_POWER_UP".equals(paramContext))
      {
        o1.a.g(false);
        o1.a.l();
      }
      else if ("com.miui.calendar.action.STOP_ALERT_ACTIVITY".equals(paramContext))
      {
        paramContext = (BaseAlert)paramIntent.getParcelableExtra("extra_key_alert");
        if ((paramContext != null) && (AlertActivity.i0(AlertActivity.this) != null) && (!AlertActivity.i0(AlertActivity.this).isEmpty()))
        {
          paramIntent = AlertActivity.i0(AlertActivity.this).iterator();
          while (paramIntent.hasNext())
          {
            BaseAlert localBaseAlert = (BaseAlert)paramIntent.next();
            if (paramContext.getAlertId() == -1)
            {
              if (localBaseAlert.getEventId() == paramContext.getEventId()) {
                paramIntent.remove();
              }
            }
            else if (localBaseAlert.getAlertId() == paramContext.getAlertId()) {
              paramIntent.remove();
            }
          }
          if (AlertActivity.i0(AlertActivity.this).isEmpty()) {
            AlertActivity.this.finish();
          }
          AlertActivity.l0(AlertActivity.this);
          o1.a.g(false);
          o1.a.l();
        }
      }
    }
  }
  
  private static class f
    extends c0<AlertActivity>
  {
    f(AlertActivity paramAlertActivity)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      if ((paramMessage.what == 1000) && (c() != null))
      {
        z.h("Cal:D:AlertActivity", "mHandler.handleMessage(): AlarmKlaxon.stop()");
        o1.a.l();
        ((AlertActivity)c()).getWindow().clearFlags(128);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.alerts.AlertActivity
 * JD-Core Version:    0.7.0.1
 */