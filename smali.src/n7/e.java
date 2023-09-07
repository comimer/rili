package n7;

import android.text.TextUtils;
import java.io.File;

public class e
{
  private static final boolean a = new File("/data/system/verifaction_staging_preview").exists();
  public static volatile boolean b;
  
  public static String a(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1))
    {
      if ((!b) && (!a))
      {
        paramString1 = new StringBuilder();
        paramString1.append("https://verify.sec.xiaomi.com");
        paramString1.append(paramString2);
        paramString1 = paramString1.toString();
      }
      else
      {
        paramString1 = new StringBuilder();
        paramString1.append("https://infosec-captcha-staging.pt.xiaomi.com");
        paramString1.append(paramString2);
        paramString1 = paramString1.toString();
      }
    }
    else
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString1);
      localStringBuilder.append(paramString2);
      paramString1 = localStringBuilder.toString();
    }
    return paramString1;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n7.e
 * JD-Core Version:    0.7.0.1
 */