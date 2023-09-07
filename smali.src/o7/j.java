package o7;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Locale;
import javax.activation.MimeTypeParseException;

public class j
{
  private Hashtable a = new Hashtable();
  
  public j() {}
  
  public j(String paramString)
    throws MimeTypeParseException
  {
    c(paramString);
  }
  
  private static boolean b(char paramChar)
  {
    boolean bool;
    if ((paramChar > ' ') && (paramChar < '') && ("()<>@,;:/[]?=\\\"".indexOf(paramChar) < 0)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static String d(String paramString)
  {
    int i = paramString.length();
    int j = 0;
    int k = 0;
    int m = k;
    boolean bool;
    while ((k < i) && (m == 0))
    {
      bool = b(paramString.charAt(k)) ^ true;
      k++;
    }
    Object localObject = paramString;
    if (bool)
    {
      localObject = new StringBuffer();
      ((StringBuffer)localObject).ensureCapacity((int)(i * 1.5D));
      ((StringBuffer)localObject).append('"');
      for (k = j; k < i; k++)
      {
        char c = paramString.charAt(k);
        if ((c == '\\') || (c == '"')) {
          ((StringBuffer)localObject).append('\\');
        }
        ((StringBuffer)localObject).append(c);
      }
      ((StringBuffer)localObject).append('"');
      localObject = ((StringBuffer)localObject).toString();
    }
    return localObject;
  }
  
  private static int g(String paramString, int paramInt)
  {
    int i = paramString.length();
    while ((paramInt < i) && (Character.isWhitespace(paramString.charAt(paramInt)))) {
      paramInt++;
    }
    return paramInt;
  }
  
  private static String h(String paramString)
  {
    int i = paramString.length();
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.ensureCapacity(i);
    int j = 0;
    int k = j;
    while (j < i)
    {
      char c = paramString.charAt(j);
      if ((k == 0) && (c != '\\'))
      {
        localStringBuffer.append(c);
      }
      else if (k != 0)
      {
        localStringBuffer.append(c);
        k = 0;
      }
      else
      {
        k = 1;
      }
      j++;
    }
    return localStringBuffer.toString();
  }
  
  public String a(String paramString)
  {
    return (String)this.a.get(paramString.trim().toLowerCase(Locale.ENGLISH));
  }
  
  protected void c(String paramString)
    throws MimeTypeParseException
  {
    if (paramString == null) {
      return;
    }
    int i = paramString.length();
    if (i <= 0) {
      return;
    }
    int j = g(paramString, 0);
    while ((j < i) && (paramString.charAt(j) == ';'))
    {
      int k = g(paramString, j + 1);
      if (k >= i) {
        return;
      }
      for (j = k; (j < i) && (b(paramString.charAt(j))); j++) {}
      String str1 = paramString.substring(k, j).toLowerCase(Locale.ENGLISH);
      j = g(paramString, j);
      if ((j < i) && (paramString.charAt(j) == '='))
      {
        k = g(paramString, j + 1);
        if (k < i)
        {
          int m = paramString.charAt(k);
          String str2;
          if (m == 34)
          {
            int n = k + 1;
            if (n < i)
            {
              j = n;
              k = m;
              while (j < i)
              {
                k = paramString.charAt(j);
                if (k == 34) {
                  break;
                }
                int i1 = j;
                if (k == 92) {
                  i1 = j + 1;
                }
                j = i1 + 1;
              }
              if (k == 34)
              {
                str2 = h(paramString.substring(n, j));
                j++;
              }
              else
              {
                throw new MimeTypeParseException("Encountered unterminated quoted parameter value.");
              }
            }
            else
            {
              throw new MimeTypeParseException("Encountered unterminated quoted parameter value.");
            }
          }
          else
          {
            if (!b(m)) {
              break label315;
            }
            for (j = k; (j < i) && (b(paramString.charAt(j))); j++) {}
            str2 = paramString.substring(k, j);
          }
          this.a.put(str1, str2);
          j = g(paramString, j);
          continue;
          label315:
          paramString = new StringBuilder();
          paramString.append("Unexpected character encountered at index ");
          paramString.append(k);
          throw new MimeTypeParseException(paramString.toString());
        }
        else
        {
          paramString = new StringBuilder();
          paramString.append("Couldn't find a value for parameter named ");
          paramString.append(str1);
          throw new MimeTypeParseException(paramString.toString());
        }
      }
      else
      {
        throw new MimeTypeParseException("Couldn't find the '=' that separates a parameter name from its value.");
      }
    }
    if (j >= i) {
      return;
    }
    throw new MimeTypeParseException("More characters encountered in input than expected.");
  }
  
  public void e(String paramString)
  {
    this.a.remove(paramString.trim().toLowerCase(Locale.ENGLISH));
  }
  
  public void f(String paramString1, String paramString2)
  {
    this.a.put(paramString1.trim().toLowerCase(Locale.ENGLISH), paramString2);
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.ensureCapacity(this.a.size() * 16);
    Enumeration localEnumeration = this.a.keys();
    while (localEnumeration.hasMoreElements())
    {
      String str = (String)localEnumeration.nextElement();
      localStringBuffer.append("; ");
      localStringBuffer.append(str);
      localStringBuffer.append('=');
      localStringBuffer.append(d((String)this.a.get(str)));
    }
    return localStringBuffer.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o7.j
 * JD-Core Version:    0.7.0.1
 */