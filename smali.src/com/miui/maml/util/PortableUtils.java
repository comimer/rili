package com.miui.maml.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;

public class PortableUtils
{
  public static Drawable getUserBadgedIcon(Context paramContext, Drawable paramDrawable, UserHandle paramUserHandle)
  {
    return paramContext.getPackageManager().getUserBadgedIcon(paramDrawable, paramUserHandle);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.PortableUtils
 * JD-Core Version:    0.7.0.1
 */