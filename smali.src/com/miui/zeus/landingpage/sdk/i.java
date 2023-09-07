package com.miui.zeus.landingpage.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentFilter.AuthorityEntry;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ResolveInfo.DisplayNameComparator;
import android.net.Uri;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.zeus.landingpage.sdk.activity.WebViewActivity;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class i
{
  public static boolean a(Context paramContext, String paramString)
  {
    try
    {
      paramString = paramContext.getPackageManager().getLaunchIntentForPackage(paramString);
      if (paramString != null)
      {
        paramContext.startActivity(paramString);
        return true;
      }
    }
    catch (Exception paramContext)
    {
      j.a("AndroidUtils", "startAppWithPackageName exception", paramContext);
    }
    return false;
  }
  
  public static boolean a(Intent paramIntent)
  {
    Context localContext = h.a();
    boolean bool1 = false;
    if ((localContext != null) && (paramIntent != null))
    {
      label340:
      boolean bool2;
      if (TextUtils.isEmpty(paramIntent.getPackage()))
      {
        Intent localIntent = new Intent(paramIntent);
        if (localIntent.getScheme() != null)
        {
          Object localObject1 = localContext.getPackageManager();
          List localList = ((PackageManager)localObject1).queryIntentActivities(localIntent, 64);
          Object localObject2 = null;
          Object localObject3 = null;
          if (localList != null) {
            if (localList.size() == 1)
            {
              localObject2 = (ResolveInfo)localList.get(0);
            }
            else if (localList.size() > 1)
            {
              Collections.sort(localList, new ResolveInfo.DisplayNameComparator((PackageManager)localObject1));
              Object localObject4 = localList.iterator();
              localObject2 = null;
              localObject1 = localObject2;
              Object localObject5;
              while (((Iterator)localObject4).hasNext())
              {
                localObject5 = (ResolveInfo)((Iterator)localObject4).next();
                if (TextUtils.equals(((ResolveInfo)localObject5).activityInfo.packageName, "com.android.browser")) {
                  localObject1 = localObject5;
                } else if (TextUtils.equals(((ResolveInfo)localObject5).activityInfo.packageName, "com.xiaomi.market")) {
                  localObject2 = localObject5;
                }
              }
              if (localObject2 == null)
              {
                localObject2 = localList.iterator();
                int i;
                do
                {
                  localObject5 = localObject3;
                  if (!((Iterator)localObject2).hasNext()) {
                    break;
                  }
                  localObject5 = (ResolveInfo)((Iterator)localObject2).next();
                  localObject4 = localIntent.getData();
                  if ((localObject4 != null) && (((ResolveInfo)localObject5).filter.hasDataAuthority((Uri)localObject4)))
                  {
                    Iterator localIterator = ((ResolveInfo)localObject5).filter.authoritiesIterator();
                    while ((localIterator != null) && (localIterator.hasNext())) {
                      if (TextUtils.equals(((IntentFilter.AuthorityEntry)localIterator.next()).getHost(), ((Uri)localObject4).getHost()))
                      {
                        i = 1;
                        break label340;
                      }
                    }
                  }
                  i = 0;
                } while (i == 0);
                localObject2 = localObject5;
                if (localObject5 == null) {
                  if (localObject1 != null) {
                    localObject2 = localObject1;
                  } else {
                    localObject2 = (ResolveInfo)localList.get(0);
                  }
                }
              }
            }
          }
          if (localObject2 != null) {
            localIntent.setPackage(((ResolveInfo)localObject2).activityInfo.packageName);
          }
        }
        try
        {
          localContext.startActivity(localIntent);
          bool2 = true;
        }
        catch (Exception localException)
        {
          j.a("LandingPageUtils", "systemOpen", localException);
        }
      }
      else
      {
        bool2 = false;
      }
      if (!bool2) {
        try
        {
          localContext.startActivity(paramIntent);
          bool2 = true;
        }
        catch (Exception paramIntent)
        {
          j.a("LandingPageUtils", "systemOpen", paramIntent);
          bool2 = bool1;
        }
      }
      return bool2;
    }
    j.b("LandingPageUtils", "context or intent can not be null");
    return false;
  }
  
  public static boolean a(String paramString)
  {
    boolean bool1 = false;
    try
    {
      paramString = Uri.parse(paramString);
      if (TextUtils.equals(paramString.getScheme(), "https"))
      {
        paramString = paramString.getHost();
        if (!TextUtils.isEmpty(paramString))
        {
          if ((!paramString.endsWith("site.e.mi.com")) && (!paramString.endsWith("staging-site.e.mi.com")))
          {
            boolean bool2 = paramString.endsWith("lite.a.market.xiaomi.com");
            if (!bool2) {}
          }
          else
          {
            bool1 = true;
          }
          return bool1;
        }
      }
    }
    catch (Exception paramString)
    {
      j.a("UrlUtils", "checkUrl", paramString);
    }
    return false;
  }
  
  public static boolean a(String paramString, boolean paramBoolean, int paramInt)
  {
    Object localObject = h.a;
    boolean bool1 = true;
    boolean bool2 = true;
    boolean bool3 = false;
    int i;
    if (localObject != null) {
      i = 1;
    } else {
      i = 0;
    }
    if (i == 0)
    {
      j.b("LandingPageUtils", "sdk not initSuccess");
      return false;
    }
    if (TextUtils.isEmpty(paramString))
    {
      j.b("LandingPageUtils", "url is empty");
      return false;
    }
    try
    {
      localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      ((StringBuilder)localObject).append(paramBoolean);
      ((StringBuilder)localObject).append(",orientation=");
      ((StringBuilder)localObject).append(paramInt);
      j.a("LandingPageUtils", new Object[] { "url=", paramString, ",   showTopBar=", ((StringBuilder)localObject).toString() });
      if ((TextUtils.isEmpty(paramString)) || ((!paramString.startsWith("http")) && (!paramString.startsWith("https")))) {
        i = 0;
      } else {
        i = 1;
      }
      Intent localIntent;
      if (i != 0)
      {
        j.a("LandingPageUtils", "startWebViewActivity");
        try
        {
          Context localContext = h.a();
          localIntent = new android/content/Intent;
          localIntent.<init>(localContext, WebViewActivity.class);
          localIntent.setFlags(268435456);
          localObject = new android/os/Bundle;
          ((Bundle)localObject).<init>();
          ((BaseBundle)localObject).putString("key_url", paramString);
          ((BaseBundle)localObject).putBoolean("key_show_top_bar", paramBoolean);
          ((BaseBundle)localObject).putInt("key_orientation", paramInt);
          localIntent.putExtras((Bundle)localObject);
          localContext.startActivity(localIntent);
          paramBoolean = bool2;
        }
        catch (Exception paramString)
        {
          j.a("LandingPageUtils", "startWebViewActivity e:", paramString);
          paramBoolean = false;
        }
        return paramBoolean;
      }
      if (b(paramString))
      {
        j.a("LandingPageUtils", "startByMiMarket");
        localObject = h.a();
        if (!TextUtils.isEmpty(paramString))
        {
          paramBoolean = b(paramString);
          if (paramBoolean) {
            try
            {
              localIntent = new android/content/Intent;
              localIntent.<init>();
              localIntent.setData(Uri.parse(paramString));
              localIntent.setPackage("com.xiaomi.market");
              localIntent.addFlags(268435456);
              localIntent.addFlags(8388608);
              localIntent.addFlags(134217728);
              ((Context)localObject).startActivity(localIntent);
              paramBoolean = bool1;
            }
            catch (Exception paramString)
            {
              j.a("MarketUtils", "startDownloadByMiMarket", paramString);
            }
          }
        }
        paramBoolean = false;
        return paramBoolean;
      }
      j.a("LandingPageUtils", "openDeepLink");
      paramBoolean = TextUtils.isEmpty(paramString);
      if (!paramBoolean) {
        try
        {
          paramString = Intent.parseUri(paramString, 0);
        }
        catch (Exception paramString)
        {
          j.a("LandingPageUtils", "openDeepLink e:", paramString);
        }
      } else {
        paramString = null;
      }
      paramBoolean = bool3;
      if (paramString != null)
      {
        paramString.addFlags(268435456);
        paramString.setComponent(null);
        paramString.setSelector(null);
        paramBoolean = a(paramString);
      }
      return paramBoolean;
    }
    catch (Exception paramString)
    {
      j.a("LandingPageUtils", "land Exception:", paramString);
    }
    return false;
  }
  
  public static boolean b(String paramString)
  {
    return (paramString.startsWith("market")) || (paramString.startsWith("mimarket"));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.zeus.landingpage.sdk.i
 * JD-Core Version:    0.7.0.1
 */