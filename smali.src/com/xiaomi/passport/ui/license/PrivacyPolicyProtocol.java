package com.xiaomi.passport.ui.license;

import android.content.Context;
import com.miui.privacypolicy.d;

public class PrivacyPolicyProtocol
{
  public static void a(Context paramContext, LoginAgreementAndPrivacy.PrivacyReportInfo paramPrivacyReportInfo)
    throws PrivacyPolicyProtocol.OperationFailedException, PrivacyPolicyProtocol.OperationCallFrequentException
  {
    b(d.b(paramContext, paramPrivacyReportInfo.policyName, paramPrivacyReportInfo.idContent, paramPrivacyReportInfo.packageName, paramPrivacyReportInfo.apkVersionName));
  }
  
  private static void b(int paramInt)
    throws PrivacyPolicyProtocol.OperationFailedException, PrivacyPolicyProtocol.OperationCallFrequentException
  {
    if ((1 != paramInt) && (-7 != paramInt) && (-6 != paramInt)) {
      c(paramInt);
    }
  }
  
  private static void c(int paramInt)
    throws PrivacyPolicyProtocol.OperationFailedException, PrivacyPolicyProtocol.OperationCallFrequentException
  {
    if (paramInt != -5)
    {
      if (paramInt != -4)
      {
        if (paramInt != -3)
        {
          if (paramInt != -2)
          {
            if (paramInt != -1) {
              throw new OperationFailedException(paramInt, "UNKNOWN_FAILED_REASON");
            }
            throw new OperationFailedException(paramInt, "ERROR_NO_NETWORK");
          }
          throw new OperationFailedException(paramInt, "ERROR_SERVICE_NOT_RESPONSE");
        }
        throw new OperationFailedException(paramInt, "ERROR_PARESE_SERVICE_DATA");
      }
      throw new OperationFailedException(paramInt, "ERROR_INTERNATIONAL_REGION");
    }
    throw new OperationCallFrequentException();
  }
  
  public static class OperationCallFrequentException
    extends Exception
  {
    public OperationCallFrequentException()
    {
      super();
    }
  }
  
  public static class OperationFailedException
    extends Exception
  {
    public OperationFailedException(int paramInt, String paramString)
    {
      super();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.license.PrivacyPolicyProtocol
 * JD-Core Version:    0.7.0.1
 */