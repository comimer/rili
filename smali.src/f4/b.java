package f4;

import android.app.Dialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.BaseBundle;
import android.text.TextUtils;
import com.android.calendar.cards.l1.b;
import com.miui.calendar.util.e;
import com.miui.calendar.util.z;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.List;
import miuix.appcompat.app.l.b;

public class b
{
  private static final Uri a = Uri.parse("content://com.mi.health.provider.menstruation");
  
  public static a b(Context paramContext)
  {
    a locala = new a();
    locala.a = false;
    locala.b = paramContext.getResources().getString(2131886881);
    locala.c = paramContext.getResources().getString(2131886880);
    return locala;
  }
  
  public static void c(Context paramContext, l1.b paramb)
  {
    new c(paramContext, paramb, null).executeOnExecutor(e.a, null);
  }
  
  public static a d(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getContentResolver().call(a, "get_today_menstruation_brief", null, null);
      if (paramContext != null)
      {
        a locala = new f4/a;
        locala.<init>();
        locala.a = paramContext.getBoolean("predictStatus");
        locala.b = paramContext.getString("title");
        locala.c = paramContext.getString("subTitle");
        locala.d = paramContext.getString("uri");
        if ((!TextUtils.isEmpty(locala.b)) && (!TextUtils.isEmpty(locala.c)))
        {
          boolean bool = TextUtils.isEmpty(locala.d);
          if (!bool) {
            return locala;
          }
        }
        return null;
      }
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:MenstruationUtils", "getMenstruationInfoFromHealth failed", paramContext);
    }
    return null;
  }
  
  public static boolean e(Context paramContext)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramContext != null)
    {
      bool2 = bool1;
      if (paramContext.getPackageManager().resolveContentProvider("com.mi.health.provider.menstruation", 0) != null) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  private static void f(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("mimarket://details/detailmini?finishWhenInstalled=true&id=com.mi.health&startDownload=true"));
    try
    {
      if (paramContext.getPackageManager().queryIntentActivities(localIntent, 0).size() < 1) {
        localIntent.setData(Uri.parse("mimarket://details?finishWhenInstalled=true&id=com.mi.health&startDownload=true"));
      }
      paramContext.startActivity(localIntent);
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:MenstruationUtils", "jumpToMarket", paramContext);
    }
  }
  
  public static void g(Context paramContext)
  {
    new l.b(paramContext).G(paramContext.getString(2131886885)).n(paramContext.getString(2131886884)).A(paramContext.getString(2131886886), new b()).s(paramContext.getString(2131887803), new a()).d(false).a().show();
  }
  
  class a
    implements DialogInterface.OnClickListener
  {
    a() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      b2.a.j(b.this, "key_subscribe_menstruation", -1L);
    }
  }
  
  class b
    implements DialogInterface.OnClickListener
  {
    b() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      b.a(b.this);
    }
  }
  
  private static class c
    extends AsyncTask<Void, Void, a>
  {
    private WeakReference<Context> a;
    private l1.b b;
    
    private c(Context paramContext, l1.b paramb)
    {
      this.a = new WeakReference(paramContext);
      this.b = paramb;
    }
    
    protected a a(Void... paramVarArgs)
    {
      return b.d((Context)this.a.get());
    }
    
    protected void b(a parama)
    {
      super.onPostExecute(parama);
      l1.b localb = this.b;
      if (localb != null)
      {
        a locala = parama;
        if (parama == null) {
          locala = b.b((Context)this.a.get());
        }
        localb.a(locala);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f4.b
 * JD-Core Version:    0.7.0.1
 */