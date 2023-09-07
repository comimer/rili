package com.android.calendar.event;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import androidx.fragment.app.Fragment;
import com.android.calendar.common.event.schema.AgendaEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.common.event.schema.Reminder;
import com.android.calendar.common.j;
import com.miui.calendar.util.g;
import com.miui.calendar.util.g.n0;
import com.miui.calendar.util.g.o0;
import com.miui.calendar.util.g.p0;
import com.miui.calendar.util.g.s;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.greenrobot.eventbus.ThreadMode;
import pc.c;
import pc.l;

public class o1
  extends NewBaseEditFragment
  implements q1.r
{
  private q1 J;
  
  public o1(Intent paramIntent)
  {
    super(paramIntent);
  }
  
  private boolean Z()
  {
    Object localObject = this.j;
    boolean bool1 = false;
    boolean bool2 = false;
    if (localObject != null)
    {
      bool1 = bool2;
      if (this.I)
      {
        this.J.q0(0);
        this.J.c0(this.D, 0);
        bool1 = true;
      }
      int i = this.j.g;
      if (i == 2)
      {
        this.c.getEx().setHasAlarm(true);
        this.c.getEx().getReminders().clear();
        this.c.getEx().addReminder(Reminder.valueOf(-this.j.h, 1));
      }
      for (;;)
      {
        bool1 = true;
        break;
        if (i != 1) {
          break;
        }
        this.c.getEx().getReminders().clear();
      }
      if (!TextUtils.isEmpty(this.j.i))
      {
        this.c.setTitle(this.j.i);
        bool1 = true;
      }
      if (!TextUtils.isEmpty(this.j.j))
      {
        this.c.getEx().setRrule(this.j.j);
        bool1 = true;
      }
      bool2 = bool1;
      if (!TextUtils.isEmpty(this.j.l))
      {
        this.c.setLocation(this.j.l);
        bool2 = true;
      }
      if (!TextUtils.isEmpty(this.j.k))
      {
        this.c.setDescription(this.j.k);
        bool2 = true;
      }
      localObject = this.j.m;
      bool1 = bool2;
      if (localObject != null)
      {
        bool1 = bool2;
        if (((HashMap)localObject).size() > 0)
        {
          this.c.getEx().setEpMap(this.j.m);
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  protected View B(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    Log.d("Cal:D:NewEditEventFragment", "initFragment");
    if ((getActivity() instanceof EditEventActivity)) {
      paramViewGroup = ((EditEventActivity)getActivity()).j0(0);
    } else {
      paramViewGroup = null;
    }
    paramBundle = paramViewGroup;
    if (paramViewGroup == null)
    {
      paramBundle = paramLayoutInflater.inflate(2131558586, null);
      paramLayoutInflater = new StringBuilder();
      paramLayoutInflater.append("initFragment: view_1 = ");
      paramLayoutInflater.append(paramBundle);
      z.a("Cal:D:NewEditEventFragment", paramLayoutInflater.toString());
    }
    paramLayoutInflater = new StringBuilder();
    paramLayoutInflater.append("initFragment: view_2 = ");
    paramLayoutInflater.append(paramBundle);
    z.a("Cal:D:NewEditEventFragment", paramLayoutInflater.toString());
    paramLayoutInflater = new q1(this, paramBundle);
    this.J = paramLayoutInflater;
    paramLayoutInflater.p0(this);
    paramBundle.findViewById(2131363095).setOnTouchListener(new n1((InputMethodManager)getActivity().getSystemService("input_method")));
    return paramBundle;
  }
  
  protected boolean F()
  {
    q1 localq1 = this.J;
    boolean bool;
    if ((localq1 != null) && (localq1.a0())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public Event H()
  {
    return new AgendaEvent();
  }
  
  protected void K()
  {
    this.J.q0(this.E);
  }
  
  protected void L()
  {
    this.J.X(this.D, this.E);
  }
  
  protected void M()
  {
    HashMap localHashMap = new HashMap();
    long l = this.c.getId();
    boolean bool1 = false;
    if (l == -1L) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    localHashMap.put("new_event", String.valueOf(bool2));
    localHashMap.put("title", String.valueOf(TextUtils.isEmpty(this.c.getTitle()) ^ true));
    localHashMap.put("all_day", String.valueOf(this.c.isAllDay()));
    if (this.c.getEx().getStart() / 1000L == this.m / 1000L) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    localHashMap.put("start", String.valueOf(bool2));
    boolean bool2 = bool1;
    if (this.c.getEx().getEnd() / 1000L == this.n / 1000L) {
      bool2 = true;
    }
    localHashMap.put("end", String.valueOf(bool2));
    localHashMap.put("alert_count", String.valueOf(this.c.getEx().getReminders().size()));
    if (this.c.getEx().getReminders().size() > 0) {
      localHashMap.put("alert", String.valueOf(((Reminder)this.c.getEx().getReminders().get(this.c.getEx().getReminders().size() - 1)).getMinutes()));
    }
    localHashMap.put("repeat", String.valueOf(this.J.y.getSelectedItemPosition()));
    localHashMap.put("repeat_end", String.valueOf(this.J.D.getSelectedItemPosition()));
    if (this.p != null)
    {
      String str1 = y().toString();
      String str2 = str1;
      if (!str1.equals(this.p.getResources().getString(2131886841)))
      {
        str2 = str1;
        if (!str1.equals(this.p.getResources().getString(2131886217)))
        {
          str2 = str1;
          if (!str1.equals(this.p.getResources().getString(2131887856))) {
            str2 = "other";
          }
        }
      }
      localHashMap.put("mi_account", str2);
    }
    g0.e("edit_event_save", localHashMap);
  }
  
  public void O(boolean paramBoolean)
  {
    if (this.i == 0) {
      if (!TextUtils.isEmpty(this.c.getEx().getRrule())) {
        w();
      } else {
        this.i = 3;
      }
    }
    this.J.w0(this.c, paramBoolean ^ true, false);
    if (Z()) {
      this.J.w0(this.c, paramBoolean ^ true, false);
    }
    this.J.x0(this.i);
    this.J.r0(this.o);
  }
  
  protected void P()
  {
    q1 localq1 = this.J;
    if (localq1 != null) {
      localq1.x0(this.i);
    }
  }
  
  public boolean X()
  {
    return true;
  }
  
  public void e(String paramString, int paramInt)
  {
    this.E = paramInt;
    this.D.moveToPosition(paramInt);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    c.c().o(this);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    c.c().q(this);
    q1 localq1 = this.J;
    if (localq1 != null)
    {
      localq1.v0(null, true);
      this.J.S();
      this.J.e0();
    }
  }
  
  @l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.n0 paramn0)
  {
    g.b(paramn0, "Cal:D:NewEditEventFragment");
    q1 localq1 = this.J;
    if (localq1 != null) {
      localq1.z0(paramn0.a);
    }
  }
  
  @l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.o0 paramo0)
  {
    g.b(paramo0, "Cal:D:NewEditEventFragment");
    q1 localq1 = this.J;
    if (localq1 != null) {
      localq1.A0(paramo0.a, paramo0.b);
    }
  }
  
  @l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.p0 paramp0)
  {
    q1 localq1 = this.J;
    if (localq1 != null) {
      localq1.y0(paramp0.a);
    }
  }
  
  @l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.s params)
  {
    g.b(params, "Cal:D:NewEditEventFragment");
    if (isHidden()) {
      return;
    }
    if (this.J != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onEventMainThread(): reminders:");
      localStringBuilder.append(params.a);
      z.a("Cal:D:NewEditEventFragment", localStringBuilder.toString());
      this.c.getEx().setReminders(params.a);
      this.J.u0(this.c);
    }
  }
  
  public boolean x(boolean paramBoolean)
  {
    return this.J.T(paramBoolean);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.o1
 * JD-Core Version:    0.7.0.1
 */