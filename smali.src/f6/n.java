package f6;

import android.text.TextUtils;
import java.lang.reflect.Array;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.List;

public class n
{
  public static String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
    return b(paramString.getBytes());
  }
  
  public static String b(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null) {}
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramArrayOfByte);
      paramArrayOfByte = new java/math/BigInteger;
      paramArrayOfByte.<init>(1, localMessageDigest.digest());
      paramArrayOfByte = String.format("%1$032X", new Object[] { paramArrayOfByte });
    }
    catch (Exception paramArrayOfByte)
    {
      label45:
      break label45;
    }
    paramArrayOfByte = "";
    return paramArrayOfByte.toLowerCase();
  }
  
  public static <T> T[] c(List<T> paramList, Class<T> paramClass)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      paramClass = (Object[])Array.newInstance(paramClass, paramList.size());
      for (int i = 0; i < paramList.size(); i++) {
        paramClass[i] = paramList.get(i);
      }
      return paramClass;
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f6.n
 * JD-Core Version:    0.7.0.1
 */