package com.airbnb.lottie.parser.moshi;

final class a
{
  static String a(int paramInt, int[] paramArrayOfInt1, String[] paramArrayOfString, int[] paramArrayOfInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('$');
    for (int i = 0; i < paramInt; i++)
    {
      int j = paramArrayOfInt1[i];
      if ((j != 1) && (j != 2))
      {
        if ((j == 3) || (j == 4) || (j == 5))
        {
          localStringBuilder.append('.');
          String str = paramArrayOfString[i];
          if (str != null) {
            localStringBuilder.append(str);
          }
        }
      }
      else
      {
        localStringBuilder.append('[');
        localStringBuilder.append(paramArrayOfInt2[i]);
        localStringBuilder.append(']');
      }
    }
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.parser.moshi.a
 * JD-Core Version:    0.7.0.1
 */