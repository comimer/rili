package com.android.calendar.ddauth;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.miui.calendar.util.g;
import com.miui.calendar.util.g.v;
import com.miui.calendar.util.z;

public class DDAuthActivity
  extends androidx.appcompat.app.d
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject = getIntent();
    paramBundle = ((Intent)localObject).getStringExtra("authCode");
    String str = ((Intent)localObject).getStringExtra("state");
    localObject = ((Intent)localObject).getStringExtra("error");
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onCreate authCode:");
    localStringBuilder.append(paramBundle);
    localStringBuilder.append(" state:");
    localStringBuilder.append(str);
    localStringBuilder.append(" error:");
    localStringBuilder.append((String)localObject);
    z.a("DDAuthActivity", localStringBuilder.toString());
    g.c(g.v.c(paramBundle, str, (String)localObject));
    finish();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.ddauth.DDAuthActivity
 * JD-Core Version:    0.7.0.1
 */