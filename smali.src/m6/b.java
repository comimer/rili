package m6;

import android.net.Uri;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebView;
import com.xiaomi.passport.jsb.PassportJsbMethodException;
import com.xiaomi.passport.webview.a;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class b
{
  public static void checkUrlDomainPermission(a parama)
    throws PassportJsbMethodException
  {
    parama = Uri.parse(parama.getUrl());
    Uri localUri = Uri.parse(com.xiaomi.accountsdk.account.d.b);
    if ((!TextUtils.equals(parama.getHost(), localUri.getHost())) && (!TextUtils.equals(parama.getScheme(), localUri.getScheme()))) {
      throw new PassportJsbMethodException(105, "not permit");
    }
  }
  
  private static void fill(Bundle paramBundle, JSONObject paramJSONObject, g paramg)
  {
    if (paramJSONObject == null) {
      return;
    }
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramJSONObject.opt(str);
      if ((localObject instanceof JSONArray))
      {
        JSONArray localJSONArray = (JSONArray)localObject;
        int i = localJSONArray.length();
        localObject = new String[i];
        for (int j = 0; j < i; j++) {
          localObject[j] = localJSONArray.opt(j).toString();
        }
        paramg.b(paramBundle, str, (String[])localObject);
      }
      else
      {
        paramg.a(paramBundle, str, localObject.toString());
      }
    }
  }
  
  public static Bundle jsonToBundle(JSONObject paramJSONObject)
  {
    Bundle localBundle = new Bundle();
    if (paramJSONObject == null) {
      return localBundle;
    }
    fill(localBundle, paramJSONObject.optJSONObject("integer"), new a());
    fill(localBundle, paramJSONObject.optJSONObject("long"), new b());
    fill(localBundle, paramJSONObject.optJSONObject("float"), new c());
    fill(localBundle, paramJSONObject.optJSONObject("double"), new d());
    fill(localBundle, paramJSONObject.optJSONObject("boolean"), new e());
    fill(localBundle, paramJSONObject.optJSONObject("string"), new f());
    JSONObject localJSONObject = paramJSONObject.optJSONObject("bundle");
    if (localJSONObject != null)
    {
      Iterator localIterator = localJSONObject.keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        paramJSONObject = localJSONObject.optJSONObject(str);
        if (paramJSONObject != null) {
          localBundle.putBundle(str, jsonToBundle(paramJSONObject));
        }
      }
    }
    return localBundle;
  }
  
  public abstract String getName();
  
  public String getParamsStringFieldOrThrow(JSONObject paramJSONObject, String paramString)
    throws PassportJsbMethodException
  {
    try
    {
      paramJSONObject = paramJSONObject.getString(paramString);
      return paramJSONObject;
    }
    catch (JSONException localJSONException)
    {
      paramJSONObject = new StringBuilder();
      paramJSONObject.append("missing field: ");
      paramJSONObject.append(paramString);
      throw new PassportJsbMethodException(104, paramJSONObject.toString(), localJSONException);
    }
  }
  
  public abstract d invoke(a parama, JSONObject paramJSONObject)
    throws PassportJsbMethodException;
  
  public void release(a parama) {}
  
  class a
    implements b.g
  {
    public void a(Bundle paramBundle, String paramString1, String paramString2)
    {
      paramBundle.putInt(paramString1, Integer.parseInt(paramString2));
    }
    
    public void b(Bundle paramBundle, String paramString, String[] paramArrayOfString)
    {
      int i = paramArrayOfString.length;
      int[] arrayOfInt = new int[i];
      for (int j = 0; j < i; j++) {
        arrayOfInt[j] = Integer.parseInt(paramArrayOfString[j]);
      }
      paramBundle.putIntArray(paramString, arrayOfInt);
    }
  }
  
  class b
    implements b.g
  {
    public void a(Bundle paramBundle, String paramString1, String paramString2)
    {
      paramBundle.putLong(paramString1, Long.parseLong(paramString2));
    }
    
    public void b(Bundle paramBundle, String paramString, String[] paramArrayOfString)
    {
      int i = paramArrayOfString.length;
      long[] arrayOfLong = new long[i];
      for (int j = 0; j < i; j++) {
        arrayOfLong[j] = Long.parseLong(paramArrayOfString[j]);
      }
      paramBundle.putLongArray(paramString, arrayOfLong);
    }
  }
  
  class c
    implements b.g
  {
    public void a(Bundle paramBundle, String paramString1, String paramString2)
    {
      paramBundle.putFloat(paramString1, Float.parseFloat(paramString2));
    }
    
    public void b(Bundle paramBundle, String paramString, String[] paramArrayOfString)
    {
      int i = paramArrayOfString.length;
      float[] arrayOfFloat = new float[i];
      for (int j = 0; j < i; j++) {
        arrayOfFloat[j] = Float.parseFloat(paramArrayOfString[j]);
      }
      paramBundle.putFloatArray(paramString, arrayOfFloat);
    }
  }
  
  class d
    implements b.g
  {
    public void a(Bundle paramBundle, String paramString1, String paramString2)
    {
      paramBundle.putDouble(paramString1, Double.parseDouble(paramString2));
    }
    
    public void b(Bundle paramBundle, String paramString, String[] paramArrayOfString)
    {
      int i = paramArrayOfString.length;
      double[] arrayOfDouble = new double[i];
      for (int j = 0; j < i; j++) {
        arrayOfDouble[j] = Double.parseDouble(paramArrayOfString[j]);
      }
      paramBundle.putDoubleArray(paramString, arrayOfDouble);
    }
  }
  
  class e
    implements b.g
  {
    public void a(Bundle paramBundle, String paramString1, String paramString2)
    {
      paramBundle.putBoolean(paramString1, Boolean.parseBoolean(paramString2));
    }
    
    public void b(Bundle paramBundle, String paramString, String[] paramArrayOfString)
    {
      int i = paramArrayOfString.length;
      boolean[] arrayOfBoolean = new boolean[i];
      for (int j = 0; j < i; j++) {
        arrayOfBoolean[j] = Boolean.parseBoolean(paramArrayOfString[j]);
      }
      paramBundle.putBooleanArray(paramString, arrayOfBoolean);
    }
  }
  
  class f
    implements b.g
  {
    public void a(Bundle paramBundle, String paramString1, String paramString2)
    {
      paramBundle.putString(paramString1, paramString2);
    }
    
    public void b(Bundle paramBundle, String paramString, String[] paramArrayOfString)
    {
      paramBundle.putStringArray(paramString, paramArrayOfString);
    }
  }
  
  private static abstract interface g
  {
    public abstract void a(Bundle paramBundle, String paramString1, String paramString2);
    
    public abstract void b(Bundle paramBundle, String paramString, String[] paramArrayOfString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m6.b
 * JD-Core Version:    0.7.0.1
 */