package javax.mail.internet;

import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;
import javax.mail.Address;

public class InternetAddress
  extends Address
  implements Cloneable
{
  private static final boolean allowUtf8 = com.sun.mail.util.h.b("mail.mime.allowutf8", false);
  private static final boolean ignoreBogusGroupName = com.sun.mail.util.h.b("mail.mime.address.ignorebogusgroupname", true);
  private static final String rfc822phrase = "()<>@,;:\\\"\t .[]".replace(' ', '\000').replace('\t', '\000');
  private static final long serialVersionUID = -7507595530758302903L;
  private static final String specialsNoDot = "()<>,;:\\\"[]@";
  private static final String specialsNoDotNoAt = "()<>,;:\\\"[]";
  private static final boolean useCanonicalHostName = com.sun.mail.util.h.b("mail.mime.address.usecanonicalhostname", true);
  protected String address;
  protected String encodedPersonal;
  protected String personal;
  
  public InternetAddress() {}
  
  public InternetAddress(String paramString)
    throws AddressException
  {
    InternetAddress[] arrayOfInternetAddress = parse(paramString, true);
    if (arrayOfInternetAddress.length == 1)
    {
      paramString = arrayOfInternetAddress[0];
      this.address = paramString.address;
      this.personal = paramString.personal;
      this.encodedPersonal = paramString.encodedPersonal;
      return;
    }
    throw new AddressException("Illegal address", paramString);
  }
  
  public InternetAddress(String paramString1, String paramString2)
    throws UnsupportedEncodingException
  {
    this(paramString1, paramString2, null);
  }
  
  public InternetAddress(String paramString1, String paramString2, String paramString3)
    throws UnsupportedEncodingException
  {
    this.address = paramString1;
    setPersonal(paramString2, paramString3);
  }
  
  public InternetAddress(String paramString, boolean paramBoolean)
    throws AddressException
  {
    this(paramString);
    if (paramBoolean) {
      if (isGroup()) {
        getGroup(true);
      } else {
        checkAddress(this.address, true, true);
      }
    }
  }
  
  static InternetAddress _getLocalAddress(javax.mail.h paramh)
    throws SecurityException, AddressException, UnknownHostException
  {
    String str1 = System.getProperty("user.name");
    String str2 = getLocalHostName();
    if ((str1 != null) && (str1.length() != 0) && (str2 != null) && (str2.length() != 0))
    {
      paramh = new StringBuilder();
      paramh.append(h.t(str1.trim(), "()<>,;:\\\"[]@\t "));
      paramh.append("@");
      paramh.append(str2);
      paramh = paramh.toString();
    }
    else
    {
      paramh = null;
    }
    if (paramh == null) {
      return null;
    }
    return new InternetAddress(paramh);
  }
  
  private static void checkAddress(String paramString, boolean paramBoolean1, boolean paramBoolean2)
    throws AddressException
  {
    if (paramString != null)
    {
      int i = paramString.length();
      if (i != 0)
      {
        int k;
        if ((paramBoolean1) && (paramString.charAt(0) == '@'))
        {
          for (j = 0;; j = k + 1)
          {
            k = indexOfAny(paramString, ",:", j);
            m = j;
            if (k < 0) {
              break label103;
            }
            if (paramString.charAt(j) != '@') {
              break;
            }
            if (paramString.charAt(k) == ':')
            {
              m = k + 1;
              break label103;
            }
          }
          throw new AddressException("Illegal route-addr", paramString);
        }
        int m = 0;
        label103:
        int j = 65535;
        int n = 0;
        int i1 = m;
        int i2 = 65535;
        for (;;)
        {
          k = j;
          if (i1 >= i) {
            break;
          }
          i2 = paramString.charAt(i1);
          k = n;
          if (i2 != 92) {
            if (j == 92)
            {
              k = n;
            }
            else if (i2 == 34)
            {
              if (n != 0)
              {
                if (paramBoolean2)
                {
                  k = i1 + 1;
                  if ((k < i) && (paramString.charAt(k) != '@')) {
                    throw new AddressException("Quote not at end of local address", paramString);
                  }
                }
                k = 0;
              }
              else
              {
                if ((paramBoolean2) && (i1 != 0)) {
                  throw new AddressException("Quote not at start of local address", paramString);
                }
                k = 1;
              }
            }
            else
            {
              if (i2 == 13)
              {
                k = i1 + 1;
                if ((k < i) && (paramString.charAt(k) != '\n')) {
                  throw new AddressException("Quoted local address contains CR without LF", paramString);
                }
              }
              else if (i2 == 10)
              {
                k = i1 + 1;
                if ((k < i) && (paramString.charAt(k) != ' ') && (paramString.charAt(k) != '\t')) {
                  throw new AddressException("Quoted local address contains newline without whitespace", paramString);
                }
              }
              if (n != 0)
              {
                k = n;
              }
              else
              {
                if (i2 == 46) {
                  if (i1 != m)
                  {
                    if (j == 46) {
                      throw new AddressException("Local address contains dot-dot", paramString);
                    }
                  }
                  else {
                    throw new AddressException("Local address starts with dot", paramString);
                  }
                }
                if (i2 == 64)
                {
                  if (i1 != 0)
                  {
                    if (j != 46)
                    {
                      k = i2;
                      i2 = j;
                      break;
                    }
                    throw new AddressException("Local address ends with dot", paramString);
                  }
                  throw new AddressException("Missing local name", paramString);
                }
                if ((i2 > 32) && (i2 != 127))
                {
                  if ("()<>,;:\\\"[]@".indexOf(i2) < 0) {
                    k = n;
                  } else {
                    throw new AddressException("Local address contains illegal character", paramString);
                  }
                }
                else {
                  throw new AddressException("Local address contains control or whitespace", paramString);
                }
              }
            }
          }
          n = i1 + 1;
          i1 = j;
          j = i2;
          i2 = i1;
          i1 = n;
          n = k;
        }
        if (n == 0)
        {
          if (k != 64)
          {
            if (!paramBoolean2) {
              return;
            }
            throw new AddressException("Missing final '@domain'", paramString);
          }
          i1++;
          if (i1 < i)
          {
            if (paramString.charAt(i1) != '.')
            {
              k = 0;
              m = i1;
              while (m < i)
              {
                int i3 = paramString.charAt(m);
                if (i3 == 91)
                {
                  if (m == i1) {
                    j = 1;
                  } else {
                    throw new AddressException("Domain literal not at start of domain", paramString);
                  }
                }
                else if (i3 == 93)
                {
                  if (m == i - 1) {
                    j = 0;
                  } else {
                    throw new AddressException("Domain literal end not at end of domain", paramString);
                  }
                }
                else
                {
                  if ((i3 <= 32) || (i3 == 127)) {
                    break label781;
                  }
                  j = k;
                  if (k == 0)
                  {
                    if ((!Character.isLetterOrDigit(i3)) && (i3 != 45) && (i3 != 46)) {
                      throw new AddressException("Domain contains illegal character", paramString);
                    }
                    j = k;
                    if (i3 == 46) {
                      if (i2 != 46) {
                        j = k;
                      } else {
                        throw new AddressException("Domain contains dot-dot", paramString);
                      }
                    }
                  }
                }
                m++;
                i2 = i3;
                k = j;
                continue;
                label781:
                throw new AddressException("Domain contains control or whitespace", paramString);
              }
              if (i2 != 46) {
                return;
              }
              throw new AddressException("Domain ends with dot", paramString);
            }
            throw new AddressException("Domain starts with dot", paramString);
          }
          throw new AddressException("Missing domain", paramString);
        }
        throw new AddressException("Unterminated quote", paramString);
      }
      throw new AddressException("Empty address", paramString);
    }
    throw new AddressException("Address is null");
  }
  
  public static InternetAddress getLocalAddress(javax.mail.h paramh)
  {
    try
    {
      paramh = _getLocalAddress(paramh);
      return paramh;
    }
    catch (SecurityException|AddressException|UnknownHostException paramh) {}
    return null;
  }
  
  private static String getLocalHostName()
    throws UnknownHostException
  {
    InetAddress localInetAddress = InetAddress.getLocalHost();
    Object localObject1 = null;
    Object localObject2 = null;
    if (localInetAddress != null)
    {
      if (useCanonicalHostName) {
        localObject2 = localInetAddress.getCanonicalHostName();
      }
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = localInetAddress.getHostName();
      }
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = localInetAddress.getHostAddress();
      }
      localObject1 = localObject2;
      if (localObject2 != null)
      {
        localObject1 = localObject2;
        if (((String)localObject2).length() > 0)
        {
          localObject1 = localObject2;
          if (isInetAddressLiteral((String)localObject2))
          {
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append('[');
            ((StringBuilder)localObject1).append((String)localObject2);
            ((StringBuilder)localObject1).append(']');
            localObject1 = ((StringBuilder)localObject1).toString();
          }
        }
      }
    }
    return localObject1;
  }
  
  private static int indexOfAny(String paramString1, String paramString2)
  {
    return indexOfAny(paramString1, paramString2, 0);
  }
  
  private static int indexOfAny(String paramString1, String paramString2, int paramInt)
  {
    try
    {
      int i = paramString1.length();
      while (paramInt < i)
      {
        int j = paramString2.indexOf(paramString1.charAt(paramInt));
        if (j >= 0) {
          return paramInt;
        }
        paramInt++;
      }
    }
    catch (StringIndexOutOfBoundsException paramString1)
    {
      label34:
      break label34;
    }
    return -1;
  }
  
  private static boolean isInetAddressLiteral(String paramString)
  {
    boolean bool = false;
    int i = 0;
    int j = i;
    int k = j;
    int m = j;
    j = i;
    while (j < paramString.length())
    {
      i = paramString.charAt(j);
      if (((i < 48) || (i > 57)) && (i != 46)) {
        if (((i >= 97) && (i <= 122)) || ((i >= 65) && (i <= 90)))
        {
          m = 1;
        }
        else
        {
          if (i != 58) {
            break label97;
          }
          k = 1;
        }
      }
      j++;
      continue;
      label97:
      return false;
    }
    if ((m == 0) || (k != 0)) {
      bool = true;
    }
    return bool;
  }
  
  private boolean isSimple()
  {
    String str = this.address;
    boolean bool;
    if ((str != null) && (indexOfAny(str, "()<>,;:\\\"[]") >= 0)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private static int lengthOfFirstSegment(String paramString)
  {
    int i = paramString.indexOf("\r\n");
    if (i != -1) {
      return i;
    }
    return paramString.length();
  }
  
  private static int lengthOfLastSegment(String paramString, int paramInt)
  {
    int i = paramString.lastIndexOf("\r\n");
    if (i != -1) {
      return paramString.length() - i - 2;
    }
    return paramString.length() + paramInt;
  }
  
  public static InternetAddress[] parse(String paramString)
    throws AddressException
  {
    return parse(paramString, true);
  }
  
  public static InternetAddress[] parse(String paramString, boolean paramBoolean)
    throws AddressException
  {
    return parse(paramString, paramBoolean, false);
  }
  
  private static InternetAddress[] parse(String paramString, boolean paramBoolean1, boolean paramBoolean2)
    throws AddressException
  {
    int i = paramString.length();
    int j;
    if ((paramBoolean2) && (!paramBoolean1)) {
      j = 1;
    } else {
      j = 0;
    }
    ArrayList localArrayList = new ArrayList();
    int k = 0;
    int m = -1;
    int n = -1;
    int i1 = 0;
    boolean bool1 = false;
    int i2 = 0;
    int i3 = -1;
    int i4 = -1;
    Object localObject1;
    Object localObject2;
    label456:
    label1614:
    Object localObject3;
    while (k < i)
    {
      int i5 = paramString.charAt(k);
      int i6 = k;
      int i7 = m;
      int i8 = n;
      boolean bool2 = bool1;
      int i9 = i2;
      int i10 = i3;
      int i11 = i4;
      if (i5 != 9)
      {
        i6 = k;
        i7 = m;
        i8 = n;
        bool2 = bool1;
        i9 = i2;
        i10 = i3;
        i11 = i4;
        if (i5 != 10)
        {
          i6 = k;
          i7 = m;
          i8 = n;
          bool2 = bool1;
          i9 = i2;
          i10 = i3;
          i11 = i4;
          if (i5 != 13)
          {
            i6 = k;
            i7 = m;
            i8 = n;
            bool2 = bool1;
            i9 = i2;
            i10 = i3;
            i11 = i4;
            if (i5 != 32)
            {
              if (i5 != 34)
              {
                if (i5 != 44) {
                  if (i5 != 62) {
                    if (i5 != 91) {
                      if (i5 != 40) {
                        if (i5 != 41) {
                          switch (i5)
                          {
                          default: 
                            i6 = k;
                            i7 = m;
                            i8 = n;
                            bool2 = bool1;
                            i9 = i2;
                            i10 = i3;
                            i11 = i4;
                            if (m != -1) {
                              break label2055;
                            }
                            break;
                          case 60: 
                            if (bool1) {
                              if (j != 0)
                              {
                                if (m == -1) {
                                  break label1614;
                                }
                                if (i1 == 0)
                                {
                                  i2 = n;
                                  if (n == -1) {
                                    i2 = k;
                                  }
                                  localObject1 = paramString.substring(m, i2).trim();
                                  localObject2 = new InternetAddress();
                                  ((InternetAddress)localObject2).setAddress((String)localObject1);
                                  if (i3 >= 0) {
                                    ((InternetAddress)localObject2).encodedPersonal = unquote(paramString.substring(i3, i4).trim());
                                  }
                                  localArrayList.add(localObject2);
                                  m = -1;
                                  n = -1;
                                  bool1 = false;
                                  i2 = 0;
                                  i3 = -1;
                                  i4 = -1;
                                  break label456;
                                }
                              }
                              else
                              {
                                throw new AddressException("Extra route-addr", paramString, k);
                              }
                            }
                            i2 = 1;
                            i9 = k + 1;
                            i7 = i9;
                            i8 = 0;
                            i6 = n;
                            n = i9;
                            while (i7 < i)
                            {
                              i9 = paramString.charAt(i7);
                              if (i9 != 34) {
                                if (i9 != 62)
                                {
                                  if (i9 == 92) {
                                    i7++;
                                  }
                                }
                                else {
                                  if (i8 == 0) {
                                    break;
                                  }
                                }
                              }
                              for (;;)
                              {
                                break;
                                i8 ^= 0x1;
                              }
                              i7++;
                            }
                            if (i8 != 0) {
                              if (j != 0) {
                                for (i7 = n; i7 < i; i7++)
                                {
                                  i8 = paramString.charAt(i7);
                                  if (i8 == 92) {
                                    i7++;
                                  } else {
                                    if (i8 == 62) {
                                      break;
                                    }
                                  }
                                }
                              } else {
                                throw new AddressException("Missing '\"'", paramString, i7);
                              }
                            }
                            if (i7 >= i)
                            {
                              if (j != 0)
                              {
                                i7 = m;
                                if (m == -1) {
                                  i7 = k;
                                }
                                i8 = i6;
                                i6 = n;
                                bool2 = bool1;
                                i9 = i2;
                                i10 = i3;
                                i11 = i4;
                                break label2055;
                              }
                              throw new AddressException("Missing '>'", paramString, i7);
                            }
                            if (i1 == 0)
                            {
                              if (m < 0)
                              {
                                m = i3;
                                k = i4;
                              }
                              i4 = k;
                              k = n;
                              i3 = m;
                            }
                            else
                            {
                              k = m;
                            }
                            m = k;
                            k = i7;
                            bool1 = true;
                            n = i7;
                            break;
                          case 59: 
                            if (m == -1)
                            {
                              n = -1;
                            }
                            else if (i1 != 0)
                            {
                              if ((paramBoolean2) && (!paramBoolean1))
                              {
                                i1 = k + 1;
                                if ((i1 < i) && (paramString.charAt(i1) == '@'))
                                {
                                  i1 = 0;
                                  break label2083;
                                }
                              }
                              localObject1 = new InternetAddress();
                              ((InternetAddress)localObject1).setAddress(paramString.substring(m, k + 1).trim());
                              localArrayList.add(localObject1);
                              i1 = 0;
                            }
                            break;
                          }
                        }
                      }
                    }
                  }
                }
                for (;;)
                {
                  n = -1;
                  m = -1;
                  bool1 = false;
                  i2 = 0;
                  i3 = -1;
                  i4 = -1;
                  break label2083;
                  if (j == 0)
                  {
                    throw new AddressException("Illegal semicolon, not in group", paramString, k);
                    if ((i1 != 0) && (j == 0)) {
                      throw new AddressException("Nested group", paramString, k);
                    }
                    i2 = m;
                    if (m == -1) {
                      i2 = k;
                    }
                    if ((paramBoolean2) && (!paramBoolean1))
                    {
                      m = k + 1;
                      if (m < i)
                      {
                        m = paramString.charAt(m);
                        if (")>[]:@\\,.".indexOf(m) >= 0) {
                          if (m == 64)
                          {
                            for (i7 = k + 2; i7 < i; i7++)
                            {
                              m = paramString.charAt(i7);
                              if ((m == 59) || (")>[]:@\\,.".indexOf(m) >= 0)) {
                                break;
                              }
                            }
                            if (m != 59) {}
                          }
                          else
                          {
                            m = i2;
                            break;
                          }
                        }
                      }
                      localObject1 = paramString.substring(i2, k);
                      if ((ignoreBogusGroupName) && ((((String)localObject1).equalsIgnoreCase("mailto")) || (((String)localObject1).equalsIgnoreCase("From")) || (((String)localObject1).equalsIgnoreCase("To")) || (((String)localObject1).equalsIgnoreCase("Cc")) || (((String)localObject1).equalsIgnoreCase("Subject")) || (((String)localObject1).equalsIgnoreCase("Re"))))
                      {
                        m = -1;
                        break;
                      }
                      i1 = 1;
                      m = i2;
                      break;
                    }
                    i1 = 1;
                    m = i2;
                    break;
                    if (j != 0)
                    {
                      i6 = k;
                      i7 = m;
                      i8 = n;
                      bool2 = bool1;
                      i9 = i2;
                      i10 = i3;
                      i11 = i4;
                      if (m != -1) {
                        break label2055;
                      }
                    }
                    else
                    {
                      throw new AddressException("Missing '('", paramString, k);
                      i2 = n;
                      if (m >= 0)
                      {
                        i2 = n;
                        if (n == -1) {
                          i2 = k;
                        }
                      }
                      k++;
                      n = k;
                      i7 = 1;
                      while ((n < i) && (i7 > 0))
                      {
                        i6 = paramString.charAt(n);
                        if (i6 != 40) {
                          if (i6 != 41) {
                            if (i6 != 92) {
                              break label1291;
                            }
                          }
                        }
                        for (;;)
                        {
                          n++;
                          continue;
                          i7--;
                          continue;
                          i7++;
                        }
                        label1291:
                        n++;
                      }
                      if (i7 > 0)
                      {
                        if (j != 0)
                        {
                          n = i2;
                          break;
                        }
                        throw new AddressException("Missing ')'", paramString, n);
                      }
                      n--;
                      i7 = i3;
                      if (i3 == -1) {
                        i7 = k;
                      }
                      i10 = n;
                      i9 = m;
                      i8 = i2;
                      i6 = i7;
                      if (i4 == -1)
                      {
                        k = n;
                        i4 = k;
                        n = i2;
                        i3 = i7;
                        break;
                        i2 = m;
                        if (m == -1) {
                          i2 = k;
                        }
                        m = k + 1;
                        for (k = m; k < i; k++)
                        {
                          i7 = paramString.charAt(k);
                          if (i7 != 92) {
                            if (i7 == 93) {
                              break;
                            }
                          }
                          for (;;)
                          {
                            break;
                            k++;
                          }
                        }
                        i10 = k;
                        i9 = i2;
                        i8 = n;
                        i6 = i3;
                        if (k >= i)
                        {
                          if (j != 0)
                          {
                            k = m;
                            m = i2;
                            break;
                          }
                          throw new AddressException("Missing ']'", paramString, k);
                        }
                      }
                      k = i10;
                      m = i9;
                      n = i8;
                      i3 = i6;
                      break;
                      if (j == 0) {
                        break label1594;
                      }
                      i6 = k;
                      i7 = m;
                      i8 = n;
                      bool2 = bool1;
                      i9 = i2;
                      i10 = i3;
                      i11 = i4;
                      if (m != -1) {
                        break label2055;
                      }
                    }
                    i7 = k;
                    i6 = k;
                    i8 = n;
                    bool2 = bool1;
                    i9 = i2;
                    i10 = i3;
                    i11 = i4;
                    break label2055;
                    label1594:
                    throw new AddressException("Missing '<'", paramString, k);
                  }
                  if (m == -1)
                  {
                    n = -1;
                    m = -1;
                    bool1 = false;
                    i2 = 0;
                    break label2083;
                  }
                  if (i1 != 0)
                  {
                    bool1 = false;
                    break label2083;
                  }
                  i7 = n;
                  if (n == -1) {
                    i7 = k;
                  }
                  localObject3 = paramString.substring(m, i7).trim();
                  if ((i2 != 0) && (i3 >= 0))
                  {
                    localObject2 = unquote(paramString.substring(i3, i4).trim());
                    localObject1 = localObject2;
                    if (((String)localObject2).trim().length() != 0) {}
                  }
                  else
                  {
                    localObject1 = null;
                  }
                  Object localObject4 = localObject3;
                  localObject2 = localObject1;
                  if (paramBoolean2)
                  {
                    localObject4 = localObject3;
                    localObject2 = localObject1;
                    if (!paramBoolean1)
                    {
                      localObject4 = localObject3;
                      localObject2 = localObject1;
                      if (localObject1 != null)
                      {
                        localObject4 = localObject3;
                        localObject2 = localObject1;
                        if (((String)localObject1).indexOf('@') >= 0)
                        {
                          localObject4 = localObject3;
                          localObject2 = localObject1;
                          if (((String)localObject3).indexOf('@') < 0)
                          {
                            localObject4 = localObject3;
                            localObject2 = localObject1;
                            if (((String)localObject3).indexOf('!') < 0)
                            {
                              localObject2 = localObject3;
                              localObject4 = localObject1;
                            }
                          }
                        }
                      }
                    }
                  }
                  if ((i2 == 0) && (!paramBoolean1) && (!paramBoolean2)) {
                    localObject2 = new StringTokenizer(localObject4);
                  }
                  while (((StringTokenizer)localObject2).hasMoreTokens())
                  {
                    localObject1 = ((StringTokenizer)localObject2).nextToken();
                    checkAddress((String)localObject1, false, false);
                    localObject3 = new InternetAddress();
                    ((InternetAddress)localObject3).setAddress((String)localObject1);
                    localArrayList.add(localObject3);
                    continue;
                    if (j == 0) {
                      checkAddress(localObject4, bool1, false);
                    }
                    localObject1 = new InternetAddress();
                    ((InternetAddress)localObject1).setAddress(localObject4);
                    if (localObject2 != null) {
                      ((InternetAddress)localObject1).encodedPersonal = ((String)localObject2);
                    }
                    localArrayList.add(localObject1);
                  }
                }
              }
              i2 = m;
              if (m == -1) {
                i2 = k;
              }
              i7 = k + 1;
              for (k = i7; k < i; k++)
              {
                m = paramString.charAt(k);
                if (m == 34) {
                  break;
                }
                if (m == 92) {
                  for (;;)
                  {
                    k++;
                  }
                }
              }
              if (k >= i)
              {
                if (j != 0)
                {
                  m = i2;
                  k = i7;
                }
                else
                {
                  throw new AddressException("Missing '\"'", paramString, k);
                }
              }
              else {
                m = i2;
              }
              i2 = 1;
              break label2083;
            }
          }
        }
      }
      label2055:
      i4 = i11;
      i3 = i10;
      i2 = i9;
      bool1 = bool2;
      n = i8;
      m = i7;
      k = i6;
      label2083:
      k++;
    }
    if (m >= 0)
    {
      if (n == -1) {
        n = i;
      }
      localObject1 = paramString.substring(m, n).trim();
      if ((i2 != 0) && (i3 >= 0))
      {
        localObject2 = unquote(paramString.substring(i3, i4).trim());
        paramString = (String)localObject2;
        if (((String)localObject2).trim().length() != 0) {}
      }
      else
      {
        paramString = null;
      }
      localObject3 = paramString;
      localObject2 = localObject1;
      if (paramBoolean2)
      {
        localObject3 = paramString;
        localObject2 = localObject1;
        if (!paramBoolean1)
        {
          localObject3 = paramString;
          localObject2 = localObject1;
          if (paramString != null)
          {
            localObject3 = paramString;
            localObject2 = localObject1;
            if (paramString.indexOf('@') >= 0)
            {
              localObject3 = paramString;
              localObject2 = localObject1;
              if (((String)localObject1).indexOf('@') < 0)
              {
                localObject3 = paramString;
                localObject2 = localObject1;
                if (((String)localObject1).indexOf('!') < 0)
                {
                  localObject2 = paramString;
                  localObject3 = localObject1;
                }
              }
            }
          }
        }
      }
      if ((i2 == 0) && (!paramBoolean1) && (!paramBoolean2)) {
        localObject2 = new StringTokenizer((String)localObject2);
      }
      while (((StringTokenizer)localObject2).hasMoreTokens())
      {
        paramString = ((StringTokenizer)localObject2).nextToken();
        checkAddress(paramString, false, false);
        localObject1 = new InternetAddress();
        ((InternetAddress)localObject1).setAddress(paramString);
        localArrayList.add(localObject1);
        continue;
        if (j == 0) {
          checkAddress((String)localObject2, bool1, false);
        }
        paramString = new InternetAddress();
        paramString.setAddress((String)localObject2);
        if (localObject3 != null) {
          paramString.encodedPersonal = ((String)localObject3);
        }
        localArrayList.add(paramString);
      }
    }
    paramString = new InternetAddress[localArrayList.size()];
    localArrayList.toArray(paramString);
    return paramString;
  }
  
  public static InternetAddress[] parseHeader(String paramString, boolean paramBoolean)
    throws AddressException
  {
    return parse(h.u(paramString), paramBoolean, true);
  }
  
  private static String quotePhrase(String paramString)
  {
    int i = paramString.length();
    int j = 0;
    int k = 0;
    int m = k;
    while (k < i)
    {
      int n = paramString.charAt(k);
      if ((n != 34) && (n != 92))
      {
        if (((n < 32) && (n != 13) && (n != 10) && (n != 9)) || ((n >= 127) && (!allowUtf8)) || (rfc822phrase.indexOf(n) >= 0)) {
          m = 1;
        }
        k++;
      }
      else
      {
        localObject = new StringBuilder(i + 3);
        ((StringBuilder)localObject).append('"');
        for (k = j; k < i; k++)
        {
          char c = paramString.charAt(k);
          if ((c == '"') || (c == '\\')) {
            ((StringBuilder)localObject).append('\\');
          }
          ((StringBuilder)localObject).append(c);
        }
        ((StringBuilder)localObject).append('"');
        return ((StringBuilder)localObject).toString();
      }
    }
    Object localObject = paramString;
    if (m != 0)
    {
      localObject = new StringBuilder(i + 2);
      ((StringBuilder)localObject).append('"');
      ((StringBuilder)localObject).append(paramString);
      ((StringBuilder)localObject).append('"');
      localObject = ((StringBuilder)localObject).toString();
    }
    return localObject;
  }
  
  public static String toString(Address[] paramArrayOfAddress)
  {
    return toString(paramArrayOfAddress, 0);
  }
  
  public static String toString(Address[] paramArrayOfAddress, int paramInt)
  {
    if ((paramArrayOfAddress != null) && (paramArrayOfAddress.length != 0))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      int i = 0;
      int j = paramInt;
      while (i < paramArrayOfAddress.length)
      {
        paramInt = j;
        if (i != 0)
        {
          localStringBuilder.append(", ");
          paramInt = j + 2;
        }
        String str = h.j(0, paramArrayOfAddress[i].toString());
        j = paramInt;
        if (lengthOfFirstSegment(str) + paramInt > 76)
        {
          paramInt = localStringBuilder.length();
          if (paramInt > 0)
          {
            paramInt--;
            if (localStringBuilder.charAt(paramInt) == ' ') {
              localStringBuilder.setLength(paramInt);
            }
          }
          localStringBuilder.append("\r\n\t");
          j = 8;
        }
        localStringBuilder.append(str);
        j = lengthOfLastSegment(str, j);
        i++;
      }
      return localStringBuilder.toString();
    }
    return null;
  }
  
  public static String toUnicodeString(Address[] paramArrayOfAddress)
  {
    return toUnicodeString(paramArrayOfAddress, 0);
  }
  
  public static String toUnicodeString(Address[] paramArrayOfAddress, int paramInt)
  {
    if ((paramArrayOfAddress != null) && (paramArrayOfAddress.length != 0))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      int i = 0;
      int j = i;
      for (int k = paramInt; i < paramArrayOfAddress.length; k = paramInt)
      {
        paramInt = k;
        if (i != 0)
        {
          localStringBuilder.append(", ");
          paramInt = k + 2;
        }
        String str1 = ((InternetAddress)paramArrayOfAddress[i]).toUnicodeString();
        k = j;
        str2 = str1;
        if (h.a(str1) != 1)
        {
          str2 = new String(str1.getBytes(StandardCharsets.UTF_8), StandardCharsets.ISO_8859_1);
          k = 1;
        }
        str2 = h.j(0, str2);
        j = paramInt;
        if (lengthOfFirstSegment(str2) + paramInt > 76)
        {
          paramInt = localStringBuilder.length();
          if (paramInt > 0)
          {
            paramInt--;
            if (localStringBuilder.charAt(paramInt) == ' ') {
              localStringBuilder.setLength(paramInt);
            }
          }
          localStringBuilder.append("\r\n\t");
          j = 8;
        }
        localStringBuilder.append(str2);
        paramInt = lengthOfLastSegment(str2, j);
        i++;
        j = k;
      }
      String str2 = localStringBuilder.toString();
      paramArrayOfAddress = str2;
      if (j != 0) {
        paramArrayOfAddress = new String(str2.getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
      }
      return paramArrayOfAddress;
    }
    return null;
  }
  
  private static String unquote(String paramString)
  {
    Object localObject = paramString;
    if (paramString.startsWith("\""))
    {
      localObject = paramString;
      if (paramString.endsWith("\""))
      {
        localObject = paramString;
        if (paramString.length() > 1)
        {
          paramString = paramString.substring(1, paramString.length() - 1);
          localObject = paramString;
          if (paramString.indexOf('\\') >= 0)
          {
            localObject = new StringBuilder(paramString.length());
            int j;
            for (int i = 0; i < paramString.length(); i = j + 1)
            {
              char c1 = paramString.charAt(i);
              j = i;
              char c2 = c1;
              if (c1 == '\\')
              {
                j = i;
                c2 = c1;
                if (i < paramString.length() - 1)
                {
                  j = i + 1;
                  i = paramString.charAt(j);
                  c2 = i;
                }
              }
              ((StringBuilder)localObject).append(c2);
            }
            localObject = ((StringBuilder)localObject).toString();
          }
        }
      }
    }
    return localObject;
  }
  
  public Object clone()
  {
    Object localObject;
    try
    {
      InternetAddress localInternetAddress = (InternetAddress)super.clone();
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      localObject = null;
    }
    return localObject;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof InternetAddress)) {
      return false;
    }
    String str = ((InternetAddress)paramObject).getAddress();
    paramObject = this.address;
    if (str == paramObject) {
      return true;
    }
    return (paramObject != null) && (paramObject.equalsIgnoreCase(str));
  }
  
  public String getAddress()
  {
    return this.address;
  }
  
  public InternetAddress[] getGroup(boolean paramBoolean)
    throws AddressException
  {
    String str = getAddress();
    if (str == null) {
      return null;
    }
    if (!str.endsWith(";")) {
      return null;
    }
    int i = str.indexOf(':');
    if (i < 0) {
      return null;
    }
    return parseHeader(str.substring(i + 1, str.length() - 1), paramBoolean);
  }
  
  public String getPersonal()
  {
    String str = this.personal;
    if (str != null) {
      return str;
    }
    str = this.encodedPersonal;
    if (str != null) {
      try
      {
        str = h.d(str);
        this.personal = str;
        return str;
      }
      catch (Exception localException)
      {
        return this.encodedPersonal;
      }
    }
    return null;
  }
  
  public String getType()
  {
    return "rfc822";
  }
  
  public int hashCode()
  {
    String str = this.address;
    if (str == null) {
      return 0;
    }
    return str.toLowerCase(Locale.ENGLISH).hashCode();
  }
  
  public boolean isGroup()
  {
    String str = this.address;
    boolean bool;
    if ((str != null) && (str.endsWith(";")) && (this.address.indexOf(':') > 0)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void setAddress(String paramString)
  {
    this.address = paramString;
  }
  
  public void setPersonal(String paramString)
    throws UnsupportedEncodingException
  {
    this.personal = paramString;
    if (paramString != null) {
      this.encodedPersonal = h.g(paramString);
    } else {
      this.encodedPersonal = null;
    }
  }
  
  public void setPersonal(String paramString1, String paramString2)
    throws UnsupportedEncodingException
  {
    this.personal = paramString1;
    if (paramString1 != null) {
      this.encodedPersonal = h.h(paramString1, paramString2, null);
    } else {
      this.encodedPersonal = null;
    }
  }
  
  public String toString()
  {
    Object localObject1 = this.address;
    Object localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = "";
    }
    if (this.encodedPersonal == null)
    {
      localObject1 = this.personal;
      if (localObject1 == null) {}
    }
    try
    {
      this.encodedPersonal = h.g((String)localObject1);
      label39:
      if (this.encodedPersonal != null)
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append(quotePhrase(this.encodedPersonal));
        ((StringBuilder)localObject1).append(" <");
        ((StringBuilder)localObject1).append((String)localObject2);
        ((StringBuilder)localObject1).append(">");
        return ((StringBuilder)localObject1).toString();
      }
      localObject1 = localObject2;
      if (!isGroup()) {
        if (isSimple())
        {
          localObject1 = localObject2;
        }
        else
        {
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append("<");
          ((StringBuilder)localObject1).append((String)localObject2);
          ((StringBuilder)localObject1).append(">");
          localObject1 = ((StringBuilder)localObject1).toString();
        }
      }
      return localObject1;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      break label39;
    }
  }
  
  public String toUnicodeString()
  {
    Object localObject = getPersonal();
    if (localObject != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(quotePhrase((String)localObject));
      localStringBuilder.append(" <");
      localStringBuilder.append(this.address);
      localStringBuilder.append(">");
      return localStringBuilder.toString();
    }
    if ((!isGroup()) && (!isSimple()))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("<");
      ((StringBuilder)localObject).append(this.address);
      ((StringBuilder)localObject).append(">");
      return ((StringBuilder)localObject).toString();
    }
    return this.address;
  }
  
  public void validate()
    throws AddressException
  {
    if (isGroup()) {
      getGroup(true);
    } else {
      checkAddress(getAddress(), true, true);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.internet.InternetAddress
 * JD-Core Version:    0.7.0.1
 */