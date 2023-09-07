package com.android.dingtalk.openauth;

import android.content.Context;
import android.text.TextUtils;
import com.android.dingtalk.openauth.utils.DDAuthUtil;
import com.android.dingtalk.openauth.utils.a;
import com.android.dingtalk.openauth.utils.b;
import com.android.dingtalk.openauth.utils.e;

class DDAuthApi
  implements IDDAuthApi
{
  private Context mContext;
  private AuthLoginParam mParam;
  
  DDAuthApi(Context paramContext, AuthLoginParam paramAuthLoginParam)
  {
    if (paramContext != null)
    {
      if (paramAuthLoginParam != null)
      {
        this.mContext = paramContext;
        this.mParam = paramAuthLoginParam;
        return;
      }
      throw new b("AuthLoginParam is null");
    }
    throw new b("Context is null");
  }
  
  public void authLogin()
  {
    Context localContext = this.mContext.getApplicationContext();
    String str1 = localContext.getPackageName();
    String str2 = this.mParam.getAltSignature();
    if ((!DDAuthUtil.isDebug(localContext)) || (TextUtils.isEmpty(str2))) {
      str2 = e.a(localContext, str1);
    }
    if (DDAuthUtil.isDDSupportAPI(localContext)) {
      a.a(this.mContext, this.mParam, str1, str2);
    } else {
      a.b(this.mContext, this.mParam, str1, str2);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.dingtalk.openauth.DDAuthApi
 * JD-Core Version:    0.7.0.1
 */