package z5;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.account.privacy_data.master.PrivacyDataType;
import p5.a;

public class e
{
  public static String a(Context paramContext)
  {
    paramContext = a.a(paramContext, PrivacyDataType.BLUETOOTH_ADDRESS, new String[0]);
    if (!TextUtils.isEmpty(paramContext)) {
      return paramContext;
    }
    return "0";
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z5.e
 * JD-Core Version:    0.7.0.1
 */