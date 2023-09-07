package com.xiaomi.passport.ui.settings;

import android.app.Fragment;
import android.os.Bundle;
import android.view.View;
import u6.a;

public class b
  extends Fragment
{
  public String a()
  {
    return getClass().getSimpleName();
  }
  
  public void onPause()
  {
    super.onPause();
    a.a(a());
  }
  
  public void onResume()
  {
    super.onResume();
    a.c(a());
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    a.f(a());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.settings.b
 * JD-Core Version:    0.7.0.1
 */