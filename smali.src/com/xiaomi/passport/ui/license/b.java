package com.xiaomi.passport.ui.license;

import android.content.Context;
import android.os.AsyncTask;
import java.util.ArrayList;
import java.util.Iterator;

public class b
  extends AsyncTask<Void, Void, Void>
{
  private final Context a;
  private final ArrayList<LoginAgreementAndPrivacy.PrivacyReportInfo> b;
  
  public b(Context paramContext, ArrayList<LoginAgreementAndPrivacy.PrivacyReportInfo> paramArrayList)
  {
    this.a = paramContext.getApplicationContext();
    this.b = paramArrayList;
  }
  
  private void b(LoginAgreementAndPrivacy.PrivacyReportInfo paramPrivacyReportInfo)
  {
    try
    {
      PrivacyPolicyProtocol.a(this.a, paramPrivacyReportInfo);
      StringBuilder localStringBuilder1 = new java/lang/StringBuilder;
      localStringBuilder1.<init>();
      localStringBuilder1.append("suc when agree:policyName=");
      localStringBuilder1.append(paramPrivacyReportInfo.policyName);
      com.xiaomi.accountsdk.utils.b.g("PrivacyAgreeTask", localStringBuilder1.toString());
    }
    catch (PrivacyPolicyProtocol.OperationCallFrequentException localOperationCallFrequentException)
    {
      localStringBuilder2 = new StringBuilder();
      localStringBuilder2.append("fail because too frequent: policyName=");
      localStringBuilder2.append(paramPrivacyReportInfo.policyName);
      localStringBuilder2.append("　　err msg:");
      localStringBuilder2.append(localOperationCallFrequentException);
      com.xiaomi.accountsdk.utils.b.g("PrivacyAgreeTask", localStringBuilder2.toString());
    }
    catch (PrivacyPolicyProtocol.OperationFailedException localOperationFailedException)
    {
      StringBuilder localStringBuilder2 = new StringBuilder();
      localStringBuilder2.append("fail when agree: policyName=");
      localStringBuilder2.append(paramPrivacyReportInfo.policyName);
      localStringBuilder2.append("　　err msg:");
      localStringBuilder2.append(localOperationFailedException);
      com.xiaomi.accountsdk.utils.b.g("PrivacyAgreeTask", localStringBuilder2.toString());
    }
  }
  
  protected Void a(Void... paramVarArgs)
  {
    paramVarArgs = this.b.iterator();
    while (paramVarArgs.hasNext()) {
      b((LoginAgreementAndPrivacy.PrivacyReportInfo)paramVarArgs.next());
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.license.b
 * JD-Core Version:    0.7.0.1
 */