package x6;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.ButtonInfo;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.ErrorHandleInfo;
import com.xiaomi.passport.ui.internal.PassportJsbWebViewActivity;
import com.xiaomi.passport.ui.page.AccountLoginActivity;
import java.util.HashMap;
import java.util.Map;

public class a
  extends u5.a
{
  private static final Map<String, com.xiaomi.accountsdk.account.serverpassthrougherror.data.a> a = new HashMap();
  
  private static void n()
  {
    Map localMap = a;
    localMap.put("PassportJsbWebViewActivity", new com.xiaomi.accountsdk.account.serverpassthrougherror.data.a(PassportJsbWebViewActivity.class));
    localMap.put("LoginActivity", new com.xiaomi.accountsdk.account.serverpassthrougherror.data.a(AccountLoginActivity.class, new a()));
  }
  
  protected Dialog b(final Activity paramActivity, final ErrorHandleInfo paramErrorHandleInfo)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("createDialog>>>");
    ((StringBuilder)localObject).append(paramErrorHandleInfo);
    com.xiaomi.accountsdk.utils.b.g("ServerPassThroughErrorControl", ((StringBuilder)localObject).toString());
    localObject = new a7.b(paramActivity);
    ((a7.b)localObject).l(paramErrorHandleInfo.b);
    ((a7.b)localObject).g(paramErrorHandleInfo.d);
    final ButtonInfo localButtonInfo = paramErrorHandleInfo.e;
    if (localButtonInfo != null) {
      ((a7.b)localObject).i(localButtonInfo.getText(), new b(paramActivity, localButtonInfo));
    }
    localButtonInfo = paramErrorHandleInfo.f;
    if (localButtonInfo != null) {
      ((a7.b)localObject).j(localButtonInfo.getText(), new c(paramActivity, localButtonInfo));
    }
    paramErrorHandleInfo = paramErrorHandleInfo.g;
    if (paramErrorHandleInfo != null) {
      ((a7.b)localObject).k(paramErrorHandleInfo.getText(), new d(paramActivity, paramErrorHandleInfo));
    }
    return localObject;
  }
  
  protected Map<String, com.xiaomi.accountsdk.account.serverpassthrougherror.data.a> e()
  {
    Map localMap = a;
    if (localMap.isEmpty()) {
      n();
    }
    return localMap;
  }
  
  protected boolean i(Activity paramActivity, ButtonInfo paramButtonInfo)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("jumpToDefWebPageWhenNativeJumpErr>>>");
    ((StringBuilder)localObject).append(paramButtonInfo);
    com.xiaomi.accountsdk.utils.b.g("ServerPassThroughErrorControl", ((StringBuilder)localObject).toString());
    com.xiaomi.accountsdk.account.serverpassthrougherror.data.a locala = (com.xiaomi.accountsdk.account.serverpassthrougherror.data.a)e().get("PassportJsbWebViewActivity");
    if ((locala != null) && (!TextUtils.isEmpty(paramButtonInfo.getExtraWebUrl()))) {
      try
      {
        Map localMap = paramButtonInfo.getPageParams();
        localObject = localMap;
        if (localMap == null)
        {
          localObject = new java/util/HashMap;
          ((HashMap)localObject).<init>();
        }
        ((Map)localObject).put("url", paramButtonInfo.getExtraWebUrl());
        paramActivity.startActivity(c(paramActivity, locala, (Map)localObject));
        return true;
      }
      catch (Exception paramButtonInfo)
      {
        paramActivity = new StringBuilder();
        paramActivity.append("jumpToDefWebPageWhenNativeJumpErr>>>errMsg:");
        paramActivity.append(paramButtonInfo.getMessage());
        com.xiaomi.accountsdk.utils.b.g("ServerPassThroughErrorControl", paramActivity.toString());
      }
    }
    return false;
  }
  
  class a
    implements v5.b
  {
    public Intent a(Activity paramActivity, com.xiaomi.accountsdk.account.serverpassthrougherror.data.a parama, Map<String, Object> paramMap)
    {
      paramMap = u5.a.d(paramMap);
      parama = new Intent(paramActivity, parama.a);
      parama.putExtras(paramActivity.getIntent().getExtras());
      parama.putExtras(paramMap);
      parama.setFlags(268468224);
      return parama;
    }
  }
  
  class b
    implements View.OnClickListener
  {
    b(Activity paramActivity, ButtonInfo paramButtonInfo) {}
    
    public void onClick(View paramView)
    {
      a.this.a(paramActivity, localButtonInfo);
    }
  }
  
  class c
    implements View.OnClickListener
  {
    c(Activity paramActivity, ButtonInfo paramButtonInfo) {}
    
    public void onClick(View paramView)
    {
      a.this.a(paramActivity, localButtonInfo);
    }
  }
  
  class d
    implements View.OnClickListener
  {
    d(Activity paramActivity, ButtonInfo paramButtonInfo) {}
    
    public void onClick(View paramView)
    {
      a.this.a(paramActivity, paramErrorHandleInfo);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x6.a
 * JD-Core Version:    0.7.0.1
 */