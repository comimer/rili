package g4;

import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import androidx.core.app.b;
import androidx.core.content.c;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.List;
import miui.os.Build;

public class a
{
  private static final int a = Build.VERSION.SDK_INT;
  private static final boolean b = Build.IS_INTERNATIONAL_BUILD;
  private static final String[] c = { "android.permission.WRITE_CALENDAR", "android.permission.READ_CALENDAR" };
  
  public static boolean a(Context paramContext)
  {
    int i = a;
    boolean bool = true;
    if (i >= 23) {
      return true;
    }
    if (c.b(paramContext, "miui.permission.USE_INTERNAL_GENERAL_API") != 0) {
      bool = false;
    }
    paramContext = new StringBuilder();
    paramContext.append("canAutoDownload(): canAutoDownload:");
    paramContext.append(bool);
    z.a("Cal:D:PermissionUtil", paramContext.toString());
    return bool;
  }
  
  public static boolean b(Context paramContext, String paramString)
  {
    boolean bool1 = g(paramContext);
    boolean bool2 = true;
    if (!bool1) {
      return true;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("checkPermission(): permission:");
    localStringBuilder.append(paramString);
    z.a("Cal:D:PermissionUtil", localStringBuilder.toString());
    if (paramContext.checkSelfPermission(paramString) != 0) {
      bool2 = false;
    }
    return bool2;
  }
  
  public static boolean c(Context paramContext)
  {
    String[] arrayOfString = c;
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramContext.checkSelfPermission(arrayOfString[0]) == 0)
    {
      bool2 = bool1;
      if (paramContext.checkSelfPermission(arrayOfString[1]) == 0) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public static boolean d(Context paramContext)
  {
    boolean bool = false;
    if (paramContext == null) {
      return false;
    }
    if (androidx.core.content.a.a(paramContext, "android.permission.POST_NOTIFICATIONS") == 0) {
      bool = true;
    }
    return bool;
  }
  
  public static boolean e(Context paramContext)
  {
    boolean bool = false;
    if (paramContext == null) {
      return false;
    }
    if (androidx.core.content.a.a(paramContext, "android.permission.READ_PHONE_STATE") == 0) {
      bool = true;
    }
    return bool;
  }
  
  public static void f(Activity paramActivity)
  {
    ArrayList localArrayList = new ArrayList();
    if (!e(paramActivity))
    {
      localArrayList.add("android.permission.READ_PHONE_STATE");
      localArrayList.add(paramActivity.getString(2131887319));
    }
    if ((Build.VERSION.SDK_INT >= 33) && (!d(paramActivity)))
    {
      localArrayList.add("android.permission.POST_NOTIFICATIONS");
      localArrayList.add(paramActivity.getString(2131887315));
    }
    String[] arrayOfString = (String[])localArrayList.toArray(new String[localArrayList.size()]);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("unGranted size:");
    localStringBuilder.append(arrayOfString.length);
    z.a("Cal:D:PermissionUtil", localStringBuilder.toString());
    if (arrayOfString.length > localArrayList.size() / 2) {
      b.r(paramActivity, arrayOfString, 0);
    }
  }
  
  public static boolean g(Context paramContext)
  {
    paramContext = paramContext.getContentResolver();
    boolean bool1 = true;
    int i;
    if (Settings.Secure.getInt(paramContext, "miui_optimization", 1) == 0) {
      i = 1;
    } else {
      i = 0;
    }
    boolean bool2 = bool1;
    if (i == 0) {
      if (b) {
        bool2 = bool1;
      } else {
        bool2 = false;
      }
    }
    return bool2;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g4.a
 * JD-Core Version:    0.7.0.1
 */