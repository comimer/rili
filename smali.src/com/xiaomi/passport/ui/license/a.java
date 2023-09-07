package com.xiaomi.passport.ui.license;

import android.content.Context;
import android.os.AsyncTask;
import com.xiaomi.accountsdk.utils.XMPassportUtil;
import java.util.ArrayList;
import java.util.Locale;

public class a
{
  public static String a()
  {
    return String.format("https://account.xiaomi.com/about/protocol/agreement?_locale=%s", new Object[] { XMPassportUtil.f(Locale.getDefault()) });
  }
  
  public static String b()
  {
    return String.format("https://privacy.mi.com/%s/%s/", new Object[] { "miaccount", XMPassportUtil.f(Locale.getDefault()) });
  }
  
  public static void c(Context paramContext, ArrayList<LoginAgreementAndPrivacy.PrivacyReportInfo> paramArrayList)
  {
    new b(paramContext, paramArrayList).execute(new Void[0]);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.license.a
 * JD-Core Version:    0.7.0.1
 */