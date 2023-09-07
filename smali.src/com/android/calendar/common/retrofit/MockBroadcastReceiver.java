package com.android.calendar.common.retrofit;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.android.calendar.application.CalendarApplication;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.z;
import java.lang.reflect.Method;
import v1.a;
import v1.b;
import v1.c;

public class MockBroadcastReceiver
  extends BroadcastReceiver
{
  private static String b = "com.miui.calendardebug";
  b a = c.d();
  
  private static boolean a(Intent paramIntent)
  {
    try
    {
      paramIntent = (String)paramIntent.getClass().getMethod("getSender", new Class[0]).invoke(paramIntent, new Object[0]);
      boolean bool = TextUtils.equals(b, paramIntent);
      return bool;
    }
    catch (Exception paramIntent)
    {
      z.d("Cal:D:MockBroadcastReceiver", "checkSendPackage()", paramIntent);
    }
    return false;
  }
  
  private void b(Intent paramIntent)
  {
    z.a("Cal:D:MockBroadcastReceiver", "handleAddNetMock()");
    String str = paramIntent.getStringExtra("mocked_path");
    paramIntent = paramIntent.getStringExtra("mocked_file");
    if ((!TextUtils.isEmpty(str)) && (!TextUtils.isEmpty(paramIntent)))
    {
      this.a.b(new a(str, paramIntent));
      t0.f(CalendarApplication.e().getApplicationContext(), 2131887341);
      return;
    }
    z.m("Cal:D:MockBroadcastReceiver", "handleAddNetMock() mockedPath or mockedFileName is empty, return");
  }
  
  private void c()
  {
    z.a("Cal:D:MockBroadcastReceiver", "handleClearNetMockEnabled()");
    this.a.a();
    t0.f(CalendarApplication.e().getApplicationContext(), 2131886375);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!a(paramIntent))
    {
      z.m("Cal:D:MockBroadcastReceiver", "onReceive() warning : sender is not calendar sample app");
      return;
    }
    if (TextUtils.equals("com.miui.calendardebug.sample.MOCK_NET_CLEAR", paramIntent.getAction())) {
      c();
    } else if (TextUtils.equals("com.miui.calendardebug.sample.MOCK_NET_ADD", paramIntent.getAction())) {
      b(paramIntent);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.retrofit.MockBroadcastReceiver
 * JD-Core Version:    0.7.0.1
 */