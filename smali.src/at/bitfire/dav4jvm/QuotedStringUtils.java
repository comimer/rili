package at.bitfire.dav4jvm;

import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.k;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/QuotedStringUtils;", "", "()V", "asQuotedString", "", "raw", "decodeQuotedString", "quoted", "build"}, k=1, mv={1, 1, 16})
public final class QuotedStringUtils
{
  public static final QuotedStringUtils INSTANCE = new QuotedStringUtils();
  
  public final String asQuotedString(String paramString)
  {
    r.g(paramString, "raw");
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("\"");
    localStringBuilder.append(k.y(k.y(paramString, "\\", "\\\\", false, 4, null), "\"", "\\\"", false, 4, null));
    localStringBuilder.append("\"");
    return localStringBuilder.toString();
  }
  
  public final String decodeQuotedString(String paramString)
  {
    r.g(paramString, "quoted");
    int i = paramString.length();
    Object localObject = paramString;
    if (i >= 2)
    {
      localObject = paramString;
      if (paramString.charAt(0) == '"')
      {
        int j = i - 1;
        localObject = paramString;
        if (paramString.charAt(j) == '"')
        {
          localObject = new StringBuffer(i);
          int m;
          for (int k = 1; k < j; k = m + 1)
          {
            char c1 = paramString.charAt(k);
            m = k;
            char c2 = c1;
            if (c1 == '\\')
            {
              m = k;
              c2 = c1;
              if (k != i - 2)
              {
                m = k + 1;
                k = paramString.charAt(m);
                c2 = k;
              }
            }
            ((StringBuffer)localObject).append(c2);
          }
          localObject = ((StringBuffer)localObject).toString();
          r.b(localObject, "result.toString()");
        }
      }
    }
    return localObject;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.QuotedStringUtils
 * JD-Core Version:    0.7.0.1
 */