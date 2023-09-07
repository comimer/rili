package com.xiaomi.passport.ui.page;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import n5.g;

public class a
  extends Fragment
{
  public Bundle i()
  {
    Bundle localBundle1 = new Bundle();
    Bundle localBundle2 = getArguments();
    Bundle localBundle3 = getActivity().getIntent().getExtras();
    if (localBundle3 != null) {
      localBundle1.putAll(localBundle3);
    }
    if (localBundle2 != null) {
      localBundle1.putAll(localBundle2);
    }
    return localBundle1;
  }
  
  public String j()
  {
    return getClass().getSimpleName();
  }
  
  protected boolean k()
  {
    boolean bool;
    if ((getActivity() != null) && (!getActivity().isFinishing()) && (!getActivity().isDestroyed())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void l(String paramString)
  {
    String str = paramString;
    if (TextUtils.isEmpty(paramString)) {
      str = getString(g.M0);
    }
    z6.a.c(getActivity(), str);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.page.a
 * JD-Core Version:    0.7.0.1
 */