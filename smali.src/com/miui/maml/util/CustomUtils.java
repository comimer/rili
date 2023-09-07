package com.miui.maml.util;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Build;

public class CustomUtils
{
  public static void replaceCameraIntentInfoOnF3M(String paramString1, String paramString2, Intent paramIntent)
  {
    if (("vela".equals(Build.DEVICE)) && (paramIntent != null) && ("com.android.camera".equals(paramString1)) && ("com.android.camera.Camera".equals(paramString2)))
    {
      paramIntent.setComponent(new ComponentName("com.mlab.cam", "com.mtlab.camera.CameraActivity"));
      if ("android.intent.action.MAIN".equals(paramIntent.getAction())) {
        paramIntent.setAction("android.media.action.STILL_IMAGE_CAMERA");
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.CustomUtils
 * JD-Core Version:    0.7.0.1
 */