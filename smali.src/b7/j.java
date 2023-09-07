package b7;

import android.net.Uri;
import android.net.Uri.Builder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class j
{
  public static String a(String paramString, Map<String, String> paramMap)
  {
    Object localObject = new HashMap();
    Uri localUri = Uri.parse(paramString);
    Iterator localIterator = localUri.getQueryParameterNames().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      ((Map)localObject).put(str, localUri.getQueryParameter(str));
    }
    if (paramMap != null) {
      ((Map)localObject).putAll(paramMap);
    }
    paramString = Uri.parse(paramString).buildUpon();
    paramString.clearQuery();
    localObject = ((Map)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      paramMap = (Map.Entry)((Iterator)localObject).next();
      paramString.appendQueryParameter((String)paramMap.getKey(), (String)paramMap.getValue());
    }
    return paramString.build().toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b7.j
 * JD-Core Version:    0.7.0.1
 */