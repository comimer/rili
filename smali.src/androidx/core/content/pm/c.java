package androidx.core.content.pm;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build.VERSION;

public final class c
{
  public static long a(PackageInfo paramPackageInfo)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return a.b(paramPackageInfo);
    }
    return paramPackageInfo.versionCode;
  }
  
  private static class a
  {
    static Signature[] a(SigningInfo paramSigningInfo)
    {
      return paramSigningInfo.getApkContentsSigners();
    }
    
    static long b(PackageInfo paramPackageInfo)
    {
      return b.a(paramPackageInfo);
    }
    
    static Signature[] c(SigningInfo paramSigningInfo)
    {
      return paramSigningInfo.getSigningCertificateHistory();
    }
    
    static boolean d(SigningInfo paramSigningInfo)
    {
      return paramSigningInfo.hasMultipleSigners();
    }
    
    static boolean e(PackageManager paramPackageManager, String paramString, byte[] paramArrayOfByte, int paramInt)
    {
      return a.a(paramPackageManager, paramString, paramArrayOfByte, paramInt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.content.pm.c
 * JD-Core Version:    0.7.0.1
 */