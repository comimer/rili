package d7;

import java.io.File;

public class a
{
  private static boolean a;
  public static final String b;
  public static final String c;
  
  static
  {
    boolean bool = new File("/data/system/xiaomi_account_preview").exists();
    a = bool;
    String str;
    if (bool) {
      str = "http://act.preview.account.xiaomi.com/pass/activator";
    } else {
      str = "https://act.account.xiaomi.com/pass/activator";
    }
    b = str;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(str);
    localStringBuilder.append("/getCloudControl");
    c = localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     d7.a
 * JD-Core Version:    0.7.0.1
 */