package javax.mail;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.BitSet;
import java.util.Locale;

public class k
{
  private static boolean l = true;
  static BitSet m;
  protected String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private InetAddress f;
  private boolean g = false;
  private int h;
  private String i;
  private String j;
  private int k = 0;
  
  static
  {
    try
    {
      boolean bool;
      if (!Boolean.getBoolean("mail.URLName.dontencode")) {
        bool = true;
      } else {
        bool = false;
      }
      l = bool;
    }
    catch (Exception localException)
    {
      label19:
      int n;
      break label19;
    }
    m = new BitSet(256);
    for (n = 97; n <= 122; n++) {
      m.set(n);
    }
    for (n = 65; n <= 90; n++) {
      m.set(n);
    }
    for (n = 48; n <= 57; n++) {
      m.set(n);
    }
    m.set(32);
    m.set(45);
    m.set(95);
    m.set(46);
    m.set(42);
  }
  
  public k(String paramString1, String paramString2, int paramInt, String paramString3, String paramString4, String paramString5)
  {
    this.b = paramString1;
    this.e = paramString2;
    this.h = paramInt;
    if (paramString3 != null)
    {
      paramInt = paramString3.indexOf('#');
      if (paramInt != -1)
      {
        this.i = paramString3.substring(0, paramInt);
        this.j = paramString3.substring(paramInt + 1);
        break label84;
      }
    }
    this.i = paramString3;
    this.j = null;
    label84:
    paramString1 = paramString4;
    if (l) {
      paramString1 = c(paramString4);
    }
    this.c = paramString1;
    paramString1 = paramString5;
    if (l) {
      paramString1 = c(paramString5);
    }
    this.d = paramString1;
  }
  
