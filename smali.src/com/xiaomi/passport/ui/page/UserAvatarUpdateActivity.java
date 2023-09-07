package com.xiaomi.passport.ui.page;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import com.xiaomi.accountsdk.utils.l;
import com.xiaomi.passport.accountmanager.g;
import v6.c;

public class UserAvatarUpdateActivity
  extends androidx.appcompat.app.d
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (!new l().a(this))
    {
      finish();
      return;
    }
    paramBundle = new c();
    paramBundle.setArguments(getIntent().getExtras());
    com.xiaomi.passport.ui.internal.util.b.a(getFragmentManager(), 16908290, paramBundle);
  }
  
  protected void onResume()
  {
    super.onResume();
    if (g.z(this).l() == null)
    {
      com.xiaomi.accountsdk.utils.b.g("UserAvatarUpdateActivity", "no xiaomi account");
      finish();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.page.UserAvatarUpdateActivity
 * JD-Core Version:    0.7.0.1
 */