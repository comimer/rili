package com.xiaomi.passport.ui.internal.util;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import x5.c;

public class d
{
  public static Bitmap a(Activity paramActivity, String paramString)
  {
    Object localObject1 = null;
    if (paramString != null) {
      paramString = c.c(paramActivity, paramString);
    } else {
      paramString = null;
    }
    Object localObject2 = paramString;
    if (paramString == null) {
      localObject2 = BitmapFactory.decodeResource(paramActivity.getResources(), n5.d.f);
    }
    paramString = localObject1;
    if (localObject2 != null)
    {
      paramString = a.c(paramActivity, (Bitmap)localObject2);
      ((Bitmap)localObject2).recycle();
    }
    return paramString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.internal.util.d
 * JD-Core Version:    0.7.0.1
 */