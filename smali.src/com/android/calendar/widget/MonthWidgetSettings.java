package com.android.calendar.widget;

import android.app.Activity;
import android.app.Dialog;
import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.os.BaseBundle;
import android.os.Bundle;
import androidx.fragment.app.d;
import miuix.appcompat.app.l;
import miuix.appcompat.app.l.b;
import miuix.appcompat.app.m;

public class MonthWidgetSettings
  extends com.android.calendar.common.b
{
  private l b;
  private int c = -1;
  private DialogInterface.OnClickListener d = new a();
  private DialogInterface.OnDismissListener e = new b();
  
  private void a0()
  {
    Object localObject1 = getIntent().getExtras();
    if (localObject1 != null)
    {
      Object localObject2 = AppWidgetManager.getInstance(this).getAppWidgetIds(MonthWidgetProvider.f(this));
      int i = ((BaseBundle)localObject1).getInt("appWidgetId", 0);
      localObject1 = new Intent(this, MonthWidgetProvider.class);
      ((Intent)localObject1).putExtra("appWidgetId", i);
      ((Intent)localObject1).setAction("android.appwidget.action.APPWIDGET_UPDATE");
      ((Intent)localObject1).putExtra("appWidgetIds", (int[])localObject2);
      sendBroadcast((Intent)localObject1);
      setResult(-1, (Intent)localObject1);
      localObject2 = this.b;
      if (localObject2 != null)
      {
        ((l)localObject2).dismiss();
        this.b = null;
      }
    }
  }
  
  private void b0()
  {
    if (this.b == null)
    {
      l.b localb = new l.b(this);
      localb.F(2131887846);
      localb.B(2130903133, -1, this.d);
      this.b = localb.a();
    }
    this.b.setOnDismissListener(this.e);
    this.b.show();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.c = getIntent().getIntExtra("appWidgetId", -1);
    b0();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    l locall = this.b;
    if (locall != null)
    {
      if (locall.isShowing()) {
        this.b.dismiss();
      }
      this.b = null;
    }
  }
  
  class a
    implements DialogInterface.OnClickListener
  {
    a() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      paramDialogInterface = MonthWidgetSettings.this;
      e2.b.h(paramDialogInterface, MonthWidgetSettings.Y(paramDialogInterface), paramInt);
      MonthWidgetSettings.Z(MonthWidgetSettings.this);
    }
  }
  
  class b
    implements DialogInterface.OnDismissListener
  {
    b() {}
    
    public void onDismiss(DialogInterface paramDialogInterface)
    {
      MonthWidgetSettings.this.finish();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.widget.MonthWidgetSettings
 * JD-Core Version:    0.7.0.1
 */