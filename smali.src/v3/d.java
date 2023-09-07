package v3;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import b2.a;
import com.miui.calendar.util.z;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import miuix.appcompat.app.l.b;

@Metadata(bv={}, d1={""}, d2={"Landroid/content/Context;", "context", "", "c", "Lkotlin/u;", "e", "d", "app_chinaNormalRelease"}, k=2, mv={1, 7, 1})
public final class d
{
  public static final boolean c(Context paramContext)
  {
    if (paramContext == null) {
      return false;
    }
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo("com.miui.voiceassist", 0);
      if (paramContext == null) {
        return false;
      }
      int i = paramContext.versionCode;
      return i >= 304008001;
    }
    catch (Exception paramContext)
    {
      z.d("CalD:ClassScheduleUtils", "isSupportClassSchedule error.", paramContext);
    }
    return false;
  }
  
  public static final void d(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("mimarket://details/detailmini?finishWhenInstalled=true&id=com.miui.voiceassist&startDownload=true"));
    try
    {
      r.c(paramContext);
      if (paramContext.getPackageManager().queryIntentActivities(localIntent, 0).size() < 1) {
        localIntent.setData(Uri.parse("mimarket://details?finishWhenInstalled=true&id=com.miui.voiceassist&startDownload=true"));
      }
      paramContext.startActivity(localIntent);
    }
    catch (Exception paramContext)
    {
      z.d("CalD:ClassScheduleUtils", "jumpToMarket", paramContext);
    }
  }
  
  public static final void e(Context paramContext)
  {
    r.f(paramContext, "context");
    paramContext = new l.b(paramContext).G(paramContext.getString(2131886371)).n(paramContext.getString(2131886365)).A(paramContext.getString(2131886372), new b(paramContext)).s(paramContext.getString(2131887803), new c(paramContext)).d(false).a();
    r.e(paramContext, "Builder(context)\n       …ancelable(false).create()");
    paramContext.show();
  }
  
  private static final void f(Context paramContext, DialogInterface paramDialogInterface, int paramInt)
  {
    r.f(paramContext, "$context");
    d(paramContext);
  }
  
  private static final void g(Context paramContext, DialogInterface paramDialogInterface, int paramInt)
  {
    r.f(paramContext, "$context");
    a.j(paramContext, "key_subscribe_class_schedule", -1L);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v3.d
 * JD-Core Version:    0.7.0.1
 */