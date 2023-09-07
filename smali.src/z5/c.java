package z5;

import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class c
{
  public static String a(String paramString)
  {
    return b(paramString, 8);
  }
  
  public static String b(String paramString, int paramInt)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = Base64.encodeToString(MessageDigest.getInstance("SHA1").digest(paramString.getBytes()), paramInt).substring(0, 16);
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new IllegalStateException("failed to init SHA1 digest");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z5.c
 * JD-Core Version:    0.7.0.1
 */