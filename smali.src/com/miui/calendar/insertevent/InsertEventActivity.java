package com.miui.calendar.insertevent;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.provider.CalendarContract.Events;
import android.text.TextUtils;
import android.view.Window;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.common.event.schema.ThirdPartyEvent;
import com.android.calendar.common.j;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.p0;
import com.miui.calendar.util.p0.b;
import com.miui.calendar.util.p0.c;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.z;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Map;
import miuix.appcompat.app.l.b;
import miuix.appcompat.app.m;
import org.json.JSONObject;
import u1.b.a;

public class InsertEventActivity
  extends com.android.calendar.common.b
{
  private void b0(StringBuilder paramStringBuilder, String paramString1, String paramString2, boolean paramBoolean)
  {
    if (!paramBoolean) {
      paramStringBuilder.append(" AND ");
    }
    if (TextUtils.isEmpty(paramString2))
    {
      paramString2 = new StringBuilder();
      paramString2.append("(");
      paramString2.append(paramString1);
      paramString2.append(" is NULL or ");
      paramString2.append(paramString1);
      paramString2.append(" = '')");
      paramStringBuilder.append(paramString2.toString());
    }
    else
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString1);
      localStringBuilder.append(" = '");
      localStringBuilder.append(paramString2);
      localStringBuilder.append("'");
      paramStringBuilder.append(localStringBuilder.toString());
    }
  }
  
  private String c0(ThirdPartyEvent paramThirdPartyEvent)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    b0(localStringBuilder, "title", paramThirdPartyEvent.getTitle(), true);
    b0(localStringBuilder, "eventLocation", paramThirdPartyEvent.getLocation(), false);
    b0(localStringBuilder, "description", paramThirdPartyEvent.getDescription(), false);
    b0(localStringBuilder, "dtstart", String.valueOf(paramThirdPartyEvent.getEx().getStart()), false);
    if (!paramThirdPartyEvent.isAllDay()) {
      b0(localStringBuilder, "dtend", String.valueOf(paramThirdPartyEvent.getEx().getEnd()), false);
    }
    b0(localStringBuilder, "sync_data1", paramThirdPartyEvent.getUrl(), false);
    b0(localStringBuilder, "sync_data2", paramThirdPartyEvent.getUrlText(), false);
    b0(localStringBuilder, "sync_data3", paramThirdPartyEvent.getPackageName(), false);
    return localStringBuilder.toString();
  }
  
  private long d0(ThirdPartyEvent paramThirdPartyEvent)
  {
    long l1 = 0L;
    if (paramThirdPartyEvent == null) {
      return 0L;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("getExistEventId(): selection");
    localStringBuilder.append(c0(paramThirdPartyEvent));
    z.h("Cal:D:InsertEventActivity", localStringBuilder.toString());
    paramThirdPartyEvent = p0.d(this).u(CalendarContract.Events.CONTENT_URI).r(new String[] { "_id" }).t(new Class[] { Long.class }).s(c0(paramThirdPartyEvent)).i();
    long l2 = l1;
    if (paramThirdPartyEvent != null)
    {
      l2 = l1;
      if (!paramThirdPartyEvent.isEmpty())
      {
        paramThirdPartyEvent = paramThirdPartyEvent.k();
        l2 = l1;
        if (paramThirdPartyEvent != null) {
          l2 = paramThirdPartyEvent.g(0).longValue();
        }
      }
    }
    return l2;
  }
  
  private void e0(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      z.n("Cal:D:InsertEventActivity", "handleNewIntent() intent is null");
      finish();
      return;
    }
    try
    {
      Object localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      ((StringBuilder)localObject).append("handleNewIntent(): url:");
      ((StringBuilder)localObject).append(paramIntent.getData());
      z.h("Cal:D:InsertEventActivity", ((StringBuilder)localObject).toString());
      localObject = c4.a.a(paramIntent.getData());
      String str = ((Event)localObject).getTitle();
      long l = d0((ThirdPartyEvent)localObject);
      if (l > 0L)
      {
        j0(l, (ThirdPartyEvent)localObject);
        g0.f("third_party_insert_event_duplicate", new String[] { "title", ((Event)localObject).getTitle() });
        finish();
      }
      else
      {
        f0(paramIntent, true, str);
      }
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      f0(paramIntent, false, "no title");
      z.f("Cal:D:InsertEventActivity", "handleNewIntent()", localIllegalArgumentException);
    }
  }
  
  private void f0(final Intent paramIntent, final boolean paramBoolean, final String paramString)
  {
    paramIntent = new l.b(this).G(getResources().getString(2131886747)).n(getResources().getString(2131886746)).A(getResources().getString(2131886745), new c(paramBoolean, paramIntent, paramString)).s(getResources().getString(2131886744), new b(paramString)).w(new a()).d(false).a();
    paramIntent.getWindow().setWindowAnimations(0);
    paramIntent.show();
  }
  
  private void g0(Context paramContext)
  {
    t0.c(paramContext, getResources().getString(2131886748));
  }
  
  private void h0(Intent paramIntent)
  {
    if ((paramIntent != null) && (paramIntent.getData() != null)) {
      InsertEventService.e(this, paramIntent.getData());
    }
  }
  
  private void i0(Intent paramIntent)
  {
    String str1 = paramIntent.getData().getQueryParameter("keyword");
    if (str1 != null)
    {
      Object localObject = getApplicationContext();
      String str2 = u1.d.a((Context)localObject);
      localObject = l0.a((Context)localObject, null);
      u1.a locala = u1.d.d();
      paramIntent = new d(this, paramIntent);
      locala.n(str1, str2, (Map)localObject).q(new u1.b(paramIntent));
    }
    else
    {
      g0(this);
      z.a("Cal:D:InsertEventActivity", "no keyword!");
    }
  }
  
  private void j0(long paramLong, ThirdPartyEvent paramThirdPartyEvent)
  {
    paramThirdPartyEvent = Utils.a0(this, j.b(this, this, paramLong, paramThirdPartyEvent.getEx().getStart(), paramThirdPartyEvent.getEx().getEnd(), 0, 0, j.a(0, paramThirdPartyEvent.isAllDay())), 0, 268435456);
    if (paramThirdPartyEvent != null) {
      startActivity(paramThirdPartyEvent, ActivityOptions.makeCustomAnimation(this, 2130771988, 2130771989).toBundle());
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent();
    z.h("Cal:D:InsertEventActivity", "onCreate() intent=");
    i0(paramBundle);
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onNewIntent() intent=");
    localStringBuilder.append(paramIntent);
    z.h("Cal:D:InsertEventActivity", localStringBuilder.toString());
    i0(paramIntent);
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
  }
  
  protected void onStop()
  {
    super.onStop();
    finish();
  }
  
  class a
    implements DialogInterface.OnDismissListener
  {
    a() {}
    
    public void onDismiss(DialogInterface paramDialogInterface)
    {
      InsertEventActivity.this.finish();
    }
  }
  
  class b
    implements DialogInterface.OnClickListener
  {
    b(String paramString) {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      g0.f("third_party_insert_event_cancel", new String[] { "title", paramString });
      InsertEventActivity.this.finish();
    }
  }
  
  class c
    implements DialogInterface.OnClickListener
  {
    c(boolean paramBoolean, Intent paramIntent, String paramString) {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      if (paramBoolean)
      {
        InsertEventActivity.a0(InsertEventActivity.this, paramIntent);
      }
      else
      {
        paramDialogInterface = InsertEventActivity.this;
        t0.c(paramDialogInterface, paramDialogInterface.getResources().getString(2131886749));
        g0.f("third_party_insert_event_invalid", new String[] { "title", paramString });
        InsertEventActivity.this.finish();
      }
    }
  }
  
  private static class d
    implements b.a
  {
    private final WeakReference<InsertEventActivity> a;
    private final Intent b;
    
    public d(InsertEventActivity paramInsertEventActivity, Intent paramIntent)
    {
      this.a = new WeakReference(paramInsertEventActivity);
      this.b = new Intent(paramIntent);
    }
    
    public void a(JSONObject paramJSONObject)
    {
      InsertEventActivity localInsertEventActivity = (InsertEventActivity)this.a.get();
      JSONObject localJSONObject = null;
      try
      {
        paramJSONObject = paramJSONObject.getJSONObject("data");
        localJSONObject = paramJSONObject;
        s4.d.d(paramJSONObject.toString());
        localJSONObject = paramJSONObject;
        if (paramJSONObject.getBoolean("valid"))
        {
          localJSONObject = paramJSONObject;
          InsertEventActivity.Y(localInsertEventActivity, this.b);
        }
        else
        {
          localJSONObject = paramJSONObject;
          InsertEventActivity.Z(localInsertEventActivity, localInsertEventActivity);
          localJSONObject = paramJSONObject;
          z.a("Cal:D:InsertEventActivity", "invalid keyword!");
        }
      }
      catch (Exception localException)
      {
        paramJSONObject = new StringBuilder();
        paramJSONObject.append("data: ");
        paramJSONObject.append(localJSONObject);
        z.f("Cal:D:InsertEventActivity", paramJSONObject.toString(), localException);
      }
    }
    
    public void b(Exception paramException)
    {
      z.d("Cal:D:InsertEventActivity", "ResponseListener: ", paramException);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.insertevent.InsertEventActivity
 * JD-Core Version:    0.7.0.1
 */