  private static String a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString.length());
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(10);
    OutputStreamWriter localOutputStreamWriter = new OutputStreamWriter(localByteArrayOutputStream);
    for (int n = 0; n < paramString.length(); n++)
    {
      int i1 = paramString.charAt(n);
      int i2;
      if (m.get(i1))
      {
        i2 = i1;
        if (i1 == 32) {
          i2 = 43;
        }
        localStringBuilder.append((char)i2);
      }
      else
      {
        try
        {
          localOutputStreamWriter.write(i1);
          localOutputStreamWriter.flush();
          byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
          for (i2 = 0; i2 < arrayOfByte.length; i2++)
          {
            localStringBuilder.append('%');
            char c1 = Character.forDigit(arrayOfByte[i2] >> 4 & 0xF, 16);
            char c2 = c1;
            if (Character.isLetter(c1))
            {
              i1 = (char)(c1 - ' ');
              c2 = i1;
            }
            localStringBuilder.append(c2);
            c1 = Character.forDigit(arrayOfByte[i2] & 0xF, 16);
            c2 = c1;
            if (Character.isLetter(c1))
            {
              i1 = (char)(c1 - ' ');
              c2 = i1;
            }
            localStringBuilder.append(c2);
          }
          localByteArrayOutputStream.reset();
        }
        catch (IOException localIOException)
        {
          localByteArrayOutputStream.reset();
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  static String b(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    if (k(paramString, "+%") == -1) {
      return paramString;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int n = 0;
    Object localObject;
    while (n < paramString.length())
    {
      char c1 = paramString.charAt(n);
      int i1;
      if (c1 != '%')
      {
        if (c1 != '+') {
          localStringBuilder.append(c1);
        } else {
          localStringBuilder.append(' ');
        }
      }
      else {
        i1 = n + 3;
      }
      try
      {
        localStringBuilder.append((char)Integer.parseInt(paramString.substring(n + 1, i1), 16));
        n += 2;
        n++;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Illegal URL encoded value: ");
        ((StringBuilder)localObject).append(paramString.substring(n, i1));
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
    }
    paramString = ((StringBuilder)localObject).toString();
    try
    {
      byte[] arrayOfByte = paramString.getBytes("8859_1");
      localObject = new java/lang/String;
      ((String)localObject).<init>(arrayOfByte);
      paramString = (String)localObject;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      label172:
      break label172;
    }
    return paramString;
  }
  
  static String c(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    for (int n = 0;; n++)
    {
      str = paramString;
      if (n >= paramString.length()) {
        return str;
      }
      int i1 = paramString.charAt(n);
      if ((i1 == 32) || (!m.get(i1))) {
        break;
      }
    }
    String str = a(paramString);
    return str;
  }
  
  private InetAddress f()
  {
    try
    {
      if (this.g)
      {
        localObject1 = this.f;
        return localObject1;
      }
      Object localObject1 = this.e;
      if (localObject1 == null) {
        return null;
      }
      try
      {
        this.f = InetAddress.getByName((String)localObject1);
      }
      catch (UnknownHostException localUnknownHostException)
      {
        this.f = null;
      }
      this.g = true;
      InetAddress localInetAddress = this.f;
      return localInetAddress;
    }
    finally {}
  }
  
  private static int k(String paramString1, String paramString2)
  {
    return l(paramString1, paramString2, 0);
  }
  
  private static int l(String paramString1, String paramString2, int paramInt)
  {
    try
    {
      int n = paramString1.length();
      while (paramInt < n)
      {
        int i1 = paramString2.indexOf(paramString1.charAt(paramInt));
        if (i1 >= 0) {
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
  
  public String d()
  {
    return this.i;
  }
  
  public String e()
  {
    return this.e;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof k)) {
      return false;
    }
    k localk = (k)paramObject;
    Object localObject = this.b;
    paramObject = localk.b;
    if ((localObject != paramObject) && ((localObject == null) || (!((String)localObject).equals(paramObject)))) {
      return false;
    }
    paramObject = f();
    localObject = localk.f();
    if ((paramObject != null) && (localObject != null))
    {
      if (!paramObject.equals(localObject)) {
        return false;
      }
    }
    else
    {
      paramObject = this.e;
      if (paramObject != null)
      {
        localObject = localk.e;
        if (localObject != null)
        {
          if (paramObject.equalsIgnoreCase((String)localObject)) {
            break label109;
          }
          return false;
        }
      }
      if (paramObject != localk.e) {
        return false;
      }
    }
    label109:
    localObject = this.c;
    paramObject = localk.c;
    if ((localObject != paramObject) && ((localObject == null) || (!((String)localObject).equals(paramObject)))) {
      return false;
    }
    String str = this.i;
    localObject = "";
    paramObject = str;
    if (str == null) {
      paramObject = "";
    }
    str = localk.i;
    if (str != null) {
      localObject = str;
    }
    if (!paramObject.equals(localObject)) {
      return false;
    }
    return this.h == localk.h;
  }
  
  public String g()
  {
    String str;
    if (l) {
      str = b(this.d);
    } else {
      str = this.d;
    }
    return str;
  }
  
  public int h()
  {
    return this.h;
  }
  
  public int hashCode()
  {
    int n = this.k;
    if (n != 0) {
      return n;
    }
    Object localObject = this.b;
    if (localObject != null) {
      this.k = (n + ((String)localObject).hashCode());
    }
    localObject = f();
    if (localObject != null)
    {
      this.k += ((InetAddress)localObject).hashCode();
    }
    else
    {
      localObject = this.e;
      if (localObject != null) {
        this.k += ((String)localObject).toLowerCase(Locale.ENGLISH).hashCode();
      }
    }
    localObject = this.c;
    if (localObject != null) {
      this.k += ((String)localObject).hashCode();
    }
    localObject = this.i;
    if (localObject != null) {
      this.k += ((String)localObject).hashCode();
    }
    n = this.k + this.h;
    this.k = n;
    return n;
  }
  
  public String i()
  {
    return this.b;
  }
  
  public String j()
  {
    String str;
    if (l) {
      str = b(this.c);
    } else {
      str = this.c;
    }
    return str;
  }
  
  public String toString()
  {
    if (this.a == null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      String str = this.b;
      if (str != null)
      {
        localStringBuilder.append(str);
        localStringBuilder.append(":");
      }
      if ((this.c != null) || (this.e != null))
      {
        localStringBuilder.append("//");
        str = this.c;
        if (str != null)
        {
          localStringBuilder.append(str);
          if (this.d != null)
          {
            localStringBuilder.append(":");
            localStringBuilder.append(this.d);
          }
          localStringBuilder.append("@");
        }
        str = this.e;
        if (str != null) {
          localStringBuilder.append(str);
        }
        if (this.h != -1)
        {
          localStringBuilder.append(":");
          localStringBuilder.append(Integer.toString(this.h));
        }
        if (this.i != null) {
          localStringBuilder.append("/");
        }
      }
      str = this.i;
      if (str != null) {
        localStringBuilder.append(str);
      }
      if (this.j != null)
      {
        localStringBuilder.append("#");
        localStringBuilder.append(this.j);
      }
      this.a = localStringBuilder.toString();
    }
    return this.a;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.k
 * JD-Core Version:    0.7.0.1
 */