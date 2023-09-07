package com.miui.calendar.ad;

import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.android.calendar.common.ActionSchema;
import com.android.calendar.common.Utils;
import com.market.sdk.b;
import com.market.sdk.g;
import com.miui.calendar.util.d0;
import com.miui.calendar.util.i;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.z;
import com.miui.zeus.landingpage.sdk.LandingPageHelper;
import com.xiaomi.ad.feedback.DislikeManagerV2;
import com.xiaomi.ad.feedback.IAdFeedbackListener;
import java.util.List;
import java.util.Map;

@Keep
public class AdSchema
{
  public static final String APP_DOWNLOAD_PACKAGE = "com.xiaomi.market";
  public static final String DISLIKE_CONFIG_KEY_APP_DOWNLOAD_AD_CARD = "calendar_appdownloadadcard";
  public static final String DISLIKE_CONFIG_KEY_COMMON;
  public static final String DISLIKE_CONFIG_KEY_INFO_FLOW_CARD = "calendar_infoflowcard";
  public static final String DISLIKE_CONFIG_KEY_TEXT_CHAIN = "calendar_textchain";
  public static final String DISLIKE_PACKAGE_NAME_COMMON = "com.miui.systemAdSolution";
  public static final String TAG = "Cal:D:AdSchema";
  private String actionUrl;
  public a adEncloseInfo;
  public int apkSize;
  private String appClientId;
  public String appDeveloper;
  public String appIntroduction;
  public String appName;
  public String appPermission;
  public String appPrivacy;
  private String appRef;
  private String appSignature;
  public String appVersion;
  public int billingType;
  public String buttonColor;
  public String buttonName;
  public String buttonText;
  public String categoryName;
  List<String> clickMonitorUrls;
  private String deeplink;
  private String dspName;
  long endTimeStamp;
  public String ex;
  private String floatCardData;
  public int height;
  public String iconUrl;
  public long id;
  public List<String> imgUrls;
  private boolean isInstalledByAdCard;
  public String landingPageUrl;
  public List<Object> materials;
  private String nonce;
  public String packageName;
  private Map<String, String> parameters;
  public String source;
  long startTimeStamp;
  public String summary;
  public String tagId;
  private int targetType = -1;
  public String template;
  public String title;
  public long totalDownloadNum;
  List<String> viewMonitorUrls;
  public int width;
  
  static
  {
    String str;
    if (l0.a) {
      str = "systemadsolution_commonadeventsstaging";
    } else {
      str = "systemadsolution_commonadevents";
    }
    DISLIKE_CONFIG_KEY_COMMON = str;
  }
  
