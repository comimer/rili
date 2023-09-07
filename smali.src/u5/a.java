package u5;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.ButtonInfo;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.ErrorHandleInfo;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class a
{
  public static Bundle d(Map<String, Object> paramMap)
  {
    Bundle localBundle = new Bundle();
    if (paramMap == null) {
      return localBundle;
    }
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      paramMap = (String)((Map.Entry)localObject).getKey();
      localObject = ((Map.Entry)localObject).getValue();
      if ((localObject instanceof String)) {
        localBundle.putString(paramMap, (String)localObject);
      } else if ((localObject instanceof Boolean)) {
        localBundle.putBoolean(paramMap, ((Boolean)localObject).booleanValue());
      } else if ((localObject instanceof Integer)) {
        localBundle.putInt(paramMap, ((Integer)localObject).intValue());
      } else if ((localObject instanceof Long)) {
        localBundle.putLong(paramMap, ((Long)localObject).longValue());
      } else if ((localObject instanceof Float)) {
        localBundle.putFloat(paramMap, ((Float)localObject).floatValue());
      } else if ((localObject instanceof Double)) {
        localBundle.putDouble(paramMap, ((Double)localObject).doubleValue());
      } else if ((localObject instanceof int[])) {
        localBundle.putIntArray(paramMap, (int[])localObject);
      } else if ((localObject instanceof long[])) {
        localBundle.putLongArray(paramMap, (long[])localObject);
      } else if ((localObject instanceof String[])) {
        localBundle.putStringArray(paramMap, (String[])localObject);
      } else if ((localObject instanceof boolean[])) {
        localBundle.putBooleanArray(paramMap, (boolean[])localObject);
      } else if ((localObject instanceof float[])) {
        localBundle.putFloatArray(paramMap, (float[])localObject);
      } else if ((localObject instanceof double[])) {
        localBundle.putDoubleArray(paramMap, (double[])localObject);
      }
    }
    return localBundle;
  }
  
  private boolean h(Activity paramActivity, ButtonInfo paramButtonInfo)
  {
    if (TextUtils.isEmpty(paramButtonInfo.getExtraWebUrl())) {
      return false;
    }
    return i(paramActivity, paramButtonInfo);
  }
  
  private boolean j(Activity paramActivity, ButtonInfo paramButtonInfo)
  {
    String str = paramButtonInfo.getNativePage();
    if (TextUtils.isEmpty(str)) {
      return false;
    }
    Object localObject = e();
    if (localObject == null) {
      return false;
    }
    localObject = (com.xiaomi.accountsdk.account.serverpassthrougherror.data.a)((Map)localObject).get(str);
    if (localObject == null) {
      return false;
    }
    try
    {
      paramActivity.startActivity(c(paramActivity, (com.xiaomi.accountsdk.account.serverpassthrougherror.data.a)localObject, paramButtonInfo.getPageParams()));
      return true;
    }
    catch (Exception localException)
    {
      paramActivity = new StringBuilder();
      paramActivity.append("jumpToNativePage>>>err:");
      paramActivity.append(localException.getMessage());
      paramActivity.append("   ");
      paramActivity.append(paramButtonInfo);
      com.xiaomi.accountsdk.utils.b.g("ServerPassThroughErrorBaseControl", paramActivity.toString());
    }
    return false;
  }
  
  public final void a(Activity paramActivity, ButtonInfo paramButtonInfo)
  {
    v5.a locala = paramButtonInfo.getLocalClickListener();
    if ((locala != null) && (locala.a(paramButtonInfo))) {
      return;
    }
    m(paramActivity, paramButtonInfo);
  }
  
  protected abstract Dialog b(Activity paramActivity, ErrorHandleInfo paramErrorHandleInfo);
  
  protected final Intent c(Activity paramActivity, com.xiaomi.accountsdk.account.serverpassthrougherror.data.a parama, Map<String, Object> paramMap)
  {
    v5.b localb = parama.b;
    if (localb != null)
    {
      paramActivity = localb.a(paramActivity, parama, paramMap);
    }
    else
    {
      paramActivity = new Intent(paramActivity, parama.a);
      paramActivity.putExtras(d(paramMap));
    }
    return paramActivity;
  }
  
  protected abstract Map<String, com.xiaomi.accountsdk.account.serverpassthrougherror.data.a> e();
  
  final void f(Activity paramActivity, ErrorHandleInfo paramErrorHandleInfo)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("handleError>>>");
    localStringBuilder.append(paramErrorHandleInfo);
    com.xiaomi.accountsdk.utils.b.g("ServerPassThroughErrorBaseControl", localStringBuilder.toString());
    if ((paramActivity != null) && (!paramActivity.isFinishing()))
    {
      int i = a.a[paramErrorHandleInfo.a.ordinal()];
      if (i != 1)
      {
        if (i != 2) {
          g(paramActivity, paramErrorHandleInfo);
        } else {
          k(paramActivity, paramErrorHandleInfo);
        }
      }
      else {
        l(paramActivity, paramErrorHandleInfo);
      }
    }
  }
  
  protected void g(Activity paramActivity, ErrorHandleInfo paramErrorHandleInfo)
  {
    paramActivity = new StringBuilder();
    paramActivity.append("handleNoneType>>>");
    paramActivity.append(paramErrorHandleInfo);
    com.xiaomi.accountsdk.utils.b.g("ServerPassThroughErrorBaseControl", paramActivity.toString());
  }
  
  protected abstract boolean i(Activity paramActivity, ButtonInfo paramButtonInfo);
  
  protected void k(Activity paramActivity, ErrorHandleInfo paramErrorHandleInfo)
  {
    paramActivity = b(paramActivity, paramErrorHandleInfo);
    if (paramActivity == null) {
      return;
    }
    paramActivity.show();
  }
  
  protected void l(Activity paramActivity, ErrorHandleInfo paramErrorHandleInfo)
  {
    Toast.makeText(paramActivity.getApplicationContext(), paramErrorHandleInfo.c, 0).show();
  }
  
  protected final void m(Activity paramActivity, ButtonInfo paramButtonInfo)
  {
    if ((paramActivity != null) && (!paramActivity.isFinishing()) && (paramButtonInfo != null) && (!j(paramActivity, paramButtonInfo))) {
      h(paramActivity, paramButtonInfo);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     u5.a
 * JD-Core Version:    0.7.0.1
 */