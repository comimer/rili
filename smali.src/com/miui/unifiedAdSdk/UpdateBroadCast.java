package com.miui.unifiedAdSdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import f5.c;

public class UpdateBroadCast
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null) {
      return;
    }
    if ("miui.intent.action.ad.UNIFIED_AD_UPDATING".equals(paramIntent.getAction()))
    {
      paramIntent = paramIntent.getStringExtra("key_tag_id");
      if (TextUtils.isEmpty(paramIntent)) {
        return;
      }
      c.o(paramContext).n(paramIntent);
      paramContext = new StringBuilder();
      paramContext.append("receiver the update broadcast for tagid[");
      paramContext.append(paramIntent);
      paramContext.append("]");
      Log.i("RemoteUnifiedAdService", paramContext.toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.unifiedAdSdk.UpdateBroadCast
 * JD-Core Version:    0.7.0.1
 */