package javax.mail.internet;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;
import javax.mail.Address;

public class NewsAddress
  extends Address
{
  private static final long serialVersionUID = -4203797299824684143L;
  protected String host;
  protected String newsgroup;
  
  public NewsAddress() {}
  
  public NewsAddress(String paramString)
  {
    this(paramString, null);
  }
  
  public NewsAddress(String paramString1, String paramString2)
  {
    this.newsgroup = paramString1.replaceAll("\\s+", "");
    this.host = paramString2;
  }
  
  public static NewsAddress[] parse(String paramString)
    throws AddressException
  {
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString, ",");
    paramString = new ArrayList();
    while (localStringTokenizer.hasMoreTokens()) {
      paramString.add(new NewsAddress(localStringTokenizer.nextToken()));
    }
    return (NewsAddress[])paramString.toArray(new NewsAddress[paramString.size()]);
  }
  
  public static String toString(Address[] paramArrayOfAddress)
  {
    if ((paramArrayOfAddress != null) && (paramArrayOfAddress.length != 0))
    {
      StringBuilder localStringBuilder = new StringBuilder(((NewsAddress)paramArrayOfAddress[0]).toString());
      int i = localStringBuilder.length();
      for (int j = 1; j < paramArrayOfAddress.length; j++)
      {
        localStringBuilder.append(",");
        int k = i + 1;
        String str = ((NewsAddress)paramArrayOfAddress[j]).toString();
        i = k;
        if (str.length() + k > 76)
        {
          localStringBuilder.append("\r\n\t");
          i = 8;
        }
        localStringBuilder.append(str);
        i += str.length();
      }
      return localStringBuilder.toString();
    }
    return null;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof NewsAddress;
    boolean bool2 = false;
    if (!bool1) {
      return false;
    }
    paramObject = (NewsAddress)paramObject;
    String str = this.newsgroup;
    if ((str != null) || (paramObject.newsgroup != null))
    {
      bool1 = bool2;
      if (str != null)
      {
        bool1 = bool2;
        if (!str.equals(paramObject.newsgroup)) {}
      }
    }
    else
    {
      str = this.host;
      if ((str != null) || (paramObject.host != null))
      {
        bool1 = bool2;
        if (str != null)
        {
          paramObject = paramObject.host;
          bool1 = bool2;
          if (paramObject != null)
          {
            bool1 = bool2;
            if (!str.equalsIgnoreCase(paramObject)) {}
          }
        }
      }
      else
      {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public String getHost()
  {
    return this.host;
  }
  
  public String getNewsgroup()
  {
    return this.newsgroup;
  }
  
  public String getType()
  {
    return "news";
  }
  
  public int hashCode()
  {
    String str = this.newsgroup;
    int i = 0;
    if (str != null) {
      i = 0 + str.hashCode();
    }
    str = this.host;
    int j = i;
    if (str != null) {
      j = i + str.toLowerCase(Locale.ENGLISH).hashCode();
    }
    return j;
  }
  
  public void setHost(String paramString)
  {
    this.host = paramString;
  }
  
  public void setNewsgroup(String paramString)
  {
    this.newsgroup = paramString;
  }
  
  public String toString()
  {
    return this.newsgroup;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.internet.NewsAddress
 * JD-Core Version:    0.7.0.1
 */