package com.miui.calendar.thirdparty;

import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.text.TextUtils;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.z;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.security.cert.Certificate;
import javax.security.cert.CertificateException;
import javax.security.cert.X509Certificate;

public class d
{
  public static void a(Context paramContext, String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (paramContext != null))
    {
      paramString = Utils.G(paramContext, null, paramString, "com.android.browser", 0);
      if (paramString != null) {
        paramContext.startActivity(paramString);
      }
      return;
    }
    z.m("Cal:D:ThirdPartyUtils", "getJumpToUrlIntent(): url is NULL or context is NULL");
  }
  
  private static String b(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramArrayOfByte.length * 2);
    for (int i = 0; i < paramArrayOfByte.length; i++)
    {
      Object localObject1 = Integer.toHexString(paramArrayOfByte[i]);
      int j = ((String)localObject1).length();
      Object localObject2 = localObject1;
      if (j == 1)
      {
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("0");
        ((StringBuilder)localObject2).append((String)localObject1);
        localObject2 = ((StringBuilder)localObject2).toString();
      }
      localObject1 = localObject2;
      if (j > 2) {
        localObject1 = ((String)localObject2).substring(j - 2, j);
      }
      localStringBuilder.append(((String)localObject1).toUpperCase());
      if (i < paramArrayOfByte.length - 1) {
        localStringBuilder.append(':');
      }
    }
    return localStringBuilder.toString();
  }
  
  public static boolean c(Context paramContext, String paramString)
  {
    boolean bool1 = TextUtils.isEmpty(paramString);
    boolean bool2 = true;
    boolean bool3;
    if (!bool1)
    {
      ThirdPartyConfigSchema localThirdPartyConfigSchema = ThirdPartyConfigSchema.getConfig(paramContext, paramString);
      bool3 = localThirdPartyConfigSchema.allowInsert;
      if ((bool3) && (!TextUtils.isEmpty(localThirdPartyConfigSchema.SHA1))) {
        bool1 = TextUtils.equals(localThirdPartyConfigSchema.SHA1, g(paramContext, paramString));
      } else {
        bool1 = true;
      }
    }
    else
    {
      bool1 = true;
      bool3 = false;
    }
    paramContext = new StringBuilder();
    paramContext.append("canInsertEvent(): packageName:");
    paramContext.append(paramString);
    paramContext.append(", allowInsert:");
    paramContext.append(bool3);
    paramContext.append(", signedChecked:");
    paramContext.append(bool1);
    z.a("Cal:D:ThirdPartyUtils", paramContext.toString());
    if ((bool3) && (bool1)) {
      bool1 = bool2;
    } else {
      bool1 = false;
    }
    return bool1;
  }
  
  public static boolean d(Context paramContext, String paramString)
  {
    boolean bool1 = TextUtils.isEmpty(paramString);
    boolean bool2 = false;
    boolean bool3;
    if (!bool1)
    {
      ThirdPartyConfigSchema localThirdPartyConfigSchema = ThirdPartyConfigSchema.getConfig(paramContext, paramString);
      bool3 = localThirdPartyConfigSchema.allowInsertDirectly;
      if ((bool3) && (!TextUtils.isEmpty(localThirdPartyConfigSchema.SHA1))) {
        bool1 = TextUtils.equals(localThirdPartyConfigSchema.SHA1, g(paramContext, paramString));
      } else {
        bool1 = false;
      }
    }
    else
    {
      bool1 = false;
      bool3 = bool1;
    }
    paramContext = new StringBuilder();
    paramContext.append("canInsertEventDirectly(): packageName:");
    paramContext.append(paramString);
    paramContext.append(", allowInsertDirectly:");
    paramContext.append(bool3);
    paramContext.append(", signedChecked:");
    paramContext.append(bool1);
    z.a("Cal:D:ThirdPartyUtils", paramContext.toString());
    boolean bool4 = bool2;
    if (bool3)
    {
      bool4 = bool2;
      if (bool1) {
        bool4 = true;
      }
    }
    return bool4;
  }
  
  public static Intent e(Context paramContext, String paramString1, String paramString2, String paramString3, int paramInt, String paramString4)
  {
    if (TextUtils.isEmpty(paramString2))
    {
      z.m("Cal:D:ThirdPartyUtils", "getJumpToUrlIntent(): url is NULL");
      return null;
    }
    paramString2 = Utils.G(paramContext, paramString1, paramString2, paramString3, paramInt);
    paramString1 = paramString2;
    if (paramString2 == null)
    {
      paramString1 = paramString2;
      if (!TextUtils.isEmpty(paramString4)) {
        paramString1 = Utils.G(paramContext, null, paramString4, "com.android.browser", paramInt);
      }
    }
    return paramString1;
  }
  
  public static int f(Context paramContext, String paramString)
  {
    int i;
    if (!TextUtils.isEmpty(paramString)) {
      i = ThirdPartyConfigSchema.getConfig(paramContext, paramString).repeatLimit;
    } else {
      i = -1;
    }
    paramContext = new StringBuilder();
    paramContext.append("getRepeatLimit(): repeatLimit:");
    paramContext.append(i);
    z.a("Cal:D:ThirdPartyUtils", paramContext.toString());
    return i;
  }
  
  private static String g(Context paramContext, String paramString)
  {
    paramContext = paramContext.getPackageManager();
    try
    {
      paramContext = X509Certificate.getInstance(paramContext.getPackageInfo(paramString, 64).signatures[0].toByteArray());
      paramContext = b(MessageDigest.getInstance("SHA1").digest(paramContext.getEncoded()));
      return paramContext;
    }
    catch (NoSuchAlgorithmException paramContext) {}catch (CertificateException paramContext) {}catch (PackageManager.NameNotFoundException paramContext) {}
    paramContext.printStackTrace();
    return null;
  }
  
  public static void h(Context paramContext, String paramString1, String paramString2, String paramString3, int paramInt, String paramString4)
  {
    try
    {
      paramString1 = e(paramContext, paramString1, paramString2, paramString3, paramInt, paramString4);
      if (paramString1 != null) {
        paramContext.startActivity(paramString1, ActivityOptions.makeCustomAnimation(paramContext, 2130771988, 2130771989).toBundle());
      }
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:ThirdPartyUtils", "jumpToUrl()", paramContext);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.thirdparty.d
 * JD-Core Version:    0.7.0.1
 */