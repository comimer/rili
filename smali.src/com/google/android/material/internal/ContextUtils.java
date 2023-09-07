package com.google.android.material.internal;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;

public class ContextUtils
{
  public static Activity getActivity(Context paramContext)
  {
    while ((paramContext instanceof ContextWrapper))
    {
      if ((paramContext instanceof Activity)) {
        return (Activity)paramContext;
      }
      paramContext = ((ContextWrapper)paramContext).getBaseContext();
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.internal.ContextUtils
 * JD-Core Version:    0.7.0.1
 */