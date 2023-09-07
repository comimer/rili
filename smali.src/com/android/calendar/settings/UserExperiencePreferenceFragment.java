package com.android.calendar.settings;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.fragment.app.Fragment;
import androidx.preference.Preference;
import androidx.preference.Preference.c;
import androidx.preference.PreferenceGroup;
import androidx.preference.g;
import miuix.preference.j;

public class UserExperiencePreferenceFragment
  extends j
  implements Preference.c
{
  private Context D;
  private ContentPromotionConfig E = new ContentPromotionConfig();
  private PreferenceGroup y;
  private Preference z;
  
  private void J()
  {
    if ((this.E.show > 0) && (this.y.T0("key_content_promotion") == null))
    {
      this.y.S0(this.z);
      if (!TextUtils.isEmpty(this.E.title)) {
        this.z.K0(this.E.title);
      } else {
        this.z.K0(this.D.getString(2131887427));
      }
    }
    else if ((this.E.show <= 0) && (this.y.T0("key_content_promotion") != null))
    {
      this.y.a1(this.z);
    }
  }
  
  public boolean c(Preference paramPreference, Object paramObject)
  {
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.D = getActivity();
    i(2132082721);
    i(2132082721);
    paramBundle = m();
    this.y = ((PreferenceGroup)paramBundle.T0("category_user_experience"));
    paramBundle = paramBundle.T0("key_content_promotion");
    this.z = paramBundle;
    paramBundle.D0(this);
    J();
  }
  
  public void q(Bundle paramBundle, String paramString) {}
  
  @Keep
  public class ContentPromotionConfig
  {
    public int show;
    public String title;
    
    public ContentPromotionConfig() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.settings.UserExperiencePreferenceFragment
 * JD-Core Version:    0.7.0.1
 */