package com.android.calendar.settings;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MenuItem;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.d;
import androidx.fragment.app.s;
import androidx.preference.Preference;
import androidx.preference.Preference.d;
import androidx.preference.TwoStatePreference;
import androidx.preference.g;
import b2.a;
import com.android.calendar.common.b;
import com.miui.calendar.util.z;
import miuix.appcompat.app.m;
import miuix.preference.RadioButtonPreference;
import miuix.preference.j;

public class PopupAlertSettingActivity
  extends b
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131558451);
    setTitle(2131887296);
    getSupportFragmentManager().m().b(2131362207, new a()).h();
  }
  
  public static class a
    extends j
    implements Preference.d
  {
    private static final String[] F = { "popup_alert_none", "popup_alert_all", "popup_alert_smart" };
    private Activity D;
    private Context E;
    private RadioButtonPreference[] y;
    private String[] z;
    
    public boolean d(Preference paramPreference)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onPreferenceClick:");
      localStringBuilder.append(paramPreference.u());
      z.a("Cal:D:PopupAlertSettingActivity", localStringBuilder.toString());
      paramPreference = paramPreference.u();
      int i = this.y.length;
      for (int j = 0; j < i; j++) {
        if (TextUtils.equals(paramPreference, this.y[j].u()))
        {
          a.k(this.E, "preferences_popup_alert", this.z[j]);
          this.y[j].setChecked(true);
        }
        else
        {
          this.y[j].setChecked(false);
        }
      }
      return true;
    }
    
    public void onAttach(Activity paramActivity)
    {
      super.onAttach(paramActivity);
      this.D = paramActivity;
      this.E = paramActivity.getApplicationContext();
    }
    
    public void onAttach(Context paramContext)
    {
      super.onAttach(paramContext);
    }
    
    public void onCreate(Bundle paramBundle)
    {
      super.onCreate(paramBundle);
    }
    
    public boolean onOptionsItemSelected(MenuItem paramMenuItem)
    {
      if (paramMenuItem.getItemId() == 16908332)
      {
        Activity localActivity = this.D;
        if (localActivity != null) {
          localActivity.onBackPressed();
        }
      }
      return super.onOptionsItemSelected(paramMenuItem);
    }
    
    public void q(Bundle paramBundle, String paramString)
    {
      i(2132082699);
      paramString = getResources().getStringArray(2130903098);
      this.z = getResources().getStringArray(2130903101);
      paramBundle = a.c(this.E, "preferences_popup_alert", "");
      this.y = new RadioButtonPreference[3];
      Object localObject;
      for (int i = 0;; i++)
      {
        localObject = this.y;
        if (i >= localObject.length) {
          break;
        }
        localObject[i] = ((RadioButtonPreference)a(F[i]));
        localObject = this.y[i];
        if (localObject != null)
        {
          ((Preference)localObject).K0(paramString[i]);
          this.y[i].setChecked(paramBundle.equals(this.z[i]));
          this.y[i].E0(this);
        }
      }
      localObject[2].G0(2131887295);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.settings.PopupAlertSettingActivity
 * JD-Core Version:    0.7.0.1
 */