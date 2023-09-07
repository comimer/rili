package b7;

import android.text.TextUtils;
import android.util.Pair;
import com.xiaomi.accountsdk.utils.XMPassportUtil;
import com.xiaomi.accountsdk.utils.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class o
{
  public static String a()
  {
    return XMPassportUtil.f(Locale.getDefault());
  }
  
  private static List<a> b(String paramString)
  {
    if (paramString != null) {
      try
      {
        paramString = c(paramString);
        boolean bool = paramString.isEmpty();
        if (!bool) {
          return paramString;
        }
      }
      catch (JSONException paramString)
      {
        b.h("PhoneNumUtil", "load cloud data JSONException", paramString);
      }
    }
    return null;
  }
  
  private static List<a> c(String paramString)
    throws JSONException
  {
    JSONObject localJSONObject = (JSONObject)new JSONObject(paramString).get("data");
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = localJSONObject.keys();
    int i;
    if (localJSONObject.length() != 1) {
      i = 1;
    } else {
      i = 0;
    }
    while (localIterator.hasNext())
    {
      String str1 = (String)localIterator.next();
      JSONArray localJSONArray = localJSONObject.getJSONArray(str1);
      for (int j = 0; j < localJSONArray.length(); j++)
      {
        paramString = localJSONArray.getJSONObject(j);
        String str2 = paramString.optString("B", "");
        String str3 = paramString.optString("C", "");
        Object localObject = paramString.optString("N", "");
        if ((!TextUtils.isEmpty(str2)) && (!TextUtils.isEmpty((CharSequence)localObject)))
        {
          paramString = (String)localObject;
          if (((String)localObject).startsWith("+")) {
            paramString = ((String)localObject).substring(1);
          }
          if (i != 0)
          {
            boolean bool;
            if (j == 0) {
              bool = true;
            } else {
              bool = false;
            }
            localObject = new Pair(str1, Boolean.valueOf(bool));
          }
          else
          {
            localObject = null;
          }
          localArrayList.add(new a(str2, str3, paramString, (Pair)localObject));
        }
        else
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("discard unqualified data ");
          ((StringBuilder)localObject).append(paramString);
          b.g("PhoneNumUtil", ((StringBuilder)localObject).toString());
        }
      }
    }
    return localArrayList;
  }
  
  public static void d(String paramString1, String paramString2)
  {
    try
    {
      g.h(b(paramString1), paramString2);
      return;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  public static class a
  {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final Pair<String, Boolean> e;
    
    a(String paramString1, String paramString2, String paramString3, Pair<String, Boolean> paramPair)
    {
      if ((!TextUtils.isEmpty(paramString1)) && (paramString2 != null) && (!TextUtils.isEmpty(paramString3)))
      {
        this.a = paramString1;
        this.b = paramString2;
        this.c = paramString3;
        if (paramString3.startsWith("+"))
        {
          this.d = paramString3;
        }
        else
        {
          paramString1 = new StringBuilder();
          paramString1.append("+");
          paramString1.append(paramString3);
          this.d = paramString1.toString();
        }
        this.e = paramPair;
        return;
      }
      throw new IllegalStateException("country code and iso should't be empty");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b7.o
 * JD-Core Version:    0.7.0.1
 */