package z5;

import java.security.MessageDigest;

public class b
{
  public static String a(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte != null) && (paramArrayOfByte.length != 0)) {
      try
      {
        MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
        localMessageDigest.update(paramArrayOfByte);
        paramArrayOfByte = b(localMessageDigest.digest());
        return paramArrayOfByte;
      }
      catch (Exception paramArrayOfByte)
      {
        com.xiaomi.accountsdk.utils.b.h("AccountCoder", "getDataMd5Digest", paramArrayOfByte);
      }
    }
    return null;
  }
  
  public static String b(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; i < paramArrayOfByte.length; i++)
    {
      int j = (paramArrayOfByte[i] & 0xF0) >> 4;
      if ((j >= 0) && (j <= 9)) {
        j += 48;
      } else {
        j = j + 97 - 10;
      }
      localStringBuilder.append((char)j);
      j = paramArrayOfByte[i] & 0xF;
      if ((j >= 0) && (j <= 9)) {
        j += 48;
      } else {
        j = j + 97 - 10;
      }
      localStringBuilder.append((char)j);
    }
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z5.b
 * JD-Core Version:    0.7.0.1
 */