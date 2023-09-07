package m6;

import android.content.Intent;
import android.net.Uri;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.xiaomi.passport.jsb.ParcelablePassportJsbMethod;
import com.xiaomi.passport.webview.PassportJsbWebPageLifecycleListener;
import com.xiaomi.passport.webview.UrlInterceptor;
import com.xiaomi.passport.webview.UrlLoadPrepareTask;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class e
{
  public final String a;
  public final a b;
  public final c c;
  public final d d;
  public final e e;
  public final boolean f;
  public final boolean g;
  public final PassportJsbWebPageLifecycleListener h;
  
  public e(b paramb)
  {
    this.a = b.a(paramb);
    this.b = b.b(paramb);
    this.c = b.c(paramb);
    this.d = b.d(paramb);
    this.f = b.e(paramb);
    this.g = b.f(paramb);
    this.e = paramb.g;
    this.h = paramb.h;
  }
  
  public static b b(Intent paramIntent)
  {
    return c(paramIntent, null);
  }
  
  public static b c(Intent paramIntent, Bundle paramBundle)
  {
    HashMap localHashMap = new HashMap();
    Object localObject1 = paramIntent.getData();
    if (localObject1 != null)
    {
      localObject2 = ((Uri)localObject1).getQueryParameterNames().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (String)((Iterator)localObject2).next();
        localHashMap.put(localObject3, ((Uri)localObject1).getQueryParameter((String)localObject3));
      }
    }
    Object localObject2 = new Bundle();
    localObject1 = paramIntent.getExtras();
    if (localObject1 != null) {
      ((Bundle)localObject2).putAll((Bundle)localObject1);
    }
    if (paramBundle != null) {
      ((Bundle)localObject2).putAll(paramBundle);
    }
    paramBundle = ((BaseBundle)localObject2).keySet().iterator();
    while (paramBundle.hasNext())
    {
      localObject1 = (String)paramBundle.next();
      if (((BaseBundle)localObject2).get((String)localObject1) != null) {
        localHashMap.put(localObject1, String.valueOf(((BaseBundle)localObject2).get((String)localObject1)));
      }
    }
    paramBundle = paramIntent.getBundleExtra("parcels_wrapper");
    paramIntent = paramBundle;
    if (paramBundle == null) {
      paramIntent = new Bundle();
    }
    Object localObject3 = paramIntent.getParcelableArray("uis_url_interceptors");
    int i = 0;
    localObject1 = null;
    int j;
    int k;
    if (localObject3 != null)
    {
      j = localObject3.length;
      localObject2 = new UrlInterceptor[j];
      for (k = 0;; k++)
      {
        paramBundle = (Bundle)localObject2;
        if (k >= j) {
          break;
        }
        localObject2[k] = ((UrlInterceptor)localObject3[k]);
      }
    }
    paramBundle = null;
    Parcelable[] arrayOfParcelable = paramIntent.getParcelableArray("uis_url_load_prepare_runnables");
    if (arrayOfParcelable != null)
    {
      j = arrayOfParcelable.length;
      localObject3 = new UrlLoadPrepareTask[j];
      for (k = 0;; k++)
      {
        localObject2 = localObject3;
        if (k >= j) {
          break;
        }
        localObject3[k] = ((UrlLoadPrepareTask)arrayOfParcelable[k]);
      }
    }
    localObject2 = null;
    localObject3 = paramIntent.getParcelableArray("uis_jsb_methods");
    if (localObject3 != null)
    {
      j = localObject3.length;
      localObject1 = new ParcelablePassportJsbMethod[j];
      for (k = i; k < j; k++) {
        localObject1[k] = ((ParcelablePassportJsbMethod)localObject3[k]);
      }
    }
    return new b().n((String)localHashMap.get("url")).m(Boolean.parseBoolean((String)localHashMap.get("remove_all_cookies"))).i(Boolean.parseBoolean((String)localHashMap.get("close_after_login"))).g(a.a((String)localHashMap.get("action_bar_style"), (String)localHashMap.get("action_bar_title"))).j(c.a((String)localHashMap.get("cookie_fill_cookie_set_url"), Boolean.parseBoolean((String)localHashMap.get("cookie_fill_account_device_params")), (String)localHashMap.get("cookie_fill_login_service_id"))).k(d.a(Boolean.parseBoolean((String)localHashMap.get("header_fill_activator_token")))).o(e.a(paramBundle, (UrlLoadPrepareTask[])localObject2, (ParcelablePassportJsbMethod[])localObject1)).l((PassportJsbWebPageLifecycleListener)paramIntent.getParcelable("page_lifecycle_listener"));
  }
  
  public Bundle a(Bundle paramBundle)
  {
    if (!TextUtils.isEmpty(this.a)) {
      paramBundle.putString("url", this.a);
    }
    paramBundle.putBoolean("remove_all_cookies", this.f);
    paramBundle.putBoolean("close_after_login", this.g);
    Object localObject1 = this.b;
    if (localObject1 != null) {
      ((a)localObject1).c(paramBundle);
    }
    localObject1 = this.c;
    if (localObject1 != null) {
      ((c)localObject1).b(paramBundle);
    }
    localObject1 = this.d;
    if (localObject1 != null) {
      ((d)localObject1).b(paramBundle);
    }
    localObject1 = new Bundle();
    paramBundle.putBundle("parcels_wrapper", (Bundle)localObject1);
    Object localObject2 = this.e;
    if (localObject2 != null) {
      ((e)localObject2).b(paramBundle);
    }
    localObject2 = this.h;
    if (localObject2 != null) {
      ((Bundle)localObject1).putParcelable("page_lifecycle_listener", (Parcelable)localObject2);
    }
    return paramBundle;
  }
  
  public static class a
  {
    public final String a;
    public final String b;
    
    private a(String paramString1, String paramString2)
    {
      this.a = paramString1;
      this.b = paramString2;
    }
    
    public static a a(String paramString1, String paramString2)
    {
      if (TextUtils.isEmpty(paramString1)) {
        return null;
      }
      if ("none".equals(paramString1)) {
        return new a(paramString1, paramString2);
      }
      if ((!"web".equals(paramString1)) && (!"native".equals(paramString1))) {
        return null;
      }
      if (TextUtils.isEmpty(paramString2)) {
        return null;
      }
      return new a(paramString1, paramString2);
    }
    
    public static a b()
    {
      return new a("none", null);
    }
    
    public Bundle c(Bundle paramBundle)
    {
      paramBundle.putString("action_bar_style", this.a);
      paramBundle.putString("action_bar_title", this.b);
      return paramBundle;
    }
  }
  
  public static class b
  {
    private String a;
    private e.a b;
    private boolean c;
    private boolean d;
    private e.c e;
    private e.d f;
    public e.e g;
    public PassportJsbWebPageLifecycleListener h;
    
    public b g(e.a parama)
    {
      this.b = parama;
      return this;
    }
    
    public e h()
    {
      return new e(this);
    }
    
    public b i(boolean paramBoolean)
    {
      this.d = paramBoolean;
      return this;
    }
    
    public b j(e.c paramc)
    {
      this.e = paramc;
      return this;
    }
    
    public b k(e.d paramd)
    {
      this.f = paramd;
      return this;
    }
    
    public b l(PassportJsbWebPageLifecycleListener paramPassportJsbWebPageLifecycleListener)
    {
      this.h = paramPassportJsbWebPageLifecycleListener;
      return this;
    }
    
    public b m(boolean paramBoolean)
    {
      this.c = paramBoolean;
      return this;
    }
    
    public b n(String paramString)
    {
      this.a = paramString;
      return this;
    }
    
    public b o(e.e parame)
    {
      this.g = parame;
      return this;
    }
  }
  
  public static class c
  {
    public final String a;
    public final boolean b;
    public final String c;
    
    private c(String paramString1, boolean paramBoolean, String paramString2)
    {
      this.a = paramString1;
      this.c = paramString2;
      this.b = paramBoolean;
    }
    
    public static c a(String paramString1, boolean paramBoolean, String paramString2)
    {
      if (TextUtils.isEmpty(paramString1)) {
        return null;
      }
      String str = paramString2;
      if (TextUtils.isEmpty(paramString2)) {
        str = null;
      }
      return new c(paramString1, paramBoolean, str);
    }
    
    public Bundle b(Bundle paramBundle)
    {
      paramBundle.putString("cookie_fill_cookie_set_url", this.a);
      paramBundle.putBoolean("cookie_fill_account_device_params", this.b);
      paramBundle.putString("cookie_fill_login_service_id", this.c);
      return paramBundle;
    }
  }
  
  public static class d
  {
    public final boolean a;
    
    private d(boolean paramBoolean)
    {
      this.a = paramBoolean;
    }
    
    public static d a(boolean paramBoolean)
    {
      return new d(paramBoolean);
    }
    
    public Bundle b(Bundle paramBundle)
    {
      paramBundle.putBoolean("header_fill_activator_token", this.a);
      return paramBundle;
    }
  }
  
  public static class e
  {
    public final UrlInterceptor[] a;
    public final UrlLoadPrepareTask[] b;
    public final ParcelablePassportJsbMethod[] c;
    
    private e(UrlInterceptor[] paramArrayOfUrlInterceptor, UrlLoadPrepareTask[] paramArrayOfUrlLoadPrepareTask, ParcelablePassportJsbMethod[] paramArrayOfParcelablePassportJsbMethod)
    {
      this.a = paramArrayOfUrlInterceptor;
      this.b = paramArrayOfUrlLoadPrepareTask;
      this.c = paramArrayOfParcelablePassportJsbMethod;
    }
    
    public static e a(UrlInterceptor[] paramArrayOfUrlInterceptor, UrlLoadPrepareTask[] paramArrayOfUrlLoadPrepareTask, ParcelablePassportJsbMethod[] paramArrayOfParcelablePassportJsbMethod)
    {
      return new e(paramArrayOfUrlInterceptor, paramArrayOfUrlLoadPrepareTask, paramArrayOfParcelablePassportJsbMethod);
    }
    
    public Bundle b(Bundle paramBundle)
    {
      Object localObject1 = paramBundle.getBundle("parcels_wrapper");
      Object localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject2 = new Bundle();
        paramBundle.putBundle("parcels_wrapper", (Bundle)localObject2);
      }
      localObject1 = this.a;
      if (localObject1 != null) {
        ((Bundle)localObject2).putParcelableArray("uis_url_interceptors", (Parcelable[])localObject1);
      }
      localObject1 = this.b;
      if (localObject1 != null) {
        ((Bundle)localObject2).putParcelableArray("uis_url_load_prepare_runnables", (Parcelable[])localObject1);
      }
      localObject1 = this.c;
      if (localObject1 != null) {
        ((Bundle)localObject2).putParcelableArray("uis_jsb_methods", (Parcelable[])localObject1);
      }
      return paramBundle;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m6.e
 * JD-Core Version:    0.7.0.1
 */