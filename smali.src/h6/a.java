package h6;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class a
{
  public static final String[] a = { "java.lang.OutOfMemoryError", "No space left on device" };
  
  public static String a(String paramString)
  {
    String[] arrayOfString = paramString.replaceAll("\\t", "").split("\\n");
    paramString = new StringBuilder();
    int i = Math.min(arrayOfString.length, 20);
    int j = 0;
    int m;
    for (int k = 0;; k++)
    {
      m = j;
      if (k >= i) {
        break;
      }
      arrayOfString[k] = arrayOfString[k].replaceAll("((java:)|(length=)|(index=)|(Index:)|(Size:))\\d+", "$1XX").replaceAll("\\$[0-9a-fA-F]{1,10}@[0-9a-fA-F]{1,10}|@[0-9a-fA-F]{1,10}|0x[0-9a-fA-F]{1,10}", "XX").replaceAll("\\d+[B,KB,MB]*", "");
    }
    while ((m < i) && ((!arrayOfString[m].contains("...")) || (!arrayOfString[m].contains("more"))))
    {
      paramString.append(arrayOfString[m]);
      paramString.append('\n');
      m++;
    }
    return b(paramString.toString());
  }
  
  private static String b(String paramString)
  {
    try
    {
      paramString = MessageDigest.getInstance("MD5").digest(paramString.getBytes("UTF-8"));
      StringBuilder localStringBuilder = new StringBuilder(paramString.length * 2);
      int i = paramString.length;
      for (int j = 0; j < i; j++)
      {
        int k = paramString[j] & 0xFF;
        if (k < 16) {
          localStringBuilder.append("0");
        }
        localStringBuilder.append(Integer.toHexString(k));
      }
      return localStringBuilder.toString();
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new RuntimeException("UnsupportedEncodingException", paramString);
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new RuntimeException("NoSuchAlgorithmException", paramString);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h6.a
 * JD-Core Version:    0.7.0.1
 */