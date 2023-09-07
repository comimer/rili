package com.miui.calendar.util;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Paint;
import android.net.Uri;
import android.os.Build.VERSION;
import android.preference.PreferenceManager;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.android.calendar.application.CalendarApplication;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import miui.os.Build;
import miuix.appcompat.app.l;
import miuix.appcompat.app.l.b;
import miuix.preference.j;

public class z0
{
  private static final Uri a = Uri.parse("content://com.android.calendar/user_notice_agreed");
  private static String b = "android.content.pm.action.REQUEST_PERMISSIONS";
  private static boolean c = false;
  private static String d = "miui.intent.action.SYSTEM_PERMISSION_DECLARE";
  
  public static void A(Context paramContext, Fragment paramFragment, h paramh)
  {
    if (!H(paramContext, paramFragment)) {
      D(paramContext, paramh);
    }
  }
  
  public static boolean B(Activity paramActivity)
  {
    return C(paramActivity, 17);
  }
  
  public static boolean C(Activity paramActivity, int paramInt)
  {
    return G(paramActivity, paramInt);
  }
  
  public static l D(Context paramContext, final h paramh)
  {
    Resources localResources = paramContext.getResources();
    String str1 = localResources.getString(2131886261);
    String str2 = localResources.getString(2131886258);
    String str3 = localResources.getString(2131887805, new Object[] { str1, str2 });
    a locala = new a();
    b localb = new b();
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str3);
    int i = str3.indexOf(str1);
    localSpannableStringBuilder.setSpan(new j(locala, localResources.getColor(2131100917)), i, str1.length() + i, 33);
    i = str3.indexOf(str2);
    localSpannableStringBuilder.setSpan(new j(localb, localResources.getColor(2131100917)), i, str2.length() + i, 33);
    paramContext = new l.b(paramContext).n(localSpannableStringBuilder).d(false).F(2131887806).z(2131887804, new e(paramh)).r(2131887803, new d(paramh)).v(new c(paramh)).J();
    ((TextView)paramContext.getWindow().findViewById(2131362766)).setMovementMethod(LinkMovementMethod.getInstance());
    return paramContext;
  }
  
  public static void E(Context paramContext, j paramj, int paramInt, i parami)
  {
    Object localObject1 = paramContext.getResources();
    String[] arrayOfString = new String[1];
    Object localObject2 = e("audio");
    int i = 0;
    arrayOfString[0] = localObject2;
    localObject2 = ((Resources)localObject1).getString(2131887321);
    localObject1 = new ArrayList();
    while (i < 1)
    {
      if (androidx.core.content.a.a(paramContext, arrayOfString[i]) != 0)
      {
        ((List)localObject1).add(arrayOfString[i]);
        ((List)localObject1).add(new String[] { localObject2 }[i]);
      }
      i++;
    }
    if (((List)localObject1).isEmpty())
    {
      z.a("Cal:D:UserNoticeUtil", "mPermissionList empty");
      if (parami != null) {
        parami.a();
      }
    }
    else
    {
      localObject2 = (String[])((List)localObject1).toArray(new String[((List)localObject1).size()]);
      if (paramj != null)
      {
        parami = arrayOfString;
        if (k(paramContext)) {
          parami = (i)localObject2;
        }
        paramj.requestPermissions(parami, paramInt);
      }
    }
  }
  
  public static void F(Context paramContext, Activity paramActivity, int paramInt, i parami)
  {
    Object localObject = paramContext.getResources();
    String[] arrayOfString = { "android.permission.READ_CONTACTS" };
    String str = ((Resources)localObject).getString(2131887313);
    int i = 0;
    localObject = new ArrayList();
    while (i < 1)
    {
      if (androidx.core.content.a.a(paramContext, arrayOfString[i]) != 0)
      {
        ((List)localObject).add(arrayOfString[i]);
        ((List)localObject).add(new String[] { str }[i]);
      }
      i++;
    }
    if (((List)localObject).isEmpty())
    {
      z.a("Cal:D:UserNoticeUtil", "mPermissionList empty");
      if (parami == null) {
        return;
      }
      parami.a();
    }
    else
    {
      localObject = (String[])((List)localObject).toArray(new String[((List)localObject).size()]);
      parami = arrayOfString;
      if (k(paramContext)) {
        parami = (i)localObject;
      }
      paramActivity.requestPermissions(parami, paramInt);
    }
  }
  
  private static boolean G(Activity paramActivity, int paramInt)
  {
    Intent localIntent = c(paramActivity);
    if (paramActivity.getPackageManager().queryIntentActivities(localIntent, 0).size() == 0) {
      localIntent.setAction("miui.intent.action.SYSTEM_PERMISSION_DECLARE");
    }
    if (paramActivity.getPackageManager().queryIntentActivities(localIntent, 0).size() > 0)
    {
      try
      {
        d = localIntent.getAction();
        paramActivity.startActivityForResult(localIntent, paramInt);
        c = false;
      }
      catch (Exception paramActivity)
      {
        z.d("Cal:D:UserNoticeUtil", "startSecurityCenter", paramActivity);
        c = true;
      }
      return true;
    }
    return false;
  }
  
  private static boolean H(Context paramContext, Fragment paramFragment)
  {
    return I(paramContext, paramFragment, 17);
  }
  
  private static boolean I(Context paramContext, Fragment paramFragment, int paramInt)
  {
    Intent localIntent = c(paramContext);
    if (paramContext.getPackageManager().queryIntentActivities(localIntent, 0).size() == 0) {
      localIntent.setAction("miui.intent.action.SYSTEM_PERMISSION_DECLARE");
    }
    if (paramContext.getPackageManager().queryIntentActivities(localIntent, 0).size() > 0)
    {
      try
      {
        d = localIntent.getAction();
        paramFragment.startActivityForResult(localIntent, paramInt);
        c = false;
      }
      catch (Exception paramContext)
      {
        z.d("Cal:D:UserNoticeUtil", "startSecurityCenter", paramContext);
        c = true;
      }
      return true;
    }
    return false;
  }
  
  public static void J(Context paramContext, Activity paramActivity, int paramInt, i parami)
  {
    Object localObject = paramContext.getResources();
    String[] arrayOfString = new String[1];
    String str = e("images");
    int i = 0;
    arrayOfString[0] = str;
    str = ((Resources)localObject).getString(2131887326);
    localObject = new ArrayList();
    while (i < 1)
    {
      if (androidx.core.content.a.a(paramContext, arrayOfString[i]) != 0)
      {
        ((List)localObject).add(arrayOfString[i]);
        ((List)localObject).add(new String[] { str }[i]);
      }
      i++;
    }
    if (((List)localObject).isEmpty())
    {
      z.a("Cal:D:UserNoticeUtil", "mPermissionList empty");
      if (parami != null) {
        parami.a();
      }
    }
    else
    {
      localObject = (String[])((List)localObject).toArray(new String[((List)localObject).size()]);
      if (paramActivity != null)
      {
        parami = arrayOfString;
        if (k(paramContext)) {
          parami = (i)localObject;
        }
        paramActivity.requestPermissions(parami, paramInt);
      }
    }
  }
  
  public static void K(Activity paramActivity, int paramInt)
  {
    Intent localIntent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
    localIntent.setData(Uri.fromParts("package", paramActivity.getPackageName(), null));
    paramActivity.startActivityForResult(localIntent, paramInt);
  }
  
  public static void L(Activity paramActivity, int paramInt)
  {
    Intent localIntent = new Intent("miui.intent.action.APP_PERM_EDITOR");
    localIntent.putExtra("extra_pkgname", "com.android.calendar");
    paramActivity.startActivityForResult(localIntent, paramInt);
  }
  
  private static void M(Context paramContext)
  {
    Intent localIntent = new Intent("miui.intent.action.APP_PERM_EDITOR");
    localIntent.putExtra("extra_pkgname", "com.android.calendar");
    paramContext.startActivity(localIntent);
  }
  
  private static Intent c(Context paramContext)
  {
    Resources localResources = paramContext.getResources();
    Intent localIntent = new Intent();
    localIntent.setAction("miui.intent.action.SYSTEM_PERMISSION_DECLARE_NEW");
    localIntent.setPackage("com.miui.securitycenter");
    localIntent.putExtra("main_purpose", localResources.getString(2131887322));
    localIntent.putExtra("use_network", true);
    localIntent.putExtra("mandatory_permission", true);
    localIntent.putExtra("show_locked", false);
    localIntent.putExtra("optional_perm_show", false);
    localIntent.setFlags(603979776);
    paramContext = localResources.getString(2131887307);
    localIntent.putExtra("runtime_perm", new String[] { "android.permission-group.CALENDAR" });
    localIntent.putExtra("runtime_perm_desc", new String[] { paramContext });
    localIntent.putExtra("optional_perm", new String[] { "android.permission-group.STORAGE", "android.permission.READ_CONTACTS" });
    localIntent.putExtra("optional_perm_desc", new String[] { localResources.getString(2131887320), localResources.getString(2131887313) });
    localIntent.putExtra("agree_desc", localResources.getString(2131887306));
    return localIntent;
  }
  
  public static String d()
  {
    return String.format("https://privacy.mi.com/calendar-share/%s_%s/", new Object[] { Locale.getDefault().getLanguage(), Locale.getDefault().getCountry() });
  }
  
  public static String e(String paramString)
  {
    if (h()) {
      return "android.permission.WRITE_EXTERNAL_STORAGE";
    }
    paramString.hashCode();
    if (!paramString.equals("images"))
    {
      if (!paramString.equals("audio")) {
        return "android.permission.WRITE_EXTERNAL_STORAGE";
      }
      return "android.permission.READ_MEDIA_AUDIO";
    }
    return "android.permission.READ_MEDIA_IMAGES";
  }
  
  public static String f()
  {
    return String.format("https://privacy.mi.com/all/%s_%s/", new Object[] { Locale.getDefault().getLanguage(), Locale.getDefault().getCountry() });
  }
  
  public static String g()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("http://www.miui.com/res/doc/eula.html?region=");
    localStringBuilder.append(Build.getRegion());
    localStringBuilder.append("&lang=");
    localStringBuilder.append(Locale.getDefault().toString());
    return localStringBuilder.toString();
  }
  
  public static boolean h()
  {
    boolean bool;
    if (Build.VERSION.SDK_INT < 33) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean i(Context paramContext)
  {
    return b2.a.d(paramContext, "sp_permission_necessary_dialog", false);
  }
  
  public static boolean j(Context paramContext)
  {
    return b2.a.d(paramContext, "sp_cancel_subscription", false);
  }
  
  public static boolean k(Context paramContext)
  {
    paramContext = paramContext.getPackageManager();
    boolean bool = false;
    try
    {
      int i = paramContext.getPackageInfo("com.lbe.security.miui", 0).versionCode;
      if (i >= 111) {
        bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return false;
  }
  
  public static boolean l(Activity paramActivity)
  {
    Intent localIntent = c(paramActivity);
    PackageManager localPackageManager = paramActivity.getPackageManager();
    boolean bool = false;
    if (localPackageManager.queryIntentActivities(localIntent, 0).size() == 0) {
      localIntent.setAction("miui.intent.action.SYSTEM_PERMISSION_DECLARE");
    }
    if (paramActivity.getPackageManager().queryIntentActivities(localIntent, 0).size() > 0) {
      bool = true;
    }
    return bool;
  }
  
  public static boolean m()
  {
    return n(CalendarApplication.e());
  }
  
  public static boolean n(Context paramContext)
  {
    boolean bool1 = y.a;
    boolean bool2 = true;
    if (bool1) {
      return true;
    }
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext);
    bool1 = bool2;
    if (!paramContext.getBoolean("key_internet_notice_agreed", false))
    {
      bool1 = bool2;
      if (!paramContext.getBoolean("key_user_notice_agreed", false))
      {
        bool1 = bool2;
        if (!paramContext.getBoolean("key_activity_permission", false)) {
          if (paramContext.getBoolean("key_travel_permission", false)) {
            bool1 = bool2;
          } else {
            bool1 = false;
          }
        }
      }
    }
    return bool1;
  }
  
  public static boolean o(Context paramContext)
  {
    return b2.a.d(paramContext, "key_internet_notice_cancelled", false);
  }
  
  public static boolean q(Context paramContext, boolean paramBoolean)
  {
    if (y.a) {
      return false;
    }
    if ((!paramBoolean) && (o(paramContext))) {
      return false;
    }
    return n(paramContext) ^ true;
  }
  
  public static boolean r(Context paramContext, int paramInt1, int paramInt2, h paramh)
  {
    if (paramInt1 != 17)
    {
      z.a("Cal:D:UserNoticeUtil", "onShowUserNoticeDialogResult requestCode is invalidate");
      return false;
    }
    if (paramInt2 != -2)
    {
      if (paramInt2 != 666)
      {
        if (paramInt2 != 0)
        {
          if (paramInt2 != 1)
          {
            z.a("Cal:D:UserNoticeUtil", "User Notice Result Default");
            if (paramh != null) {
              paramh.b(false);
            }
            g.c(g.v.g());
          }
          else
          {
            z.a("Cal:D:UserNoticeUtil", "User Notice Result Accept");
            s(paramContext, true);
            v(paramContext, true);
            g0.j();
            if (paramh != null) {
              paramh.a();
            }
            g.c(g.v.a());
          }
        }
        else {
          z.a("Cal:D:UserNoticeUtil", "User Notice Result Reject");
        }
      }
      else
      {
        z.a("Cal:D:UserNoticeUtil", "User Notice Result Reject New");
        s(paramContext, false);
        if (paramh != null) {
          paramh.b(c ^ true);
        }
        if (!c) {
          g.c(g.v.g());
        }
      }
    }
    else
    {
      z.a("Cal:D:UserNoticeUtil", "User Notice Result Permission Denial");
      if (paramh != null) {
        paramh.b(false);
      }
    }
    return true;
  }
  
  public static void s(Context paramContext, boolean paramBoolean)
  {
    b2.a.l(paramContext, "sp_permission_necessary_dialog", paramBoolean);
  }
  
  public static void t(Context paramContext)
  {
    if (!n(paramContext)) {
      return;
    }
    e.a(new y0(new WeakReference(paramContext)));
  }
  
  public static void u(Context paramContext, boolean paramBoolean)
  {
    b2.a.l(paramContext, "sp_cancel_subscription", paramBoolean);
  }
  
  public static void v(Context paramContext, boolean paramBoolean)
  {
    b2.a.l(paramContext, "key_internet_notice_agreed", paramBoolean);
    if (paramBoolean) {
      t(paramContext);
    }
  }
  
  public static void w(Context paramContext, boolean paramBoolean)
  {
    b2.a.l(paramContext, "key_internet_notice_cancelled", paramBoolean);
  }
  
  public static void x(Context paramContext, String paramString1, String paramString2)
  {
    l.b localb = new l.b(paramContext);
    localb.G(paramString1).n(paramString2).A(paramContext.getString(2131886674), new g()).s(paramContext.getString(2131887803), new f()).d(false).a();
    localb.J();
  }
  
  public static l y(Activity paramActivity, int paramInt, h paramh)
  {
    if (G(paramActivity, paramInt)) {
      return null;
    }
    return D(paramActivity, paramh);
  }
  
  public static l z(Activity paramActivity, h paramh)
  {
    return y(paramActivity, 17, paramh);
  }
  
  class a
    implements z0.j.a
  {
    a() {}
    
    public void a()
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(Uri.parse(z0.g()));
      z0.this.startActivity(localIntent);
    }
  }
  
  class b
    implements z0.j.a
  {
    b() {}
    
    public void a()
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(Uri.parse(z0.f()));
      z0.this.startActivity(localIntent);
    }
  }
  
  class c
    implements DialogInterface.OnCancelListener
  {
    c() {}
    
    public void onCancel(DialogInterface paramDialogInterface)
    {
      z0.this.b(true);
      g.c(g.v.g());
    }
  }
  
  class d
    implements DialogInterface.OnClickListener
  {
    d(z0.h paramh) {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      z0.w(z0.this, true);
      paramh.b(true);
      g.c(g.v.g());
    }
  }
  
  class e
    implements DialogInterface.OnClickListener
  {
    e(z0.h paramh) {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      z0.v(z0.this, true);
      g0.j();
      paramh.a();
      g.c(g.v.a());
    }
  }
  
  class f
    implements DialogInterface.OnClickListener
  {
    f() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      b2.a.j(z0.this, "key_subscribe_class_schedule", -1L);
    }
  }
  
  class g
    implements DialogInterface.OnClickListener
  {
    g() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      z0.b(z0.this);
    }
  }
  
  public static abstract interface h
  {
    public abstract void a();
    
    public abstract void b(boolean paramBoolean);
  }
  
  public static abstract interface i
  {
    public abstract void a();
  }
  
  public static class j
    extends ClickableSpan
  {
    private a a;
    private int b;
    
    public j(a parama)
    {
      this.b = -16776961;
      this.a = parama;
    }
    
    public j(a parama, int paramInt)
    {
      this.a = parama;
      this.b = paramInt;
    }
    
    public void onClick(View paramView)
    {
      paramView = this.a;
      if (paramView != null) {
        paramView.a();
      }
    }
    
    public void updateDrawState(TextPaint paramTextPaint)
    {
      paramTextPaint.setUnderlineText(true);
      paramTextPaint.setColor(this.b);
    }
    
    public static abstract interface a
    {
      public abstract void a();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.z0
 * JD-Core Version:    0.7.0.1
 */