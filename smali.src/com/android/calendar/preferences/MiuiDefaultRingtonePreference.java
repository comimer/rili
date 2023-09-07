package com.android.calendar.preferences;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.media.ExtraRingtone;
import android.net.Uri;
import android.net.Uri.Builder;
import android.util.AttributeSet;
import androidx.preference.Preference;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.z0;
import com.miui.calendar.util.z0.i;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import miui.system.R.string;
import miuix.preference.j;

public class MiuiDefaultRingtonePreference
  extends RingtonePreferenceX
{
  private static int f0 = 8192;
  private WeakReference<Activity> c0;
  private int d0 = 0;
  private j e0;
  
  public MiuiDefaultRingtonePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void T0(Intent paramIntent)
  {
    int i = R0();
    ArrayList localArrayList;
    Object localObject1;
    if ((DeviceUtils.F()) && ((i == 4096) || (i == f0)))
    {
      paramIntent.putExtra("android.intent.extra.ringtone.TYPE", i);
      paramIntent.setAction("miui.intent.action.RINGTONE_PICKER");
      localArrayList = new ArrayList();
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("file://");
      ((StringBuilder)localObject1).append("/system/media/audio/ui/StoneSkimming_preview.ogg");
      localObject1 = Uri.parse(((StringBuilder)localObject1).toString());
      localArrayList.add(new Uri.Builder().scheme("theme").authority("ringtonePick").appendPath("extraRingtoneInfo").appendQueryParameter("title", ExtraRingtone.getRingtoneTitle(n(), (Uri)localObject1, true)).appendQueryParameter("path", "/system/media/audio/ui/StoneSkimming_preview.ogg").build());
      paramIntent.putParcelableArrayListExtra("miui.intent.extra.ringtone.EXTRA_RINGTONE_URI_LIST", localArrayList);
    }
    else
    {
      super.T0(paramIntent);
      paramIntent.putExtra("android.intent.extra.ringtone.TYPE", i);
      paramIntent.setAction("miui.intent.action.RINGTONE_PICKER");
      localArrayList = new ArrayList();
      localObject1 = n().getResources().getString(R.string.def_notification_sound);
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("file://");
      ((StringBuilder)localObject2).append((String)localObject1);
      localObject2 = Uri.parse(((StringBuilder)localObject2).toString());
      localArrayList.add(new Uri.Builder().scheme("theme").authority("ringtonePick").appendPath("extraRingtoneInfo").appendQueryParameter("title", ExtraRingtone.getRingtoneTitle(n(), (Uri)localObject2, true)).appendQueryParameter("path", (String)localObject1).build());
      paramIntent.putParcelableArrayListExtra("miui.intent.extra.ringtone.EXTRA_RINGTONE_URI_LIST", localArrayList);
    }
  }
  
  public void Y()
  {
    if (R0() == 4096)
    {
      super.Y();
      WeakReference localWeakReference = this.c0;
      if (localWeakReference != null) {
        S0((Activity)localWeakReference.get(), this.d0);
      }
    }
    else
    {
      z0.E((Context)this.c0.get(), this.e0, 1, new a());
    }
  }
  
  public void Z0(Activity paramActivity)
  {
    this.c0 = new WeakReference(paramActivity);
  }
  
  public void a1(j paramj)
  {
    this.e0 = paramj;
  }
  
  public void b1(int paramInt)
  {
    this.d0 = paramInt;
  }
  
  class a
    implements z0.i
  {
    a() {}
    
    public void a()
    {
      if (MiuiDefaultRingtonePreference.X0(MiuiDefaultRingtonePreference.this) != null)
      {
        MiuiDefaultRingtonePreference localMiuiDefaultRingtonePreference = MiuiDefaultRingtonePreference.this;
        localMiuiDefaultRingtonePreference.S0((Activity)MiuiDefaultRingtonePreference.X0(localMiuiDefaultRingtonePreference).get(), MiuiDefaultRingtonePreference.Y0(MiuiDefaultRingtonePreference.this));
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.preferences.MiuiDefaultRingtonePreference
 * JD-Core Version:    0.7.0.1
 */