  private static void adDownloadedJump(Context paramContext, AdSchema paramAdSchema, String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString2))
    {
      a.a(paramContext, new a.b("APP_OTHER_LAUNCH_DEFAULT_FAIL", paramAdSchema));
      launchApp(paramContext, paramAdSchema, paramString1);
      return;
    }
    a.a(paramContext, new a.b("APP_LAUNCH_START_DEEPLINK", paramAdSchema));
    if (startIntent(paramContext, paramString2, paramString1)) {
      a.a(paramContext, new a.b("APP_LAUNCH_SUCCESS_DEEPLINK", paramAdSchema));
    } else {
      launchApp(paramContext, paramAdSchema, paramString1);
    }
  }
  
  private static void adJump(Context paramContext, AdSchema paramAdSchema, String paramString1, String paramString2, String paramString3)
  {
    if ((paramAdSchema != null) && (!TextUtils.isEmpty(paramAdSchema.dspName)) && (!paramAdSchema.dspName.startsWith("xiaomi.")) && (!TextUtils.isEmpty(paramString1)))
    {
      paramAdSchema = new Intent("android.intent.action.VIEW");
      paramAdSchema.addFlags(268435456);
      paramAdSchema.setData(Uri.parse(paramString1));
      paramContext.startActivity(paramAdSchema);
      return;
    }
    if (TextUtils.isEmpty(paramString3))
    {
      LandingPageHelper.land(paramString1, false, 1);
      return;
    }
    a.b localb = new a.b("APP_LAUNCH_START_DEEPLINK", paramAdSchema);
    if ((paramAdSchema != null) && (paramAdSchema.deeplink != null)) {
      a.a(paramContext, localb);
    }
    if (startIntent(paramContext, paramString3, paramString2))
    {
      a.a(paramContext, new a.b("APP_LAUNCH_SUCCESS_DEEPLINK", paramAdSchema));
    }
    else
    {
      a.a(paramContext, new a.b("APP_LAUNCH_FAIL_DEEPLINK", paramAdSchema));
      startIntent(paramContext, paramString1);
    }
  }
  
  public static String formatAdDownloadCount(Context paramContext, long paramLong)
  {
    if (paramLong >= 10000L)
    {
      int i = (int)(paramLong / 10000L);
      paramContext = paramContext.getResources().getString(2131886156, new Object[] { Integer.valueOf(i) });
    }
    else
    {
      paramContext = paramContext.getResources().getString(2131886155, new Object[] { Long.valueOf(paramLong) });
    }
    return paramContext;
  }
  
  public static boolean isAll6InfoPresent(AdSchema paramAdSchema)
  {
    boolean bool;
    if ((paramAdSchema != null) && (!TextUtils.isEmpty(paramAdSchema.appDeveloper)) && (!TextUtils.isEmpty(paramAdSchema.appVersion)) && (!TextUtils.isEmpty(paramAdSchema.appPrivacy)) && (!TextUtils.isEmpty(paramAdSchema.appPermission)) && (!TextUtils.isEmpty(paramAdSchema.appIntroduction))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static boolean isHttpProtocol(String paramString)
  {
    boolean bool;
    if ((!paramString.startsWith("http://")) && (!paramString.startsWith("https://"))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public static boolean isNeedQueryNewAd(AdSchema paramAdSchema)
  {
    if (paramAdSchema != null)
    {
      int i = paramAdSchema.billingType;
      if ((i == 4) || (i == 7) || (i == 8)) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  public static boolean isScheduleAd(AdSchema paramAdSchema)
  {
    boolean bool;
    if ((paramAdSchema != null) && (TextUtils.equals(paramAdSchema.dspName, "xiaomi.schedule"))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean isUninstallableAd(AdSchema paramAdSchema)
  {
    boolean bool;
    if ((paramAdSchema != null) && ((TextUtils.isEmpty(paramAdSchema.packageName)) || ((!paramAdSchema.dspName.startsWith("xiaomi.")) && (TextUtils.isEmpty(paramAdSchema.actionUrl))))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static void launchApp(Context paramContext, AdSchema paramAdSchema, String paramString)
  {
    a.a(paramContext, new a.b("APP_LAUNCH_START_PACKAGENAME", paramAdSchema));
    if (openApp(paramContext, paramString))
    {
      a.a(paramContext, new a.b("APP_LAUNCH_SUCCESS_PACKAGENAME", paramAdSchema));
    }
    else
    {
      a.a(paramContext, new a.b("APP_LAUNCH_FAIL_PACKAGENAME", paramAdSchema));
      new com.miui.calendar.util.a(ActionSchema.getIntentToMarket(paramString, false)).a(paramContext);
    }
  }
  
  public static void onAdItemClosed(Context paramContext, AdSchema paramAdSchema)
  {
    z.a("Cal:D:AdSchema", "onAdItemClosed()");
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onAdItemClosed(): adSchema:");
    ((StringBuilder)localObject).append(paramAdSchema);
    z.b("Cal:D:AdSchema", ((StringBuilder)localObject).toString());
    try
    {
      localObject = new com/miui/calendar/ad/a$b;
      ((a.b)localObject).<init>("DISLIKE", paramAdSchema);
      a.a(paramContext, (a.b)localObject);
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:AdSchema", "OnAdItemClosed()", paramContext);
    }
  }
  
  public static boolean onAdItemClosed(Context paramContext, IAdFeedbackListener paramIAdFeedbackListener, String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onAdItemClosed() configKey=");
    localStringBuilder.append(paramString1);
    z.a("Cal:D:AdSchema", localStringBuilder.toString());
    return showDislikeWindow(paramContext, paramIAdFeedbackListener, paramContext.getPackageName(), paramString1, paramString2);
  }
  
  public static boolean onAdItemClosed(Context paramContext, IAdFeedbackListener paramIAdFeedbackListener, String paramString1, String paramString2, String paramString3)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onAdItemClosed() configKey=");
    localStringBuilder.append(paramString2);
    localStringBuilder.append(" packageName=");
    localStringBuilder.append(paramString1);
    z.a("Cal:D:AdSchema", localStringBuilder.toString());
    return showDislikeWindow(paramContext, paramIAdFeedbackListener, paramString1, paramString2, paramString3);
  }
  
  public static void onAdItemDisplayed(Context paramContext, AdSchema paramAdSchema)
  {
    z.a("Cal:D:AdSchema", "onAdItemDisplayed()");
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onAdItemDisplayed(): adSchema:");
    localStringBuilder.append(paramAdSchema);
    z.b("Cal:D:AdSchema", localStringBuilder.toString());
    a.a(paramContext, new a.b("VIEW", paramAdSchema));
  }
  
  public static void onAdItemLoaded(Context paramContext, AdSchema paramAdSchema)
  {
    z.a("Cal:D:AdSchema", "onAdItemLoaded()");
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onAdItemLoaded(): adSchema:");
    ((StringBuilder)localObject).append(paramAdSchema);
    z.b("Cal:D:AdSchema", ((StringBuilder)localObject).toString());
    try
    {
      localObject = new com/miui/calendar/ad/a$b;
      ((a.b)localObject).<init>("LOAD", paramAdSchema);
      a.a(paramContext, (a.b)localObject);
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:AdSchema", "onAdItemLoaded()", paramContext);
    }
  }
  
  public static boolean onCancelByFloat(Context paramContext, AdSchema paramAdSchema)
  {
    b localb = g.b().a();
    if (localb == null) {
      return false;
    }
    paramContext = parseFloatDownloadData(paramContext, paramAdSchema);
    if (TextUtils.isEmpty(paramContext)) {
      return false;
    }
    return localb.b(paramContext);
  }
  
  public static void onDownloadAdItemClicked(Context paramContext, AdSchema paramAdSchema)
  {
    z.a("Cal:D:AdSchema", "onAdItemClickedToDeepLink()");
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onAdItemClickedToDeepLink(): adSchema:");
    localStringBuilder.append(paramAdSchema);
    z.b("Cal:D:AdSchema", localStringBuilder.toString());
    adDownloadedJump(paramContext, paramAdSchema, paramAdSchema.packageName, paramAdSchema.deeplink);
    a.a(paramContext, new a.b("CLICK", paramAdSchema));
  }
  
  public static boolean onDownloadByFloat(Context paramContext, AdSchema paramAdSchema)
  {
    if (!i.f(paramContext))
    {
      t0.f(paramContext, 2131886163);
      return false;
    }
    Object localObject = g.b().a();
    if (localObject == null) {
      return false;
    }
    String str1 = parseFloatDownloadData(paramContext, paramAdSchema);
    if (TextUtils.isEmpty(str1)) {
      return false;
    }
    String str2 = paramAdSchema.dspName;
    if ((str2 != null) && ((!str2.startsWith("xiaomi.")) || (isScheduleAd(paramAdSchema))) && (paramAdSchema.actionUrl != null))
    {
      str2 = paramAdSchema.floatCardData;
      if ((str2 != null) && (((b)localObject).c(str2)))
      {
        a.a(paramContext, new a.b("CLICK", paramAdSchema));
        return true;
      }
      if (isScheduleAd(paramAdSchema))
      {
        a.a(paramContext, new a.b("CLICK", paramAdSchema));
        if (paramAdSchema.deeplink != null) {
          a.a(paramContext, new a.b("APP_LAUNCH_START_DEEPLINK", paramAdSchema));
        }
        if (startIntent(paramContext, paramAdSchema.deeplink, paramAdSchema.packageName))
        {
          a.a(paramContext, new a.b("APP_LAUNCH_SUCCESS_DEEPLINK", paramAdSchema));
        }
        else
        {
          a.a(paramContext, new a.b("APP_LAUNCH_FAIL_DEEPLINK", paramAdSchema));
          startIntent(paramContext, paramAdSchema.landingPageUrl);
        }
        return true;
      }
      localObject = new Intent("android.intent.action.VIEW");
      ((Intent)localObject).addFlags(268435456);
      ((Intent)localObject).setData(Uri.parse(paramAdSchema.actionUrl));
      paramContext.startActivity((Intent)localObject);
      return true;
    }
    if (((b)localObject).c(str1))
    {
      a.a(paramContext, new a.b("CLICK", paramAdSchema));
      return true;
    }
    return false;
  }
  
  public static void onGeneralAdItemClicked(Context paramContext, AdSchema paramAdSchema)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onGeneralAdItemClicked(): adSchema:");
    localStringBuilder.append(paramAdSchema);
    z.b("Cal:D:AdSchema", localStringBuilder.toString());
    int i = paramAdSchema.targetType;
    if (i != 1)
    {
      if (i == 2) {
        if (Utils.i0(paramContext, paramAdSchema.packageName)) {
          adDownloadedJump(paramContext, paramAdSchema, paramAdSchema.packageName, paramAdSchema.deeplink);
        } else {
          startIntent(paramContext, paramAdSchema.landingPageUrl);
        }
      }
    }
    else {
      adJump(paramContext, paramAdSchema, paramAdSchema.landingPageUrl, paramAdSchema.packageName, paramAdSchema.deeplink);
    }
    a.a(paramContext, new a.b("CLICK", paramAdSchema));
  }
  
  public static void onJumpAdItemClicked(Context paramContext, AdSchema paramAdSchema)
  {
    z.a("Cal:D:AdSchema", "onAdItemClicked()");
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onAdItemClicked(): adSchema:");
    localStringBuilder.append(paramAdSchema);
    z.b("Cal:D:AdSchema", localStringBuilder.toString());
    adJump(paramContext, paramAdSchema, paramAdSchema.landingPageUrl, paramAdSchema.packageName, paramAdSchema.deeplink);
    a.a(paramContext, new a.b("CLICK", paramAdSchema));
  }
  
  public static boolean onPauseByFloat(Context paramContext, AdSchema paramAdSchema)
  {
    b localb = g.b().a();
    if (localb == null) {
      return false;
    }
    paramContext = parseFloatDownloadData(paramContext, paramAdSchema);
    if (TextUtils.isEmpty(paramContext)) {
      return false;
    }
    return localb.f(paramContext);
  }
  
  public static boolean onResumeByFloat(Context paramContext, AdSchema paramAdSchema)
  {
    if (!i.f(paramContext))
    {
      t0.f(paramContext, 2131886163);
      return false;
    }
    b localb = g.b().a();
    if (localb == null) {
      return false;
    }
    paramContext = parseFloatDownloadData(paramContext, paramAdSchema);
    if (TextUtils.isEmpty(paramContext)) {
      return false;
    }
    return localb.g(paramContext);
  }
  
  private static boolean openApp(Context paramContext, String paramString)
  {
    if ((paramContext != null) && (!TextUtils.isEmpty(paramString)))
    {
      paramString = paramContext.getPackageManager().getLaunchIntentForPackage(paramString);
      if (paramString != null) {
        try
        {
          paramContext.startActivity(paramString, ActivityOptions.makeCustomAnimation(paramContext, 2130771988, 2130771989).toBundle());
          return true;
        }
        catch (Exception paramContext)
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("openApp() intent=");
          localStringBuilder.append(paramString);
          z.d("Cal:D:AdSchema", localStringBuilder.toString(), paramContext);
        }
      }
    }
    return false;
  }
  
  private static String parseFloatDownloadData(Context paramContext, AdSchema paramAdSchema)
  {
    if (paramAdSchema == null) {
      return null;
    }
    try
    {
      if (!TextUtils.isEmpty(paramAdSchema.floatCardData)) {
        return paramAdSchema.floatCardData;
      }
      boolean bool = TextUtils.isEmpty(paramAdSchema.packageName);
      String str1 = "";
      String str2;
      if (bool) {
        str2 = "";
      } else {
        str2 = paramAdSchema.packageName;
      }
      String str3;
      if (TextUtils.isEmpty(paramAdSchema.appRef)) {
        str3 = "";
      } else {
        str3 = paramAdSchema.appRef;
      }
      String str4;
      if (TextUtils.isEmpty(paramAdSchema.appClientId)) {
        str4 = "";
      } else {
        str4 = paramAdSchema.appClientId;
      }
      String str5 = paramContext.getPackageName();
      if (TextUtils.isEmpty(paramAdSchema.appSignature)) {
        paramContext = "";
      } else {
        paramContext = paramAdSchema.appSignature;
      }
      String str6;
      if (TextUtils.isEmpty(paramAdSchema.nonce)) {
        str6 = "";
      } else {
        str6 = paramAdSchema.nonce;
      }
      if (TextUtils.isEmpty(paramAdSchema.ex)) {
        paramAdSchema = str1;
      } else {
        paramAdSchema = paramAdSchema.ex;
      }
      paramContext = String.format("market://details/detailfloat?packageName=%s&ref=%s&appClientId=%s&senderPackageName=%s&appSignature=%s&nonce=%s&ext_passback=%s&show_cta=true&overlayPosition=1&startDownload=true", new Object[] { str2, str3, str4, str5, paramContext, str6, paramAdSchema });
      return paramContext;
    }
    catch (Exception paramContext) {}
    return null;
  }
  
  private static boolean showDislikeWindow(Context paramContext, IAdFeedbackListener paramIAdFeedbackListener, String paramString1, String paramString2, String paramString3)
  {
    if ((d0.c(paramContext)) && (paramIAdFeedbackListener != null)) {
      paramIAdFeedbackListener.onFinished(-2);
    }
    try
    {
      DislikeManagerV2.getInstance(paramContext).showDislikeWindow(paramIAdFeedbackListener, paramString1, paramString2, paramString3);
      return true;
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:AdSchema", "showDislikeWindow()", paramContext);
    }
    return false;
  }
  
  private static boolean startIntent(Context paramContext, String paramString)
  {
    return startIntent(paramContext, paramString, null);
  }
  
  private static boolean startIntent(Context paramContext, String paramString1, String paramString2)
  {
    if ((paramContext != null) && (!TextUtils.isEmpty(paramString1)))
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(Uri.parse(paramString1));
      if (!TextUtils.isEmpty(paramString2)) {
        localIntent.setPackage(paramString2);
      } else if (isHttpProtocol(paramString1)) {
        localIntent.setPackage("com.android.browser");
      }
      if (i.c(paramContext, localIntent)) {
        try
        {
          localIntent.addFlags(268435456);
          paramContext.startActivity(localIntent);
          return true;
        }
        catch (Exception paramContext)
        {
          paramString1 = new StringBuilder();
          paramString1.append("startIntent() intent=");
          paramString1.append(localIntent);
          z.d("Cal:D:AdSchema", paramString1.toString(), paramContext);
        }
      }
    }
    return false;
  }
  
  public String getImageUrl()
  {
    try
    {
      String str = (String)this.imgUrls.get(0);
      return str;
    }
    catch (Exception localException)
    {
      z.d("Cal:D:AdSchema", "getImageUrl():", localException);
    }
    return null;
  }
  
  public String getParameter(String paramString)
  {
    Map localMap = this.parameters;
    if (localMap == null) {
      return "";
    }
    return (String)localMap.get(paramString);
  }
  
  public boolean isInstalledByAdCard()
  {
    return this.isInstalledByAdCard;
  }
  
  public void setInstalledByAdCard(boolean paramBoolean)
  {
    this.isInstalledByAdCard = paramBoolean;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("AdSchema{id=");
    localStringBuilder.append(this.id);
    localStringBuilder.append(", template='");
    localStringBuilder.append(this.template);
    localStringBuilder.append('\'');
    localStringBuilder.append(", title='");
    localStringBuilder.append(this.title);
    localStringBuilder.append('\'');
    localStringBuilder.append(", summary='");
    localStringBuilder.append(this.summary);
    localStringBuilder.append('\'');
    localStringBuilder.append(", iconUrl='");
    localStringBuilder.append(this.iconUrl);
    localStringBuilder.append('\'');
    localStringBuilder.append(", imgUrls=");
    localStringBuilder.append(this.imgUrls);
    localStringBuilder.append(", width=");
    localStringBuilder.append(this.width);
    localStringBuilder.append(", height=");
    localStringBuilder.append(this.height);
    localStringBuilder.append(", packageName='");
    localStringBuilder.append(this.packageName);
    localStringBuilder.append('\'');
    localStringBuilder.append(", source='");
    localStringBuilder.append(this.source);
    localStringBuilder.append('\'');
    localStringBuilder.append(", totalDownloadNum=");
    localStringBuilder.append(this.totalDownloadNum);
    localStringBuilder.append(", appSize= ");
    localStringBuilder.append(this.apkSize);
    localStringBuilder.append(", appName=");
    localStringBuilder.append(this.appName);
    localStringBuilder.append(", appDeveloper=");
    localStringBuilder.append(this.appDeveloper);
    localStringBuilder.append(", appVersion=");
    localStringBuilder.append(this.appVersion);
    localStringBuilder.append(", appPermission=");
    localStringBuilder.append(this.appPermission);
    localStringBuilder.append(", appPrivacy=");
    localStringBuilder.append(this.appPrivacy);
    localStringBuilder.append(", appIntroduction=");
    localStringBuilder.append(this.appIntroduction);
    localStringBuilder.append(", targetType=");
    localStringBuilder.append(this.targetType);
    localStringBuilder.append(", deepLink='");
    localStringBuilder.append(this.deeplink);
    localStringBuilder.append('\'');
    localStringBuilder.append(", landingPageUrl='");
    localStringBuilder.append(this.landingPageUrl);
    localStringBuilder.append('\'');
    localStringBuilder.append(", actionUrl='");
    localStringBuilder.append(this.actionUrl);
    localStringBuilder.append('\'');
    localStringBuilder.append(", floatCardData='");
    localStringBuilder.append(this.floatCardData);
    localStringBuilder.append('\'');
    localStringBuilder.append(", dspName='");
    localStringBuilder.append(this.dspName);
    localStringBuilder.append('\'');
    localStringBuilder.append(", billingType=");
    localStringBuilder.append(this.billingType);
    localStringBuilder.append(", viewMonitorUrls=");
    localStringBuilder.append(this.viewMonitorUrls);
    localStringBuilder.append(", clickMonitorUrls=");
    localStringBuilder.append(this.clickMonitorUrls);
    localStringBuilder.append(", ex='");
    localStringBuilder.append(this.ex);
    localStringBuilder.append('\'');
    localStringBuilder.append(", startTimeStamp=");
    localStringBuilder.append(this.startTimeStamp);
    localStringBuilder.append(", endTimeStamp=");
    localStringBuilder.append(this.endTimeStamp);
    localStringBuilder.append(", materials=");
    localStringBuilder.append(this.materials);
    localStringBuilder.append(", categoryName=");
    localStringBuilder.append(this.categoryName);
    localStringBuilder.append(", buttonText=");
    localStringBuilder.append(this.buttonText);
    localStringBuilder.append(", isInstalledByAdCard=");
    localStringBuilder.append(this.isInstalledByAdCard);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public static class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.ad.AdSchema
 * JD-Core Version:    0.7.0.1
 */