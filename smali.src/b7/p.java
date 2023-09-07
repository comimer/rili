package b7;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class p
{
  public static boolean a(String paramString)
  {
    for (int i = 0; i < 12; i++) {
      if (paramString.equals(new String[] { "gmail.com", "aol.com", "outlook.com", "yahoo.com.cn", "yahoo.com", "hotmail.com", "163.com", "126.com", "qq.com", "sina.com", "sina.cn", "sohu.com" }[i])) {
        return true;
      }
    }
    return false;
  }
  
  public static String b(String paramString, char paramChar, int paramInt1, int paramInt2)
  {
    Object localObject = Pattern.compile("^(\\w+)@(\\w+(\\.\\w+)+)$").matcher(paramString);
    String str1 = paramString;
    if (((Matcher)localObject).find())
    {
      String str2 = ((Matcher)localObject).group(1);
      str1 = ((Matcher)localObject).group(2);
      int i = str2.length();
      localObject = new StringBuilder(paramString.length());
      int j = 0;
      int k = 0;
      int n;
      for (int m = k; k < i; m = n)
      {
        if ((k >= paramInt1) && (k < i - paramInt2))
        {
          n = m;
          if (m < 3)
          {
            n = m + 1;
            ((StringBuilder)localObject).append(paramChar);
          }
        }
        else
        {
          ((StringBuilder)localObject).append(paramString.charAt(k));
          n = m;
        }
        k++;
      }
      ((StringBuilder)localObject).append("@");
      if (!a(str1))
      {
        paramString = str1.substring(str1.lastIndexOf("."));
        str1 = str1.substring(0, str1.lastIndexOf('.'));
        for (paramInt1 = j; paramInt1 < str1.length(); paramInt1++) {
          if ((paramInt1 > 0) && (paramInt1 < str1.length() - 1)) {
            ((StringBuilder)localObject).append(paramChar);
          } else {
            ((StringBuilder)localObject).append(str1.charAt(paramInt1));
          }
        }
        ((StringBuilder)localObject).append(paramString);
      }
      else
      {
        ((StringBuilder)localObject).append(str1);
      }
      str1 = ((StringBuilder)localObject).toString();
    }
    return str1;
  }
  
  public static String c(String paramString)
  {
    return b(paramString, '*', 3, 1);
  }
  
  public static String d(CharSequence paramCharSequence, char paramChar, int paramInt1, int paramInt2)
  {
    int i = paramCharSequence.length();
    StringBuilder localStringBuilder = new StringBuilder(i);
    for (int j = 0; j < i; j++) {
      if ((j >= paramInt1) && (j <= i - 1 - paramInt2)) {
        localStringBuilder.append(paramChar);
      } else {
        localStringBuilder.append(paramCharSequence.charAt(j));
      }
    }
    return localStringBuilder.toString();
  }
  
  public static String e(CharSequence paramCharSequence)
  {
    if (TextUtils.isEmpty(paramCharSequence)) {
      return String.valueOf(paramCharSequence);
    }
    int i = paramCharSequence.length();
    if (i >= 11) {
      return d(paramCharSequence, '*', 3, 4);
    }
    if ((i <= 10) && (i >= 9)) {
      return d(paramCharSequence, '*', 3, 3);
    }
    if ((i <= 8) && (i >= 7)) {
      return d(paramCharSequence, '*', 2, 2);
    }
    return String.valueOf(paramCharSequence);
  }
  
  public static String f(CharSequence paramCharSequence)
  {
    if (TextUtils.isEmpty(paramCharSequence)) {
      return String.valueOf(paramCharSequence);
    }
    int i = paramCharSequence.length();
    if (i >= 9) {
      return d(paramCharSequence, '*', 3, 2);
    }
    if ((i <= 8) && (i >= 7)) {
      return d(paramCharSequence, '*', 2, 2);
    }
    return String.valueOf(paramCharSequence);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b7.p
 * JD-Core Version:    0.7.0.1
 */