package b7;

import android.text.TextUtils;
import java.util.Map;

public class i
{
  public static String a(Map<String, String> paramMap, String paramString)
  {
    if (paramMap == null) {
      return paramString;
    }
    paramMap = (String)paramMap.get("Content-Type");
    if (TextUtils.isEmpty(paramMap)) {
      return paramString;
    }
    return paramMap;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b7.i
 * JD-Core Version:    0.7.0.1
 */