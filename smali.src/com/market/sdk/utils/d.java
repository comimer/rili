package com.market.sdk.utils;

import android.net.Uri;
import android.text.TextUtils;
import com.market.sdk.j;

public class d
{
  private static j<String> a = new a();
  private static volatile j<Boolean> b = new b();
  
  public static String a(String paramString)
  {
    if ((paramString != null) && (!paramString.isEmpty())) {}
    try
    {
      Uri localUri = Uri.parse(paramString);
      String str = b(localUri, "packageName");
      paramString = str;
      if (TextUtils.isEmpty(str)) {
        paramString = b(localUri, "id");
      }
      str = paramString;
      if (TextUtils.isEmpty(paramString)) {
        str = b(localUri, "q");
      }
      return str;
    }
    catch (Exception paramString)
    {
      label60:
      break label60;
    }
    return "";
  }
  
  public static String b(Uri paramUri, String paramString)
  {
    if ((paramUri != null) && (paramUri.isHierarchical())) {}
    try
    {
      paramUri = paramUri.getQueryParameter(paramString);
      return paramUri;
    }
    catch (Exception paramUri)
    {
      label22:
      break label22;
    }
    return "";
  }
  
  class a
    extends j<String>
  {}
  
  class b
    extends j<Boolean>
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.utils.d
 * JD-Core Version:    0.7.0.1
 */