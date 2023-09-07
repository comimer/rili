package com.xiaomi.passport.ui.sns;

import android.app.Activity;
import android.os.Bundle;
import p6.c;
import s6.t;

public class WXEntryActivity
  extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    t.t(this, getIntent());
    c.a(this, getIntent());
    finish();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.sns.WXEntryActivity
 * JD-Core Version:    0.7.0.1
 */