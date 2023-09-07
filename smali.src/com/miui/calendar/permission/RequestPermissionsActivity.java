package com.miui.calendar.permission;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Trace;
import com.android.calendar.common.b;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.z;
import g4.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import miuix.appcompat.app.m;

public class RequestPermissionsActivity
  extends b
{
  private Intent b;
  private int c;
  private String[] d;
  
  private boolean Y(String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    for (int i = 0; i < paramArrayOfString.length; i++)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("isAllGranted: ");
      localStringBuilder.append(paramArrayOfInt[i]);
      z.a("Cal:D:RequestPermissionsActivity", localStringBuilder.toString());
      if ((paramArrayOfInt[i] != 0) && (Z(paramArrayOfString[i]))) {
        return false;
      }
    }
    return true;
  }
  
  private boolean Z(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("isPermissionRequired: ");
    localStringBuilder.append(paramString);
    z.a("Cal:D:RequestPermissionsActivity", localStringBuilder.toString());
    return Arrays.asList(this.d).contains(paramString);
  }
  
  private void a0()
  {
    Trace.beginSection("requestPermissions");
    try
    {
      ArrayList localArrayList = new java/util/ArrayList;
      localArrayList.<init>();
      for (String str : this.d) {
        if (!a.b(this, str)) {
          localArrayList.add(str);
        }
      }
      if (!localArrayList.isEmpty())
      {
        requestPermissions((String[])localArrayList.toArray(new String[localArrayList.size()]), 1);
        return;
      }
      ??? = new java/lang/RuntimeException;
      ((RuntimeException)???).<init>("Request permission activity was called even though all permissions are satisfied.");
      throw ((Throwable)???);
    }
    finally
    {
      Trace.endSection();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.b = ((Intent)getIntent().getExtras().get("previous_intent"));
    this.c = getIntent().getIntExtra("previous_request_code", -1);
    this.d = getIntent().getExtras().getStringArray("required_permissions");
    if (paramBundle == null) {
      a0();
    }
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0) && (Y(paramArrayOfString, paramArrayOfInt)))
    {
      this.b.addFlags(65536);
      if (this.c >= 0)
      {
        paramArrayOfInt = new Intent();
        paramArrayOfInt.putExtra("permission_request_intent", this.b);
        paramArrayOfInt.putExtra("permission_request_code", this.c);
        setResult(-1, paramArrayOfInt);
        paramArrayOfString = new StringBuilder();
        paramArrayOfString.append("onRequestPermissionsResult: intent=");
        paramArrayOfString.append(paramArrayOfInt);
        z.a("Cal:D:RequestPermissionsActivity", paramArrayOfString.toString());
      }
      else
      {
        startActivity(this.b);
      }
      finish();
      overridePendingTransition(0, 0);
    }
    else
    {
      t0.f(this, 2131886891);
      setResult(0);
      finish();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.permission.RequestPermissionsActivity
 * JD-Core Version:    0.7.0.1
 */