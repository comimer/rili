package com.android.calendar.event;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import miuix.appcompat.app.l;
import miuix.appcompat.app.l.b;

public class i
{
  private Context a;
  private String b;
  private Event c;
  private Event d;
  private boolean e;
  private l f;
  private c g;
  
  public i(Activity paramActivity, Event paramEvent1, Event paramEvent2)
  {
    this.a = paramActivity;
    this.c = paramEvent1;
    this.d = paramEvent2;
    this.b = paramEvent1.getEx().getSyncId();
  }
  
  public static void g(Context paramContext, long paramLong, String paramString1, String paramString2)
  {
    Utils.W0(paramContext.getApplicationContext(), paramLong, paramString1, paramString2);
  }
  
  public static void h(Context paramContext, Event paramEvent)
  {
    if (paramEvent != null) {
      Utils.W0(paramContext.getApplicationContext(), paramEvent.getId(), paramEvent.getEpName(), paramEvent.toJson());
    }
  }
  
  public void f(boolean paramBoolean, c paramc)
  {
    this.e = paramBoolean;
    this.g = paramc;
    paramc = this.f;
    if (paramc != null)
    {
      paramc.dismiss();
      this.f = null;
    }
    if (this.e) {
      i = 2130903094;
    } else {
      i = 2130903066;
    }
    paramc = this.a.getResources();
    Object localObject1 = new ArrayList(Arrays.asList(paramc.getStringArray(i)));
    Object localObject2 = paramc.getIntArray(2130903073);
    paramc = new ArrayList();
    int j = localObject2.length;
    for (int i = 0; i < j; i++) {
      paramc.add(Integer.valueOf(localObject2[i]));
    }
    if (this.b == null)
    {
      ((List)localObject1).remove(0);
      paramc.remove(0);
      if (!this.c.getEx().isOrganizer())
      {
        ((List)localObject1).remove(0);
        paramc.remove(0);
      }
    }
    try
    {
      localObject1 = (CharSequence[])((List)localObject1).toArray(new CharSequence[0]);
      if (this.e) {
        i = 2131887360;
      } else {
        i = 2131887359;
      }
      localObject2 = new miuix/appcompat/app/l$b;
      ((l.b)localObject2).<init>(this.a);
      localObject2 = ((l.b)localObject2).F(i);
      a locala = new com/android/calendar/event/i$a;
      locala.<init>(this, paramc, paramBoolean);
      paramc = ((l.b)localObject2).l((CharSequence[])localObject1, locala).J();
      this.f = paramc;
      localObject1 = new com/android/calendar/event/i$b;
      ((b)localObject1).<init>(this);
      paramc.setOnCancelListener((DialogInterface.OnCancelListener)localObject1);
    }
    catch (Exception paramc)
    {
      z.d("Cal:D:EditEventAlarmHelper", "editAlarm()", paramc);
    }
  }
  
  class a
    implements DialogInterface.OnClickListener
  {
    a(List paramList, boolean paramBoolean) {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      if ((paramInt >= 0) && (this.a.size() > paramInt))
      {
        paramInt = ((Integer)this.a.get(paramInt)).intValue();
        if (paramInt != 0)
        {
          if (paramInt == 1)
          {
            i.c(i.this).setNeedAlarm(i.e(i.this));
            e0.g(i.b(i.this), i.c(i.this));
            if (i.a(i.this) != null) {
              i.a(i.this).c();
            }
          }
        }
        else
        {
          paramDialogInterface = new j(i.b(i.this));
          i.c(i.this).setNeedAlarm(this.b);
          paramDialogInterface.p(i.c(i.this), i.d(i.this), 1, false, new a());
        }
        return;
      }
      if (i.a(i.this) != null) {
        i.a(i.this).a();
      }
    }
    
    class a
      implements Runnable
    {
      a() {}
      
      public void run()
      {
        if (i.a(i.this) != null) {
          i.a(i.this).b();
        }
      }
    }
  }
  
  class b
    implements DialogInterface.OnCancelListener
  {
    b() {}
    
    public void onCancel(DialogInterface paramDialogInterface)
    {
      if (i.a(i.this) != null) {
        i.a(i.this).a();
      }
    }
  }
  
  public static abstract interface c
  {
    public abstract void a();
    
    public abstract void b();
    
    public abstract void c();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.i
 * JD-Core Version:    0.7.0.1
 */