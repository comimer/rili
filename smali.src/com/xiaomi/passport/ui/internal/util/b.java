package com.xiaomi.passport.ui.internal.util;

import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;

public class b
{
  public static void a(FragmentManager paramFragmentManager, int paramInt, Fragment paramFragment)
  {
    b(paramFragmentManager, paramInt, paramFragment);
  }
  
  public static Fragment b(FragmentManager paramFragmentManager, int paramInt, Fragment paramFragment)
  {
    String str = paramFragment.getClass().getName();
    Fragment localFragment = paramFragmentManager.findFragmentByTag(str);
    if (localFragment == null)
    {
      paramFragmentManager = paramFragmentManager.beginTransaction();
      paramFragmentManager.add(paramInt, paramFragment, str);
      paramFragmentManager.commitAllowingStateLoss();
      return paramFragment;
    }
    return localFragment;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.internal.util.b
 * JD-Core Version:    0.7.0.1
 */