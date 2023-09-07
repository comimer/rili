package com.miui.calendar.thirdparty;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.view.Window;
import androidx.fragment.app.d;
import com.android.calendar.common.b;
import com.miui.calendar.util.g;
import com.miui.calendar.util.g.v;
import com.miui.calendar.util.z;
import java.util.Objects;
import miuix.appcompat.app.l;
import miuix.appcompat.app.l.b;
import miuix.appcompat.app.m;

public class ThirdPartyEventActivity
  extends b
{
  private String b;
  
  private void Z(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      z.m("Cal:D:ThirdPartyEventActivity", "handleNewIntent() intent is null");
      finish();
      return;
    }
    this.b = paramIntent.getStringExtra("packageName");
    a0();
  }
  
  private void a0()
  {
    l locall = new l.b(this).F(2131886747).m(2131886746).z(2131886745, new b()).r(2131886744, new a()).d(false).a();
    Window localWindow1 = locall.getWindow();
    Objects.requireNonNull(localWindow1);
    Window localWindow2 = (Window)localWindow1;
    localWindow1.setWindowAnimations(0);
    locall.show();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onCreate(): intent:");
    localStringBuilder.append(paramBundle);
    z.a("Cal:D:ThirdPartyEventActivity", localStringBuilder.toString());
    Z(paramBundle);
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onNewIntent(): intent:");
    localStringBuilder.append(paramIntent);
    z.a("Cal:D:ThirdPartyEventActivity", localStringBuilder.toString());
    Z(paramIntent);
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
  }
  
  class a
    implements DialogInterface.OnClickListener
  {
    a() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      g.c(g.v.k(ThirdPartyEventActivity.Y(ThirdPartyEventActivity.this), false));
      ThirdPartyEventActivity.this.finish();
    }
  }
  
  class b
    implements DialogInterface.OnClickListener
  {
    b() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      g.c(g.v.k(ThirdPartyEventActivity.Y(ThirdPartyEventActivity.this), true));
      ThirdPartyEventActivity.this.finish();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.thirdparty.ThirdPartyEventActivity
 * JD-Core Version:    0.7.0.1
 */