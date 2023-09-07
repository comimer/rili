package com.android.calendar.dragview;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.ViewStub;
import com.android.calendar.common.b;
import miuix.appcompat.app.m;

public class DragViewActivity
  extends b
{
  private AccountSettingBottomView b = null;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131558548);
    if (this.b == null) {
      ((ViewStub)findViewById(2131362386)).inflate();
    }
    paramBundle = getIntent();
    if (paramBundle != null)
    {
      long l = paramBundle.getLongExtra("account_id", 0L);
      int i = paramBundle.getIntExtra("account_color", 0);
      boolean bool1 = paramBundle.getBooleanExtra("account_visible", false);
      boolean bool2 = paramBundle.getBooleanExtra("need_delete", false);
      paramBundle = paramBundle.getStringExtra("path_name");
      AccountSettingBottomView localAccountSettingBottomView = (AccountSettingBottomView)findViewById(2131362387);
      this.b = localAccountSettingBottomView;
      localAccountSettingBottomView.H(this, l, i, bool1, bool2, paramBundle);
      this.b.I(true);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.dragview.DragViewActivity
 * JD-Core Version:    0.7.0.1
 */